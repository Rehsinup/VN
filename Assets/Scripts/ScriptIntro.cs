using System.Collections;
using TMPro;
using UnityEngine;
using Febucci.UI;
using UnityEngine.SceneManagement;
public class TextAnimatorSequence : MonoBehaviour
{
    public TypewriterByCharacter typewriter;
    public TextMeshProUGUI textComponent;
    

    [TextArea(3, 10)]
    public string[] lines;

    public float delayAfterLine = 2f;
    public float fadeDuration = 1f;
    public float waitAfterAllLines = 2f;

    void Start()
    {
        StartCoroutine(PlaySequence());
    }

    IEnumerator PlaySequence()
    {
        foreach (string line in lines)
        {
            textComponent.color = Color.white;
            typewriter.ShowText(line);

            yield return new WaitUntil(() => typewriter.isShowingText == false);
            yield return new WaitForSeconds(delayAfterLine);

            yield return StartCoroutine(FadeOutText());
            textComponent.text = "";
        }

        //  Tout le texte a été lu — on attend quelques secondes avant de faire une action
        yield return new WaitForSeconds(waitAfterAllLines);
        yield return StartCoroutine(OnSequenceEnd());
    }

    IEnumerator FadeOutText()
    {
        float timer = 0f;
        Color startColor = textComponent.color;

        while (timer < fadeDuration)
        {
            timer += Time.deltaTime;
            float alpha = Mathf.Lerp(1f, 0f, timer / fadeDuration);
            textComponent.color = new Color(startColor.r, startColor.g, startColor.b, alpha);
            yield return null;
        }
    }

    IEnumerator OnSequenceEnd()
    {
        //  Attente optionnelle, déjà faite avant l'appel
        //  Remplace ceci par ce que tu veux (charger une scène, activer un GameObject, etc.)
        Debug.Log("Toute la séquence est terminée !");
        yield return new WaitForSeconds(4f);
        LoadScene("Main");
        // Exemple : on active un autre GameObject (fais attention à assigner dans l’éditeur si tu veux utiliser ça)
        // yield return new WaitForSeconds(1f);
        // myGameObject.SetActive(true);

        yield break;
    }

    public void LoadScene(string sceneName)
    {
        SceneManager.LoadScene(sceneName);
    }
}
