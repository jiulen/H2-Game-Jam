using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraScript : MonoBehaviour
{
    public static CameraScript instance;

    public float minZ = 0.0f;
    public float speedIncrementZ = 1.0f;
    public float speedOffsetZ = 4.0f;
    public bool moving = false;

    private GameObject player;
    private SwipeMovement playerMovement;

    private Vector3 offset;
    private Vector3 initialOffset;

    private Camera camera;

    private bool canMove;
    Vector3 movePos;
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
        camera = gameObject.GetComponent<Camera>();
        player = GameObject.FindGameObjectWithTag("Player");
        playerMovement = player.GetComponent<SwipeMovement>();
        canMove = true;

        initialOffset = transform.position;
        offset = initialOffset;
    }

    void Update()
    {
       if(moving)
       {
            if(camera.WorldToScreenPoint(player.transform.position).y > Screen.height * 0.3f)
            {
                Vector3 playerPosition = player.transform.position;
                transform.position = Vector3.Lerp(transform.position ,new Vector3(playerPosition.x, 0, Mathf.Max(minZ, playerPosition.z)) + initialOffset, Time.deltaTime);
                offset = initialOffset;
            }
            else
            {
                Vector3 playerPosition = player.transform.position;
                transform.position = Vector3.Lerp(transform.position, new Vector3(playerPosition.x, 0, Mathf.Max(minZ, playerPosition.z)) + offset, Time.deltaTime);

                // Increase z over time if moving.
                offset.z += speedIncrementZ * Time.deltaTime * 0.5f;

                //// Increase/decrease z when player is moving south/north.
                if (SwipeMovement.instance.animationTime < 1)
                {
                    if (SwipeMovement.instance.dir == "MoveUp")
                    {
                        offset.z -= speedOffsetZ * Time.deltaTime * 0.5f;
                    }
                }
            }
            minZ = Mathf.Max(minZ, transform.position.z);

        }
    }


    public void Reset()
    {
        // TODO This kind of reset is dirty, refactor might be needed.
        moving = false;
        offset = initialOffset;
        transform.position = new Vector3(2.5f, 10.0f, -7.5f);
    }
}
