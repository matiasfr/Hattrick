using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using System.Collections.Generic;

public class PlayerHUD : MonoBehaviour {

    public Text Name;
    public Text Damage;
    public List<Image> Lives = new List<Image>();

    [HideInInspector]
    public Player player;

	void Start () {
	    
	}
	
	void Update () {
        if (player != null) {
            if (player.character != null) Damage.text = Mathf.RoundToInt(player.character.currentDamage) + "%";
        }
	}

    public void UpdateLives(int lives) {
        for(int i = 0; i < Lives.Count; i++) {
            Lives[i].gameObject.SetActive(i < lives);
        }
    }

    public void SetPlayer(Player p) {
        Name.color = p.color;
        player = p;
        UpdateLives(p.lives);
        if(player.name != null && player.name.Length > 0)
            Name.text = player.name;
    }
}
