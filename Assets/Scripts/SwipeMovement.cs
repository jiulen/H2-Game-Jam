using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class SwipeMovement : MonoBehaviour
{
    public static SwipeMovement instance;

    public GameObject model;
    public TMP_Text Score;
    public Animator animator;
    AnimatorStateInfo animatorStateInfo;
    public float animationTime;

    public Animator parentAnimator;

    private Vector2 startTouchPos, endTouchPos;

    private Touch touch;

    private int highestPos;
    public string dir;

    public bool isHopping;

    public LayerMask obstacleLayerMask;

    private Rigidbody rbody;
    //private Rigidbody rbody;
    // Start is called before the first frame update
    void Start()
    {
        if (!instance)
        {
            instance = this;
        }
        else
            Destroy(this);      
    }

    private void Awake()
    {
        highestPos = (int)transform.position.z;

        highestPos = 0;
        dir = " ";
        isHopping = false;
        rbody = gameObject.GetComponent<Rigidbody>();
    }
    // Update is called once per frame
    void Update()
    {
        if (transform.localScale.y != 1) Debug.Log(transform.localScale.y);

        animatorStateInfo = animator.GetCurrentAnimatorStateInfo(0);
        animationTime = animatorStateInfo.normalizedTime;

        //Test on PC
        // check if can move in the first place

        if (animationTime > 1 && PlayerScript.instance.isAlive)
        {
            dir = " ";
            highestPos = Mathf.Max(highestPos, Mathf.RoundToInt(transform.position.z));
            PlayerScript.instance.score = highestPos;
            Score.text = PlayerScript.instance.score.ToString();
            //if(isHopping)
            //{
            //    rbody.velocity = Vector3.zero;
            //    rbody.inertiaTensor = new Vector3(1, 1, 1);
            //    Debug.Log("insane");
            //}

            isHopping = false;

            

            RaycastHit hit;
            if (Input.GetKeyDown(KeyCode.UpArrow))
            {
                Move("MoveUp");
            }
            if (Input.GetKeyDown(KeyCode.DownArrow))
            {
                Move("MoveDown");
            }
            if (Input.GetKeyDown(KeyCode.LeftArrow))
            {
                Move("MoveLeft");
            }
            if (Input.GetKeyDown(KeyCode.RightArrow))
            {
                Move("MoveRight");
            }
        }
        else if (PlayerScript.instance.isAlive)
            isHopping = true;


        //Mobile controls
        if (Input.touchCount > 0)
        {
            touch = Input.GetTouch(0);
        }

        if (touch.phase == TouchPhase.Began)
        {
            startTouchPos = touch.position;
        }
        
        if (Input.touchCount > 0 && (touch.phase == TouchPhase.Ended) && animationTime > 1 && PlayerScript.instance.isAlive)
        {
            endTouchPos = touch.position;
            RaycastHit hit;
            if (Mathf.Abs(touch.deltaPosition.y) > Mathf.Abs(touch.deltaPosition.x))
            {
                if (endTouchPos.y > startTouchPos.y)
                {
                    Move("MoveUp");
                }
                else if (endTouchPos.y < startTouchPos.y)
                {
                    Move("MoveDown");
                }
            }
            else if (Mathf.Abs(touch.deltaPosition.y) < Mathf.Abs(touch.deltaPosition.x))
            {
                if (endTouchPos.x > startTouchPos.x)
                {
                    Move("MoveRight");
                }
                else if (endTouchPos.x < startTouchPos.x)
                {
                    Move("MoveLeft");
                }
            }        
            else
            {
                Move("MoveUp");
            }
        }
    }

    void Move(string moveDirStr)
    {
        if (!IsGrounded())
            return;
        //get direction as vector3
        Vector3 moveDirVec = Vector3.zero;
        switch (moveDirStr)
        {
            case ("MoveUp"):
                moveDirVec = Vector3.forward;
                model.transform.rotation = Quaternion.Euler(0, 0, 0);
                break;
            case ("MoveDown"):
                moveDirVec = -Vector3.forward;
                model.transform.rotation = Quaternion.Euler(0, 180, 0);
                break;
            case ("MoveLeft"):
                moveDirVec = -Vector3.right;
                model.transform.rotation = Quaternion.Euler(0, 270, 0);
                break;
            case ("MoveRight"):
                moveDirVec = Vector3.right;
                model.transform.rotation = Quaternion.Euler(0, 90, 0);
                break;
        }

        //rotate to face movement direction

        //try move
        if (Physics.Raycast(transform.position, transform.TransformDirection(moveDirVec), out RaycastHit hit, 1, obstacleLayerMask))
        {
            //Walk into wall
            parentAnimator.Play("MoveFailParent", -1, 0);
        }
        else
        {
            //Play sound
            AudioManager.Instance.PlaySFX("playerMove", transform.position);

            animator.Play(moveDirStr, -1, 0);
            dir = moveDirStr;
        }
        
    }

    bool IsGrounded()
    {
        Physics.Raycast(transform.position, transform.TransformDirection(-Vector3.up), out RaycastHit hit);
        if (hit.collider.tag != "Water")
            return true;
        return false;
    }
}
