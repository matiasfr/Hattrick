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

    }

    public void QuitToMenu() {
		GameObject g = GameObject.FindWithTag("Fader");
        if (g == null) Application.LoadLevel("MainMenu");
        else g.GetComponent<SceneFadeInOut>().EndScene("MainMenu");
       // Application.LoadLevel("MainMenu");
    }

    public void GoToGameSetup() {
        PlayersManager.Instance.ClearPlayers();
        PlayersManager.Instance.setupMode = true;

		GameObject g = GameObject.FindWithTag("Fader");
        if (g == null) Application.LoadLevel("GameSetup");
        else g.GetComponent<SceneFadeInOut>().EndScene("GameSetup");
        //Application.LoadLevel("GameSetup");
    }

    public void GoToTutorial() {
        PlayersManager.Instance.ClearPlayers();
        PlayersManager.Instance.setupMode = true;

		GameObject g = GameObject.FindWithTag("Fader");
        if (g == null) Application.LoadLevel("Tutorial");
        else g.GetComponent<SceneFadeInOut>().EndScene("Tutorial");
        //Application.LoadLevel("Tutorial");
    }

    public void GoToScene(string sceneName) {
		GameObject g = GameObject.FindWithTag("Fader");
        if (g == null) Application.LoadLevel(sceneName);
        else g.GetComponent<SceneFadeInOut>().EndScene(sceneName);
        //Application.LoadLevel(sceneName);
    }

    public void GoToStage(string stageName) {
		GameObject g = GameObject.FindWithTag("Fader");
        if (g == null) Application.LoadLevel(stageName);
        else g.GetComponent<SceneFadeInOut>().EndScene(stageName);
       // Application.LoadLevel(stageName);
        PlayersManager.Instance.startDelay = true;
        PlayersManager.Instance.StartGame();
    }

    public void QuitGame() {
        Application.Quit();
    }

}
