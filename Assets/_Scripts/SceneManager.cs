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

    public void GoToScene(string sceneName) {
        Application.LoadLevel(sceneName);
    }

    public void GoToStage(string stageName) {
        Application.LoadLevel(stageName);
        PlayersManager.Instance.StartGame();
    }

}
