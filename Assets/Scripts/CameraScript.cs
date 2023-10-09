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
        // TODO this position and rotation is baked, extract it
        initialOffset = new Vector3(2.5f, 10.0f, -7.5f);
        offset = initialOffset;
    }

    void Update()
    {

        if (camera.WorldToScreenPoint(player.transform.position).y > Screen.height * 0.3)
        {
            Debug.Log("Player is above the middle of the screen.");

            movePos = player.transform.position - offset;
            canMove = false;
            transform.position = Vector3.Lerp(transform.position, new Vector3(movePos.x, 0, movePos.z) + offset, 2 * Time.deltaTime);
        }
        if (canMove)
        {
            movePos = Vector3.zero;
            transform.position += new Vector3(0,0,speedIncrementZ * Time.deltaTime);
        }


        
        //Debug.Log(Mathf.Abs(camera.WorldToScreenPoint(player.transform.position).y - (Screen.height * 0.3f)));
        if(Mathf.Abs(camera.WorldToScreenPoint(player.transform.position).y - (Screen.height * 0.3f)) < 0.1f)
        {
            canMove = true;
        }
        //if (Vector3.Distance(transform.position, new Vector3(movePos.x, 0, Mathf.Max(minZ, movePos.z)) + offset) < 0.5f)
        //    transform.position = new Vector3(movePos.x, 0, Mathf.Max(minZ, movePos.z)) + offset;
    }


    public void Reset()
    {
        // TODO This kind of reset is dirty, refactor might be needed.
        moving = false;
        offset = initialOffset;
        transform.position = new Vector3(2.5f, 10.0f, -7.5f);
    }
}
