/// @function scr_save_map(mp_number, grid_to_copy_from)
/// @description Save the map
/// @param {real}
/// @param {real
function scr_save_map()
{
var grid_to_copy_from = argument1;
var grid_width = ds_grid_width(grid_to_copy_from);
var grid_height = ds_grid_height(grid_to_copy_from);

var grid_to_write_to = ds_grid_create(grid_width, grid_height);


for (var yy = 0; yy < grid_height; yy++){
for (var xx = 0; xx < grid_width; xx++){

	var list = grid_to_copy_from[# xx, yy];
	var list_str = ds_list_write(list);
	show_debug_message(list_str);
	//pas list
	grid_to_write_to[# xx, yy] = list_str;
}
}

var map_number = argument0

var grid_and_lists_string = ds_grid_write(grid_to_write_to);
show_debug_message(grid_and_lists_string);
show_debug_message("Map "+ string(map_number) + " saved");
ds_grid_destroy(grid_to_write_to);

return grid_and_lists_string;
}