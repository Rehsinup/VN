using UnityEngine;
using UnityEngine.EventSystems;

public class UIButtonHoverEffect : MonoBehaviour, IPointerEnterHandler, IPointerExitHandler
{
    [SerializeField] private GameObject redBackground;

    [Header("Sound")]
    [SerializeField] private string shakeSoundID = "ShakeSFX";

    public void Awake()
    {
        if (redBackground != null)
            redBackground.SetActive(false);
    }
    public void OnPointerEnter(PointerEventData eventData)
    {
        if (redBackground != null)
            redBackground.SetActive(true);

        // Une fois que toutes les images sont affichées, jouer le son
        if (AudioManager.instance != null)
        {
            AudioManager.instance.PlaySound(shakeSoundID);
        }
        else
        {
            Debug.LogWarning("AudioManager instance not found.");
        }
    }

    public void OnPointerExit(PointerEventData eventData)
    {
        if (redBackground != null)
            redBackground.SetActive(false);
    }


}