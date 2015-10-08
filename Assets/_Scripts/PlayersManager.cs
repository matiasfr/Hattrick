using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using InControl;

public class PlayersManager : MonoBehaviour {

    public static List<PlayerController> PlayerCharacters = new List<PlayerController>(8);
    public static List<InputDevice> PlayerDevices = new List<InputDevice>(8);
    public static int numPlayers = 0;
    public PlayerController playerCharacterPrefab;


	// Use this for initialization
	void Start () {
        InputManager.OnDeviceAttached += inputDevice => ControllerAttached(inputDevice);
        InputManager.OnDeviceDetached += inputDevice => ControllerDetached(inputDevice);
    }
	

    void ControllerAttached(InputDevice device) {
        Debug.Log("Controller attached");
    }

    void ControllerDetached(InputDevice device) {
        int index = PlayerDevices.IndexOf(device);
        if (index != -1) {
            PlayerDevices[index] = null;
        }
        Debug.Log("Controller for player" + index + " detached");


    }
	// Update is called once per frame
	void Update () {
	    foreach(InputDevice d in InputManager.Devices) {
            if (!PlayerDevices.Contains(d)) { //New device joined
                CheckToAdd(d);
            }
        }
	}

    private void CheckToAdd(InputDevice d) {
        if (d.Action1.WasPressed) {
            //Try to reattach to existing player
            for (int i = 0; i < numPlayers; i++) {
                if (PlayerDevices[i] == null) {
                    PlayerDevices[i] = d;
                    //PlayerCharacters[i].playerInput = d;
                    return;
                }
            }

            //Create new player character for device
            numPlayers++;
            PlayerController newPC = Instantiate<PlayerController>(playerCharacterPrefab);
            newPC.transform.position = Vector3.zero;
            newPC.playerNum = numPlayers - 1;
            PlayerCharacters.Add(newPC);
            PlayerDevices.Add(d);


        }
    }
}
