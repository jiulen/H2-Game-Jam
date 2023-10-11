using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraScript : MonoBehaviour
{
    public static CameraScript instance;

    public float minZ = 0.0f;
    float camMinZ;
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

    }
    void Awake()
    {
        if (!instance)
        {
            instance = this;
        }
        else
            Destroy(this);

        camera = gameObject.GetComponent<Camera>();
        player = GameObject.FindGameObjectWithTag("Player");
        playerMovement = player.GetComponent<SwipeMovement>();
        canMove = true;

        initialOffset = transform.position;
        offset = initialOffset;

        camMinZ = transform.position.z;
    }

    void Update()
    {
       if(moving)
       {
            Vector3 playerPosition = player.transform.position;
            if (camera.WorldToScreenPoint(player.transform.position).y > Screen.height * 0.3f)
            {
                // catchup to player
                transform.position = Vector3.Lerp(transform.position ,new Vector3(playerPosition.x, 0, Mathf.Max(minZ, playerPosition.z)) + initialOffset, Time.deltaTime);
                offset = initialOffset;
            }
            else
            { 
                // approach player
                transform.position = Vector3.Lerp(transform.position, new Vector3(playerPosition.x, 0, Mathf.Max(minZ, playerPosition.z)) + offset, Time.deltaTime);
                offset.z += speedIncrementZ * Time.deltaTime * 0.2f;
            }
            // prevent camera from moving backwards
            minZ = Mathf.Max(minZ, playerPosition.z);
        }
    }


    public void Reset()
    {
        moving = false;
        offset = initialOffset;
        transform.position = initialOffset;
    }
}
