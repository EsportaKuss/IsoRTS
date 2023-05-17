function scr_create_new_map()
{
var list_of_battle_map  = argument0;
var grid_to_reset		= argument1;

current_map_number = ds_list_size(list_of_battle_map);

var grid_width  = ds_grid_width(grid_to_reset);
var grid_height = ds_grid_height(grid_to_reset);

//Conver the data in the list into string
for (var yy = 0; yy < grid_height; yy ++){
for (var xx = 0; xx < grid_width; xx ++){
	
	var list = grid_to_reset[# xx ,yy];
	
	for (var i = 0; i < e_tile_data.last; i++)
	{
		if i == 0 then list[| i] = i else list[| i] = 0;
		
	}

}
}
show_debug_message("New map created");
}