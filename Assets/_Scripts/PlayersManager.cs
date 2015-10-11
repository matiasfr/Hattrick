using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using InControl;

//Represents the player abstractly carrying data such s their controller, and pl
public class Player {
    public PlayerController character;
    public InputDevice device;
    public Player(InputDevice d, PlayerController pc) {
        character = pc;
        device = d;
    }

}


public class PlayersManager : MonoBehaviour {

    public static PlayersManager Instance;

    public static List<Player> Players = new List<Player>(8);
    public static List<InputDevice> devicesUnassigned = new List<InputDevice>(8);

    public PlayerController playerCharacterPrefab;

    public bool setupMode = true;

    void Awake() { Instance = this; }

    // Use this for initialization
    void Start() {
        InputManager.OnDeviceAttached += inputDevice => ControllerAttached(inputDevice);
        InputManager.OnDeviceDetached += inputDevice => ControllerDetached(inputDevice);

        foreach (InputDevice d in InputManager.Devices) {
            devicesUnassigned.Add(d);
        }
    }

    void ControllerAttached(InputDevice device) {
        Debug.Log("Controller attached");

        if (!setupMode) {
            //Try to reattach to existing player
            foreach (Player p in Players) {
                if (p.device == null) {
                    p.device = device;
                    if (p.character != null) p.character.SetInputDevice(device);
                    return;
                }
            }
        }
        devicesUnassigned.Add(device);
    }

    void ControllerDetached(InputDevice device) {
        Debug.Log("Controller detached");
        if (devicesUnassigned.Contains(device)) {
            devicesUnassigned.Remove(device);
        }
        Player p = Players.Find(x => x.device == device);
        if (p != null) {
            if (setupMode) {
                Debug.Log(p);

                //Remove player
                Destroy(p.character.gameObject);
                Players.Remove(p);

            }
            else {
                p.device = null;
                Debug.Log("Controller for player" + Players.IndexOf(p) + " detached");

            }

        }
    }
    // Update is called once per frame
    void Update() {
        if (setupMode) {
            for(int i = 0; i < devicesUnassigned.Count; i++) { 
                CheckToAdd(devicesUnassigned[i]);
            }

            if (InputManager.ActiveDevice.MenuWasPressed) {
                DontDestroyOnLoad(gameObject);
                Application.LoadLevel("StageSelect");
                Debug.Log("NOW IN STAGE SELECT SCENE");

            }
        }
    }

    public void StartGame() {
        //Spawn in new players
        setupMode = false;
        //foreach(player)


        Camera.main.GetComponent<CameraFollow>().updatePlayerList();

    }

    private void CheckToAdd(InputDevice d) {
        if (d.Action1.WasPressed) {
            //Create new player character for device
            devicesUnassigned.Remove(d);
            PlayerController newPC = Instantiate<PlayerController>(playerCharacterPrefab);
            newPC.SetInputDevice(d);
            Camera.main.GetComponent<CameraFollow>().updatePlayerList();
            //TODO SPAWNING IN CORRECT PLACE
            newPC.transform.position = new Vector3(0, 1.5f, 0);
            newPC.playerNum = Players.Count;
            Player p = new Player(d, newPC);
            Players.Add(p);
        }
    }
}
