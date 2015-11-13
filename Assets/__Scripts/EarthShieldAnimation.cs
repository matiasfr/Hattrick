using UnityEngine;
using System.Collections;
using System.Collections.Generic;
public class EarthShieldAnimation : MonoBehaviour {

    private Shield s;
    private Dictionary<Transform, Vector3> targetPos = new Dictionary<Transform, Vector3>();
    private bool animatingIn;

    void Start () {
        s = GetComponent<Shield>();
        foreach (ShieldPiece sp in s.pieces) {
            targetPos.Add(sp.transform, sp.transform.localPosition);
            sp.transform.localPosition += new Vector3(0, -3f, 0f);
        }
        animatingIn = true;
	
	}
	
	void Update () {
        if (animatingIn) {
            foreach (ShieldPiece sp in s.pieces) {
                if (targetPos[sp.transform].y > 1f) {
                    sp.transform.localPosition = Vector3.Lerp(sp.transform.localPosition, targetPos[sp.transform], 10f * Time.deltaTime);

                }
                else if (targetPos[sp.transform].y > .5f) {
                    sp.transform.localPosition = Vector3.Lerp(sp.transform.localPosition, targetPos[sp.transform], 8f * Time.deltaTime);

                }
                else {
                    sp.transform.localPosition = Vector3.Lerp(sp.transform.localPosition, targetPos[sp.transform], 6f * Time.deltaTime);
                    if (Vector3.Distance(sp.transform.localPosition, targetPos[sp.transform]) < .01f) animatingIn = false;
                }
            }
        }
    }
}
