using UnityEngine;
using UnityEngine.UI;

public class SettingsManager : MonoBehaviour
{
    public GameObject settingsCanvas; // R�f�rence au Canvas des param�tres
    public Button openSettingsButton; // Bouton pour ouvrir
    public Button closeSettingsButton; // Bouton pour fermer (dans le canvas)

    private void Start()
    {
        // S'assurer que le menu est d�sactiv� au d�part
        settingsCanvas.SetActive(false);

        // Ajouter les listeners
        openSettingsButton.onClick.AddListener(OpenSettings);
        closeSettingsButton.onClick.AddListener(CloseSettings);
    }

    void OpenSettings()
    {
        settingsCanvas.SetActive(true);
    }

    void CloseSettings()
    {
        settingsCanvas.SetActive(false);
    }
}
