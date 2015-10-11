using UnityEngine;
using System.Collections;

public class CameraFollow : MonoBehaviour {

	private ArrayList playerPositions;
	private Camera cam;
	public Vector3 anchor;

	public float FOV_MAX = 70;
	public float FOV_MIN = 40; //range for fov
	public float DISTANCE_MAX = 20;//distance values that fov scales on
	public float DISTANCE_MIN = 0;

	void Start () {
		cam = Camera.main;
		anchor = gameObject.transform.position;
		playerPositions = new ArrayList ();
		//Find all references to player transforms and store in list
		GameObject[] players;
		players = GameObject.FindGameObjectsWithTag ("Player");
		foreach (GameObject n in players) {
			playerPositions.Add(n.transform);
		}

	}
	
	void Update () {
		if(playerPositions.Count > 0) {
			adjustFOV ();
			panCamera ();
		}
	}

	void adjustFOV() {
		float maxDistance=0;
		//lerp fov based on most distant pair of players
		foreach(Transform t in playerPositions) { //n^2 but only 4 players so its not bad
			foreach(Transform n in playerPositions) { //inefficient because im checking double
				if(n != t) {
					Vector3 diff = n.position- t.position;
					float distance = diff.magnitude;
					//print (distance);
					if(distance > maxDistance) { 
						maxDistance = distance;
					}
				}
			}
		}
		//should now have max distance between players
		Mathf.Clamp (DISTANCE_MIN, DISTANCE_MAX, maxDistance); //temp clamp
		float percent = maxDistance / DISTANCE_MAX;
		cam.fieldOfView = Mathf.Lerp (FOV_MIN,FOV_MAX, percent);
		//print ("FOV: " + cam.fieldOfView);
		//print ("percent: "+percent);

	}

	void panCamera() {
		Vector3 sum = new Vector3(0.0f, 0.0f, 0.0f);
		foreach(Transform n in playerPositions) { 
			sum = sum +n.position;
		}
		Vector3 mean = sum / playerPositions.Count;
		mean.y = 0;
		//print("center point: " + mean);
		Vector3 des = mean+anchor;
		transform.position = Vector3.Lerp(transform.position, des, 0.5F * Time.deltaTime);
	}

	void updatePlayerList() {
		playerPositions.Clear();
		//Find all references to player transforms and store in list
		GameObject[] players;
		players = GameObject.FindGameObjectsWithTag ("Player");
		foreach (GameObject n in players) {
				playerPositions.Add(n.transform);
		}
	}
}
