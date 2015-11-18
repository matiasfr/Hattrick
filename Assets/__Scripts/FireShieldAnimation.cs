using UnityEngine;
using System.Collections;
using System.Collections.Generic;
public class FireShieldAnimation : ShieldAnimation {

    private Shield s;
    private Dictionary<Transform, Vector3> targetPos = new Dictionary<Transform, Vector3>();
    private Dictionary<Transform, Vector3> endPos = new Dictionary<Transform, Vector3>();
    private Dictionary<ShieldPiece, Renderer> ren = new Dictionary<ShieldPiece, Renderer>();

    private float t = 0f;
    private float len = 2f;

    void Start() {
        s = GetComponent<Shield>();
        foreach (ShieldPiece sp in s.pieces) {
            targetPos.Add(sp.transform, sp.transform.localPosition);

            sp.transform.localPosition += new Vector3(Random.Range(-1f, 1f), -3f, Random.Range(-2f, 0f));
            ren.Add(sp, sp.GetComponent<Renderer>());


        }
        animatingIn = true;
        t = 0f;
    }


    Material mat;
    Color endColor = new Color(0f, 0f, 0f, 0f);

    Color endEmission = new Color(0f, 0f, 0f);

    void Update() {
        if (animatingIn) {
            foreach (ShieldPiece sp in s.pieces) {
                if (sp == null) continue;

                if (targetPos[sp.transform].y > 1f) {
                    sp.transform.localPosition = Vector3.Lerp(sp.transform.localPosition, targetPos[sp.transform], 10f * Time.deltaTime);
                    if (Vector3.Distance(sp.transform.localPosition, targetPos[sp.transform]) < .01f) animatingIn = false;


                }
                else if (targetPos[sp.transform].y > .5f) {
                    sp.transform.localPosition = Vector3.Lerp(sp.transform.localPosition, targetPos[sp.transform], 13f * Time.deltaTime);

                }
                else {
                    sp.transform.localPosition = Vector3.Lerp(sp.transform.localPosition, targetPos[sp.transform], 16f * Time.deltaTime);
                }
            }
        }
        else if (animatingOut) {
            foreach (ShieldPiece sp in s.pieces) {
                if (sp == null) continue ;

                if (t == 0f) {
                    sp.shield.transform.parent = null;
                    sp.GetComponent<Collider>().enabled = false;
                    endPos[sp.transform] = sp.transform.position + new Vector3(0, 1f + Random.Range(0f, 4f), 0f);
                    //Destroy(sp.gameObject, len);
                }
                mat = ren[sp].material;
                mat.SetFloat("EmissionColor", 1 - 2 * (t / len));
                mat.color = Color.Lerp(mat.color, endColor, 2 * t / len);

                if (targetPos[sp.transform].y > 1f) {
                    sp.transform.position = Vector3.Lerp(sp.transform.position, endPos[sp.transform], t / len);


                }
                else if (targetPos[sp.transform].y > .5f) {
                    sp.transform.position = Vector3.Lerp(sp.transform.position, endPos[sp.transform], t / len);

                }
                else {
                    sp.transform.position = Vector3.Lerp(sp.transform.position, endPos[sp.transform], t / len);

                }
            }
            if (t  > len) {
                animatingOut = false;

                Destroy(s.gameObject);
                return;

            }
            t += Time.deltaTime;

        }
    }
}
