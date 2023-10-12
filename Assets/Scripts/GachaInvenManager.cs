using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using UnityEngine.UI;

public class GachaInvenManager : MonoBehaviour
{
    public GameObject GachaInvenUI;
    public GameObject GachaUI;
    public GameObject InvenUI;

    public bool gachaInven; //if false then is inven

    private Vector2 startTouchPos, endTouchPos;
    private Touch touch;

    public Animator pageAnimator;

    public GameObject[] buttons; //shld only have 2 types of buttons
    public GameObject[] images;

    public TMP_Text nameObj;

    public string[] names;
    public int[] buttonType; //index of button

    int currentPage = 0;
    int pageNum; //shld be same as num of objects in arrays

    // Start is called before the first frame update
    void Start()
    {
        pageNum = names.Length;
    }

    private void OnEnable()
    {
        currentPage = 0;
        SwitchScreen(0);
    }

    // Update is called once per frame
    void Update()
    {
        if (gachaInven)
        {
            if (!GachaInvenUI.activeSelf || GachaUI.activeSelf || InvenUI.activeSelf)
                return;
        }
        else
        {
            if (GachaInvenUI.activeSelf || !InvenUI.activeSelf)
                return;
        }

        //PC Controls
        if (Input.GetKeyDown(KeyCode.LeftArrow))
        {
            SetPage(currentPage - 1);
            SwitchScreen(currentPage);
            pageAnimator.Play("SwipeRight", -1, 0);
        }
        if (Input.GetKeyDown(KeyCode.RightArrow))
        {
            SetPage(currentPage + 1);
            SwitchScreen(currentPage);
            pageAnimator.Play("SwipeLeft", -1, 0);
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

        if (Input.touchCount > 0 && (touch.phase == TouchPhase.Ended))
        {
            endTouchPos = touch.position;
            if (endTouchPos.x > startTouchPos.x)
            {
                SetPage(currentPage - 1);
                SwitchScreen(currentPage);
                pageAnimator.Play("SwipeRight", -1, 0);
            }
            else if (endTouchPos.x < startTouchPos.x)
            {
                SetPage(currentPage + 1);
                SwitchScreen(currentPage);
                pageAnimator.Play("SwipeLeft", -1, 0);
            }
        }
    }

    void SetPage(int newPage)
    {
        if (newPage >= pageNum)
        {
            currentPage = newPage % pageNum;
        }
        else if (newPage < 0)
        {
            currentPage = pageNum + newPage;
        }
        else
        {
            currentPage = newPage;
        }
    }

    void SwitchScreen(int newPage)
    {
        nameObj.text = names[newPage];

        for (int i = 0; i < pageNum; ++i)
        {
            if (i == newPage)
            {
                images[i].SetActive(true);
            }
            else
            {
                images[i].SetActive(false);
            }
        }

        switch (buttonType[newPage])
        {
            case 0:
                buttons[0].SetActive(true);
                buttons[1].SetActive(false);
                break;
            case 1:
                buttons[0].SetActive(false);
                buttons[1].SetActive(true);
                break;
        }
    }
}
