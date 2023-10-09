using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SwipeMovement : MonoBehaviour
{
    public Animator animator;
    AnimatorStateInfo animatorStateInfo;
    float animationTime;

    private Vector2 startTouchPos, endTouchPos;

    private Touch touch;

    private IEnumerator moveCoroutine;
    private bool coroutineAllowed;

    // Start is called before the first frame update
    void Start()
    {
        coroutineAllowed = true;        
    }

    // Update is called once per frame
    void Update()
    {
        animatorStateInfo = animator.GetCurrentAnimatorStateInfo(0);
        animationTime = animatorStateInfo.normalizedTime;

        //Test on PC
        if (animationTime > 1)
        {
            if (Input.GetKeyDown(KeyCode.UpArrow))
            {
                //moveCoroutine = Move(new Vector3(0, 0, 0.25f));
                //StartCoroutine(moveCoroutine);

                animator.Play("MoveUp", -1, 0);
            }
            if (Input.GetKeyDown(KeyCode.DownArrow))
            {
                //moveCoroutine = Move(new Vector3(0, 0, -0.25f));
                //StartCoroutine(moveCoroutine);

                animator.Play("MoveDown", -1, 0);
            }
            if (Input.GetKeyDown(KeyCode.LeftArrow))
            {
                //moveCoroutine = Move(new Vector3(-0.25f, 0, 0));
                //StartCoroutine(moveCoroutine);

                animator.Play("MoveLeft", -1, 0);
            }
            if (Input.GetKeyDown(KeyCode.RightArrow))
            {
                //moveCoroutine = Move(new Vector3(0.25f, 0, 0));   
                //StartCoroutine(moveCoroutine);

                animator.Play("MoveRight", -1, 0);
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
        }

        if (Input.touchCount > 0 && touch.phase == TouchPhase.Ended && animationTime > 1)
        {
            endTouchPos = touch.position;

            if (Mathf.Abs(touch.deltaPosition.y) > Mathf.Abs(touch.deltaPosition.x))
            {
                if (endTouchPos.y > startTouchPos.y)
                {
                    animator.Play("MoveUp", -1, 0);
                }
                else if (endTouchPos.y < startTouchPos.y)
                {
                    animator.Play("MoveDown", -1, 0);
                }
            }
            else if (Mathf.Abs(touch.deltaPosition.y) < Mathf.Abs(touch.deltaPosition.x))
            {
                if (endTouchPos.x > startTouchPos.x)
                {
                    animator.Play("MoveRight", -1, 0);
                }
                else if (endTouchPos.x < startTouchPos.x)
                {
                    animator.Play("MoveLeft", -1, 0);
                }
            }        
            else
            {
                animator.Play("MoveUp", -1, 0);
            }
        }
    }

    private IEnumerator Move(Vector3 direction) //Move 4 times
    {
        coroutineAllowed = false;

        for (int i = 0; i < 3; ++i)
        {
            transform.Translate(direction);
            yield return new WaitForSeconds(0.01f);
        }

        transform.Translate(direction);

        coroutineAllowed = true;
    }
}
