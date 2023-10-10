using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class SwipeMovement : MonoBehaviour
{
    public static SwipeMovement instance;

    public TMP_Text Score;
    public Animator animator;
    AnimatorStateInfo animatorStateInfo;
    public float animationTime;

    private Vector2 startTouchPos, endTouchPos;

    private Touch touch;

    private int highestPos;
    public string dir;

    public bool isHopping;

    public LayerMask obstacleLayerMask;

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
    }
    // Update is called once per frame
    void Update()
    {
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
            isHopping = false;

            RaycastHit hit;
            if (Input.GetKeyDown(KeyCode.UpArrow))
            {
                if (Physics.Raycast(transform.position, transform.TransformDirection(Vector3.forward), out hit, 1, obstacleLayerMask))
                {
                    //squish
                }
                else
                {
                    animator.Play("MoveUp", -1, 0);
                    dir = "MoveUp";
                }
            }
            if (Input.GetKeyDown(KeyCode.DownArrow))
            {
                if (Physics.Raycast(transform.position, transform.TransformDirection(-Vector3.forward), out hit, 1, obstacleLayerMask))
                {
                    //squish
                }
                else
                {
                    animator.Play("MoveDown", -1, 0);
                    dir = "MoveDown";
                }
            }
            if (Input.GetKeyDown(KeyCode.LeftArrow))
            {
                if (Physics.Raycast(transform.position, transform.TransformDirection(-Vector3.right), out hit, 1, obstacleLayerMask))
                {
                    //squish
                }
                else
                {
                    animator.Play("MoveLeft", -1, 0);
                    dir = "MoveLeft";
                }
            }
            if (Input.GetKeyDown(KeyCode.RightArrow))
            {
                if (Physics.Raycast(transform.position, transform.TransformDirection(Vector3.right), out hit, 1, obstacleLayerMask))
                {
                    //squish
                }
                else
                {
                    animator.Play("MoveRight", -1, 0);
                    dir = "MoveRight";
                }
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
                    if (Physics.Raycast(transform.position, transform.TransformDirection(Vector3.forward), out hit, 1, obstacleLayerMask))
                    {
                        //squish
                    }
                    else
                    {
                        animator.Play("MoveUp", -1, 0);
                        dir = "MoveUp";
                    }
                }
                else if (endTouchPos.y < startTouchPos.y)
                {
                    if (Physics.Raycast(transform.position, transform.TransformDirection(-Vector3.forward), out hit, 1, obstacleLayerMask))
                    {
                        //squish
                    }
                    else
                    {
                        animator.Play("MoveDown", -1, 0);
                        dir = "MoveDown";
                    }
                }
            }
            else if (Mathf.Abs(touch.deltaPosition.y) < Mathf.Abs(touch.deltaPosition.x))
            {
                if (endTouchPos.x > startTouchPos.x)
                {
                    if (Physics.Raycast(transform.position, transform.TransformDirection(Vector3.right), out hit, 1, obstacleLayerMask))
                    {
                        //squish
                    }
                    else
                    {
                        animator.Play("MoveRight", -1, 0);
                        dir = "MoveRight";
                    }
                }
                else if (endTouchPos.x < startTouchPos.x)
                {
                    if (Physics.Raycast(transform.position, transform.TransformDirection(-Vector3.right), out hit, 1, obstacleLayerMask))
                    {
                        //squish
                    }
                    else
                    {
                        animator.Play("MoveLeft", -1, 0);
                        dir = "MoveLeft";
                    }
                }
            }        
            else
            {
                animator.Play("MoveUp", -1, 0);
            }
        }
    }
}
