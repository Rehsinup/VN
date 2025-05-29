using UnityEngine;
using UnityEngine.SceneManagement;

public class AutoLoadScene : MonoBehaviour
{
    [Tooltip("Nom ou index de la scène suivante")]
    public string sceneToLoad;
    public float delay = 6f;

    void Start()
    {
        Invoke(nameof(LoadNextScene), delay);
    }

    void LoadNextScene()
    {
        SceneManager.LoadScene(sceneToLoad);
    }
}
