using UnityEngine;
using System.Collections;
using InControl;

public class PlayersManager : MonoBehaviour {

	// Use this for initialization
	void Start () {
        InputManager.OnDeviceAttached += inputDevice => Debug.Log("Attached: " + inputDevice.Name);
        InputManager.OnDeviceDetached += inputDevice => Debug.Log("Detached: " + inputDevice.Name);
    }
	

    void ControllerAttached(InputDevice device) {

    }
	// Update is called once per frame
	void Update () {
	
	}
}
