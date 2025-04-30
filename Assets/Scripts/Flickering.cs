using UnityEngine;
using UnityEngine.Rendering.Universal;
using System.Collections;

public class FlickeringNeon : MonoBehaviour
{
    public Light2D neonLight;
    public float minFlickerTime = 0.05f;
    public float maxFlickerTime = 0.3f;
    public bool startOn = true;

    private void Start()
    {
        if (neonLight == null)
            neonLight = GetComponent<Light2D>();

        neonLight.enabled = startOn;
        StartCoroutine(FlickerRoutine());
    }

    IEnumerator FlickerRoutine()
    {
        while (true)
        {
            float waitTime = Random.Range(minFlickerTime, maxFlickerTime);
            neonLight.enabled = !neonLight.enabled;
            yield return new WaitForSeconds(waitTime);
        }
    }
}
