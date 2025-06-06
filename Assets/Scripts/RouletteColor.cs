using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class RouletteColor : MonoBehaviour
{
    public TextMeshProUGUI messageText;
    private VFXLoader vfxLoader;
    private string chosenColor = "";
    [SerializeField] Canvas canvas;
    [SerializeField] private SpriteRenderer glowSpriteRenderer;
    private InkVarMoney inkVarMoney;
    private string colorResult = "";
    private Material _glowMaterialInstance;
    private bool hasSpun = false; // Emp�che les clics multiples

    private void Start()
    {
        inkVarMoney = FindObjectOfType<InkVarMoney>();
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

        if (glowSpriteRenderer != null)
        {
            _glowMaterialInstance = glowSpriteRenderer.material;
        }
        else
        {
            Debug.LogWarning("glowSpriteRenderer non assign� !");
        }
    }

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

    public void OnButtonClick()
    {
        Debug.Log("==> OnButtonClick() appel�");

        if (hasSpun)
        {
            Debug.Log("Le bouton a d�j� �t� cliqu�, action ignor�e.");
            return;
        }

        if (string.IsNullOrEmpty(chosenColor))
        {
            Debug.Log("Aucune couleur n�a �t� choisie !");
            if (messageText != null)
                messageText.text = "Veuillez choisir une couleur d'abord !";
            else
                Debug.LogError("messageText est NULL au moment de v�rifier la couleur !");
            return;
        }

        hasSpun = true;

        float randomValue = Random.Range(0f, 1f);
        Debug.Log("randomValue g�n�r� : " + randomValue);

        if (randomValue < 0.45f)
            colorResult = "Noir";
        else if (randomValue < 0.90f)
            colorResult = "Rouge";
        else
            colorResult = "Vert";

        Debug.Log("Couleur obtenue par la roulette : " + colorResult);
        ChangeGlowColor(colorResult);

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
            {
                messageText.text += "\nBravo ! Vous avez devin� la bonne couleur !";
                inkVarMoney.SetMoney(+50, true);
            }
            else
                Debug.LogError("messageText est NULL � la victoire");

            if (vfxLoader != null)
            {
                Debug.Log("vfxLoader trouv�, on quitte le niveau");
                vfxLoader.ExitLevel();
                canvas.gameObject.SetActive(false);
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
            {
                messageText.text += "\nDommage ! Ce n'�tait pas la bonne couleur.";
                inkVarMoney.SetMoney(-50, false);
            }
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

    private void ChangeGlowColor(string colorName)
    {
        if (_glowMaterialInstance == null)
        {
            Debug.LogWarning("Mat�riau glow non instanci� !");
            return;
        }

        Color newColor;

        switch (colorName)
        {
            case "Rouge":
                newColor = Color.red;
                break;
            case "Noir":
                newColor = new Color(0.2f, 0.2f, 0.2f, 1f);
                break;
            case "Vert":
                newColor = Color.green;
                break;
            default:
                newColor = Color.white;
                break;
        }

        float intensity = 5f;
        Color colorWithIntensity = newColor * intensity;

        _glowMaterialInstance.SetColor("_GlowColor", colorWithIntensity);

        if (_glowMaterialInstance.HasProperty("_Intensity"))
            _glowMaterialInstance.SetFloat("_Intensity", 3f);
    }

}
