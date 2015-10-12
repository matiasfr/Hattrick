using UnityEngine;
using System.Collections;

public class AudioManager : MonoBehaviour {

	public AudioSource audioControl;

	public AudioClip ImpactFireSFX;
	public AudioClip ImpactEarthSFX;
	public AudioClip ImpactWaterSFX;
	public AudioClip ShootFireSFX;
	public AudioClip ShootEarthSFX;
	public AudioClip ShootWaterSFX;

	public AudioClip AmbientWindSFX;
	
	private float ProjectileLowPitch = 0.75f;
	private float ProjectileHighPitch=1.5f;
	public static AudioManager Instance;

	// Use this for initialization
	void Start () {
		if (Instance == null) Instance = this;
		else Destroy(gameObject);

		audioControl = GetComponent<AudioSource> ();
	}

}
