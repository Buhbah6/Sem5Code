using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Enemy : MonoBehaviour
{
    public GameObject ragdoll;
    public RectTransform canvas;
    public Slider healthBar;
    public Animator anim;
    public int enemyHealth = 1;

    int maxHealth;
    Transform camTrans;
    bool showUI;

    void Start()
    {
        maxHealth = enemyHealth;
        camTrans = Camera.main.transform;

        showUI = canvas.gameObject.activeInHierarchy;
        canvas.gameObject.SetActive(false);

        GameManager.npcCount++;
    }

    public void TakeDamage(int damageAmount)
    {
        if (showUI) { canvas.gameObject.SetActive(true); }
        enemyHealth -= damageAmount;
        anim.SetTrigger("Hit");

        healthBar.value = maxHealth - enemyHealth;

        // we dead
        if (enemyHealth <= 0)
        {
            Destroy(gameObject);
            Instantiate(ragdoll, transform.position, transform.rotation);
            GameManager.EliminateNPC();
        }
    }

    void Update()
    {
        Vector3 pos = camTrans.position;
        pos.y = canvas.position.y;
        canvas.LookAt(pos);
    }

    public void OnHealthInputChanged(InputField inputField)
    {
        enemyHealth = int.Parse(inputField.text);
    }
}
