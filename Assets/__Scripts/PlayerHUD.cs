﻿using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using System.Collections.Generic;

public class PlayerHUD : MonoBehaviour {

    public Text Name;
    public Image strikethrough;
    public Text Damage;
    public List<Image> Lives = new List<Image>();
    public Gradient damageColor;

    [HideInInspector]
    public Player player;

    void Start() {

    }

    void Update() {
        if (player != null) {
            if (player.character != null && player.lives > 0) {
                Damage.text = Mathf.RoundToInt(player.character.currentDamage) + "%";
                Damage.color = damageColor.Evaluate(player.character.currentDamage / 100f);
                Lives[player.lives - 1].color = damageColor.Evaluate(player.character.currentDamage / 100f);
            }
        }
    }

    public void UpdateLives(int lives) {
        for (int i = 0; i < Lives.Count; i++) {
            Lives[i].gameObject.SetActive(i < lives);
        }
        if (lives == 0) {
            Damage.gameObject.SetActive(false);
            strikethrough.gameObject.SetActive(true);
        }
    }

    public void SetPlayer(Player p) {
        Name.color = p.color;
        player = p;
        Damage.gameObject.SetActive(true);
        Damage.color = damageColor.Evaluate(0f);

        strikethrough.gameObject.SetActive(false);

        UpdateLives(p.lives);
        for (int i = 0; i < Lives.Count; i++) {
            Lives[i].color = damageColor.Evaluate(0f);
        }
        if (player.name != null && player.name.Length > 0)
            Name.text = player.name;


    }
}
