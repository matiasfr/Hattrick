using UnityEngine;
using System.Collections;

public class ShieldPiece : MonoBehaviour {
    public Shield shield;
    private Rigidbody rb;
    
    public Rigidbody rigidbody {
        get {
            return rb;
        }
    }


    // Use this for initialization
	void Start () {
        rb = GetComponent<Rigidbody>();
	}
	
	// Update is called once per frame
	void Update () {
	
	}

    public void Collapse() {
        transform.parent = null;
        rb.isKinematic = false;
        Destroy(gameObject, Random.Range(1f, 3f));
    }

}
