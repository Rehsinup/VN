using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class VFXManager : MonoBehaviour
{
    [Header("VFX Prefabs")]
    [SerializeField] private GameObject rainPrefab;  // Exemple de prefab

    // Méthode pour faire apparaître un VFX
    public void SpawnVFX(string effectName)
    {
        GameObject effectPrefab = null;

        // Vérifie le nom de l'effet et assigne le prefab correspondant
        switch (effectName.ToLower())
        {
            case "rain":
                effectPrefab = rainPrefab;
                break;

            // Ajoute ici d'autres effets si nécessaire
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

    // Méthode pour supprimer un VFX
    public void UnSpawnVFX(string effectName)
    {
        // Implémenter la logique pour "dés-instancier" ou "désactiver" le VFX si nécessaire
        // Exemple : désactiver ou supprimer l'effet existant
        // Si tu utilises un pooling d'objets, tu pourrais les réactiver au lieu de les détruire
        Debug.Log($"Unspawning {effectName}");
    }
}
