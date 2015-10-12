using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using InControl;

//Represents the player abstractly carrying data such s their controller, and pl
public class Player {
    public PlayerController character;
    public InputDevice device;
    public int lives;
    public Player(InputDevice d) {
        device = d;
        lives = 3;
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
                    //if (p.character != null) p.character.SetInputDevice(device);
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
                //Remove player
                Destroy(p.character.gameObject);
                Players.Remove(p);
                Camera.main.GetComponent<CameraFollow>().updatePlayerList();


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
            for (int i = 0; i < devicesUnassigned.Count; i++) {
                CheckToAdd(devicesUnassigned[i]);
            }
            foreach (Player player in Players) {
                if (player.device.LeftBumper.WasPressed) {
                    DontDestroyOnLoad(gameObject);
                    Application.LoadLevel("StageSelect");
                    break;
                }
            }
        }
    }

    public void StartGame() {
        StartCoroutine(StartSequence());

    }

    private IEnumerator StartSequence() {
        yield return null;
        //GameHUD.DisplayLargeText("Ready");
        Debug.Log("Ready...");

        //Spawn in new players
        setupMode = false;
        foreach (Player player in Players) {
            CreatePlayerCharacter(player);
            player.character.transform.position = SpawnPoint.GetSpawnPoint();
        }
        Camera.main.GetComponent<CameraFollow>().updatePlayerList();
        yield return new WaitForSeconds(2);
        Debug.Log("Fight!");


        //GameHUD.DisplayLargeText("Fight!");





    }


    private void CheckToAdd(InputDevice d) {
        if (d.Action1.WasPressed) {
            //Create new player character for device
            devicesUnassigned.Remove(d);
            Player p = new Player(d);
            Players.Add(p);
            CreatePlayerCharacter(p);



        }
    }

    private void CreatePlayerCharacter(Player p) {
        //Create new player character
        PlayerController newPC = Instantiate<PlayerController>(playerCharacterPrefab);
        newPC.transform.position = SpawnPoint.GetSpawnPoint();
        newPC.playerNum = Players.IndexOf(p);
        p.character = newPC;

       // newPC.SetInputDevice(p.device);
        Camera.main.GetComponent<CameraFollow>().updatePlayerList();


    }
}
