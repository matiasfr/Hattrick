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

    public PlayerAction Dash;

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

        Dash = CreatePlayerAction("Dash");

    }
}

public class PlayerController : MonoBehaviour {

    public InputControlType CastButton;
    public InputControlType ShieldButton;
    public InputControlType JumpButton;
    public InputControlType EarthButton;
    public InputControlType FireButton;
    public InputControlType WaterButton;


    public int playerNum;
    private InputDevice controller;
    private PlayerActions playerInput;


    public float normalMoveSpeed = 10;
    public float shieldingMoveSpeed = 5f;
    public float chargingMoveSpeed = 5f;
    private float moveSpeed;

    public float StartMass = 1.5f;

    private Vector3 forward = Vector3.zero;
    private Vector3 right = Vector3.zero;
    private Vector3 moveDirection;
    private Vector3 startPos;

    public float MaxChargeTime = 0.75f; //Time to charge to reach full power
    private Vector3 aimDirection = Vector3.forward;
    public float aimSlerpValue = .3f;
    private float castChargeTime = 0;
    private float chargePercent;
    private bool chargingCast = false;
    private Vector3 projectileOffset = new Vector3(0f, -.3f, 0f);

    private bool shielding = false;
    private Shield shield;
    private Vector3 shieldOffset = new Vector3(0f, -1.1f, 0f);


    // Stun
    public float minStunTime = .25f;
    public float maxStunTime = 1f;
    [HideInInspector]
    public bool stunned = false;
    private float stunnedTime = 0;
    private float stunLength = 2f;
    public float recoverLength = .155f;

    public GameObject RecoverTipPrefab;
    private GameObject recoverTip;

    private bool invincible = false;
    private float invincibleTime = 1.5f;


    //Dashing
    private bool dashing = false;
    public float DashDistance = 4f;
    public float DashSpeed = 20f;
    public float DashCooldown = 1f;
    private float dashCooldownTimer = 0f;

    private bool projectileCooling = false;
    public float projectileCooldownAmount = 0.05f;

    public PlayerBumper bumper;

    public float hoverAmplitude = .5f;
    private float hoverTimer = 0f;
    public float hoverSpeed = 1.5f;
    public GameObject body;

    public GameObject cape;
    public GameObject hat;
    public Vector3 hatStartPos;
    public Quaternion hatStartRot;

    public float damageModifier = 1.0f;

    [HideInInspector]
    public float currentDamage = 0;

    private float MAX_ENERGY = 1;//100 energy
    private float MIN_ENERGY = 0;
    private float currentEnergy = 0;
    private bool recharging = true;
    private float rechargeAmount = 0.20f; // energy/s
    private float indicatorStartScale;

    //energy cost values
    private float SHIELD_COST = 0.01f;
    private float PROJECTILE_COST = 0.4f;
    private float PROJECTILE_COST_MIN = 0.01f;
    private float CHANGE_ELEMENT_COST = 0.00f;
    ParticleSystem idleParticleFX;
    ParticleSystem switchParticleFX;


	public ParticleSystem recoverParticleFX;
	public ParticleSystem respawnParticleFX;

	//audio variables
	public AudioSource soundSource;
	public AudioSource soundSourceLong;
	public AudioClip dashSFX;
	public AudioClip respawnSFX;
	public AudioClip recoverSFX;
	public AudioClip deathSFX;


    public float lowPitchRange = 0.95f;
    public float highPitchRange = 1.05f;

    public TrailRenderer trail;

    public GameObject energyIndicator;
    public GameObject aimingIndicator;
    private Projectile projectile = null;

    private Rigidbody rb;

    [HideInInspector]
    public Element element;

