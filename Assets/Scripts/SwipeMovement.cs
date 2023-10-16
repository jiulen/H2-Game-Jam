using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class SwipeMovement : MonoBehaviour
{
    public static SwipeMovement instance;

    public GameObject[] models;
    int currentModel;

    public TMP_Text Score;
    public Animator animator;
    AnimatorStateInfo animatorStateInfo;
    public float animationTime;

    public Transform parentTransform;
    public Animator parentAnimator;

    private Vector2 startTouchPos, endTouchPos;

    private Touch touch;

    private int highestPos;
    public string dir;

    public bool isHopping;

    public LayerMask obstacleLayerMask;

    public Rigidbody rbody;

    public int curRotation;

    bool startTap = false;

    string nextDir = "";

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

        currentModel = GameManager.instance.currChar;
        //Enable current char
        models[GameManager.instance.currChar].SetActive(true);
    }

    private void Awake()
    {
        highestPos = (int)transform.position.z;

        highestPos = 0;
        dir = " ";
        isHopping = false;
        rbody = gameObject.GetComponent<Rigidbody>();
        rbody.constraints = RigidbodyConstraints.FreezeRotation;
    }
    // Update is called once per frame
    void Update()
    {
        if (transform.localScale.y != 1) Debug.Log(transform.localScale.y);

        animatorStateInfo = animator.GetCurrentAnimatorStateInfo(0);
        animationTime = animatorStateInfo.normalizedTime;

        if (GameManager.instance.state != StateType.gameplay)
            return;

        //Test on PC
        // check if can move in the first place

        if (animationTime > 1 && PlayerScript.instance.isAlive)
        {
            dir = " ";

            if (Mathf.RoundToInt(transform.position.z) > highestPos) // check if score increase then update latest time
            {
                PlayerScript.instance.lastScoreIncreaseTime = Time.time;
                if(highestPos % 20 == 17) // generate 7 tiles away from max
                {
                    LevelManager.instance.GenerateLevel();
                }
            }
   

            highestPos = Mathf.Max(highestPos, Mathf.RoundToInt(transform.position.z)); // set the highest pos after comparison

            PlayerScript.instance.score = highestPos;
            Score.text = PlayerScript.instance.score.ToString();
            //if(isHopping)
            //{
            //    rbody.velocity = Vector3.zero;
            //    rbody.inertiaTensor = new Vector3(1, 1, 1);
            //    Debug.Log("insane");
            //}

            isHopping = false;
        }
        else if (PlayerScript.instance.isAlive)
            isHopping = true;

        if (PlayerScript.instance.isAlive)
        {
            if (Input.GetKeyDown(KeyCode.UpArrow))
            {
                if (animationTime > 1) Move("MoveUp");
                else nextDir = "MoveUp";
            }
            if (Input.GetKeyDown(KeyCode.DownArrow))
            {
                if (animationTime > 1) Move("MoveDown");
                else nextDir = "MoveDown";
            }
            if (Input.GetKeyDown(KeyCode.LeftArrow))
            {
                if (animationTime > 1) Move("MoveLeft");
                else nextDir = "MoveDown";
            }
            if (Input.GetKeyDown(KeyCode.RightArrow))
            {
                if (animationTime > 1) Move("MoveRight");
                else nextDir = "MoveRight";
            }
        }


        //Mobile controls
        if (Input.touchCount > 0)
        {
            touch = Input.GetTouch(0);
        }

        if (touch.phase == TouchPhase.Began)
        {
            startTouchPos = touch.position;
            startTap = true; //only need do when touch first time
        }

        if (Input.touchCount > 0 && (touch.phase == TouchPhase.Ended) && /*animationTime > 1 &&*/ PlayerScript.instance.isAlive && startTap)
        {
            endTouchPos = touch.position;
            Vector2 touchDiff = endTouchPos - startTouchPos;
            if (Mathf.Abs(touchDiff.y) > Mathf.Abs(touchDiff.x))
            {
                if (touchDiff.y > 0)
                {
                    if (animationTime > 1) Move("MoveUp");
                    else nextDir = "MoveUp";
                }
                else if (touchDiff.y < 0)
                {
                    if (animationTime > 1) Move("MoveDown");
                    else nextDir = "MoveDown";
                }
            }
            else if (Mathf.Abs(touchDiff.y) < Mathf.Abs(touchDiff.x))
            {
                if (touchDiff.x > 0)
                {
                    if (animationTime > 1) Move("MoveRight");
                    else nextDir = "MoveRight";
                }
                else if (touchDiff.x < 0)
                {
                    if (animationTime > 1) Move("MoveLeft");
                    else nextDir = "MoveLeft";
                }
            }        
            else
            {
                if (animationTime > 1) Move("MoveUp");
                else nextDir = "MoveUp";
            }
        }

        if (animationTime > 1 && PlayerScript.instance.isAlive)
        {
            if (nextDir != "")
            {
                Move(nextDir);
                nextDir = "";
            }
        }
    }

    public void Move(string moveDirStr)
    {
        if (!IsGrounded())
            return;
        //get direction as vector3
        Vector3 moveDirVec = Vector3.zero;
        switch (moveDirStr)
        {
            case ("MoveUp"):
                moveDirVec = Vector3.forward;
                models[currentModel].transform.rotation = Quaternion.Euler(0, 0, 0);
                curRotation = 0;
                break;
            case ("MoveDown"):
                moveDirVec = -Vector3.forward;
                models[currentModel].transform.rotation = Quaternion.Euler(0, 180, 0);
                curRotation = 180;
                break;
            case ("MoveLeft"):
                moveDirVec = -Vector3.right;
                models[currentModel].transform.rotation = Quaternion.Euler(0, 270, 0);
                curRotation = 270;
                break;
            case ("MoveRight"):
                moveDirVec = Vector3.right;
                models[currentModel].transform.rotation = Quaternion.Euler(0, 90, 0);
                curRotation = 90;
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

            //Debug.Log("A: " + moveDirStr);
        }
        
    }

    bool IsGrounded()
    {
        Physics.Raycast(transform.position, transform.TransformDirection(-Vector3.up), out RaycastHit hit);
        if (hit.collider.tag != "Water")
            return true;
        else
            rbody.isKinematic = false;
        return false;
    }

    public void ChangeCharModel(int currChar)
    {
        //Disable prev char
        models[currentModel].SetActive(false);
        //Enable current char
        models[currChar].SetActive(true);

        currentModel = currChar;
    }
}
