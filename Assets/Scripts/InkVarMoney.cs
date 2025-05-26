using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Ink.Runtime;
using vinkn;
using TMPro;

public class InkVarMoney : MonoBehaviour
{
    [SerializeField] private StoryReader reader;
    [SerializeField] private TMP_Text moneyText; // TMP_Text � afficher dans l'interface

    private Story myStory;

    void Start()
    {
        myStory = reader.story;

        // Met � jour l'affichage au d�marrage
        UpdateMoneyDisplay();
    }

    public void SetMoney(int money, bool isWin)
    {
        int valeurActuelle = (int)myStory.variablesState["money"];
        myStory.variablesState["money"] = money + valeurActuelle;
        myStory.variablesState["gameWin"] = isWin;

        UpdateMoneyDisplay(); // Met � jour l'affichage � chaque changement
    }

    private void UpdateMoneyDisplay()
    {
        if (moneyText != null && myStory != null)
        {
            int currentMoney = (int)myStory.variablesState["money"];
            moneyText.text = $"Money : {currentMoney}";
        }
    }
}
