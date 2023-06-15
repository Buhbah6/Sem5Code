using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using UnityEngine;

public class StickController : MonoBehaviour
{
    float force;
    Animator animator;
    Rigidbody rigidbody;
    float maxForce = 400;
    // Start is called before the first frame update
    void Start()
    {
        force = 0f;
        animator = GetComponent<Animator>();
        rigidbody = GetComponent<Rigidbody>();
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Space)){
            animator.enabled = true;
            animator.Play("poolstick_pull_back");
        }
        if (Input.GetKey(KeyCode.Space)){
            if (force < maxForce){
                //Debug.Log("Force is now at " + force);
                force++;
            }
        }
        if (Input.GetKeyUp(KeyCode.Space)){
            animator.Play("poolstick_push_forward");
        } 
        if (Input.GetKeyDown(KeyCode.Escape)){
            Restart(); 
        }
    }

    void ReleaseStick(){
        GameObject ball = GameObject.Find("Ball Clube");
        Rigidbody ballRigidbody = ball.GetComponent<Rigidbody>();
        ballRigidbody.AddForce(new Vector3(-1f, 0f, 0f) * force * 3, ForceMode.Impulse);
    }

    void Restart(){
        SceneManager.LoadScene(SceneManager.GetActiveScene().name);
    }
}
