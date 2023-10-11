using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
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
    public TMP_Text highscoreText;
    public int coins;
    public TMP_Text coinsText;

    public GameObject MenuUI;
    public GameObject GameUI;
    public GameObject DeathUI;

    public Toggle SettingsButton;
    public Animator SettingsAnimator;

    public Toggle MuteToggle;
    public Sprite[] mutedSprites;

    public Toggle PowerSaveToggle;
    public Sprite[] powerSaveSprites;

    private Touch touch;

    // Start is called before the first frame update
    void Start()
    {
        Application.targetFrameRate = 120;

        if (instance == null)
        {
            instance = this;
        }
        else
            Destroy(this);

        if (PlayerPrefs.HasKey("highscore"))
        {
            highscore = PlayerPrefs.GetInt("highscore", 0);
        }
        else
        {
            highscore = 0;
            PlayerPrefs.SetInt("highscore", highscore);
        }
        highscoreText.text = "HI " + highscore.ToString();

        if (PlayerPrefs.HasKey("coins"))
        {
            coins = PlayerPrefs.GetInt("coins", 0);
        }
        else
        {
            coins = 0;
            PlayerPrefs.SetInt("coins", coins);
        }
        coinsText.text = coins.ToString();

        if (PlayerPrefs.HasKey("mute"))
        {
            if (PlayerPrefs.GetInt("mute", 0) == 0)
            {
                MuteToggle.isOn = true;
                ToggleMute();
            }
        }
        else
        {
            PlayerPrefs.SetInt("mute", 1); //0 is muted, 1 is not muted
        }

        SetGameState(StateType.menu);
    }
    private void Awake()
    {

    }

    public void StartGame()
    {
        PlayerScript.instance.lastScoreIncreaseTime = Time.time;
        SwipeMovement.instance.Move("MoveUp");
        SetGameState(StateType.gameplay);
    }

    // Update is called once per frame
    void Update()
    {
        //if (Input.touchCount > 0)
        //{
        //    touch = Input.GetTouch(0);
        //}

        //// for mobile
        //if (Input.touchCount > 0 && touch.phase == TouchPhase.Ended && state == StateType.menu)
        //{
        //    if (Mathf.Abs(touch.deltaPosition.y) == Mathf.Abs(touch.deltaPosition.x))
        //    {
        //        SetGameState(StateType.gameplay);
        //    }
        //}

        ////for pc
        //if (Input.GetKeyDown(KeyCode.Mouse0) && state == StateType.menu)
        //{
        //    SetGameState(StateType.gameplay);
        //}
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
                    if (PlayerScript.instance.score > highscore)
                    {
                        highscore = PlayerScript.instance.score;
                        PlayerPrefs.SetInt("highscore", highscore);
                    }

                    PlayerPrefs.SetInt("coins", coins);

                    break;
                }
            default:
                break;
        }
    }

    public void Refreseh()
    {
        SceneManager.LoadScene(SceneManager.GetActiveScene().name);
    }
    public void OnApplicationQuit()
    {
        instance = null;
    }

    public void ToggleSettings()
    {
        if(!SettingsButton.isOn)
        {
            SettingsAnimator.Play("CloseSettings", -1, 0);
        }
        else
            SettingsAnimator.Play("OpenSettings", -1, 0);
    }

    public void ToggleMute()
    {
        if (!MuteToggle.isOn)
        {
            MuteToggle.GetComponent<Image>().sprite = mutedSprites[2];

            SpriteState tempState = MuteToggle.spriteState;
            tempState.pressedSprite = mutedSprites[3];
            MuteToggle.spriteState = tempState;

            AudioManager.Instance.sfxSource.volume = 100;
            AudioManager.Instance.bgmSource.volume = 100;

            PlayerPrefs.SetInt("mute", 1); //0 is muted, 1 is not muted
        }
        else
        {
            MuteToggle.GetComponent<Image>().sprite = mutedSprites[0];

            SpriteState tempState = MuteToggle.spriteState;
            tempState.pressedSprite = mutedSprites[1];
            MuteToggle.spriteState = tempState;

            AudioManager.Instance.sfxSource.volume = 0;
            AudioManager.Instance.bgmSource.volume = 0;

            PlayerPrefs.SetInt("mute", 0); //0 is muted, 1 is not muted
        }
    }

    public void TogglePowerSaving()
    {
        if (!PowerSaveToggle.isOn)
        {

        }
        else
        {

        }
    }
}
