using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class BallLogic : MonoBehaviour
{
    private static int count;
    Vector3 originalPos;
    // Start is called before the first frame update
    void Start()
    {
        count = 0;
        originalPos = new Vector3(gameObject.transform.position.x, gameObject.transform.position.y, gameObject.transform.position.z);
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    void OnCollisionEnter(Collision col)
    {
        if (col.gameObject.name.Contains("Pocket"))
        {
            if (gameObject.name.Contains("Ball8"))
            {
                print("Game Over");
                SceneManager.LoadScene(SceneManager.GetActiveScene().name);
            }
            else if (gameObject.name.Contains("Clube"))
            {
                gameObject.transform.position = originalPos;
            }
            else
            {
                count++;
                print("Current Points: " + count);
                Destroy(gameObject);
            }
        }
    }
}
