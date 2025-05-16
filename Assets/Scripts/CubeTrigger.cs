using UnityEngine;

public class CubeTrigger : MonoBehaviour
{
    public string expectedPlayerTag = "Player1"; // ou "Player2"
    public LevelExitManager levelExitManager;

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag(expectedPlayerTag))
        {
            Debug.Log($"{expectedPlayerTag} a touché {gameObject.name}");
            levelExitManager.MarkPlayerReady(expectedPlayerTag);
        }
    }
}
