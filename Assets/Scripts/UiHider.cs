using UnityEngine;
using UnityEngine.UI;

public class ToggleCanvasGameObjectWithSprite : MonoBehaviour
{
    public Canvas targetCanvas;           // La canvas à activer/désactiver
    public GameObject targetObject;       // Le GameObject à activer/désactiver
    public Image buttonImage;             // L'image du bouton dont on changera le sprite
    public Sprite spriteOn;               // Sprite quand la canvas est active
    public Sprite spriteOff;              // Sprite quand la canvas est désactivée

    private Button button;

    void Start()
    {
        button = GetComponent<Button>();

        if (button == null)
        {
            Debug.LogError("Ce script doit être attaché à un GameObject avec un Button.");
            return;
        }

        if (buttonImage == null)
        {
            // Essaye de récupérer l'image automatiquement si non assignée
            buttonImage = button.GetComponent<Image>();
            if (buttonImage == null)
            {
                Debug.LogError("Aucune Image assignée et impossible de trouver une Image sur le bouton.");
                return;
            }
        }

        button.onClick.AddListener(ToggleStates);

        // Initialisation du sprite au démarrage
        UpdateButtonSprite();
    }

    void ToggleStates()
    {
        if (targetCanvas != null)
        {
            targetCanvas.enabled = !targetCanvas.enabled;
        }

        if (targetObject != null)
        {
            targetObject.SetActive(!targetObject.activeSelf);
        }

        UpdateButtonSprite();
    }

    void UpdateButtonSprite()
    {
        if (buttonImage == null) return;

        if (targetCanvas != null && targetCanvas.enabled)
        {
            buttonImage.sprite = spriteOn;
        }
        else
        {
            buttonImage.sprite = spriteOff;
        }
    }
}
