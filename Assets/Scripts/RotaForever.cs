using UnityEngine;
using DG.Tweening;

public class RotatingFloatingCubeDOTween : MonoBehaviour
{
    [Header("Rotation Y (secondes pour une rotation complète)")]
    public float rotationDuration = 4f;

    [Header("Flottement (amplitude en Y)")]
    public float floatAmount = 0.2f;

    [Header("Durée de montée/descente")]
    public float floatDuration = 1.5f;

    void Start()
    {
        // Rotation initiale pour une pose "sur la pointe"
        transform.rotation = Quaternion.Euler(45f, 45f, 0f);

        // Lancement de la rotation infinie sur Y
        transform.DORotate(new Vector3(45f, 405f, 0f), rotationDuration, RotateMode.FastBeyond360)
                 .SetEase(Ease.Linear)
                 .SetLoops(-1, LoopType.Restart);

        // Flottement vertical
        transform.DOMoveY(transform.position.y + floatAmount, floatDuration)
                 .SetEase(Ease.InOutSine)
                 .SetLoops(-1, LoopType.Yoyo);
    }
}
