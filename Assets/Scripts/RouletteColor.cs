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

    private string colorResult = "";
    private Material _glowMaterialInstance;

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

        if (glowSpriteRenderer != null)
        {
            // Instancie le matériel pour éviter de modifier le sharedMaterial
            _glowMaterialInstance = glowSpriteRenderer.material;
        }
        else
        {
            Debug.LogWarning("glowSpriteRenderer non assigné !");
        }
    }

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
                canvas.gameObject.SetActive(false);
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

    private void ChangeGlowColor(string colorName)
    {
        if (_glowMaterialInstance == null)
        {
            Debug.LogWarning("Matériau glow non instancié !");
            return;
        }

        Color newColor;

        switch (colorName)
        {
            case "Rouge":
                newColor = Color.red;
                break;
            case "Noir":
                newColor = new Color(0.05f, 0.05f, 0.05f, 1f);
                break;
            case "Vert":
                newColor = Color.green;
                break;
            default:
                newColor = Color.white;
                break;
        }

        float intensity = 5f; // Intensité HDR dans la couleur
        Color colorWithIntensity = newColor * intensity;

        _glowMaterialInstance.SetColor("_GlowColor", colorWithIntensity);

        // Toujours fixer glowIntensity à 3
        if (_glowMaterialInstance.HasProperty("_GlowIntensity"))
            _glowMaterialInstance.SetFloat("_GlowIntensity", 3f);
    }
}
