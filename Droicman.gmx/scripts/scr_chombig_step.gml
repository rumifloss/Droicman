if place_meeting(x, y, obj_player)
{
    global.player_score = global.player_score + 100;
    global.player_progress = global.player_progress - 1;
    if instance_number(obj_enemy) > 0 
    {
        obj_enemy.player_invincible = global.alarm_speed;
    }
    instance_destroy()
}
