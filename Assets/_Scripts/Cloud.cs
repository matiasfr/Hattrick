using UnityEngine;
using System.Collections;

public class Cloud : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
        transform.Translate(transform.parent.forward * CloudSpawner.windSpeed * Time.deltaTime, Space.World);
        if(transform.localPosition.z > 500f) {
            Destroy(gameObject);
        }
	}
}
