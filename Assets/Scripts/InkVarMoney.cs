using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Ink.Runtime;
using vinkn;
using TMPro;

public class InkVarMoney : MonoBehaviour
{
    [SerializeField] private StoryReader reader;
    [SerializeField] private TMP_Text moneyText; // TMP_Text à afficher dans l'interface

    private Story myStory;

    void Start()
    {
        myStory = reader.story;

        // Met à jour l'affichage au démarrage
        UpdateMoneyDisplay();
    }

    public void SetMoney(int money, bool isWin)
    {
        int valeurActuelle = (int)myStory.variablesState["money"];
        myStory.variablesState["money"] = money + valeurActuelle;
        myStory.variablesState["gameWin"] = isWin;

        UpdateMoneyDisplay(); // Met à jour l'affichage à chaque changement
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
