using UnityEngine;
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

    void Start() {
        Instance = this;
    }

    void Update() {
        
    }

    public void DisplayResults() {
        pm = PlayersManager.Instance;
        if (pm == null) return;

        if (pm.winner == null)
            WinnerText.text = "No Contest!";
        else {
            WinnerText.text = ((pm.winner.name != null && pm.winner.name.Length > 0) ? pm.winner.name : ("Player " + (pm.winner.playerNum + 1)))
                + " wins!";
            WinnerText.color = pm.winner.color;
        }

        Celebration.SetActive(true);

        PauseMenu.Instance.gameObject.SetActive(false);
       
    }


    public void EndRound() {
        canvas.gameObject.SetActive(true);
        EventSystem.current.SetSelectedGameObject(RematchButton.gameObject);
        RematchButton.OnSelect(null);
        PauseMenu.Instance.gameObject.SetActive(true);



    }

    public void Rematch() {
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
