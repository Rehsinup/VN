using System.Collections;
using System.Collections.Generic;
using TMPro;
using Unity.Properties;
using UnityEngine;
using vinkn;
using Febucci.UI.Core;

public class ContentWriter : MonoBehaviour
{
    [SerializeField] TMP_Text messageText;
    [SerializeField] StoryReader storyReader;
    private TypewriterCore typewriterCore;
    public string text { get => messageText.text; set => messageText.text = value; }
    // Start is called before the first frame update
    void Start()
    {
        typewriterCore = messageText.GetComponent<TypewriterCore>();
    }

    // Update is called once per frame
    void Update()
    {

    }

    public void OnClick()
    {
        if (typewriterCore.isShowingText) 
        {
            typewriterCore.SkipTypewriter();
        }
        else
        {
            storyReader.Next();
        }
    }
}