using UnityEngine;
using System.Collections;

public class SceneManager : MonoBehaviour {

    public static SceneManager Instance;
	// Use this for initialization
	void Start () {
        if (Instance == null) Instance = this;
        else Destroy(gameObject);
    }
	
	// Update is called once per frame
	void Update () {
	
	}

    public void GoToScene(string sceneName) {
        DontDestroyOnLoad(gameObject);
        Application.LoadLevel(sceneName);
    }

    public void GoToStage(string stageName) {
        DontDestroyOnLoad(gameObject);
        Application.LoadLevel(stageName);
        PlayersManager.Instance.StartGame();

    }
}
