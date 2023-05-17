/// @desc move
if selected == true
{
	selectorAngle +=4;
}
if moving == true
{
	move_towards_point(xx,yy,3);
	mode = Unit.walk;
	
	if distance_to_point(xx,yy) <= 2
	{
		moving = false;
		mode = Unit.idle;
	}	
}
else
{
	speed = 0;
}


	/// @desc

switch mode
{
	
	case Unit.idle:
		
		sprite_index = infanteryA_idle;
	break;
	
	case Unit.walk:
		sprite_index = infanteryA;
	break;
	
}

//

