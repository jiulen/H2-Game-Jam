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
        if (GameManager.instance.state != StateType.gameplay)
            return;

        if (SwipeMovement.instance.isHopping)
        {
            player.GetComponent<Rigidbody>().isKinematic = true;
        }
        else
        {
            player.GetComponent<Rigidbody>().isKinematic = false;
            if (isAlive)
            {
                player.transform.position = new Vector3(Mathf.RoundToInt(player.transform.position.x), player.transform.position.y, Mathf.RoundToInt(player.transform.position.z));
            }
            else
            {
                player.GetComponent<Rigidbody>().isKinematic = true;
            }
        }
    }

    public void PlayerWalkDie(Transform playerTransform, Transform obstacleTransform) //For when player walk into obstacle that kil
    {
        if (!isAlive)
            return;

        isAlive = false;

        playerTransform.SetParent(obstacleTransform, true);

        player.GetComponent<Rigidbody>().isKinematic = false;
        player.GetComponent<Rigidbody>().useGravity = false;

        switch (SwipeMovement.instance.curRotation)
        {
            case 0:
                SwipeMovement.instance.transform.localScale = new Vector3(1, 1, 0.1f);
                SwipeMovement.instance.animator.Play("SquishFront", -1, 0);
                break;
            case 180:
                SwipeMovement.instance.transform.localScale = new Vector3(1, 1, 0.1f);
                SwipeMovement.instance.animator.Play("SquishBack", -1, 0);
                break;
            case 270:
                SwipeMovement.instance.transform.localScale = new Vector3(0.1f, 1, 1);
                SwipeMovement.instance.animator.Play("SquishLeft", -1, 0);
                break;
            case 90:
                SwipeMovement.instance.transform.localScale = new Vector3(0.1f, 1, 1);
                SwipeMovement.instance.animator.Play("SquishRight", -1, 0);
                break;
            default:
                break;
        }
    }
}
