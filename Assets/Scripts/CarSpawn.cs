using UnityEngine;
using DG.Tweening;

public class CubeSpawner : MonoBehaviour
{
    public GameObject cubePrefab;
    public float spawnInterval = 1f;
    public float moveDuration = 2f;

    private Vector3 startPos1 = new Vector3(8.04f, -4.48f, 0f);
    private Vector3 startPos2 = new Vector3(-5.15f, -4.59f, 0f);

    private Vector3 endPos1 = new Vector3(-9.17f, 5.01f, 0f);
    private Vector3 endPos2 = new Vector3(8.56f, 5.2f, 0f);

    private void Start()
    {
        InvokeRepeating(nameof(SpawnRandomCube), 0f, spawnInterval);
    }

    void SpawnRandomCube()
    {
        // Choix aléatoire de la direction : 0 = droite vers gauche, 1 = gauche vers droite
        int direction = Random.Range(0, 2);

        Vector3 spawnPos = direction == 0 ? startPos1 : startPos2;
        Vector3 targetPos = direction == 0 ? endPos1 : endPos2;

        GameObject newCube = Instantiate(cubePrefab, spawnPos, Quaternion.identity);

        newCube.transform.DOMove(targetPos, moveDuration)
            .SetEase(Ease.InOutSine)
            .OnComplete(() => Destroy(newCube)); // détruire une fois arrivé
    }
}