    void Start() {
        currentEnergy = 100;
        currentDamage = 0;
        rb = GetComponent<Rigidbody>();
        startPos = transform.position;
        ChangeElement(Element.RandomElement);
        hoverTimer = Random.Range(0f, 1.5f);
        indicatorStartScale = energyIndicator.transform.localScale.x;
        hatStartPos = hat.transform.localPosition;
        hatStartRot = hat.transform.localRotation;
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

        playerInput.Dash.AddDefaultBinding(InputControlType.LeftBumper);
        playerInput.Dash.AddDefaultBinding(InputControlType.RightBumper);

    }

    void OnDisable() {
        playerInput.Destroy();
    }

    private void SetInputDevice() {
        playerInput.Device = PlayersManager.Players[playerNum].device;
        Debug.Log("Player " + playerNum + " trying to reconnect... " + playerInput.Device);
        if (playerInput.Device == null) return;
    }

    void Update() {
        if (playerNum >= PlayersManager.Players.Count) return;
        if (PlayersManager.Players[playerNum].device == null) {
            return;
            
        }else {
            playerInput.Device = PlayersManager.Players[playerNum].device;
        }

        CheckGround();
        CheckCamera();
        CooldownIndicatorControl();
        //EnergyControl();


        if (PlayersManager.Instance.ControlsEnabled) CheckElement();


        if (!stunned) {
            HoverAnimation();

            if (recoverTip != null) {
                Destroy(recoverTip);
                recoverTip = null;
            }

            if (PlayersManager.Instance.ControlsEnabled) {

                //System Controls
                ProjectileControl();
                ShieldControl();
                DashControl();

                //Movement
                if (chargingCast) moveSpeed = Mathf.Lerp(normalMoveSpeed, chargingMoveSpeed, chargePercent);
                else if (shielding) moveSpeed = shieldingMoveSpeed;
                else moveSpeed = normalMoveSpeed;

                transform.Translate(transform.InverseTransformDirection(moveDirection) * moveSpeed * Time.deltaTime);

            }

            //Rotate Body
            float targetLean = (moveDirection != Vector3.zero) ? 12f : 0f;
            Quaternion targetBodyRot = Quaternion.AngleAxis(targetLean, Vector3.Cross(transform.up, body.transform.InverseTransformDirection(moveDirection)));
            body.transform.localRotation = Quaternion.Slerp(body.transform.localRotation, targetBodyRot, .2f);
            transform.rotation = Quaternion.Slerp(transform.rotation, Quaternion.LookRotation(aimDirection), aimSlerpValue * Time.deltaTime);

        }
        else {
            if (recoverTip != null) {
                recoverTip.transform.position = transform.position + Vector3.up * 2.5f;
                recoverTip.transform.LookAt(Camera.current.transform);
            }
            stunnedTime += Time.deltaTime;
        }

    }

    void DashControl() {
        if (playerInput.Dash.WasPressed) {
            if (!dashing && dashCooldownTimer >= DashCooldown) {
                PlayersManager.Players[playerNum].Dashes++;
                StartCoroutine(DashSequence());
                playSoundModulated(dashSFX);

            }
        }
        if (!dashing && dashCooldownTimer < DashCooldown) {
            dashCooldownTimer += Time.deltaTime;
        }


    }

    void CooldownIndicatorControl() {
        //Resize the energy indicator
        if (energyIndicator != null) {
            energyIndicator.SetActive(!stunned);
            aimingIndicator.SetActive(!stunned);
            float displayEnergy = dashCooldownTimer / DashCooldown;
            displayEnergy *= displayEnergy;
            energyIndicator.transform.localScale = indicatorStartScale * new Vector3(displayEnergy, displayEnergy, displayEnergy);
        }

    }

    IEnumerator DashSequence() {
        trail.enabled = true;
        dashing = true;
        dashCooldownTimer = 0;
        Vector3 dir = moveDirection.normalized;
        if (dir == Vector3.zero) dir = aimDirection.normalized;
        float dist = 0;
        float s = DashSpeed;

        while (dashing && dist < DashDistance) {

            //s = (-Mathf.Sin(dist / DashDistance * 1.57f) + 1f) * DashSpeed + .5f;
            transform.Translate(transform.InverseTransformDirection(dir) * s * Time.deltaTime);
            dist += s * Time.deltaTime;
            yield return null;
        }
        dashing = false;
        trail.enabled = false;
    }

