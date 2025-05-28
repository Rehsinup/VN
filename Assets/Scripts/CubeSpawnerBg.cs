using UnityEngine;
using DG.Tweening;
using System.Collections;

public class CubeSpawnerBg : MonoBehaviour
{
    public GameObject cubePrefab;
    public float spawnInterval = 1f;
    public float moveDuration = 2f;

    private Vector3 spawnPos1 = new Vector3(0.76f, -5.12f, -3.46f);
    private Vector3 endPos1 = new Vector3(0.99f, -1.7f, -3.46f);

    private Vector3 spawnPos2 = new Vector3(-1.58f, 2.88f, 2.2f);
    private Vector3 endPos2 = new Vector3(2.75f, 2.88f, 2.2f);

    private Coroutine spawnCoroutine;

    private void OnEnable()
    {
        spawnCoroutine = StartCoroutine(SpawnLoop());
    }

    private void OnDisable()
    {
        if (spawnCoroutine != null)
            StopCoroutine(spawnCoroutine);
    }

    IEnumerator SpawnLoop()
    {
        while (true)
        {
            SpawnRandomCube();
            yield return new WaitForSeconds(spawnInterval);
        }
    }

    void SpawnRandomCube()
    {
        int path = Random.Range(0, 2); // 0 ou 1

        Vector3 spawnPos = path == 0 ? spawnPos1 : spawnPos2;
        Vector3 targetPos = path == 0 ? endPos1 : endPos2;

        GameObject newCube = Instantiate(cubePrefab, spawnPos, Quaternion.identity);

        newCube.transform.DOMove(targetPos, moveDuration)
            .SetEase(Ease.InOutSine)
            .OnComplete(() => Destroy(newCube));
    }
}

