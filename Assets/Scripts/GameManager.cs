using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

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
    public int coins;
    public TMP_Text coinsText;

    public GameObject MenuUI;
    public GameObject GameUI;
    public GameObject DeathUI;


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

        if (PlayerPrefs.HasKey("highscore"))
        {
            highscore = PlayerPrefs.GetInt("highscore", highscore);
        }
        else
        {
            highscore = 0;
            PlayerPrefs.SetInt("highscore", highscore);
        }

        if (PlayerPrefs.HasKey("coins"))
        {
            coins = PlayerPrefs.GetInt("coins", coins);
        }
        else
        {
            coins = 0;
            PlayerPrefs.SetInt("coins", coins);
        }

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

    public void SetGameState(StateType newState)
    {
        state = newState;

        switch(state)
        {
            case StateType.menu:
                {
                    MenuUI.SetActive(true);
                    GameUI.SetActive(false);
                    DeathUI.SetActive(false);
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
                    GameUI.SetActive(false);
                    DeathUI.SetActive(true);
                    CameraScript.instance.moving = false;
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
