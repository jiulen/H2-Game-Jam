using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerScript : MonoBehaviour
{
    public static PlayerScript instance;

    private GameObject player;
    public int score;
    public bool isAlive;
  
    void Start()
    {
        if (!instance)
        {
            instance = this;
        }
        else
            Destroy(this);
    }

    void Awake()
    {
        player = GameObject.FindGameObjectWithTag("Player");
        score = 0;
        isAlive = true;
    }
    // Update is called once per frame
    void Update()
    {
        if (SwipeMovement.instance.isHopping)
        {
            player.GetComponent<Rigidbody>().isKinematic = true;
            
        }
        else
        {
            player.GetComponent<Rigidbody>().isKinematic = false;
            player.transform.position = new Vector3(Mathf.RoundToInt(player.transform.position.x), player.transform.position.y, Mathf.RoundToInt(player.transform.position.z));
        }
    }
}
