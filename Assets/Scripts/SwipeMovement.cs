using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SwipeMovement : MonoBehaviour
{
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
        //Test on PC
        if (Input.GetKeyDown(KeyCode.UpArrow))
        {
            moveCoroutine = Move(new Vector3(0, 0, 0.25f));
            StartCoroutine(moveCoroutine);
        }
        if (Input.GetKeyDown(KeyCode.DownArrow))
        {
            moveCoroutine = Move(new Vector3(0, 0, -0.25f));
            StartCoroutine(moveCoroutine);
        }
        if (Input.GetKeyDown(KeyCode.LeftArrow))
        {
            moveCoroutine = Move(new Vector3(-0.25f, 0, 0));
            StartCoroutine(moveCoroutine);
        }
        if (Input.GetKeyDown(KeyCode.RightArrow))
        {
            moveCoroutine = Move(new Vector3(0.25f, 0, 0));
            StartCoroutine(moveCoroutine);
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

        if (Input.touchCount > 0 && touch.phase == TouchPhase.Ended && coroutineAllowed)
        {
            endTouchPos = touch.position;

            if (Mathf.Abs(touch.deltaPosition.y) > Mathf.Abs(touch.deltaPosition.x))
            {
                if (endTouchPos.y > startTouchPos.y)
                {
                    moveCoroutine = Move(new Vector3(0, 0, 0.25f));
                    StartCoroutine(moveCoroutine);
                }
                else if (endTouchPos.y < startTouchPos.y)
                {
                    moveCoroutine = Move(new Vector3(0, 0, -0.25f));
                    StartCoroutine(moveCoroutine);
                }
            }
            else if (Mathf.Abs(touch.deltaPosition.y) < Mathf.Abs(touch.deltaPosition.x))
            {
                if (endTouchPos.x > startTouchPos.x)
                {
                    moveCoroutine = Move(new Vector3(0.25f, 0, 0));
                    StartCoroutine(moveCoroutine);
                }
                else if (endTouchPos.x < startTouchPos.x)
                {
                    moveCoroutine = Move(new Vector3(-0.25f, 0, 0));
                    StartCoroutine(moveCoroutine);
                }
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
