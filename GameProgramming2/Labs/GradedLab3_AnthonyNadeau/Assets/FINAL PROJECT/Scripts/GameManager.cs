using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
using UnityEngine.AI;

public class GameManager : MonoBehaviour
{
	#region Fields

    [Header("Connections")]
    public GameObject heroPrefab;
    public Transform spawnPoint;

    [Header("Buttons")]
    public Button startGame;
    public Button quit;
    public Button options;
    public Button resumeGame;
    public Button mainMenu;
    public Button mainMenu2;
    public Button returnToMenu;
    public Button returnToMenu2;
    public Button keepPlaying;

    [Header("ScoreMeter")]
    public Text scoreMeter;

    [SerializeField]
    public GameObject victoryCanvas;

    [SerializeField]
    public GameObject gameOverCanvas;

    [SerializeField]
    public GameObject mainMenuCanvas;

    [SerializeField]
    public GameObject optionsCanvas;

     [SerializeField]
    public GameObject pauseCanvas;

    GameObject hero;

    // statics
    public static int state = 0; // 0 = main menu, 1 = in game, 2 = game over
    public static int npcCount;
    static int npcEliminations;
    static GameManager gm;

	#endregion

	#region Engine Events

    private void Awake()
    {
        gameOverCanvas.SetActive(false);
        victoryCanvas.SetActive(false);
        // init
        npcEliminations = 0;
        npcCount = 0;

        gm = this;
        Time.timeScale = 1;

        if (startGame == null)
        {
            StartGame();
        }
    }

    private void Update()
    {
        if (HeroController.heroHealth <= 0)
            GameOver();
        if (state == 1)
        {
            if (Input.GetKeyDown(KeyCode.Escape))
            {
                if (!mainMenuCanvas.activeSelf)
                {
                    Time.timeScale = 0;
                    pauseCanvas.SetActive(true);
                }
            }
        }
    }

	#endregion

	#region Methods

	public static void EliminateNPC()
	{
		npcEliminations++;

		if (gm.scoreMeter != null)
		{
			gm.scoreMeter.text = "Score: " + npcEliminations.ToString();
		}


		if (npcEliminations == npcCount)
		{
			gm.Invoke("Victory", 2);
			state = 2;
		}
    }

	#endregion

	#region UI Callbacks

    public void StartGame()
    {
        state = 1;
        hero = Instantiate(heroPrefab, spawnPoint.position, spawnPoint.rotation);
        mainMenuCanvas.SetActive(false);
    }

    public void ResumeGame()
    {
        Time.timeScale = 1;
        pauseCanvas.SetActive(false);
    }

    public void Options(){
        optionsCanvas.SetActive(true);
        mainMenuCanvas.SetActive(false);
    }

    public void OptionsBack(){
        optionsCanvas.SetActive(false);
        mainMenuCanvas.SetActive(true);
    }

    public void Quit()
    {
        SceneManager.LoadScene(SceneManager.GetActiveScene().name);
    }

    public void Victory() {
        Time.timeScale = 0;
        victoryCanvas.SetActive(true);
    }

    public void GameOver() {
        Time.timeScale = 0;
        victoryCanvas.SetActive(false);
        gameOverCanvas.SetActive(true);
    }

    public void KeepPlaying() {
        Time.timeScale = 1;
        victoryCanvas.SetActive(false);
    }

	#endregion
}
