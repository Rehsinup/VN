using System.Collections;
using UnityEngine;
using UnityEngine.UI;
using DG.Tweening;

public class GoodEndSceneKeyController : MonoBehaviour
{
    [Header("Backgrounds")]
    public Image backgroundOld;

    [Header("Text Sprites to Shake")]
    public Image[] textImagesToShake;

    [Header("Timings")]
    public float delayBeforeChange = 3f;
    public float fadeDuration = 1f;
    public float shakeDuration = 0.5f;
    public float shakeStrength = 15f;
    public float delayAfterScene = 2f;
    public float delayBetweenAppearances = 1f;

    private LevelLoader levelLoader;

    [Header("State")]
    public bool isEnded = false;

    [Header("Sound")]
    [SerializeField] private string shakeSoundID = "ShakeSFX";

    private void Start()
    {
        // Masquer toutes les images au départ
        foreach (Image img in textImagesToShake)
        {
            img.color = new Color(1, 1, 1, 0);
        }

        levelLoader = FindObjectOfType<LevelLoader>();
        StartCoroutine(PlayScene());
    }

    IEnumerator PlayScene()
    {
        yield return new WaitForSeconds(delayBeforeChange);

        // Affichage en fondu un par un avec décalage
        foreach (Image img in textImagesToShake)
        {
            yield return img.DOFade(1f, fadeDuration).WaitForCompletion();
            yield return new WaitForSeconds(delayBetweenAppearances);
        }

        // Une fois que toutes les images sont affichées, jouer le son
        if (AudioManager.instance != null)
        {
            AudioManager.instance.PlaySound(shakeSoundID);
        }
        else
        {
            Debug.LogWarning("AudioManager instance not found.");
        }

        // Puis lancer le shake sur toutes en même temps
        foreach (Image img in textImagesToShake)
        {
            img.rectTransform.DOShakeAnchorPos(
                duration: shakeDuration,
                strength: shakeStrength,
                vibrato: 10,
                randomness: 90,
                snapping: false,
                fadeOut: true
            );
        }

        yield return new WaitForSeconds(delayAfterScene);
        isEnded = true;
        levelLoader.ExitLevel();
    }
}
