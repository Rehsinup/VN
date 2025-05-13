using System;
using UnityEngine;
using UnityEngine.SceneManagement;
using DG.Tweening;
using Unity.VisualScripting;

public class LevelLoader : MonoBehaviour
{
    private Scene lastlevel;
    private Camera mainCam;

    [SerializeField] private float enterDuration = 2.5f;
    [SerializeField] private float centerDuration = 2.5f;
    [SerializeField] private Camera mainCamera;
    [SerializeField] Canvas inkCanvas;
    [SerializeField] private GameObject charas;
    [SerializeField] private GameObject backgrounds;

    private Vector3 cameraPos;
    private float orthographicSize;


    void Start()
    {
        SceneManager.sceneLoaded += OnSceneLoaded;
        SceneManager.sceneUnloaded += OnSceneUnloaded;
        mainCam = Camera.main;
        cameraPos = mainCam.transform.position;
        orthographicSize = mainCam.orthographicSize;
    }

    private void OnSceneUnloaded(Scene scene)
    {
        if (gameObject.scene == scene)
            return;
        inkCanvas.gameObject.SetActive(true);
        charas.SetActive(true);
        backgrounds.SetActive(true);
        mainCam.transform.DOMove(cameraPos, centerDuration);
        mainCam.DOOrthoSize(orthographicSize, centerDuration);
    }


    public void ImportLevel(string levelName)
    {
        Debug.Log("LEVEL Import called for scene: " + levelName);

        if (mainCam != null)
            mainCam.transform.position = new Vector3(0, 0, -10f);

        inkCanvas.gameObject.SetActive(false);
        charas.SetActive(false);
        backgrounds.SetActive(false);

        SceneManager.LoadScene(levelName, LoadSceneMode.Additive);
    }

    public void ExitLevel()
    {
       // if (mainCam != null)
        //    mainCam.gameObject.SetActive(true);

        SceneManager.UnloadSceneAsync(lastlevel.buildIndex);
    }

    private void OnSceneLoaded(Scene scene, LoadSceneMode mode)
    {

        // Ignore les scènes VFX
        if (scene.name.StartsWith("VFX")) return;

        if (mode == LoadSceneMode.Additive)
        {
            lastlevel = scene;
        }
    }

}
