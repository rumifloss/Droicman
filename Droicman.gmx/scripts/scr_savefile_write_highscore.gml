///Write highscore to save.ini

if global.game_ended == 1 && highscore_opened = 0
{
    score_new = global.player_score - game_timer;

    ini_open("save.ini");
    
    score_old = ini_read_real("highscore", "score", 0);
    
    if score_new > score_old //Checks if current highscore is greater than overall highscore
    
    {
        ini_write_real("highscore", "score", score_new); //Refreshes overall highscore
    }

    ini_close();

    highscore_opened = 1; //Declares highscore comparision as complete
}
