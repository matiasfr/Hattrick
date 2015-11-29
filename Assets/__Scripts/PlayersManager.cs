using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using InControl;
using System.IO;
using System;

//Represents the player abstractly carrying data such s their controller, and pl
public class Player {
    public PlayerController character;
    public InputDevice device;
    public string name;
    public int lives;
    public int playerNum;
    public bool defeated = false;
    public Color color;

    //Metrics
    public int Dashes;

    public Dictionary<Element, int> KOsByElement = new Dictionary<Element, int>();
    public Dictionary<Element, int> FallsByElement = new Dictionary<Element, int>();
    public Dictionary<Element, int> HitsByElement = new Dictionary<Element, int>();
    public Dictionary<Element, int> BlocksByElement = new Dictionary<Element, int>();
    public Dictionary<Element, int> ShotsByElement = new Dictionary<Element, int>();
    public Dictionary<Element, int> ShieldsByElement = new Dictionary<Element, int>();

    public PlayerHUD HUD;

    public Player(int num, InputDevice d) {
        playerNum = num;
        device = d;
        ResetElementStats(Element.EARTH);
        ResetElementStats(Element.FIRE);
        ResetElementStats(Element.WATER);
    }
    public void OnDeath() {

        if (lastHitByPlayer != -1) {
            if (!PlayersManager.Players[lastHitByPlayer].KOsByElement.ContainsKey(lastHitByElem)) {
                PlayersManager.Players[lastHitByPlayer].KOsByElement.Add(lastHitByElem, 1);
            }
            else {
                PlayersManager.Players[lastHitByPlayer].KOsByElement[lastHitByElem]++;
            }

            if (!FallsByElement.ContainsKey(lastHitByElem)) {
                FallsByElement.Add(lastHitByElem, 1);
            }
            else {
                FallsByElement[lastHitByElem]++;
            }

            lastHitByPlayer = -1;
            lastHitByElem = null;
        }

        if (PlayersManager.Instance.setupMode) {
            Debug.Log("Player " + playerNum + " died during game setup");

            return;
        }

        if (PlayersManager.Instance.gameOver) {
            return;
        }

        Debug.Log("Player " + playerNum + " lost a life");
        lives--;
        if (HUD != null) HUD.UpdateLives(lives);
        if (lives <= 0) {
            defeated = true;
            PlayersManager.Instance.PlayerDefeated(playerNum);
        }

    }

    public void ResetMetrics() {
        Dashes = 0;
        ResetElementStats(Element.EARTH);
        ResetElementStats(Element.FIRE);
        ResetElementStats(Element.WATER);
    }

    public void ResetElementStats(Element e) {
        if (KOsByElement.ContainsKey(e))
            KOsByElement[e] = 0;
        else
            KOsByElement.Add(e, 0);

        if (FallsByElement.ContainsKey(e))
            FallsByElement[e] = 0;
        else
            FallsByElement.Add(e, 0);

        if (HitsByElement.ContainsKey(e))
            HitsByElement[e] = 0;
        else
            HitsByElement.Add(e, 0);

        if (BlocksByElement.ContainsKey(e))
            BlocksByElement[e] = 0;
        else
            BlocksByElement.Add(e, 0);

        if (ShotsByElement.ContainsKey(e))
            ShotsByElement[e] = 0;
        else
            ShotsByElement.Add(e, 0);

        if (ShieldsByElement.ContainsKey(e))
            ShieldsByElement[e] = 0;
        else
            ShieldsByElement.Add(e, 0);



    }

    public string PrintMetrics() {
        return playerNum + ","
            + printDic(ShotsByElement) + printDic(ShieldsByElement) + printDic(KOsByElement) +
            +Dashes + "," + lives + "," + Environment.NewLine;
    }

    string printDic(Dictionary<Element, int> dict) {
        return (dict.ContainsKey(Element.EARTH) ? dict[Element.EARTH] : 0) + ","
            + (dict.ContainsKey(Element.FIRE) ? dict[Element.FIRE] : 0) + ","
            + (dict.ContainsKey(Element.WATER) ? dict[Element.WATER] : 0) + ",";
    }

    private int lastHitByPlayer = -1;
    private Element lastHitByElem = null;

    public void TrackHit(Projectile p) {
        lastHitByElem = p.element;
        lastHitByPlayer = p.casterPlayerNum;
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
    public bool startDelay = false;
    public bool ControlsEnabled = true;
    public bool Paused {
        set {
            if (value == true) {
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

        //Try to reattach to existing player
        foreach (Player p in Players) {
            if (p.device == null) {
                Debug.Log("Controller assigned to player " + p.playerNum);

                p.device = device;
                return;
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
            p.device = null;
            Debug.Log("Controller for player" + Players.IndexOf(p) + " detached");


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

        if (setupMode && Players.Count > 1) {
            foreach (InputDevice device in InputManager.Devices) {
                if (device.LeftBumper.WasPressed && device.RightBumper.WasPressed) {
                    setupMode = false;
					GameObject g = GameObject.FindWithTag("Fader");
                    if(g == null) Application.LoadLevel("StageSelect");
                    else g.GetComponent<SceneFadeInOut>().EndScene("StageSelect");

                    break;
                }
            }
        }

    }

    public void StartGame() {
        gameOver = false;
        ControlsEnabled = false;

        foreach (Player p in Players) {
            p.ResetMetrics();
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
        yield return new WaitForSeconds(.5f);
        //Spawn in new players
        foreach (Player player in Players) {
            Debug.Log("player " + player.playerNum + " : " + player.character);
            if (player.character == null) {

                CreatePlayerCharacter(player);
            }
            player.character.gameObject.SetActive(true);
            player.HUD = GameHUD.Instance.SetPlayerHUD(player);

            float theta = 2 * Mathf.PI / Players.Count * player.playerNum;
            player.character.setDamage(0);
            player.character.transform.position = new Vector3(Mathf.Cos(theta) * 5f, 10f, Mathf.Sin(theta) * 5f);
        }
        if (CameraFollow.Instance != null) CameraFollow.Instance.updatePlayerList();


        if (startDelay) {
            yield return new WaitForSeconds(5f);
            startDelay = false;
        }


        GameHUD.Instance.DisplayCenterText("Ready", 1f);



        yield return new WaitForSeconds(1f);
        GameHUD.Instance.DisplayCenterText("Set", 1f);
        Camera.main.GetComponent<CameraFollow>().SetAnchor();


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
        p.lives = 3;

        // newPC.SetInputDevice(p.device);
        if(CameraFollow.Instance != null) CameraFollow.Instance.updatePlayerList();


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
            MetricsManager.SaveMetrics();
        }
    }
}
