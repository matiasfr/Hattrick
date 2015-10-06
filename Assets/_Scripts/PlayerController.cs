﻿using UnityEngine;
using System.Collections;
using InControl;

public class PlayerActions : PlayerActionSet {
    public PlayerAction Cast;
    public PlayerAction Shield;
    public PlayerAction Jump;

    public PlayerAction Fire;
    public PlayerAction Water;
    public PlayerAction Earth;

    public PlayerAction MoveLeft;
    public PlayerAction MoveRight;
    public PlayerAction MoveUp;
    public PlayerAction MoveDown;
    public PlayerTwoAxisAction Move;

    public PlayerAction AimLeft;
    public PlayerAction AimRight;
    public PlayerAction AimUp;
    public PlayerAction AimDown;
    public PlayerTwoAxisAction Aim;

    public PlayerActions() {
        Cast = CreatePlayerAction("Cast");
        Shield = CreatePlayerAction("Shield");
        Jump = CreatePlayerAction("Jump");

        Earth = CreatePlayerAction("Earth");
        Fire = CreatePlayerAction("Fire");
        Water = CreatePlayerAction("Water");

        MoveLeft = CreatePlayerAction("Move Left");
        MoveRight = CreatePlayerAction("Move Right");
        MoveUp = CreatePlayerAction("Move Up");
        MoveDown = CreatePlayerAction("Move Down");
        Move = CreateTwoAxisPlayerAction(MoveLeft, MoveRight, MoveDown, MoveUp);

        AimLeft = CreatePlayerAction("Aim Left");
        AimRight = CreatePlayerAction("Aim Right");
        AimUp = CreatePlayerAction("Aim Up");
        AimDown = CreatePlayerAction("Aim Down");
        Aim = CreateTwoAxisPlayerAction(AimLeft, AimRight, AimDown, AimUp);
    }
}



public class PlayerController : MonoBehaviour {

    public int playerNum;
    private InputDevice controller;
    private PlayerActions playerInput;
    public float moveSpeed = 10;

    public InputControlType CastButton;
    public InputControlType ShieldButton;
    public InputControlType JumpButton;
    public InputControlType EarthButton;
    public InputControlType FireButton;
    public InputControlType WaterButton;

    private Vector3 forward = Vector3.zero;
    private Vector3 right = Vector3.zero;
    private Vector3 moveDirection;
    private Vector3 aimDirection = Vector3.forward;
    private Vector3 startPos;

    public float aimSlerpValue = .3f;
    private float castChargeTime = 0;
    private float chargePercent;
    private bool chargingCast = false;

    private bool shielding = false;
    private Shield shield;
    private Vector3 shieldOffset = new Vector3(0f, -1.4f, 0f);

    public float minStunTime = .5f;
    public float maxStunTime = 1f;
    private bool stunned = false;
    private float stunnedTime = 0;
    private float stunLength = 2f;
    public float recoverLength = .25f;


    private float minProjectileScale = .2f;
    private float maxProjectileScale = 1f;
    public float MaxChargeTime = 2f; //Time to charge to reach full power

    private float damage = 0;
    private float energy = 0;

    private Projectile projectile = null;

    private Rigidbody rb;
    public Element element;

    void Start() {
        rb = GetComponent<Rigidbody>();
        startPos = transform.position;
        ChangeElement(Element.FIRE);
    }

    void OnEnable() {
        playerInput = new PlayerActions();
        playerInput.Cast.AddDefaultBinding(CastButton);
        playerInput.Shield.AddDefaultBinding(ShieldButton);
        playerInput.Jump.AddDefaultBinding(JumpButton);

        playerInput.Earth.AddDefaultBinding(EarthButton);
        playerInput.Fire.AddDefaultBinding(FireButton);
        playerInput.Water.AddDefaultBinding(WaterButton);

        playerInput.MoveLeft.AddDefaultBinding(InputControlType.LeftStickLeft);
        playerInput.MoveRight.AddDefaultBinding(InputControlType.LeftStickRight);
        playerInput.MoveUp.AddDefaultBinding(InputControlType.LeftStickUp);
        playerInput.MoveDown.AddDefaultBinding(InputControlType.LeftStickDown);
        playerInput.AimLeft.AddDefaultBinding(InputControlType.RightStickLeft);
        playerInput.AimRight.AddDefaultBinding(InputControlType.RightStickRight);
        playerInput.AimUp.AddDefaultBinding(InputControlType.RightStickUp);
        playerInput.AimDown.AddDefaultBinding(InputControlType.RightStickDown);
    }

    void onDisable() {
        playerInput.Destroy();
    }



    void Update() {
        if (controller == null) {
            controller = (InputManager.Devices.Count > playerNum) ? InputManager.Devices[playerNum] : null;
            playerInput.Device = controller;
        }
        else {
            CheckCamera();
            if (!stunned) {
                ProjectileControl();
                ShieldControl();
            }
            else {
                stunnedTime += Time.deltaTime;
            }
        }

        CheckElement();
    }

