using System;
using UnityEngine;
using UnityEngine.SceneManagement;
using DG.Tweening;

public class LevelLoader : MonoBehaviour
{
    private Scene lastlevel;
    private Camera mainCam;

    [SerializeField] private float enterDuration = 2.5f;
    [SerializeField] private float centerDuration = 2.5f;
    [SerializeField] private Camera mainCamera;
    public float ZoomSize = 6f;
    private float currentSize;
    public Vector2 CamAnimTime;

    void Start()
    {
        SceneManager.sceneLoaded += OnSceneLoaded;
        mainCam = Camera.main;
        currentSize = mainCamera.orthographicSize;
    }

    public void ImportLevel(string levelName)
    {
        Debug.Log("LEVEL Import called for scene: " + levelName);

        if (mainCam != null)
            mainCam.transform.position = new Vector3(0, 0, -10f);

        GameObject textObject = GameObject.Find("Canvas");
        if (textObject != null) textObject.SetActive(false);

        SceneManager.LoadScene(levelName, LoadSceneMode.Additive);
    }

    public void ExitLevel()
    {
        if (mainCam != null)
            mainCam.gameObject.SetActive(true);

        GameObject textObject = GameObject.Find("Canvas");
        if (textObject != null) textObject.SetActive(true);

        SceneManager.UnloadSceneAsync(lastlevel.buildIndex);
    }

    private void OnSceneLoaded(Scene scene, LoadSceneMode mode)
    {

        // Ignore les scènes VFX
        if (scene.name.StartsWith("VFX")) return;

        if (mode == LoadSceneMode.Additive)
        {
            lastlevel = scene;

            if (mainCam != null)
                mainCam.gameObject.SetActive(false);

            Camera newCam = null;
            foreach (GameObject obj in scene.GetRootGameObjects())
            {
                Camera cam = obj.GetComponentInChildren<Camera>();
                if (cam != null)
                {
                    newCam = cam;
                    break;
                }
            }

            if (newCam != null)
            {
                mainCamera.DOOrthoSize(ZoomSize, CamAnimTime.x).OnComplete(SwitchCam);
                newCam.gameObject.SetActive(true);

                newCam.transform.position = new Vector3(0f, 15f, -10f);
                newCam.transform.rotation = Quaternion.Euler(45f, 0f, 0f);

                newCam.transform.DOMoveY(0f, enterDuration);
                newCam.transform.DORotate(Vector3.zero, enterDuration);
            }
        }
    }

    void SwitchCam()
    {
        mainCamera.DOOrthoSize(currentSize, CamAnimTime.y);
    }
}
