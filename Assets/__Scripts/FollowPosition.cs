using UnityEngine;
using System.Collections;

public class FollowPosition : MonoBehaviour {

	public Transform toFollow;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		if(toFollow) {
			transform.position = toFollow.position + new Vector3(0, -1.5f, 0);
		}
	}


	public void setFollow(Transform t) {
		toFollow = t;
	}
}
