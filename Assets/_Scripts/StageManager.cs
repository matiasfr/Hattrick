using UnityEngine;
using System.Collections;

public class StageManager : MonoBehaviour {

    public static StageManager Instance;
    public float DeathHeight = -15f;
	// Use this for initialization

    void Awake() {
        Instance = this;
    }
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
