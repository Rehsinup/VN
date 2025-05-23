using UnityEngine;
using UnityEngine.UI;

public class ToggleCanvasGameObjectWithSprite : MonoBehaviour
{
    public Canvas targetCanvas;           // La canvas � activer/d�sactiver
    public GameObject targetObject;       // Le GameObject � activer/d�sactiver
    public Image buttonImage;             // L'image du bouton dont on changera le sprite
    public Sprite spriteOn;               // Sprite quand la canvas est active
    public Sprite spriteOff;              // Sprite quand la canvas est d�sactiv�e

    private Button button;

    void Start()
    {
        button = GetComponent<Button>();

        if (button == null)
        {
            Debug.LogError("Ce script doit �tre attach� � un GameObject avec un Button.");
            return;
        }

        if (buttonImage == null)
        {
            // Essaye de r�cup�rer l'image automatiquement si non assign�e
            buttonImage = button.GetComponent<Image>();
            if (buttonImage == null)
            {
                Debug.LogError("Aucune Image assign�e et impossible de trouver une Image sur le bouton.");
                return;
            }
        }

        button.onClick.AddListener(ToggleStates);

        // Initialisation du sprite au d�marrage
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
