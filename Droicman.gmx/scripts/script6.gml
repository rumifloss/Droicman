if mouse_check_button(mb_left) && place_free(obj_player.x - 16, obj_player.y)
    {
    global.player_move_left = 1;
    global.player_move_right = 0;
    global.player_move_up = 0;
    global.player_move_down = 0;
    }
