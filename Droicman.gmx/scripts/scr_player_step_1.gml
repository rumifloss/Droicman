//Move left
if global.move_left = 1 && global.move_right = 0 && global.move_up = 0 && global.move_down = 0
{
self.hspeed = -1;
self.vspeed = 0;
self.image_angle = 180;
self.image_speed = 0.5;
}

//Move right
if global.move_left = 0 && global.move_right = 1 && global.move_up = 0 && global.move_down = 0
{
self.hspeed = 1;
self.vspeed = 0;
self.image_angle = 0;
self.image_speed = 0.5; 
}

//Move up
if global.move_left = 0 && global.move_right = 0 && global.move_up = 1 && global.move_down = 0
{
self.hspeed = 0;
self.vspeed = -1;
self.image_angle = 90;
self.image_speed = 0.5; 
}

//Move down
if global.move_left = 0 && global.move_right = 0 && global.move_up = 0 && global.move_down = 1
{
self.hspeed = 0;
self.vspeed = 1; 
self.image_angle = 270;
self.image_speed = 0.5;
}

//Halt
if global.move_left = 0 && global.move_right = 0 && global.move_up = 0 && global.move_down = 0
{
self.hspeed = 0;
self.vspeed = 0; 
self.image_speed = 0;
}
