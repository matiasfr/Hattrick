using UnityEngine;
using System.Collections;

public class HideShowFPS : MonoBehaviour {


    public GameObject text;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
        if (Input.GetKeyDown(KeyCode.F)) {
            text.SetActive(!text.activeSelf);
        }
	}
}
