using System.Collections.Generic;
using UnityEngine;

public class CardCarousel : MonoBehaviour
{
    public List<Transform> cards;
    public float radius = 2f;
    public float rotationSpeed = 20f; // degrés par seconde
    public Vector3 rotationAxis = Vector3.up;

    private float currentAngle = 0f;

    void Update()
    {
        int count = cards.Count;
        if (count == 0) return;

        currentAngle += rotationSpeed * Time.deltaTime;
        float angleStep = 360f / count;

        for (int i = 0; i < count; i++)
        {
            float angle = currentAngle + i * angleStep;
            float rad = angle * Mathf.Deg2Rad;

            // Position circulaire (en XZ)
            Vector3 newPos = new Vector3(
                Mathf.Cos(rad) * radius,
                cards[i].position.y,
                Mathf.Sin(rad) * radius
            );

            cards[i].position = transform.position + newPos;

            // En option : fait regarder vers le centre
            cards[i].LookAt(transform.position);
        }
    }
}
