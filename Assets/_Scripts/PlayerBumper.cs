﻿using UnityEngine;
using System.Collections;
using System.Collections.Generic;
public class PlayerBumper : MonoBehaviour {

    public static float PlayerRadius = .75f;
    public static float ShieldRadius = 1.5f;
    public Rigidbody parentBody;
    public PlayerController pc;
    public float radius = PlayerRadius;
    public bool bumped = false;
    static List<PlayerBumper> bumpers = new List<PlayerBumper>();

    void Start() {
        if (parentBody == null) parentBody = transform.parent.GetComponent<Rigidbody>();
        if (pc == null) pc = transform.parent.GetComponent<PlayerController>();
        radius = PlayerRadius;
    }

    void OnEnable() {
        bumpers.Add(this);

    }
    void OnDisable() {
        bumpers.Remove(this);

    }
    void FixedUpdate() {

        foreach (PlayerBumper pb in bumpers) {
            if (pb != this) {
                if (!pb.pc.stunned && !pc.stunned) {
                    if (Vector3.Distance(pb.transform.position, transform.position) < pb.radius + radius) {
                        pb.Bump(this);
                        Bump(pb);

                    }
                }
            }

        }
    }


    void Bump(PlayerBumper other) {
        parentBody.transform.Translate(  (transform.position - other.transform.position).normalized * ( .1f + other.radius + radius - (transform.position - other.transform.position).magnitude )  );

        Debug.Log("bumped");
        parentBody.isKinematic = false;

        parentBody.velocity = Vector3.zero;
        parentBody.AddForce((transform.position - other.transform.position).normalized * 3f * other.radius + new Vector3(0, 1, 0), ForceMode.Impulse);


    }
}