using UnityEngine;
using System.Collections;

public class CinematicCamera : MonoBehaviour {

    public Transform target;
    public Vector3 targetPos;
    float damping = 5f;
    public float distance = 20f;
    public float Speed = 10f;
    public Vector3 offSet;
    public Vector3 pan;
    Transform center;

    void Start() {
        GetComponent<AudioListener>().enabled = false;
        GetComponent<Camera>().enabled = false;
        center = new GameObject().transform;
        pan = new Vector3();
        if (target) {
            SetTarget(target);
            SetCinematic();
        }
    }

    // Update is called once per frame
    void Update() {
        if (Input.GetKeyDown(KeyCode.Alpha1)) {
            SetTarget(PlayersManager.Players[0].character.transform);
            SetCinematic();

        }
        if (Input.GetKeyDown(KeyCode.Alpha2)) {
            SetTarget(PlayersManager.Players[1].character.transform);
            SetCinematic();

        }
        if (Input.GetKeyDown(KeyCode.Alpha0)) {
            SetNormal();

        }
        if (Input.GetKeyDown(KeyCode.Alpha3)) {
            SetTarget(center);
            SetCinematic();

        }


        if (Input.GetKey(KeyCode.UpArrow)) {
            distance -= Speed * Time.deltaTime;
        }else if (Input.GetKey(KeyCode.DownArrow)) {
            distance += Speed * Time.deltaTime;

        }

        if (Input.GetKey(KeyCode.LeftArrow)) {
            pan += Speed * Time.deltaTime * -transform.right;
        }
        else if (Input.GetKey(KeyCode.RightArrow)) {
            pan += Speed * Time.deltaTime * transform.right;

        }

        if (Input.GetKey(KeyCode.W)) {
            offSet.y += Speed * Time.deltaTime;
        }else if (Input.GetKey(KeyCode.S)) {
            offSet.y -= Speed * Time.deltaTime;
        }
        if (Input.GetKey(KeyCode.A)) {
            offSet += Speed * Time.deltaTime * transform.right;
        }else if (Input.GetKey(KeyCode.D)) {
            offSet -= Speed * Time.deltaTime * transform.right;
        }
        if (target) {

            //Look at and dampen the rotation
            Quaternion rotation = Quaternion.LookRotation((target.position+ pan) - transform.position);
            transform.rotation = Quaternion.Slerp(transform.rotation, rotation, Time.deltaTime * damping);
            transform.position = Vector3.Lerp(transform.position, pan + target.position + offSet.normalized*distance, damping * Time.deltaTime);

        }
    }

    public void SetTarget(Transform newTarget) {
        target = newTarget;
        //transform.parent = target;
        distance = Vector3.Distance(transform.position, target.position);
        offSet = transform.position - (target.position + pan);
    }

    public void SetCinematic() {

        CameraFollow.Instance.GetComponent<Camera>().enabled = false;
        GetComponent<Camera>().enabled = true;
        
    }

    public void SetNormal() {
        CameraFollow.Instance.GetComponent<Camera>().enabled = true;

        GetComponent<Camera>().enabled = false;

    }
}
