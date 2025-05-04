using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using vinkn;
using Random = UnityEngine.Random;

public class AudioManager : MonoBehaviour
{
    public static AudioManager instance = null;
    [System.Serializable]
    public class AudioData
    {
        public string name;
        public Vector2 volumeRange;
        public Vector2 pitchRange;
        public AudioClip[] clips;
        public AudioSource playSource;
    }
    [SerializeField] List<AudioData> sounds;
    AudioSource source;
    // Start is called before the first frame update

    void Awake()
    {
        if (instance == null)
        {
            instance = this;
            DontDestroyOnLoad(gameObject);
        }
        else
        {
            Destroy(gameObject);
        }
    }
    void Start()
    {
        source = GetComponent<AudioSource>();
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void TryPlaySound(StoryReader reader, object[] parameters)
    { 
    string soundID = (string)parameters[0];
        PlaySound(soundID);
    }

    public void PlaySound(string soundID)
    {
        AudioData data = sounds.Find(x => x.name == soundID);
        if (data == null)
        {
            throw new Exception("sound not found " + soundID);
        }
        if (data.clips.Length == 0)
        {
            throw new Exception("sound not set " + soundID);
        }
        AudioSource mainSource = source;
        if (data.playSource != null)
        {
            mainSource = data.playSource;
        }
        mainSource.volume = Random.Range(data.volumeRange.x, data.volumeRange.y);
        mainSource.pitch = Random.Range(data.pitchRange.x, data.pitchRange.y);
        mainSource.clip = data.clips[Random.Range(0, data.clips.Length)];
        mainSource.Play();

    }
}
