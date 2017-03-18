//x = obj_player.x - 8;
//y = obj_player.y - 8;

if !place_meeting(obj_player.x - 8, obj_player - 7, obj_wall) && !place_meeting(obj_player.x - 8, obj_player.y + 7, obj_wall) 
    {
    global.player_free_left = 1;
    }
else 
    {
    global.player_free_left = 0;
    }
