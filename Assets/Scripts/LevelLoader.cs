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
    [SerializeField] Camera mainCamera;
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
        // Optionnel : replacer la cam�ra principale hors champ si besoin
        if (mainCam != null)
            mainCam.transform.position = new Vector3(0, 0, -10f);

        // D�sactiver le texte avant de charger la sc�ne
        GameObject textObject = GameObject.Find("Canvas"); // Nom � remplacer si on veut un autre objet
        if (textObject != null) textObject.SetActive(false);

        SceneManager.LoadScene(levelName, LoadSceneMode.Additive);
    }

    public void ExitLevel()
    {
        // R�active la cam�ra principale
        if (mainCam != null)
            mainCam.gameObject.SetActive(true);

        // R�activer le texte quand on quitte la sc�ne
        GameObject textObject = GameObject.Find("Canvas"); // Nom � remplacer si on veut un autre objet
        if (textObject != null) textObject.SetActive(true);

        // D�charge la sc�ne pr�c�dente
        SceneManager.UnloadSceneAsync(lastlevel.buildIndex);
    }

    private void OnSceneLoaded(Scene scene, LoadSceneMode mode)
    {
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

                // Position de d�part : tr�s haut
                newCam.transform.position = new Vector3(0f, 15f, -10f);

                // Rotation de d�part : forte inclinaison
                newCam.transform.rotation = Quaternion.Euler(45f, 0f, 0f);

                // Animation smooth : descente + redressement
                newCam.transform.DOMoveY(0f, enterDuration);
                newCam.transform.DORotate(new Vector3(0f, 0f, 0f), enterDuration);
            }
        }
    }

    void SwitchCam()
    {
        mainCamera.DOOrthoSize(currentSize, CamAnimTime.y);
    }
}

