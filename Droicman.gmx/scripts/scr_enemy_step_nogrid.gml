//Invincible duration
if player_invincible > 0
{
    player_invincible = player_invincible - 1
}

//Sprite change
if player_invincible > 0 && sprite_index == spr_enemy_normal
{
    sprite_index = spr_enemy_vuln;
    depth = -2;
}

if player_invincible == 0 && sprite_index == spr_enemy_vuln
{
    sprite_index = spr_enemy_normal;
    depth = -4;
}
