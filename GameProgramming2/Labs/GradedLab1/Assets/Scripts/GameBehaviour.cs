using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
public class GameBehaviour : MonoBehaviour
{
    // bool used to identify when the mass has been set
    private bool setMass = true;

    // float that defines by how much the speed increments (higher mass ball means higher increments)
    private float increment;

    // variables for the different kinds of materials
    public Material normal;
    public Material rough;
    public Material metallic;

    // runs at the start of the script
    void Start()
    {
        // Disables the Camera and Ball Movement, to allow the player to make their mass and speed choices before the start
        GameObject.Find("Main Camera").GetComponent<CameraBehaviour>().enabled = false;
        gameObject.GetComponent<BallBehaviour>().enabled = false;

        // Defining a base Mass and Speed
        BallBehaviour.Speed = 0.01f;
        BallBehaviour.Mass = 1;
    }

    // Update is called once per frame
    void Update()
    {
        // Changes Material based on Mass
        ChangeMaterial();

        // Changes how much the speed increments based on Mass
        ChangeSpeedIncrement();

        // Printing the Mass and Speed to the UI text object, with speed showing a representation of the speed multiplied by 100
        string text = "Mass: " + Math.Floor(BallBehaviour.Mass) + "\nSpeed: " + Math.Floor(BallBehaviour.Speed * 100);
        GameObject.Find("Text").GetComponent<Text>().text = text;

        // Check if the SpaceBar is being pressed
        if (Input.GetKey(KeyCode.Space))
        {
            // Lock the ability to change the mass
            setMass = false;
            // Set the Dynamic max speed (roughly 10x the mass)
            if (Math.Floor(BallBehaviour.Speed * 100) / Math.Floor(BallBehaviour.Mass) < 10)
                BallBehaviour.Speed += increment; // increase the speed continuously by the increment
        }

        // Check if the Up Arrow or Down Arrow is being pressed, and the spacebar hasn't been pressed
        if (Input.GetKey(KeyCode.UpArrow) && setMass)
        {
            // Increase Mass until it reaches 30
            if (BallBehaviour.Mass < 30)
                BallBehaviour.Mass += 0.01f;
        }
        if (Input.GetKey(KeyCode.DownArrow) && setMass)
        {
            // Decrease Mass until it reaches 1
            if (BallBehaviour.Mass > 1)
                BallBehaviour.Mass -= 0.01f;
        }

        // Check if the SpaceBar has been released
        if (Input.GetKeyUp(KeyCode.Space))
        {
            // If the spacebar has been released, we start the Ball and Camera Scripts.
            gameObject.GetComponent<BallBehaviour>().enabled = true;
            GameObject.Find("Main Camera").GetComponent<CameraBehaviour>().enabled = true;
        }

        // Check if the Escape key has been pressed to reload the scene
        if (Input.GetKey(KeyCode.Escape))
            SceneManager.LoadScene(SceneManager.GetActiveScene().name);
    }

    // Changes Material based on Mass
    void ChangeMaterial()
    {
        double roundedMass = Math.Floor(BallBehaviour.Mass);
        if (roundedMass <= 10) // Mass <= 10 will make the ball normal
            gameObject.GetComponent<MeshRenderer>().material = normal;
        else if (roundedMass <= 20) // Mass <= 20 will make the ball rough
            gameObject.GetComponent<MeshRenderer>().material = rough;
        else // Mass <= 30 will make the ball metallic
            gameObject.GetComponent<MeshRenderer>().material = metallic;
    }

    // Changes how much the speed increments based on Mass
    void ChangeSpeedIncrement()
    {
        if (BallBehaviour.Mass < 10)
            increment = 0.0001f;
        else if (BallBehaviour.Mass < 20)
            increment = 0.0005f;
        else
            increment = 0.001f;
    }

}
