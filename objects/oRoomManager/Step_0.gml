/// @desc Camera modes
cx = camera_get_view_x(view_camera[0]);
cy = camera_get_view_y(view_camera[0]);

switch mode
{
	case cammode.follow_object:
		if not instance_exists(following) break;
		cx = following.x - (view_w/2);
		cy = following.y - (view_h/2);
	break;
	
	case cammode.follow_mouse_drag:
		var mx = display_mouse_get_x();
		var my = display_mouse_get_y();
		
		if mouse_check_button(mb_middle)
		{
			cx += (mouse_xprevious-mx) *  .5;
			cy += (mouse_yprevious-my) *  .5;
		}
		mouse_xprevious = mx;
		mouse_yprevious = my;
	break;
	
	case cammode.follow_mouse_border:
	if not point_in_rectangle(mouse_x,mouse_y, cx +(view_w*0.1), cy +(view_h*0.1), cx + (view_w*0.9), cy + (view_h*0.9))
		{
			cx = lerp(cx, mouse_x - (view_w/2), 0.05);
			cy = lerp(cy, mouse_y - (view_h/2), 0.05);
		}
	break;
}

if not boundless
{
	cx = clamp(cx, 0, room_width - view_w);
	cy = clamp(cy, 0, room_height - view_h);
}


camera_set_view_pos(view_camera[0],cx,cy);

if mouse_check_button_pressed(mb_middle) then mode = cammode.follow_mouse_drag;
if mouse_check_button_released(mb_middle) then mode = cammode.follow_mouse_border;