    RaycastHit hit;
    void FixedUpdate() {
        if (Physics.Raycast(transform.position, Vector3.down, out hit)) {
            if (!stunned) {
                if (hit.collider.gameObject.name == "DeathTrigger") { // FALL OFF
                    rb.isKinematic = false;
                    rb.AddForce(Vector3.down * 3f, ForceMode.Impulse);
                }
                else if (!rb.isKinematic) {
                    StartCoroutine(Recover());
                }

                //Movement and aiming
                transform.Translate(transform.InverseTransformDirection(moveDirection) * moveSpeed / 100);
                transform.rotation = Quaternion.Slerp(transform.rotation, Quaternion.LookRotation(aimDirection), aimSlerpValue * Time.deltaTime);

            }
            else {
                if (stunnedTime >= stunLength && playerInput.Jump.WasPressed) {
                    if (hit.collider.gameObject.name != "DeathTrigger") {
                        StartCoroutine(Recover());
                    }
                }
            }

        }


        if (transform.position.y < -30f) {
            Respawn();
        }
    }

    public void Stun(float chargePercent) {
        
        if (chargingCast && !projectile.isCast) {
            projectile.Dissipate();
            chargingCast = false;
        }
        if (shielding) {
            shield.Collapse();
            shielding = false;
        }
        if (!stunned) {
            rb.isKinematic = false;
            stunned = true;
            stunLength = Mathf.Lerp(minStunTime, maxStunTime, chargePercent);
            stunnedTime = 0;
        }
    }

    void CheckElement() {
        if (playerInput.Earth.WasPressed) {
            ChangeElement(Element.EARTH);
        }
        else if (playerInput.Fire.WasPressed) {
            ChangeElement(Element.FIRE);
        }
        else if (playerInput.Water.WasPressed) {
            ChangeElement(Element.WATER);
        }
    }

    void ProjectileControl() {
        if (playerInput.Cast.WasPressed) {
            if (!chargingCast && !shielding) {
                castChargeTime = 0;
                chargingCast = true;
                projectile = Instantiate<Projectile>(element.projectilePrefab);
                projectile.element = element;

            }
        }
        if (projectile != null && playerInput.Cast.IsPressed) {
            castChargeTime += Time.deltaTime;
            if (castChargeTime > MaxChargeTime) castChargeTime = MaxChargeTime;
            chargePercent = castChargeTime / MaxChargeTime;
            float projectileScale = Mathf.Lerp(minProjectileScale, maxProjectileScale, chargePercent);
            projectile.transform.localScale = new Vector3(projectileScale, projectileScale, projectileScale);
            projectile.transform.position = transform.position + transform.forward + new Vector3(0f, -.8f, 0f);

        }
        if (chargingCast && playerInput.Cast.WasReleased) {
            CastProjectile(chargePercent);
            chargingCast = false;
        }
    }

    void CastProjectile(float charge) {
        projectile.Cast(aimDirection.normalized, charge, playerNum);
        projectile = null;
    }

    void ShieldControl() {

        if (playerInput.Shield.WasPressed) {
            if (!shielding) {
                //Start shielding
                shielding = true;
                shield = Instantiate<Shield>(element.shieldPrefab);
                shield.element = element;

                shield.transform.parent = transform;
                shield.transform.localPosition = shieldOffset;
                shield.transform.rotation = transform.rotation;

                if (chargingCast) {
                    projectile.Dissipate();
                    chargingCast = false;
                }

            }
        }

        if (shielding && playerInput.Shield.WasReleased) {
            shielding = false;
            shield.Despawn();
        }
    }

    void CheckCamera() {
        if (Camera.current != null) {
            forward = Camera.main.transform.forward;
            forward.y = 0;
            forward = forward.normalized;
            right = Camera.main.transform.right;
            right.y = 0;
            right = right.normalized;
            moveDirection = (playerInput.Move.Value.x * right + playerInput.Move.Value.y * forward);
            if (playerInput.Aim.Value != Vector2.zero)
                aimDirection = (playerInput.Aim.Value.x * right + playerInput.Aim.Value.y * forward);

        }
    }

    IEnumerator Recover() {

        Quaternion targetRot = Quaternion.Euler(0f, transform.localEulerAngles.y, 0f);
        Vector3 newPos = transform.position;
        newPos.y = startPos.y;
        float t = 0;
        Vector3 initPos = transform.position;
        Quaternion initRot = transform.rotation;
        while (t < recoverLength) {
            targetRot = Quaternion.Euler(0f, transform.localEulerAngles.y, 0f);
            transform.position = Vector3.Lerp(initPos, newPos, t/ recoverLength);
            transform.rotation = Quaternion.Lerp(initRot, targetRot, t / recoverLength);
            t += Time.deltaTime;
            yield return null;

        }
        stunned = false;
        rb.isKinematic = true;
    }


    void Respawn() {

        transform.position = startPos;
        transform.rotation = Quaternion.Euler(0f, transform.localEulerAngles.y, 0f);
        stunned = false;
        rb.isKinematic = true;
        if (chargingCast && !projectile.isCast) {
            Destroy(projectile.gameObject);
            chargingCast = false;
        }

        if (shielding) {
            Destroy(shield.gameObject);
            shielding = false;
        }
    }

    void ChangeElement(Element e) {
        element = e;
    }
}
