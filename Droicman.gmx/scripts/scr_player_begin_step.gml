//Collision
if place_meeting(x - 16, y, obj_wall) { left_free = 0; } else { left_free = 1; }
if place_meeting(x + 16, y, obj_wall) { right_free = 0; } else { right_free = 1; }
if place_meeting(x, y - 16, obj_wall) { up_free = 0; } else { up_free = 1; }
if place_meeting(x, y + 16, obj_wall) { down_free = 0; } else { down_free = 1; }
