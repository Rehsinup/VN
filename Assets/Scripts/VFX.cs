using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class VFXManager : MonoBehaviour
{
    [Header("VFX Prefabs")]
    [SerializeField] private GameObject rainPrefab;  // Exemple de prefab

    // M�thode pour faire appara�tre un VFX
    public void SpawnVFX(string effectName)
    {
        GameObject effectPrefab = null;

        // V�rifie le nom de l'effet et assigne le prefab correspondant
        switch (effectName.ToLower())
        {
            case "rain":
                effectPrefab = rainPrefab;
                break;

            // Ajoute ici d'autres effets si n�cessaire
            // case "fire":
            //     effectPrefab = firePrefab;
            //     break;
            default:
                Debug.LogError($"VFX {effectName} not found!");
                return;
        }

        if (effectPrefab != null)
        {
            Instantiate(effectPrefab, transform.position, Quaternion.identity);  // Exemple d'instanciation
        }
    }

    // M�thode pour supprimer un VFX
    public void UnSpawnVFX(string effectName)
    {
        // Impl�menter la logique pour "d�s-instancier" ou "d�sactiver" le VFX si n�cessaire
        // Exemple : d�sactiver ou supprimer l'effet existant
        // Si tu utilises un pooling d'objets, tu pourrais les r�activer au lieu de les d�truire
        Debug.Log($"Unspawning {effectName}");
    }
}
