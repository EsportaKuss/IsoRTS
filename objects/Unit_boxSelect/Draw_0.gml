/// @desc
if oEditor.mode == EditorMode.controlling
{
	draw_set_color(c_red);

	if selecting == true
	{
		draw_rectangle(select_x1, select_y1, select_x2, select_y2, true);
	}
}