﻿using UnityEngine;
using System.Collections;

public class Projectile : MonoBehaviour {


    public bool isCast = false;
    private Vector3 velocity = Vector3.zero;
    public float projectileSpeed = 1f;
    public float projectileForce = 10f;
    private float projectileRange = 10f;
    public float projectileMaxRange = 40f;
    public float projectileMinRange = 4f;
    private Vector3 startPos;
    private Collider col;
    private float chargePercent;
    private int casterPlayerNum;

    void Start() {
        col = GetComponent<Collider>();
        col.enabled = false;
    }


    void Update() {
        transform.Translate(velocity);

        float distanceTraveled = Vector3.Distance(startPos, transform.position);
        if(isCast && distanceTraveled > projectileRange) {
            Dissipate();
        }
    }

    public void Cast(Vector3 direction, float charge, int playerNum) {
        startPos = transform.position;
        casterPlayerNum = playerNum;
        chargePercent = charge;
        float speed = projectileSpeed * (-1.8f * (charge * charge) + 2.2f * charge + .3f);
        velocity = direction * speed;
        projectileRange = Mathf.Lerp(projectileMinRange, projectileMaxRange, charge);
        col.enabled = true;
        isCast = true;

        //TODO keep track of player who cast
    }

    void OnCollisionEnter(Collision collision) {
        GameObject other = collision.collider.gameObject;
        Dissipate();

        if (other.tag == "Player") {
            PlayerController pc = other.GetComponent<PlayerController>();
            if (pc.playerNum != casterPlayerNum) {
                Rigidbody rb = other.GetComponent<Rigidbody>();
                pc.Stun(chargePercent);
                rb.AddForceAtPosition(velocity * chargePercent * projectileForce, collision.contacts[0].point, ForceMode.Impulse);
            }
        }

        Destroy(gameObject, 1f);
    }

    public void Dissipate() {
        Destroy(gameObject);
        //TODO Add dissapate effect
    }
}