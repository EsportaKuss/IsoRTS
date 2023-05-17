///@description change_camera_mode
///@arg mode
///@arg following/target_x
///@arg target_y
/*
with oRoomManager
{
	mode = argument0[0];
	
	switch mode
	{
		case cammode.follow_mouse_border:
		break;
		
		case cammode.follow_mouse_drag:
		break;
		
		case cammode.follow_object:
			following = argument[1];
		break;
	}
}