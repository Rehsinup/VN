using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro; // Assure-toi d'utiliser TextMeshPro

public class RouletteColor : MonoBehaviour
{
    public TextMeshProUGUI messageText; // Assure-toi de l’assigner dans l’inspecteur
    private VFXLoader vfxLoader; // Référence au script VFXLoader
    private string chosenColor = ""; // Couleur choisie par le joueur
    [SerializeField] Canvas canvas; // Référence au canvas
    private void Start()
    {
        Debug.Log("==> Start() appelé");
        vfxLoader = FindObjectOfType<VFXLoader>();

        if (messageText != null)
        {
            messageText.text = "Choisissez une couleur :";
            Debug.Log("messageText bien assigné");
        }
        else
        {
            Debug.LogError("messageText n'est pas assigné !");
        }
    }

    // Appelée par un bouton pour choisir une couleur
    public void ChooseColor(string color)
    {
        Debug.Log("==> ChooseColor() appelé avec : " + color);
        chosenColor = color;

        if (messageText != null)
        {
            messageText.text = "Couleur choisie : " + chosenColor;
            Debug.Log("messageText mis à jour avec la couleur choisie");
        }
        else
        {
            Debug.LogError("messageText est NULL dans ChooseColor");
        }
    }

    // Appelée pour lancer la roulette
    public void OnButtonClick()
    {
        Debug.Log("==> OnButtonClick() appelé");

        if (string.IsNullOrEmpty(chosenColor))
        {
            Debug.Log("Aucune couleur n’a été choisie !");
            if (messageText != null)
                messageText.text = "Veuillez choisir une couleur d'abord !";
            else
                Debug.LogError("messageText est NULL au moment de vérifier la couleur !");
            return;
        }

        float randomValue = Random.Range(0f, 1f);
        Debug.Log("randomValue généré : " + randomValue);

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
            Debug.LogError("messageText est NULL au moment d’afficher la couleur obtenue");
        }

        if (colorResult == chosenColor)
        {
            Debug.Log("Résultat : BONNE couleur !");
            if (messageText != null)
                messageText.text += "\nBravo ! Vous avez deviné la bonne couleur !";
            else
                Debug.LogError("messageText est NULL à la victoire");

            if (vfxLoader != null)
            {

                Debug.Log("vfxLoader trouvé, on quitte le niveau");
                vfxLoader.ExitLevel();
                canvas.gameObject.SetActive(false); // Désactive le canvas de la roulette
                FindAnyObjectByType<Canvas>().gameObject.SetActive(true);
            }
            else
            {
                Debug.LogError("vfxLoader non trouvé !");
            }
        }
        else
        {
            Debug.Log("Résultat : MAUVAISE couleur.");
            if (messageText != null)
                messageText.text += "\nDommage ! Ce n'était pas la bonne couleur.";
            else
                Debug.LogError("messageText est NULL à l’échec");

            if (vfxLoader != null)
            {
                Debug.Log("vfxLoader trouvé, on quitte le niveau");
                vfxLoader.ExitLevel();
                FindAnyObjectByType<Canvas>().gameObject.SetActive(true);
            }
            else
            {
                Debug.LogError("vfxLoader non trouvé !");
            }
        }
    }
}
