using UnityEngine;
using System.Collections;
using System.Collections.Generic;
public class WaterShieldAnimation : MonoBehaviour {

    private Shield s;
    private Dictionary<Transform, Vector3> targetPos = new Dictionary<Transform, Vector3>();
    private bool animatingIn;

    void Start() {
        s = GetComponent<Shield>();
        foreach (ShieldPiece sp in s.pieces) {
            sp.transform.localScale = Vector3.zero;
        }
        animatingIn = true;

    }

    void Update() {
        if (animatingIn) {
            foreach (ShieldPiece sp in s.pieces) {
                
                    sp.transform.localScale = Vector3.Lerp(sp.transform.localScale, Vector3.one, 10f * Time.deltaTime);
                    if (Vector3.Distance(sp.transform.localScale, Vector3.one) < .01f) animatingIn = false;
                
            }
        }
    }
}
