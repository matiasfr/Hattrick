using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class Shield : MonoBehaviour {
    private float shieldTime = 0f;
    public float maxShieldTime = 3f;
    public bool CollapseOnDespawn = false;
    public List<ShieldPiece> pieces = new List<ShieldPiece>();
    private PlayerBumper pb;
    [HideInInspector]
    public Element element;


    public float Power {
        get {
            return Mathf.Clamp01(1f - (shieldTime / maxShieldTime));
        }
    }

    void Start () {
        
	}


    // Update is called once per frame
    void Update () {
        shieldTime += Time.deltaTime;

    }

    public void Despawn() {
        transform.parent = null;

        ShieldAnimation anim = GetComponent<ShieldAnimation>();
        if (anim != null) {
            anim.animatingOut = true;
            anim.animatingIn = false;
        }
        else {
            Destroy(gameObject);
        }


    }

    public void Collapse() {
        //ShieldAnimation anim = GetComponent<ShieldAnimation>();
        //if (anim != null) {
        //    anim.animatingOut = false;
        //    anim.animatingIn = false;
        //}
        //foreach (ShieldPiece sp in GetComponentsInChildren<ShieldPiece>()) {
        //    sp.Collapse();
        //    sp.rigidbody.AddExplosionForce(5f, transform.position, 6f, 1f, ForceMode.Impulse);
        //}
        //Destroy(gameObject, 3f);
        Despawn();

    }


    }
