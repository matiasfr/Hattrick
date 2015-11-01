using UnityEngine;
using System.Collections;

public class AudioManager : MonoBehaviour {
	public static AudioManager instance = null;

	public AudioSource ambientSource;
	public AudioSource SFXSource;
	public AudioSource musicSource; 

	void Awake ()
	{
		//Check if there is already an instance of SoundManager
		if (instance == null)
			//if not, set it to this.
			instance = this;
		//If instance already exists:
		else if (instance != this)
			//Destroy this, this enforces our singleton pattern so there can only be one instance of SoundManager.
			Destroy (gameObject);
		
		//Set SoundManager to DontDestroyOnLoad so that it won't be destroyed when reloading our scene.
		DontDestroyOnLoad (gameObject);
	}

	void Start () {

	}

	public void PlaySFX(AudioClip clip)
	{
		SFXSource.clip = clip;
		SFXSource.Play ();
	}

	public void PlayMusic(AudioClip clip)
	{
		musicSource.clip = clip;
		musicSource.Play ();
	}

	public void PlayAmbient(AudioClip clip)
	{
		ambientSource.clip = clip;
		ambientSource.Play ();
	}

}
