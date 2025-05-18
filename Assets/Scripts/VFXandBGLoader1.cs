using System;
using System.Collections;
using UnityEngine;
using UnityEngine.SceneManagement;

public class VFXLoader : MonoBehaviour
{
    private Scene lastlevel;
    [SerializeField] Animator transitionAnim;
    [SerializeField] Canvas AnimCanvas;

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
        StartCoroutine(QuitterLevel());
    }

    IEnumerator QuitterLevel()
    {
        AnimCanvas.sortingOrder = 11;
        transitionAnim.SetTrigger("End");
        yield return new WaitForSeconds(2f);
        SceneManager.UnloadSceneAsync(lastlevel.buildIndex);
        transitionAnim.SetTrigger("Start");
        yield return new WaitForSeconds(2f);
        AnimCanvas.sortingOrder = 1;
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
