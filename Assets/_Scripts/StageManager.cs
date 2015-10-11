using UnityEngine;
using System.Collections;

public class StageManager : MonoBehaviour {
    public static string Stage;
	// Use this for initialization
	void Start () {
	    
	}
	
	// Update is called once per frame
	void Update () {
	
	}

    public void LoadStage(string stageName) {
        Stage = stageName;
        DontDestroyOnLoad(gameObject);
        Application.LoadLevel("stageName");
        PlayersManager.Instance.StartGame();
    }
}
