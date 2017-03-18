ini_open("save.ini");

if !ini_section_exists("highscore") //Initializes highscore on first run
{
    ini_write_real("highscore", "score", 0);
}

if !ini_section_exists("prefs") //Initializes prefs on first run
{
    ini_write_real("prefs", "sound", 1); 
    ini_write_real("prefs", "vibrate", 1); 
}

if ini_read_real("prefs", "sound", 0) == 1 //Sound pref load
{
    global.sound_on = 1;
}
else
{
    global.sound_on = 0;
}

if ini_read_real("prefs", "vibrate", 0) == 1 //Vibrate pref load
{
    global.vibrate_on = 1;
}
else
{
    global.vibrate_on = 0;
}

highscore = ini_read_real("highscore", "score", 0);

ini_close();
