using UnityEngine;
using System.Collections;

public class StageManager : MonoBehaviour {

    public static StageManager Instance;
    public float DeathHeight = -15f;
	// Use this for initialization
	public AudioClip AmbientSFX;
	public AudioClip[] MusicSFX;

    void Awake() {
        Instance = this;
    }

	void Start () {
		AudioManager.instance.PlayAmbient(AmbientSFX);
		AudioManager.instance.PlayMusic(MusicSFX);
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
