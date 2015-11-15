using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public abstract class ShieldAnimation : MonoBehaviour {
    public bool animatingIn;
    public bool animatingOut;
}

public class EarthShieldAnimation : ShieldAnimation {

    private Shield s;
    private Dictionary<Transform, Vector3> targetPos = new Dictionary<Transform, Vector3>();
    private Dictionary<Transform, Quaternion> targetRot = new Dictionary<Transform, Quaternion>();
    private float t = 0f;
    private float len = .5f;

    void Start () {
        s = GetComponent<Shield>();
        foreach (ShieldPiece sp in s.pieces) {
            targetPos.Add(sp.transform, sp.transform.localPosition);
            targetRot.Add(sp.transform, sp.transform.localRotation);
            Vector3 axis = sp.transform.localPosition;
            axis.y = 0f;
            sp.transform.Rotate(Vector3.Cross(axis, Vector3.up), -100);
            sp.transform.localPosition += new Vector3(0, -1.5f - sp.transform.localPosition.y, 0f);

        }
        animatingIn = true;
        t = 0f;
	
	}
	
	void Update () {
        if (animatingIn) {
            foreach (ShieldPiece sp in s.pieces) {
                if (sp == null) continue;

                if (targetPos[sp.transform].y > 1f) {
                    sp.transform.position = Vector3.Lerp(sp.transform.position, sp.transform.parent.TransformPoint(targetPos[sp.transform]), t / len);
                    sp.transform.localRotation = Quaternion.Slerp(sp.transform.localRotation, targetRot[sp.transform], t/len -.2f);

                }
                else if (targetPos[sp.transform].y > .5f) {
                    sp.transform.position = Vector3.Lerp(sp.transform.position, sp.transform.parent.TransformPoint(targetPos[sp.transform]), t / len - .1f);

                    sp.transform.localRotation = Quaternion.Slerp(sp.transform.localRotation, targetRot[sp.transform], t / len - .2f);

                }
                else {
                    sp.transform.position = Vector3.Lerp(sp.transform.position, sp.transform.parent.TransformPoint(targetPos[sp.transform]), t / len - .2f);

                    sp.transform.localRotation = Quaternion.Slerp(sp.transform.localRotation, targetRot[sp.transform], t / len - .2f);

                    if (Vector3.Distance(sp.transform.localPosition, targetPos[sp.transform]) < .01f) {
                        animatingIn = false;
                    }
                }
            }
            
            t += Time.deltaTime;

        }
        else if (animatingOut) {
            foreach (ShieldPiece sp in s.pieces) {
                if (sp == null) continue;

                Rigidbody rb = sp.GetComponent<Rigidbody>();
                rb.isKinematic = false;
                rb.useGravity = true;
                rb.AddExplosionForce(3f, transform.position, 6f, 1f, ForceMode.Impulse);
                Destroy(sp.gameObject, Random.Range(.3f, 1.9f));

            }
            Destroy(s.gameObject, 2f);
            animatingOut = false;

        }
    }


}
