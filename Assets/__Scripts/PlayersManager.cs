﻿using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using InControl;

//Represents the player abstractly carrying data such s their controller, and pl
public class Player {
    public PlayerController character;
    public InputDevice device;
    public string name;
    public int lives;
    public int playerNum;
    public bool defeated = false;
    public Color color;

    public PlayerHUD HUD;

    public Player(int num, InputDevice d) {
        playerNum = num;
        device = d;
    }
    public void OnDeath() {
        if (PlayersManager.Instance.setupMode) {
            Debug.Log("Player " + playerNum + " died during game setup");

            return;
        }

        if (PlayersManager.Instance.gameOver) {
            return;
        }

        Debug.Log("Player " + playerNum + " lost a life");
        lives--;
        if(HUD != null) HUD.UpdateLives(lives);
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
    public bool ControlsEnabled = true;
    public bool Paused {
        set {
            if(value == true) {
                Time.timeScale = 0;
            }
            else {
                Time.timeScale = 1;
            }
        }
        get {
            return Time.timeScale == 0;
        }
    }

    public Player winner = null;

    public List<Material> defaultPlayerMaterials = new List<Material>();

    void Awake() {
        if (Instance == null) Instance = this;
        else {
            Destroy(this.gameObject);
            return;
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



        }


        //Menu Button control
        foreach (InputDevice device in InputManager.Devices) {
            if (device.MenuWasPressed) {
                if(setupMode) {
                    Application.LoadLevel("StageSelect");
                    break;
                }
                else {

                }
            }
        }
    }

    public void StartGame() {
        setupMode = false;
        gameOver = false;
        ControlsEnabled = false;

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

        //Spawn in new players
        foreach (Player player in Players) {
            if (player.character == null) CreatePlayerCharacter(player);
            player.character.gameObject.SetActive(true);
            float theta = 2*Mathf.PI / Players.Count * player.playerNum;
            player.character.transform.position = new Vector3(Mathf.Cos(theta) * 5f, 10f, Mathf.Sin(theta) * 5f);// SpawnPoint.GetSpawnPoint();
            player.HUD = GameHUD.Instance.SetPlayerHUD(player);
        }
        Camera.main.GetComponent<CameraFollow>().updatePlayerList();
        yield return new WaitForSeconds(5f);


        GameHUD.Instance.DisplayCenterText("Ready", 1f);
        Camera.main.GetComponent<CameraFollow>().SetAnchor();

       
        yield return new WaitForSeconds(1f);
        GameHUD.Instance.DisplayCenterText("Set", 1f);


        yield return new WaitForSeconds(1f);

        GameHUD.Instance.DisplayCenterText("Fight!", 1f);
        ControlsEnabled = true;





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
        //Look at origin
        newPC.transform.rotation = Quaternion.LookRotation(new Vector3(0, newPC.transform.position.y, 0) - newPC.transform.position);
        newPC.playerNum = Players.IndexOf(p);
        p.character = newPC;
        p.character.SetMaterial(defaultPlayerMaterials[p.playerNum]);
        p.color = defaultPlayerMaterials[p.playerNum].color;
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