using UnityEngine;
using System.Collections;

public class AudioManager : MonoBehaviour {

	public AudioSource audioControl;
	//clips
	public AudioClip AmbientWindSFX;

	public static AudioManager Instance;

	void Start () {
		if (Instance == null) Instance = this;
		else Destroy(gameObject);
		audioControl = GetComponent<AudioSource> ();
	}

}
