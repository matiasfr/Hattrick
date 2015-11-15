using UnityEngine;
using InControl;
using UnityEngine.UI;
using UnityEngine.EventSystems;
using System.Collections;

public class EndGameGUI : MonoBehaviour {

    public static EndGameGUI Instance;
    public Text WinnerText;
    public Canvas canvas;
    public Button RematchButton;
    public GameObject Celebration;
    private PlayersManager pm;
    bool statsShowing = false;
    void Start() {
        Instance = this;
    }

    void Update() {
        if (statsShowing) {
            if (Input.GetKeyDown(KeyCode.Escape)) {
                EndRound();
            }


            foreach (InputDevice device in InputManager.Devices) {
                if (device.MenuWasPressed) {
                    EndRound();
                }
            }
        }
    }

    public void DisplayResults() {
        statsShowing = true;
        pm = PlayersManager.Instance;
        if (pm == null) return;

        if (pm.winner == null)
            WinnerText.text = "No Contest!";
        else {
            WinnerText.text = ((pm.winner.name != null && pm.winner.name.Length > 0) ? pm.winner.name : ("Player " + (pm.winner.playerNum + 1)))
                + " wins!";
            WinnerText.color = pm.winner.color;
        }
        for (int i = 0; i < PlayersManager.Players.Count; i++) {
            PlayerStatsGUI psg = GameHUD.Instance.playerHUDs[i].statsGUI;
            psg.UpdateStats(PlayersManager.Players[i]);
            psg.gameObject.SetActive(true);
            
        }
        Celebration.SetActive(true);

        PauseMenu.Instance.gameObject.SetActive(false);
       
    }


    public void EndRound() {
        statsShowing = false;
        for (int i = 0; i < PlayersManager.Players.Count; i++) {
            PlayerStatsGUI psg = GameHUD.Instance.playerHUDs[i].statsGUI;
            psg.gameObject.SetActive(false);

        }
        canvas.gameObject.SetActive(true);
        EventSystem.current.SetSelectedGameObject(RematchButton.gameObject);
        RematchButton.OnSelect(null);



    }

    public void Rematch() {
        PauseMenu.Instance.gameObject.SetActive(true);

        PlayersManager.Instance.StartGame();
        canvas.gameObject.SetActive(false);
        Celebration.SetActive(false);

    }

    public void StageSelect() {
        SceneManager.Instance.GoToScene("StageSelect");
    }

    public void BackToMenu() {
        SceneManager.Instance.QuitToMenu();

    }
}