    void HoverAnimation() {
        body.transform.localPosition = new Vector3(0f, hoverAmplitude * Mathf.Sin(hoverTimer * hoverSpeed), 0f);
        hoverTimer += Time.deltaTime;
    }


    RaycastHit hit;
    float fallSpeed;
    int layerMask = 1 << 8;
    float hoverHeight = 1.6f;
    void CheckGround() {    

        if (Physics.Raycast(transform.position, Vector3.down, out hit, hoverHeight + .1f, layerMask)) {
            if(PlayersManager.Instance.ControlsEnabled) hit.collider.gameObject.SendMessageUpwards("PlayerOnPlatform", this, SendMessageOptions.DontRequireReceiver);
            transform.parent = hit.collider.gameObject.transform;
            if (stunned) {
                if (stunnedTime >= stunLength) {
                    if (recoverTip == null) {
                        recoverTip = Instantiate<GameObject>(RecoverTipPrefab);
                    }
                    if (playerInput.Jump.WasPressed) {
                        StartCoroutine(Recover());
                        playSoundNormal(recoverSFX);
                    }
                }
            }
            else {

                if (transform.position.y - hit.point.y < hoverHeight) {
                    transform.Translate(0, hit.point.y - transform.position.y + hoverHeight, 0);
                    rb.isKinematic = true;
                    //check if playing awnawn animation

                }
            }

        }
        else {
            if (recoverTip != null) {
                Destroy(recoverTip);
                recoverTip = null;
            }
            if (!stunned && !dashing) {

                rb.isKinematic = false;
                rb.AddForce(Vector3.down * 1.8f, ForceMode.Impulse);
            }
        }


        if (StageManager.Instance != null) {
            if (transform.position.y < StageManager.Instance.DeathHeight) {
                Kill();
            }
        }
    }

