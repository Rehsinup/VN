using System;
using UnityEngine;
using UnityEngine.SceneManagement;

public class VFXLoader : MonoBehaviour
{
    private Scene lastlevel;

    void Start()
    {
        SceneManager.sceneLoaded += OnSceneLoaded;
    }

    public void ImportLevel(string levelName)
    {
        Debug.Log("VFX Import called for scene: " + levelName);

        // Ne modifie PAS la caméra ni le canvas
        SceneManager.LoadScene(levelName, LoadSceneMode.Additive);

        // Assure que la caméra principale reste active
        if (Camera.main != null)
            Camera.main.gameObject.SetActive(true);
    }

    public void ExitLevel()
    {
        GameObject textObject = GameObject.Find("Canvas");
        if (textObject != null) textObject.SetActive(true);

        SceneManager.UnloadSceneAsync(lastlevel.buildIndex);
    }

    private void OnSceneLoaded(Scene scene, LoadSceneMode mode)
    {
        if (mode == LoadSceneMode.Additive)
        {
            lastlevel = scene;

            // S’assurer que la caméra principale reste active
            if (Camera.main != null)
                Camera.main.gameObject.SetActive(true);
        }
    }
}
