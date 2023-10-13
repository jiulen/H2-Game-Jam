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
    public TMP_Text endHighscoreText;
    public TMP_Text endHighscoreOutline;
    public TMP_Text endScoreText;
    public TMP_Text endScoreOutline;
    public int coins;
    public TMP_Text coinsText;
    public TMP_Text endCoinsText;
    public TMP_Text endCoinsOutline;

    public int gachaCost;

    public TMP_Text gachaInvenCoinsText;
    public TMP_Text gachaInvenCoinsOutline;
    public TMP_Text gachaCoinsText;
    public TMP_Text gachaCoinsOutline;

    public List<int> charsUnlocked = new List<int>();
    public int currChar;
    public int totalChar;

    public GameObject MenuUI;
    public GameObject GameUI;
    public GameObject DeathUI;
    public GameObject GachaInvenSelectionUI;
    public GameObject GachaUI;
    public GameObject GachaResultUI;
    public GameObject InvenUI;

    public Toggle SettingsButton;
    public Animator SettingsAnimator;
    public Sprite[] settingSprites;

    public Toggle MuteToggle;
    public Sprite[] mutedSprites;

    public Toggle PowerSaveToggle;
    public Sprite[] powerSaveSprites;

    private Touch touch;

    public Image fadingImage;
    public float fadeDuration;
    public float fadeTimer;

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
            highscore = PlayerPrefs.GetInt("highscore");
        }
        else
        {
            highscore = 0;
            PlayerPrefs.SetInt("highscore", highscore);
        }
        //highscoreText.text = "HI " + highscore.ToString();

        if (PlayerPrefs.HasKey("coins"))
        {
            coins = PlayerPrefs.GetInt("coins");
        }
        else
        {
            coins = 0;
            PlayerPrefs.SetInt("coins", coins);
        }
        coinsText.text = coins.ToString();

        gachaInvenCoinsOutline.text = coins.ToString();
        gachaInvenCoinsText.text = coins.ToString();
        gachaCoinsOutline.text = coins.ToString();
        gachaCoinsText.text = coins.ToString();

        if (PlayerPrefs.HasKey("mute"))
        {
            if (PlayerPrefs.GetInt("mute") == 0)
            {
                MuteToggle.isOn = true;
                ToggleMute();
            }
        }
        else
        {
            PlayerPrefs.SetInt("mute", 1); //0 is muted, 1 is not muted
        }

        if (PlayerPrefs.HasKey("shadow"))
        {
            if (PlayerPrefs.GetInt("shadow") == 0)
            {
                PowerSaveToggle.isOn = true;
                TogglePowerSaving();
            }
        }
        else
        {
            PlayerPrefs.SetInt("shadow", 1); //0 is no shadow, 1 is have shadow
        }

        if (PlayerPrefs.HasKey("charUnlocks"))
        {
            string[] charsStr = PlayerPrefs.GetString("charUnlocks").Split(',');
            foreach (string charStr in charsStr)
            {
                if (int.TryParse(charStr, out int charIndex))
                    charsUnlocked.Add(charIndex);
                else
                    Debug.Log("Wrong char index");
            }
        }
        else
        {
            charsUnlocked.Add(0);
            PlayerPrefs.SetString("charUnlocks", "0"); //index of each char unlocked will be included in string
        }
        if (PlayerPrefs.HasKey("currChar"))
        {
            currChar = PlayerPrefs.GetInt("currChar");
        }
        else
        {
            currChar = 0;
            PlayerPrefs.SetInt("currChar", currChar);
        }

        //Set player char model here based on currChar

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
        if (fadeTimer < fadeDuration)
        {
            fadeTimer += Time.deltaTime;

            if (fadeTimer >= fadeDuration)
            {
                fadeTimer = fadeDuration;
                fadingImage.raycastTarget = false;
            }

            fadingImage.color = new Color(fadingImage.color.r, fadingImage.color.g, fadingImage.color.b, 1 - fadeTimer / fadeDuration);
        }

        if (Input.GetKeyDown(KeyCode.Delete)) //resets playerprefs (for debug) - need restart game to see effect
        {
            PlayerPrefs.DeleteAll();
        }
        //Test add gacha char
        if (Input.GetKeyDown(KeyCode.Backspace))
        {
            int charr = GetRandomAvailableCharacter();
            Debug.Log("char : " + charr);
            if (charr != -1) AddCharacter(charr);
        }

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
                    CameraScript.instance.moving = false;
                    if (PlayerScript.instance.score > highscore)
                    {
                        highscore = PlayerScript.instance.score;
                        PlayerPrefs.SetInt("highscore", highscore);
                    }

                    PlayerPrefs.SetInt("coins", coins);
                    //PlayerScript.instance.isAlive = false;

                    //Set stuff in death menu
                    endCoinsOutline.text = coins.ToString();
                    endCoinsText.text = coins.ToString();
                    endHighscoreOutline.text = highscore.ToString();
                    endHighscoreText.text = highscore.ToString();
                    endScoreOutline.text = PlayerScript.instance.score.ToString();
                    endScoreText.text = PlayerScript.instance.score.ToString();

                    gachaInvenCoinsOutline.text = coins.ToString();
                    gachaInvenCoinsText.text = coins.ToString();
                    gachaCoinsOutline.text = coins.ToString();
                    gachaCoinsText.text = coins.ToString();

                    break;
                }
            default:
                break;
        }
    }
    public void GoMainMenuState()
    {
        SetGameState(StateType.menu);
    }
    public void TriggerDeathUI()
    {
        if (state == StateType.death)
        {
            GameUI.SetActive(false);
            DeathUI.SetActive(true);
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
            SettingsButton.GetComponent<Image>().sprite = settingSprites[2];

            SpriteState tempState = SettingsButton.spriteState;
            tempState.pressedSprite = settingSprites[3];
            SettingsButton.spriteState = tempState;

            SettingsAnimator.Play("CloseSettings", -1, 0);
        }
        else
        {
            SettingsButton.GetComponent<Image>().sprite = settingSprites[0];

            SpriteState tempState = SettingsButton.spriteState;
            tempState.pressedSprite = settingSprites[1];
            SettingsButton.spriteState = tempState;

            SettingsAnimator.Play("OpenSettings", -1, 0);
        }
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
            PowerSaveToggle.GetComponent<Image>().sprite = powerSaveSprites[2];

            SpriteState tempState = PowerSaveToggle.spriteState;
            tempState.pressedSprite = powerSaveSprites[3];
            PowerSaveToggle.spriteState = tempState;

            QualitySettings.shadows = ShadowQuality.All;

            PlayerPrefs.SetInt("shadow", 1); //0 is no shadow, 1 is have shadow
        }
        else
        {
            PowerSaveToggle.GetComponent<Image>().sprite = powerSaveSprites[0];

            SpriteState tempState = PowerSaveToggle.spriteState;
            tempState.pressedSprite = powerSaveSprites[1];
            PowerSaveToggle.spriteState = tempState;

            QualitySettings.shadows = ShadowQuality.Disable;

            PlayerPrefs.SetInt("shadow", 0); //0 is no shadow, 1 is have shadow
        }
    }

    public void OpenGachaInventorySelection(bool open)
    {
        GachaInvenSelectionUI.SetActive(open);
    }

    public void OpenGacha(bool open)
    {
        GachaUI.SetActive(open);
    }

    public void OpenGachaResult(bool open)
    {
        GachaResultUI.SetActive(open);
    }

    public void OpenInventory(bool open)
    {
        InvenUI.SetActive(open);
    }

    public int GetRandomAvailableCharacter()
    {
        if (charsUnlocked.Count >= totalChar)
        {
            return -1;
        }

        List<int> lockedChars = new List<int>();
        for (int i = 0; i < totalChar; ++i)
        {
            if (!charsUnlocked.Contains(i))
            {
                lockedChars.Add(i);
            }
        }

        return lockedChars[Random.Range(0, lockedChars.Count)];
    }

    public void AddCharacter(int charIndex)
    {
        charsUnlocked.Add(charIndex);
        string charUnlockedStr = PlayerPrefs.GetString("charUnlocks") + "," + charIndex.ToString();
        PlayerPrefs.SetString("charUnlocks", charUnlockedStr); //index of each char unlocked will be included in string
    }
}
