using UnityEngine;
using UnityEngine.SceneManagement;

public class PuzzleEnviroController : MonoBehaviour
{
    private GameObject enviroObject;

    void Start()
    {
        // Cherche le GameObject "enviros" dans la scène principale
        enviroObject = GameObject.Find("Enviros");

        if (enviroObject != null)
        {
            enviroObject.SetActive(false);
            Debug.Log("enviros désactivé au début du puzzle.");
        }
        else
        {
            Debug.LogWarning("enviros non trouvé !");
        }

        // Optionnel : s'abonner à la décharge de la scène puzzle pour réactiver enviros
        SceneManager.sceneUnloaded += OnSceneUnloaded;
    }

    void OnSceneUnloaded(Scene scene)
    {
        // Si la scène déchargée est cette scène puzzle, on réactive enviros
        if (scene.name == gameObject.scene.name)
        {
            if (enviroObject != null)
            {
                enviroObject.SetActive(true);
                Debug.Log("enviros réactivé après puzzle.");
            }

            // Se désabonner après usage pour éviter les fuites
            SceneManager.sceneUnloaded -= OnSceneUnloaded;
        }
    }

    private void OnDestroy()
    {
        // Toujours se désabonner proprement
        SceneManager.sceneUnloaded -= OnSceneUnloaded;
    }
}
