/// @desc
var x1, y1, x2, y2;

x1 = min(select_x1, select_x2);
y1 = min(select_y1, select_y2);
x2 = max(select_x1, select_x2);
y2 = max(select_y1, select_y2);

with Infantery
{
	if collision_rectangle(x1,y1,x2,y2,id,false,false)
	{
		selected = true;
	}
	else
	{
		if not keyboard_check(vk_shift) then selected = false;
	}
}