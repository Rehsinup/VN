using UnityEngine;
using UnityEngine.EventSystems;

public class UIButtonHoverEffect : MonoBehaviour, IPointerEnterHandler, IPointerExitHandler
{
    [SerializeField] private GameObject redBackground;

    public void Awake()
    {
        if (redBackground != null)
            redBackground.SetActive(false);
    }
    public void OnPointerEnter(PointerEventData eventData)
    {
        if (redBackground != null)
            redBackground.SetActive(true);
    }

    public void OnPointerExit(PointerEventData eventData)
    {
        if (redBackground != null)
            redBackground.SetActive(false);
    }
}