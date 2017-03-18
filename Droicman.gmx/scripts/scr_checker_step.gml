//Left collision
if place_free(obj_player.x - 8, obj_player.y - 7) && place_free (obj_player.x - 8, obj_player.y + 7)
    {
    global.player_free_left = 1;
    }
else
    {
    global.player_free_left = 0;
    }

//Right collision
if place_free(obj_player.x + 8, obj_player.y - 7) && place_free (obj_player.x + 8, obj_player.y + 7)
    {
    global.player_free_right = 1;
    }
else
    {
    global.player_free_right = 0;
    }
