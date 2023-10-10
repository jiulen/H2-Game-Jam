using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public enum StateType
{
    menu,
    gameplay,
    death,
    respawn,  
    credits   
}

public class GameManager : MonoBehaviour
{
    public static GameManager instance;
    public StateType state;
    public bool resetPLayer;
    public int highscore;

    public GameObject GameUI;
    public GameObject MenuUI;

    private Touch touch;

    // Start is called before the first frame update
    void Start()
    {
        if (instance == null)
        {
            instance = this;
        }
        else
            Destroy(this);

        SetGameState(StateType.menu);
    }
    private void Awake()
    {


 
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.touchCount > 0)
        {
            touch = Input.GetTouch(0);
        }

        // for mobile
        if (Input.touchCount > 0 && touch.phase == TouchPhase.Ended && state == StateType.menu)
        {
            if (Mathf.Abs(touch.deltaPosition.y) == Mathf.Abs(touch.deltaPosition.x))
            {
                SetGameState(StateType.gameplay);
            }
        }

        //for pc
        if (Input.GetKeyDown(KeyCode.Mouse0) && state == StateType.menu)
        {
            SetGameState(StateType.gameplay);
        }
    }

    void SetGameState(StateType newState)
    {
        state = newState;

        switch(state)
        {
            case StateType.menu:
                {
                    MenuUI.SetActive(true);
                    GameUI.SetActive(false);
                    CameraScript.instance.moving = false;
                    break;
                }

            case StateType.gameplay:
                {
                    GameUI.SetActive(true);
                    MenuUI.SetActive(false);
                    CameraScript.instance.moving = true;
                    break;
                }

            case StateType.death:
                {
                    break;
                }
            default:
                break;
        }
    }

    public void OnApplicationQuit()
    {
        instance = null;
    }
}
