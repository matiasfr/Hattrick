using UnityEngine;
using System.Collections;

public class Projectile : MonoBehaviour {


    public bool isCast = false;
    private Vector3 velocity = Vector3.zero;
    public float projectileSpeed = 1f;
    public float projectileForce = 10f;
    private float projectileRange = 10f;
    public float projectileMaxRange = 40f;
    public float projectileMinRange = 4f;
    public float minProjectileScale = .5f;
    public float maxProjectileScale = 1.5f;
    private Vector3 startPos;
    private Collider col;
    private float chargePercent;
    private int casterPlayerNum;
    public Element element;
    private Renderer ren;
	public float MIN_DAMAGE = 3.0f;
	public float MAX_DAMAGE = 15.0f;

    void Start() {
        col = GetComponent<Collider>();
        col.enabled = false;
    }


    void Update() {
        transform.Translate(velocity);

        float distanceTraveled = Vector3.Distance(startPos, transform.position);
        if(isCast && distanceTraveled > projectileRange) {
            Dissipate();
        }
    }

    public void Cast(Vector3 direction, float charge, int playerNum) {
        startPos = transform.position;
        casterPlayerNum = playerNum;
        chargePercent = charge;
        float speed = projectileSpeed * (-1.8f * (charge * charge) + 2.2f * charge + .3f);
        velocity = direction * speed;
        projectileRange = Mathf.Lerp(projectileMinRange, projectileMaxRange, charge);
        col.enabled = true;
        isCast = true;

        //TODO keep track of player who cast
    }

    void OnCollisionEnter(Collision collision) {
        GameObject other = collision.collider.gameObject;

        PlayerController pc = other.GetComponent<PlayerController>(); //Check if projectile hit a player
        if (pc != null) {
            if (pc.playerNum != casterPlayerNum) {
                Rigidbody rb = other.GetComponent<Rigidbody>();
                pc.Stun(chargePercent);
				pc.takeDamage(Mathf.Lerp(MIN_DAMAGE,MAX_DAMAGE,chargePercent));
                rb.AddForceAtPosition(velocity * chargePercent * projectileForce, collision.contacts[0].point, ForceMode.Impulse);
                Impact();
            }
        }
        else {
            ShieldPiece sp = other.GetComponent<ShieldPiece>();
            if (sp != null) { //Check if projectile hit a shield piece

                if(sp.shield.element.weakness == element) { //If the shield is weak to this projectile type
                    sp.Collapse();
                    Rigidbody rb = other.GetComponent<Rigidbody>();
                    rb.AddForceAtPosition(velocity * chargePercent * projectileForce, collision.contacts[0].point, ForceMode.Impulse);

                }
                else if(sp.shield.element == element) { //If the shield is the same as this projectile type
                    Impact();
                    if (chargePercent > sp.shield.Power) {
                        sp.Collapse();
                        Rigidbody rb = other.GetComponent<Rigidbody>();
                        rb.AddForceAtPosition(velocity * chargePercent * projectileForce, collision.contacts[0].point, ForceMode.Impulse);

                    }

                }
                else { // If the shield is strong against and blocks this projectile type
                    Impact();

                }


            }
        }
    }

    public void Dissipate() {
        Destroy(gameObject);
        //TODO Add dissapate VFX + SFX
    }

    public void Impact() {
        Destroy(gameObject);
        //TODO Add impact VFX + SFX
    }
}