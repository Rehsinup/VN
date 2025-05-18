using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro; // Assure-toi d'utiliser TextMeshPro

public class RouletteColor : MonoBehaviour
{
    public TextMeshProUGUI messageText; // Assure-toi de l�assigner dans l�inspecteur
    private VFXLoader vfxLoader; // R�f�rence au script VFXLoader
    private string chosenColor = ""; // Couleur choisie par le joueur
    [SerializeField] Canvas canvas; // R�f�rence au canvas
    private void Start()
    {
        Debug.Log("==> Start() appel�");
        vfxLoader = FindObjectOfType<VFXLoader>();

        if (messageText != null)
        {
            messageText.text = "Choisissez une couleur :";
            Debug.Log("messageText bien assign�");
        }
        else
        {
            Debug.LogError("messageText n'est pas assign� !");
        }
    }

    // Appel�e par un bouton pour choisir une couleur
    public void ChooseColor(string color)
    {
        Debug.Log("==> ChooseColor() appel� avec : " + color);
        chosenColor = color;

        if (messageText != null)
        {
            messageText.text = "Couleur choisie : " + chosenColor;
            Debug.Log("messageText mis � jour avec la couleur choisie");
        }
        else
        {
            Debug.LogError("messageText est NULL dans ChooseColor");
        }
    }

    // Appel�e pour lancer la roulette
    public void OnButtonClick()
    {
        Debug.Log("==> OnButtonClick() appel�");

        if (string.IsNullOrEmpty(chosenColor))
        {
            Debug.Log("Aucune couleur n�a �t� choisie !");
            if (messageText != null)
                messageText.text = "Veuillez choisir une couleur d'abord !";
            else
                Debug.LogError("messageText est NULL au moment de v�rifier la couleur !");
            return;
        }

        float randomValue = Random.Range(0f, 1f);
        Debug.Log("randomValue g�n�r� : " + randomValue);

        string colorResult;

        if (randomValue < 0.45f)
            colorResult = "Noir";
        else if (randomValue < 0.90f)
            colorResult = "Rouge";
        else
            colorResult = "Vert";

        Debug.Log("Couleur obtenue par la roulette : " + colorResult);

        if (messageText != null)
        {
            messageText.text = "Couleur obtenue : " + colorResult;
        }
        else
        {
            Debug.LogError("messageText est NULL au moment d�afficher la couleur obtenue");
        }

        if (colorResult == chosenColor)
        {
            Debug.Log("R�sultat : BONNE couleur !");
            if (messageText != null)
                messageText.text += "\nBravo ! Vous avez devin� la bonne couleur !";
            else
                Debug.LogError("messageText est NULL � la victoire");

            if (vfxLoader != null)
            {

                Debug.Log("vfxLoader trouv�, on quitte le niveau");
                vfxLoader.ExitLevel();
                canvas.gameObject.SetActive(false); // D�sactive le canvas de la roulette
                FindAnyObjectByType<Canvas>().gameObject.SetActive(true);
            }
            else
            {
                Debug.LogError("vfxLoader non trouv� !");
            }
        }
        else
        {
            Debug.Log("R�sultat : MAUVAISE couleur.");
            if (messageText != null)
                messageText.text += "\nDommage ! Ce n'�tait pas la bonne couleur.";
            else
                Debug.LogError("messageText est NULL � l��chec");

            if (vfxLoader != null)
            {
                Debug.Log("vfxLoader trouv�, on quitte le niveau");
                vfxLoader.ExitLevel();
                FindAnyObjectByType<Canvas>().gameObject.SetActive(true);
            }
            else
            {
                Debug.LogError("vfxLoader non trouv� !");
            }
        }
    }
}
