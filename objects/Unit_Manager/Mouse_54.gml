/// @desc

if selected == true
{
	if place_free(mouse_x, mouse_y)
	{
		
		xx = mouse_x;
		yy = mouse_y;
		//show_debug_message(string(_x) +","+ string(_y) + "mouse:"+ string(mouse_x) +","+string(mouse_y));
		
		moving = true;
	}
}