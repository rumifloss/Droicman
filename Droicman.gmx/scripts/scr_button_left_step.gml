if point_in_rectangle(mouse_x, mouse_y, x - 8, y - 8, x + 8, y + 8)
{
    global.player_move_left = 1;
    global.player_move_right = 0;
    global.player_move_up = 0;
    global.player_move_down = 0;
}
