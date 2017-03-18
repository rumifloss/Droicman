if mouse_check_button(mb_left) && point_in_rectangle(mouse_x, mouse_y, cursor_mean_x - 24, cursor_mean_y - 24, cursor_mean_x + 24, cursor_mean_y + 24) 
{
    x = mouse_x;
    y = mouse_y;
} 
else
{
    x = cursor_mean_x;
    y = cursor_mean_y;
}

if !point_in_rectangle(x, y, cursor_mean_x - 24, cursor_mean_y - 24, cursor_mean_x + 24, cursor_mean_y + 24)
{
    x = cursor_mean_x;
    y = cursor_mean_y;
} 
