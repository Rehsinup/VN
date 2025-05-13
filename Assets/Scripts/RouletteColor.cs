using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;

public class RouletteColor : MonoBehaviour
{
    private VFXLoader vfxLoader; // Référence au script VFXLoader
    private string chosenColor = ""; // Couleur choisie par le joueur

    private void Start()
    {
        vfxLoader = FindObjectOfType<VFXLoader>();
    }
    // Appelée par un bouton pour choisir une couleur
    public void ChooseColor(string color)
    {
        chosenColor = color;
        Debug.Log("Couleur choisie : " + chosenColor);
    }

    // Appelée pour lancer la roulette
    public void OnButtonClick()
    {
        if (string.IsNullOrEmpty(chosenColor))
        {
            Debug.Log("Veuillez choisir une couleur d'abord !");
            return;
        }

        float randomValue = Random.Range(0f, 1f);
        string colorResult;

        if (randomValue < 0.45f)
            colorResult = "Noir";
        else if (randomValue < 0.90f)
            colorResult = "Rouge";
        else
            colorResult = "Vert";

        Debug.Log("Couleur obtenue : " + colorResult);

        if (colorResult == chosenColor)
        {
            Debug.Log("Bravo ! Vous avez deviné la bonne couleur !");
            if (vfxLoader != null)
            {
                vfxLoader.ExitLevel();
                FindAnyObjectByType<Canvas>().gameObject.SetActive(true);
            }
            else
            {
                Debug.LogError("LevelLoader non trouvé !");
            }
        }
        else
        {
            Debug.Log("Dommage ! Ce n'était pas la bonne couleur.");
            if (vfxLoader != null)
            {
                vfxLoader.ExitLevel();
                FindAnyObjectByType<Canvas>().gameObject.SetActive(true);
            }
            else
            {
                Debug.LogError("VFXLoader non trouvé !");
            }
        }
    }
}
