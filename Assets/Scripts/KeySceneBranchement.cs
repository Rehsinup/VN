using System.Collections;
using UnityEngine;
using UnityEngine.UI;
using DG.Tweening;

public class SceneKeyController : MonoBehaviour
{
    [Header("Backgrounds")]
    public Image backgroundOld;
    public Image backgroundNew;

    [Header("Text Sprites")]
    public Image textImageNormal;
    public Image textImageShake;

    [Header("Timings")]
    public float delayBeforeChange = 3f;
    public float fadeDuration = 1f;
    public float shakeDuration = 0.5f;
    public float shakeStrength = 15f;
    public float delayAfterScene = 2f;
    private LevelLoader levelLoader;

    [Header("State")]
    public bool isEnded = false;

    private void Start()
    {
        // Initial setup
        textImageNormal.color = new Color(1, 1, 1, 0);
        textImageShake.color = new Color(1, 1, 1, 0);
        backgroundNew.gameObject.SetActive(false);
        levelLoader = FindObjectOfType<LevelLoader>();
        StartCoroutine(PlayScene());
    }

    IEnumerator PlayScene()
    {
        // Wait before changing background
        yield return new WaitForSeconds(delayBeforeChange);

        // Fade out old background
        backgroundOld.DOFade(0f, fadeDuration)
            .OnComplete(() =>
            {
                backgroundOld.gameObject.SetActive(false);
            });

        // Activate and fade in new background
        backgroundNew.gameObject.SetActive(true);
        backgroundNew.color = new Color(1, 1, 1, 0);
        backgroundNew.DOFade(1f, fadeDuration);

        // Wait for fade
        yield return new WaitForSeconds(fadeDuration);

        // Fade in normal text
        textImageNormal.DOFade(1f, fadeDuration);

        // Fade in and shake the second text
        yield return textImageShake.DOFade(1f, fadeDuration).WaitForCompletion();

        textImageShake.rectTransform.DOShakeAnchorPos(
            duration: shakeDuration,
            strength: shakeStrength,
            vibrato: 10,
            randomness: 90,
            snapping: false,
            fadeOut: true
        );

        // Wait for a moment before marking as ended
        yield return new WaitForSeconds(delayAfterScene);
        isEnded = true;
        levelLoader.ExitLevel();
    }
}
