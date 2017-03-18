//Move check
if ( direction == right && !place_meeting(x + 8, y, obj_wall) ) || ( direction == up && !place_meeting(x, y - 8, obj_wall) ) || ( direction == left && !place_meeting(x - 8, y, obj_wall) ) || ( direction == down && !place_meeting(x, y + 8, obj_wall) )
{
    speed = 1;
}
else
{
    speed = 0;
}

//Left free check
if ( direction == right && !place_meeting(x, y - 8, obj_wall) ) || ( direction == up && !place_meeting(x - 8, y, obj_wall) ) || ( direction == left && !place_meeting(x, y + 8, obj_wall) ) || ( direction == down && !place_meeting(x + 8, y, obj_wall) )
{
    free_left = 1;
}
else
{
    free_left = 0;
}

//Right free check
if ( direction == right && !place_meeting(x, y + 8, obj_wall) ) || ( direction == up && !place_meeting(x + 8, y, obj_wall) ) || ( direction == left && !place_meeting(x, y - 8, obj_wall) ) || ( direction == down && !place_meeting(x - 8, y, obj_wall) )
{
    free_right = 1;
}
else
{
    free_right = 0;
}

//Direction selection
direction_select = irandom(2);

if direction_select == 0 && free_left == 1
{
    direction = direction + 90;
    image_angle = image_angle + 90;
}
if direction_select == 1 && free_right == 1
{
    direction = direction - 90;
    image_angle = image_angle - 90;
}
