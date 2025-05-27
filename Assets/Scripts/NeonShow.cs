using System.Collections;
using UnityEngine;
using Ink.Runtime;
using vinkn;

public class GlowingNeon : MonoBehaviour
{
    [SerializeField] private StoryReader reader;
    [SerializeField] private SpriteRenderer neonSprite;

    private Story myStory;
    private Coroutine progressCoroutine;
    private Coroutine flickerCoroutine;
    private float _progress = 0f;

    private MaterialPropertyBlock propertyBlock;

    void Start()
    {
        myStory = reader.story;
        propertyBlock = new MaterialPropertyBlock();

        StartCoroutine(CheckInkVariable());
    }

    private IEnumerator CheckInkVariable()
    {
        while (true)
        {
            bool neonOn = false;

            if (myStory != null && myStory.variablesState["neonOn"] is bool b)
            {
                neonOn = b;
            }

            if (neonOn && progressCoroutine == null)
            {
                progressCoroutine = StartCoroutine(AnimateNeon());
            }

            yield return new WaitForSeconds(0.2f);
        }
    }

    private IEnumerator AnimateNeon()
    {
        while (_progress < 1f)
        {
            _progress += 0.1f;
            _progress = Mathf.Clamp01(_progress);

            ApplyProgressToShader();

            yield return new WaitForSeconds(0.7f);
        }

        progressCoroutine = null;

        // Une fois à 1, on commence à clignoter
        if (flickerCoroutine == null)
        {
            flickerCoroutine = StartCoroutine(FlickerNeon());
        }
    }

    private IEnumerator FlickerNeon()
    {
        bool toggle = false;
        while (true)
        {
            _progress = toggle ? 1f : 0.9f;
            toggle = !toggle;

            ApplyProgressToShader();

            yield return new WaitForSeconds(1f);
        }
    }

    private void ApplyProgressToShader()
    {
        if (neonSprite == null) return;

        neonSprite.GetPropertyBlock(propertyBlock);
        propertyBlock.SetFloat("_Progress", _progress);
        neonSprite.SetPropertyBlock(propertyBlock);
    }
}
