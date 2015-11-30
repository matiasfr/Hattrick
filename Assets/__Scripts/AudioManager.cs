using UnityEngine;
using System.Collections;

public class AudioManager : MonoBehaviour {
	public static AudioManager instance = null;

	public AudioSource ambientSource;
	public AudioSource SFXSource;
	public AudioSource musicIntroSource;
	public AudioSource musicPrimarySource; 
	public AudioSource musicSecondarySource;
	public AudioSource musicTertiarySource;

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

	public void PlayMusic(AudioClip[] clips) {
		clearMusicSources();
		if(!clips[0]) {
			//skip intro
			if(clips[1]) {
				musicPrimarySource.clip = clips[1];
				musicPrimarySource.Play();
			}
			if(clips[2]) {
				musicSecondarySource.clip = clips[2];
				musicSecondarySource.Play();
			}
			if(clips[3]) {
				musicTertiarySource.clip = clips[3];
				musicTertiarySource.Play();
			}
		} else {
			float introLength = clips[0].length;
			musicIntroSource.clip = clips[0];
			musicIntroSource.Play();

			if(clips[1]) {
				musicPrimarySource.clip = clips[1];
				musicPrimarySource.PlayDelayed(introLength);
			}
			if(clips[2]) {
				musicSecondarySource.clip = clips[2];
				musicSecondarySource.PlayDelayed(introLength);
			}
			if(clips[3]) {
				musicTertiarySource.clip = clips[3];
				musicTertiarySource.PlayDelayed(introLength);
			}
		}
	}

	private void clearMusicSources() {
		musicIntroSource.Stop();
		musicPrimarySource.Stop();
		musicSecondarySource.Stop();
		musicTertiarySource.Stop();
	}

	public void PlayAmbient(AudioClip clip)
	{
		ambientSource.clip = clip;
		ambientSource.Play ();
	}

}
