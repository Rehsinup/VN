using UnityEngine;

[RequireComponent(typeof(SpriteRenderer))]
public class FloatingDivinationCard : MonoBehaviour
{
    [Header("Floating Settings")]
    public float verticalAmplitude = 0.5f;
    public float verticalFrequency = 1f;
    public float horizontalAmplitude = 0.3f;
    public float horizontalFrequency = 0.7f;

    private Vector3 startPos;
    private float verticalOffset;
    private float horizontalOffset;

    [Header("Glow Settings")]
    public float minGlow = 1f;
    public float maxGlow = 3f;
    public float glowSpeed = 1f;

    private Material mat;
    private float glowTime;

    void Start()
    {
        startPos = transform.position;
        verticalOffset = Random.Range(0f, 2 * Mathf.PI);
        horizontalOffset = Random.Range(0f, 2 * Mathf.PI);

        // Clone du matériau pour éviter que toutes les cartes aient le même glow
        SpriteRenderer sr = GetComponent<SpriteRenderer>();
        mat = Instantiate(sr.material);
        sr.material = mat;
    }

    void Update()
    {
        // Mouvement flottant vertical
        float y = startPos.y + Mathf.Sin(Time.time * verticalFrequency + verticalOffset) * verticalAmplitude;

        // Mouvement flottant horizontal
        float x = startPos.x + Mathf.Sin(Time.time * horizontalFrequency + horizontalOffset) * horizontalAmplitude;

        transform.position = new Vector3(x, y, startPos.z);

        // Glow pulsé
        glowTime += Time.deltaTime * glowSpeed;
        float emission = Mathf.Lerp(minGlow, maxGlow, (Mathf.Sin(glowTime) + 1f) / 2f);
        mat.SetFloat("_EmissionPower", emission);
    }
}
