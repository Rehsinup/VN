using UnityEngine;
using UnityEngine.SceneManagement;

public class PuzzleEnviroController : MonoBehaviour
{
    private GameObject enviroObject;

    void Start()
    {
        // Cherche le GameObject "enviros" dans la sc�ne principale
        enviroObject = GameObject.Find("Enviros");

        if (enviroObject != null)
        {
            enviroObject.SetActive(false);
            Debug.Log("enviros d�sactiv� au d�but du puzzle.");
        }
        else
        {
            Debug.LogWarning("enviros non trouv� !");
        }

        // Optionnel : s'abonner � la d�charge de la sc�ne puzzle pour r�activer enviros
        SceneManager.sceneUnloaded += OnSceneUnloaded;
    }

    void OnSceneUnloaded(Scene scene)
    {
        // Si la sc�ne d�charg�e est cette sc�ne puzzle, on r�active enviros
        if (scene.name == gameObject.scene.name)
        {
            if (enviroObject != null)
            {
                enviroObject.SetActive(true);
                Debug.Log("enviros r�activ� apr�s puzzle.");
            }

            // Se d�sabonner apr�s usage pour �viter les fuites
            SceneManager.sceneUnloaded -= OnSceneUnloaded;
        }
    }

    private void OnDestroy()
    {
        // Toujours se d�sabonner proprement
        SceneManager.sceneUnloaded -= OnSceneUnloaded;
    }
}
