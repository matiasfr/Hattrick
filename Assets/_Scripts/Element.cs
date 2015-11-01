using UnityEngine;
using System.Collections;

//public enum Element { EARTH, FIRE, WATER };


public class Element : MonoBehaviour {

    public static Element EARTH;
    public static Element FIRE;
    public static Element WATER;

    public string ElementName;
    public Projectile projectilePrefab;
    public Shield shieldPrefab;

	public ParticleSystem idleParticleFX;
    public ParticleSystem switchParticleFX;
	public ParticleSystem impactParticleFX;
	public ParticleSystem projectileDissapateFX;

	public AudioClip switchElementSFX;
	public AudioClip shieldBreakSFX;
	public AudioClip shieldSpawnSFX;
	public AudioClip projectileChargingSFX;

	public AudioClip projectileImpactSFX;
	public AudioClip projectileDissipateSFX;
	public AudioClip projectileCastSFX;

    //public ParticleSystem shieldSpawnFX; //TODO: actually make this


    public Element weakness {
        get {
            if (this == Element.EARTH) return Element.WATER;
            else if (this == Element.FIRE) return Element.EARTH;
            else if (this == Element.WATER) return Element.FIRE;
            else return Element.FIRE;
        }
    }

    public static Element RandomElement {
        get {
            int i = Random.Range(0, 3);
            switch (i) {
                case 0:
                    return EARTH;
                case 1:
                    return WATER;
                case 2:
                default:
                    return FIRE;
            }
        }
    }

    //public Material projectileMaterial;
    //public Material shieldMaterial;
    public Material indicatorMaterial;

    void Awake() {
        switch(ElementName.ToUpper()) {
            case "EARTH":
                Element.EARTH = this;
                break;
            case "FIRE":
                Element.FIRE = this;
                break;
            case "WATER":
                Element.WATER = this;
                break;
        }
        Random.seed = System.Environment.TickCount;
    }

    void Start() {
    }


}


