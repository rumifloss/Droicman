//Debug stuff
/*if global.game_ended == 0
{
    draw_text(obj_player.x, obj_player.y + 8, obj_player.left_free);
    draw_text(obj_player.x + 8, obj_player.y + 8, obj_player.right_free);
    draw_text(obj_player.x + 16, obj_player.y + 8, obj_player.up_free);
    draw_text(obj_player.x + 24, obj_player.y + 8, obj_player.down_free);
}*/

//In-game HUD
if global.game_ended == 0
{
    draw_text(20, 8, global.game_level); //Level
    draw_text(room_width / 2, 8, global.player_score); //Score
    draw_text(room_width - 20, 8, game_timer); //Game timer
    //draw_text(room_width / 2, room_height / 2, global.player_progress);
}

//Game Over display
if global.game_ended == 1
{
    draw_text(room_width / 2, 16, "GAME OVER");
    draw_text(room_width / 2, 56, "POINTS:#" + string(global.player_score) );
    draw_text(room_width / 2, 96, "- TIME:#" + string(game_timer) );
    draw_text(room_width / 2, 120, "--------");
    draw_text(room_width / 2, 144, "TOTAL:#" + string(global.player_score - game_timer) );
    draw_text_transformed(room_width / 2, room_height - 16, "PRESS BACK",0.8, 0.8, 0);
    if highscore_opened == 1 && score_new > score_old
    {
        draw_text_transformed(room_width / 2, 172, "NEW BEST!", 0.8, 0.8, 0);
    }
}

