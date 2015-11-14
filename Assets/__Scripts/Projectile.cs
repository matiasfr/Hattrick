using UnityEngine;
using System.Collections;

public class Projectile : MonoBehaviour {


    private Vector3 velocity = Vector3.zero;

    public float projectileSpeed = 1f;

    public float minForce = 1f;
    public float maxForce = 8f;

    private float projectileRange = 10f;
    public float projectileMaxRange = 40f;
    public float projectileMinRange = 4f;

    public float minProjectileScale = .5f;
    public float maxProjectileScale = 1.5f;

    public float MIN_DAMAGE = 3.0f;
    public float MAX_DAMAGE = 15.0f;

    private Vector3 startPos;
    private Collider col;
    public float chargePercent;
    private int casterPlayerNum;
    private AudioSource chargeSoundSource;
    private float lowPitch = 0.5f;
    private float highPitch = 2.0f;

    [HideInInspector]
    public Element element;

    [HideInInspector]
    public bool isCast = false;

    private Renderer ren;
    ParticleSystem impactParticleFX;
    ParticleSystem dissapateParticleFX;


    public ParticleSystem ChargingEffectPrefab;
    private ParticleSystem chargingEffect = null;

    private TrailRenderer tr;

    void Start() {
        col = GetComponent<Collider>();
        tr = GetComponent<TrailRenderer>();
        chargeSoundSource = GetComponent<AudioSource>();
        col.enabled = false;
        chargingEffect = (ParticleSystem)Instantiate(ChargingEffectPrefab, transform.position, transform.localRotation);
        chargingEffect.transform.parent = transform;

        chargeSoundSource.pitch = lowPitch;
        chargeSoundSource.clip = element.projectileChargingSFX;
        chargeSoundSource.Play();
    }


    void Update() {
        chargeSoundSource.pitch = Mathf.Lerp(lowPitch, highPitch, chargePercent);
        //print(Mathf.Lerp(lowPitch, highPitch, chargePercent));

        float distanceTraveled = Vector3.Distance(startPos, transform.position);
        if (isCast && distanceTraveled > projectileRange) {
            Dissipate();
        }
        
    }

    void FixedUpdate() {
        transform.Translate(velocity * Time.deltaTime);

    }

    public void Cast(Vector3 direction, float charge, int playerNum) {
        if (element == Element.EARTH) {
            PlayersManager.Players[playerNum].EarthProj++;
        }
        else if (element == Element.FIRE) {
            PlayersManager.Players[playerNum].FireProj++;
        }
        else if (element == Element.WATER) {
            PlayersManager.Players[playerNum].WaterProj++;
        }
        tr.startWidth = (1+chargePercent) * tr.startWidth;
        tr.time = (1 + chargePercent) * tr.time;

        Destroy(chargingEffect.gameObject);
        startPos = transform.position;
        casterPlayerNum = playerNum;
        chargePercent = charge;
        float speed = projectileSpeed * (-1.8f * (charge * charge) + 2.2f * charge + .3f);
        velocity = direction * speed;
        projectileRange = Mathf.Lerp(projectileMinRange, projectileMaxRange, charge);
        col.enabled = true;
        isCast = true;
        AudioSource.PlayClipAtPoint(element.projectileCastSFX, transform.position, 1.0f);

        chargeSoundSource.Stop();
        //TODO keep track of player who cast
    }

    void OnCollisionEnter(Collision collision) {
        GameObject other = collision.collider.gameObject;

        //Check if player
        PlayerController pc = other.GetComponent<PlayerController>(); //Check if projectile hit a player
        if (pc != null) {
            if (pc.playerNum != casterPlayerNum) {

                //PlayersManager.Players[pc.playerNum].TrackHit(this);

                Rigidbody rb = other.GetComponent<Rigidbody>();
                pc.takeDamage(Mathf.Lerp(MIN_DAMAGE, MAX_DAMAGE, chargePercent));
                
                pc.Stun(chargePercent);
                rb.AddForceAtPosition(velocity.normalized * Mathf.Lerp(minForce, maxForce, chargePercent), collision.contacts[0].point, ForceMode.Impulse);
                Impact();


                
            }
            return;
        }

        ShieldPiece sp = other.GetComponent<ShieldPiece>();
        if (sp != null) { //Check if projectile hit a shield piece
            if (sp.shield == null) return;
            if (sp.shield.element.weakness == element) { //If the shield is weak to this projectile type
                sp.Collapse();
                Rigidbody rb = other.GetComponent<Rigidbody>();
                rb.AddForceAtPosition(velocity.normalized * Mathf.Lerp(minForce, maxForce, chargePercent), collision.contacts[0].point, ForceMode.Impulse);
            }
            else if (sp.shield.element == element) { //If the shield is the same as this projectile type
                Impact();
                if (chargePercent > sp.shield.Power) {
                    sp.Collapse();
                    Rigidbody rb = other.GetComponent<Rigidbody>();
                    rb.AddForceAtPosition(velocity.normalized * Mathf.Lerp(minForce, maxForce, chargePercent), collision.contacts[0].point, ForceMode.Impulse);
                }            
            }
            else { // If the shield is strong against and blocks this projectile type
                Impact();

            }
            return;
        }

        Projectile p = other.GetComponent<Projectile>();
        if(p != null) {
            p.Impact();
            Impact();
            return;
        }

    }

    public void Dissipate() {
        AudioSource.PlayClipAtPoint(element.projectileDissipateSFX, transform.position, 1.0f);
        if (velocity != Vector3.zero)
        dissapateParticleFX = (ParticleSystem)Instantiate(element.projectileDissapateFX, transform.position, Quaternion.LookRotation(velocity));
        Destroy(gameObject);
    }

    public void Impact() {
        AudioSource.PlayClipAtPoint(element.projectileImpactSFX, transform.position, 1.0f);
        impactParticleFX = (ParticleSystem)Instantiate(element.impactParticleFX, transform.position, element.impactParticleFX.transform.localRotation);
        Destroy(gameObject);
    }

}