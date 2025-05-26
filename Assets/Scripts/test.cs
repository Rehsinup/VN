using System.Collections;
using UnityEngine;

public class NeonPulse : MonoBehaviour
{
    [SerializeField] private SpriteRenderer spriteRenderer;
    [SerializeField] private float minIntensity = 0.4f;
    [SerializeField] private float maxIntensity = 0.8f;
    [SerializeField] private float pulseDuration = 0.8f;

    private Material mat;
    private bool increasing = true;

    void Start()
    {
        if (spriteRenderer == null)
            spriteRenderer = GetComponent<SpriteRenderer>();

        mat = spriteRenderer.material;
        mat.SetFloat("_Intensity", minIntensity);
        StartCoroutine(PulseSmooth());
    }

    IEnumerator PulseSmooth()
    {
        while (true)
        {
            float start = increasing ? minIntensity : maxIntensity;
            float end = increasing ? maxIntensity : minIntensity;

            float elapsed = 0f;

            while (elapsed < pulseDuration)
            {
                float t = elapsed / pulseDuration;
                float intensity = Mathf.Lerp(start, end, t);
                mat.SetFloat("_Intensity", intensity);

                elapsed += Time.deltaTime;
                yield return null;
            }

            // S'assurer que l’intensité finale est bien appliquée
            mat.SetFloat("_Intensity", end);

            increasing = !increasing;
        }
    }
}
