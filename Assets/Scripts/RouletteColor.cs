using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;

public class RouletteColor : MonoBehaviour
{
    private VFXLoader vfxLoader; // R�f�rence au script VFXLoader
    private string chosenColor = ""; // Couleur choisie par le joueur

    private void Start()
    {
        vfxLoader = FindObjectOfType<VFXLoader>();
    }
    // Appel�e par un bouton pour choisir une couleur
    public void ChooseColor(string color)
    {
        chosenColor = color;
        Debug.Log("Couleur choisie : " + chosenColor);
    }

    // Appel�e pour lancer la roulette
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
            Debug.Log("Bravo ! Vous avez devin� la bonne couleur !");
            if (vfxLoader != null)
            {
                vfxLoader.ExitLevel();
                FindAnyObjectByType<Canvas>().gameObject.SetActive(true);
            }
            else
            {
                Debug.LogError("LevelLoader non trouv� !");
            }
        }
        else
        {
            Debug.Log("Dommage ! Ce n'�tait pas la bonne couleur.");
            if (vfxLoader != null)
            {
                vfxLoader.ExitLevel();
                FindAnyObjectByType<Canvas>().gameObject.SetActive(true);
            }
            else
            {
                Debug.LogError("VFXLoader non trouv� !");
            }
        }
    }
}
