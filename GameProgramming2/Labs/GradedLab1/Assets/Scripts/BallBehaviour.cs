using System;
using System.Collections;
using System.Collections.Generic;
using System.Runtime.InteropServices;
using UnityEngine;
using UnityEngine.SceneManagement;

public class BallBehaviour : MonoBehaviour
{
    // CLASS AND INSTANCE VARIABLES
    // speed determines the speed of the ball, is static to be easily modified from other classes
    private static float speed = 0.01f;

    // mass determines the mass of the ball
    private static float mass = 1;

    // is the rigidbody attached to the ball
    private Rigidbody body;

    // Used to determine when the ball hit's the first pin
    private bool hit = true;


    // PROPERTIES
    // property for speed (Get, Set)
    public static float Speed
    {
        get { return speed; }
        set { speed = value; }
    }

    // property for mass (Get, Set)
    public static float Mass
    {
        get { return mass; }
        set { mass = value; }
    }

    // Called At the start of the script running
    void Start()
    {
        // Disables the GameBehaviour, to make the player unable to change mass or speed after the ball starts moving
        gameObject.GetComponent<GameBehaviour>().enabled = false;
        body = gameObject.GetComponent<Rigidbody>();
        // Changing the mass of the ball to be the mass selected by the player
        body.mass = mass;
        // Makes the ball no longer float
        body.isKinematic = false;
    }

    void Update()
    {
        // Checks for Escape key input to restart the game
        if (Input.GetKey(KeyCode.Escape))
            SceneManager.LoadScene(SceneManager.GetActiveScene().name);
        
        // Moves the ball
        transform.Translate(-speed / mass, 0, 0);
    }

    // When the ball starts a collisions
    void OnCollisionEnter(Collision col)
    {
        // check if the collision occurring is the first collision with a bowling pin
        if (col.gameObject.name.Contains("#TOY0003_V2_Pin") && hit)
        {
            hit = false;
            // Disable the camera movement so it looks at the pins
            GameObject.Find("Main Camera").GetComponent<CameraBehaviour>().enabled = false;
            // Start the timer before the auto reset
            StartCoroutine(waiter());
        }
    }

    // timer implementation with WaitForSecondsRealtime
    IEnumerator waiter()
    {
        yield return new WaitForSecondsRealtime(10);
        // Reload the scene
        SceneManager.LoadScene(SceneManager.GetActiveScene().name);

    }
} 
