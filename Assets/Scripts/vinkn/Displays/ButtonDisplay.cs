using Ink.Runtime;
using System;
using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

[RequireComponent(typeof(Button))]
public class ButtonDisplay : MonoBehaviour
{
    [SerializeField] TMP_Text content;
    Choice buttonChoice;
    Button btn;

    // Start is called before the first frame update
    void Awake()
    {
        btn = GetComponent<Button>();
    }

    public void SetChoice(Choice choice, Action<Choice> callback)
    {
        if (btn == null)
        {
            Debug.LogError("Button is null");
            return;
        }
        content.text = choice.text;
        buttonChoice = choice;

        btn.onClick.RemoveAllListeners();
        btn.onClick.AddListener(() => callback.Invoke(buttonChoice));

    }
}
