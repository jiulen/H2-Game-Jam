using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class TextCopy : MonoBehaviour
{
    public TMP_Text textCopyFrom;
    TMP_Text textCopyTo;

    private void Awake()
    {
        textCopyTo = GetComponent<TMP_Text>();
    }

    // Update is called once per frame
    void Update()
    {
        textCopyTo.text = textCopyFrom.text;
    }
}
