if global.player_progress <= 0
{
    room_goto_next();
}

//Sounds
if global.sound_on == 1
{
    if instance_number(obj_enemy) == 0 //BGM without enemies
    {
        audio_sound_pitch(snd_bgm, 1);
    }
   
    if instance_number(obj_enemy) > 0 && obj_enemy.player_invincible > 0  //Invincibility
    {
        audio_sound_pitch(snd_bgm, 1.5);
    }

    if instance_number(obj_enemy) > 0 && obj_enemy.player_invincible == 0  //BGM without invincibility
    {
        audio_sound_pitch(snd_bgm, 1);
    }

    if instance_number(obj_player) > 0 //Player sound
    {
        if obj_player.speed > 0 && player_start == 0 //Create player sound
        {
            audio_play_sound(snd_player_normal, 100, true);
            player_start = 1;
        }

        if obj_player.speed > 0 && player_start == 1 //Play player sound
        {
            audio_sound_gain(snd_player_normal, 1, 50);
        }

        if obj_player.speed == 0 //Pause player sound
        {
            audio_sound_gain(snd_player_normal, 0, 50);
        }
    }

    if global.game_ended == 1 //Stop all non-gameover sounds
    {
        audio_stop_sound(snd_bgm);
        audio_stop_sound(snd_player_normal);
    }

    if audio_is_playing(snd_title) //Stop title sound, if playing
    {
        audio_stop_sound(snd_title);
    }
}