    public void Stun(float chargePercent) {
		soundSourceLong.Stop();//should fix bug where shield sound keeps playing if hit from behind
        if (invincible) return;

        dashing = false;

        if (chargingCast && !projectile.isCast) {
            projectile.Dissipate();
            chargingCast = false;
            chargePercent = 0f;
        }
        if (shielding) {
            shield.Collapse();
            shielding = false;
            soundSourceLong.Stop();
            playSoundModulated(element.shieldBreakSFX);
        }
        if (!stunned) {
            rb.isKinematic = false;
            stunned = true;
            hat.transform.parent = null;
            hat.GetComponent<Rigidbody>().isKinematic = false;
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
        if (chargingCast && playerInput.Cast.WasReleased) {

            CastProjectile(chargePercent);
            chargingCast = false;
            //useEnergy(PROJECTILE_COST * chargePercent);
            chargePercent = 0f;
        }

        if (playerInput.Cast.WasPressed && !projectileCooling) {
            if (!chargingCast && !shielding /* && currentEnergy > PROJECTILE_COST_MIN*/) {
                StartCoroutine(ProjectileCooldownSequence(projectileCooldownAmount));

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
            //chargePercent = Mathf.Clamp(chargePercent, 0, currentEnergy / PROJECTILE_COST);
            projectile.chargePercent = chargePercent;
            float projectileScale = Mathf.Lerp(projectile.minProjectileScale, projectile.maxProjectileScale, chargePercent);
            projectile.transform.localScale = new Vector3(projectileScale, projectileScale, projectileScale);
            projectile.transform.position = transform.position + transform.forward + projectileOffset;

        }


    }

    IEnumerator ProjectileCooldownSequence(float delay) {
        projectileCooling = true;
        yield return new WaitForSeconds(delay);
        projectileCooling = false;
    }

    void CastProjectile(float charge) {
        projectile.Cast(aimDirection.normalized, charge, playerNum);
        projectile = null;
    }

    void ShieldControl() {

        if (playerInput.Shield.WasPressed) {
            if (!shielding/* && currentEnergy > SHIELD_COST*/) {
                //Start shielding
                playSoundModulated(element.shieldSpawnSFX);
                soundSourceLong.clip = element.shieldExistSFX;
                soundSourceLong.Play();
                //useEnergy(SHIELD_COST);
                bumper.radius = PlayerBumper.ShieldRadius;
                shielding = true;
                shield = Instantiate<Shield>(element.shieldPrefab);
                shield.playerNum = playerNum;
                shield.element = element;

                if (!PlayersManager.Players[playerNum].ShieldsByElement.ContainsKey(element)) {
                    PlayersManager.Players[playerNum].ShieldsByElement.Add(element, 1);
                }
                else {
                    PlayersManager.Players[playerNum].ShieldsByElement[element]++;
                }

                //shield.transform.parent = transform;
                //hield.transform.localPosition = shieldOffset;
                shield.transform.position = transform.position + shieldOffset;
                shield.transform.rotation = transform.rotation;

                if (chargingCast) {
                    projectile.Dissipate();
                    chargingCast = false;
                    chargePercent = 0f;

                }
            }
        }

        if (shielding) {
            shield.transform.position = Vector3.Lerp(shield.transform.position, transform.position + shieldOffset, .8f);
            shield.transform.rotation = Quaternion.Slerp(shield.transform.rotation, transform.rotation, .2f);

        }

        if (shielding && playerInput.Shield.WasReleased) {
            shielding = false;
            bumper.radius = PlayerBumper.PlayerRadius;
            shield.Despawn();
            //play shield break sound
            soundSourceLong.Stop();
            playSoundModulated(element.shieldBreakSFX);
        }
    }

    //void EnergyControl() {
    //    if (chargingCast || shielding) recharging = false;
    //    else recharging = true;
    //    //Recharge energy
    //    if (recharging) {
    //        currentEnergy += rechargeAmount * Time.deltaTime;
    //        currentEnergy = Mathf.Clamp(currentEnergy, MIN_ENERGY, MAX_ENERGY);
    //    }


    //    //Resize the energy indicator
    //    if (energyIndicator != null) {
    //        energyIndicator.SetActive(!stunned);
    //        aimingIndicator.SetActive(!stunned);
    //        float displayEnergy = Mathf.Clamp(currentEnergy - PROJECTILE_COST * chargePercent, MIN_ENERGY, MAX_ENERGY);
    //        energyIndicator.transform.localScale = indicatorStartScale * new Vector3(displayEnergy, displayEnergy, displayEnergy);
    //    }
    //}

    void CheckCamera() {
        if (Camera.current != null) {
            forward = Camera.current.transform.forward;
            forward.y = 0;
            forward = forward.normalized;
            right = Camera.current.transform.right;
            right.y = 0;
            right = right.normalized;
            moveDirection = (playerInput.Move.Value.x * right + playerInput.Move.Value.y * forward);
            if (playerInput.Aim.Value != Vector2.zero) {
                aimDirection = (playerInput.Aim.Value.x * right + playerInput.Aim.Value.y * forward);
            }
        }
    }

    IEnumerator InvincibleTemp() {
        invincible = true;
        yield return new WaitForSeconds(invincibleTime);
        invincible = false;
    }

    IEnumerator Recover() {

        Quaternion targetRot = Quaternion.Euler(0f, transform.localEulerAngles.y, 0f);
        Vector3 newPos = transform.position;
        newPos.y = hoverHeight + 0.5f;
        float t = 0;
        Vector3 initPos = transform.position;
        Quaternion initRot = transform.rotation;
        rb.isKinematic = true;
		if(recoverParticleFX) {
			ParticleSystem tempRecoverParticleFX = (ParticleSystem)Instantiate(recoverParticleFX, transform.position + new Vector3(0, -1.5f, 0), recoverParticleFX.transform.localRotation);
			tempRecoverParticleFX.GetComponent<FollowPosition>().setFollow(transform);
			//tempRecoverParticleFX.transform.parent = transform;
		}


        while (t < recoverLength) {
            targetRot = Quaternion.Euler(0f, transform.localEulerAngles.y, 0f);
            transform.position = Vector3.Lerp(initPos, newPos, t / recoverLength);
            transform.rotation = Quaternion.Lerp(initRot, targetRot, t / recoverLength);
            t += Time.deltaTime;
            yield return null;

        }
        rb.isKinematic = true;
        stunned = false;
        StartCoroutine(InvincibleTemp());
    }

    void Kill() {
        playSoundNormal(deathSFX);
        //TODO: add delay or trigger
        Respawn();
    }


    void Respawn() {
        stunned = false;
        hat.transform.parent = body.transform;
        hat.transform.localPosition = hatStartPos;
        hat.transform.localRotation = hatStartRot;
        hat.GetComponent<Rigidbody>().isKinematic = true;
        rb.isKinematic = true;


        if (chargingCast && !projectile.isCast) {
            Destroy(projectile.gameObject);
            chargingCast = false;
            chargePercent = 0f;
        }

        if (shielding) {
            Destroy(shield.gameObject);
            shielding = false;
        }
        //reset damage/energy
        currentEnergy = MAX_ENERGY;
        setDamage(0);
        dashCooldownTimer = DashCooldown;
        Player p = PlayersManager.Players[playerNum];
        p.OnDeath();
        if (!p.defeated) {
            transform.position = SpawnPoint.GetSpawnPoint();
            transform.rotation = Quaternion.Euler(0f, transform.localEulerAngles.y, 0f);
        }
        else {
            gameObject.SetActive(false);
            if (CameraFollow.Instance != null) CameraFollow.Instance.updatePlayerList();


        }
        playSoundNormal(respawnSFX);

		ParticleSystem tempRespawnParticleFX = (ParticleSystem)Instantiate(respawnParticleFX, transform.position + new Vector3(0, 1.5f, 0), respawnParticleFX.transform.localRotation);
		tempRespawnParticleFX.transform.parent = transform;
        StartCoroutine(InvincibleTemp());

    }

    void ChangeElement(Element e) {
        element = e;
        if (idleParticleFX != null) {
            Destroy(idleParticleFX.gameObject);
        }
        idleParticleFX = (ParticleSystem)Instantiate(element.idleParticleFX, transform.position + new Vector3(0, -1f, 0), element.idleParticleFX.transform.localRotation);
        idleParticleFX.transform.parent = transform;

        switchParticleFX = (ParticleSystem)Instantiate(element.switchParticleFX, transform.position + new Vector3(0, -1.5f, 0), element.switchParticleFX.transform.localRotation);
        switchParticleFX.transform.parent = transform;
        //TODO: check that the game has started
        playSoundModulated(element.switchElementSFX);
    }

    public void takeDamage(float d) {
        if (!stunned) {
            setDamage(currentDamage + d);
        }
    }
    public void setDamage(float d) {
        currentDamage = d;
        if (rb == null) {
            rb = GetComponent<Rigidbody>();
        }
        rb.mass = StartMass / (1.0f + 0.05f * currentDamage);

    }

    //void useEnergy(float cost) {
    //    currentEnergy -= cost;
    //    currentEnergy = Mathf.Clamp(currentEnergy, MIN_ENERGY, MAX_ENERGY);
    //}

    public void SetMaterial(Material mat) {
        hat.GetComponent<Renderer>().material = mat;

        cape.GetComponent<Renderer>().material = mat;

    }

    public void playSoundNormal(AudioClip clip) {
        soundSource.clip = clip;
        soundSource.pitch = 1.0f;
        soundSource.Play();
    }

    public void playSoundModulated(AudioClip clip) {
        soundSource.clip = clip;
        soundSource.pitch = Random.Range(lowPitchRange, highPitchRange);
        soundSource.Play();
    }
}
