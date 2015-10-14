using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using InControl;

//Represents the player abstractly carrying data such s their controller, and pl
public class Player {
    public PlayerController character;
    public InputDevice device;
    public int lives;
    public int playerNum;
    public bool defeated = false;
    public Player(int num, InputDevice d) {
        playerNum = num;
        device = d;
    }
    public void OnDeath() {
        if (PlayersManager.Instance.setupMode) {
            Debug.Log("Player " + playerNum + " died during setup mode");

            return;
        }

        if (PlayersManager.Instance.gameOver) {
            return;
        }

        Debug.Log("Player " + playerNum + " lost a life");
        lives--;
        if (lives <= 0) {
            defeated = true;
            PlayersManager.Instance.PlayerDefeated(playerNum);

        }

    }

}


public class PlayersManager : MonoBehaviour {

    public static PlayersManager Instance;

    public static List<Player> Players = new List<Player>(8);
    public List<InputDevice> devicesUnassigned = new List<InputDevice>(8);

    public PlayerController playerCharacterPrefab;

    public int numLives = 3;
    public bool setupMode = false;
    public bool gameOver = false;

    public Player winner = null;

    public List<Material> defaultPlayerMaterials = new List<Material>();

    void Awake() {
        if (Instance == null) Instance = this;
        else {
            Destroy(this.gameObject);
        }
        DontDestroyOnLoad(gameObject);

    }

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

            if (InputManager.MenuWasPressed) {
                Application.LoadLevel("StageSelect");
            }

        }
    }

    public void StartGame() {
        setupMode = false;
        gameOver = false;
        foreach (Player p in Players) {
            p.lives = numLives;
            p.defeated = false;
        }
        StartCoroutine(StartSequence());

    }

    public void ClearPlayers() {
        foreach (Player p in Players) {
            devicesUnassigned.Add(p.device);

        }
        Players.Clear();
    }

    private IEnumerator StartSequence() {
        yield return null;
        //GameHUD.DisplayLargeText("Ready");
        Debug.Log("Ready...");

        //Spawn in new players
        foreach (Player player in Players) {
            if(player.character == null) CreatePlayerCharacter(player);
            player.character.gameObject.SetActive(true);
            player.character.transform.position = SpawnPoint.GetSpawnPoint();
        }
        Camera.main.GetComponent<CameraFollow>().updatePlayerList();
        yield return new WaitForSeconds(2);
        Debug.Log("Fight!");


        //GameHUD.DisplayLargeText("Fight!");





    }


    private void CheckToAdd(InputDevice device) {
        if (device.Action1.WasPressed) {
            //Create new player character for device
            devicesUnassigned.Remove(device);
            Player p = new Player(Players.Count, device);
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
        p.character.SetMaterial(defaultPlayerMaterials[p.playerNum]);

        // newPC.SetInputDevice(p.device);
        Camera.main.GetComponent<CameraFollow>().updatePlayerList();


    }

    public void PlayerDefeated(int playerNum) {
        Debug.Log("Player " + playerNum + " defeated!");
        int numLeft = 0;
        Player possibleWinner = null;
        foreach (Player p in Players) {
            if (!p.defeated) {
                possibleWinner = p;
                numLeft++;
            }
        }
        if (numLeft <= 1) {
            winner = possibleWinner;
            gameOver = true;
            Debug.Log("GAME OVER");
            EndGameGUI.Instance.DisplayResults();
        }
    }
}
