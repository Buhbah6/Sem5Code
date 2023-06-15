using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SwordItemPickup : Interactable {

    public GameObject rHandItemSocket;
    public GameObject sword;
    public GameObject myWeapon;

    public void Start()
    {
        myWeapon = Instantiate(sword, rHandItemSocket.transform.position, rHandItemSocket.transform.rotation);
        myWeapon.transform.SetParent(rHandItemSocket.transform);

        Destroy(this.gameObject);
    }
}
