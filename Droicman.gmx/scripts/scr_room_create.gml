draw_set_color(c_white);
global.player_score = 0;
global.player_progress = 38;
global.player_death = 0;
game_timer = 0;
highscore_opened = 0;

//Sounds
if global.sound_on == 1
{
    audio_play_sound(snd_bgm, 100, true);
    player_start = 0;
}

