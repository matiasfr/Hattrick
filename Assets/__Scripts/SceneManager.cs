using UnityEngine;
using System.Collections;

public class SceneManager : MonoBehaviour {
    public static SceneManager Instance;
    void Awake() {
        Instance = this;
    }

	void Start () {

    }
	
	void Update () {

        if (Input.GetKeyUp(KeyCode.Escape)) {
            GoToScene("MainMenu");
        }
    }

    public void QuitToMenu() {
        Application.LoadLevel("MainMenu");
    }

    public void GoToGameSetup() {
        PlayersManager.Instance.ClearPlayers();
        PlayersManager.Instance.setupMode = true;

		//GameObject g = GameObject.FindWithTag("Fader");
		//g.GetComponent<SceneFadeInOut>().EndScene("GameSetup");
        Application.LoadLevel("GameSetup");
    }

    public void GoToTutorial() {
        PlayersManager.Instance.ClearPlayers();
        PlayersManager.Instance.setupMode = true;
        Application.LoadLevel("Tutorial");
    }

    public void GoToScene(string sceneName) {
        Application.LoadLevel(sceneName);
    }

    public void GoToStage(string stageName) {
        Application.LoadLevel(stageName);
        PlayersManager.Instance.startDelay = true;
        PlayersManager.Instance.StartGame();
    }

    public void QuitGame() {
        Application.Quit();
    }

}
