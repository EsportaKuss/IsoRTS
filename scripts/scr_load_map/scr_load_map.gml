function scr_load_map()
{
var map_number = argument0;
var grid_to_copy_to = argument1;
var list_of_battle_map = argument2;

var grid_to_copy_from = ds_grid_create(1,1);

if (list_of_battle_map[| map_number] != undefined) and (list_of_battle_map[| map_number] != "")
	{
		ds_grid_read(grid_to_copy_from, list_of_battle_map[| map_number]);
		for (var yy = 0; yy < ds_grid_height(grid_to_copy_to); yy++){
		for (var xx = 0; xx < ds_grid_width(grid_to_copy_to); xx ++){
			
			var list = grid_to_copy_to[# xx ,yy];
			ds_list_destroy(list);
		}
		}
		
		var grid_width = ds_grid_width(grid_to_copy_from);
		var grid_height = ds_grid_height(grid_to_copy_from);
		
		ds_grid_resize(grid_to_copy_to, grid_width, grid_height);
		
		for (var yy = 0; yy < grid_height; yy++){
		for (var xx = 0; xx < grid_width; xx ++){
				var list = ds_list_create();
				var list_str = grid_to_copy_from[# xx, yy];
				ds_list_read(list, list_str);
				grid_to_copy_to[# xx ,yy] = list;
				show_debug_message(list)
		}
		}
		
		show_debug_message("Map "+ string(map_number)+" loaded");
		ds_grid_destroy(grid_to_copy_from);
		
		return grid_to_copy_to;
	}
	else
	{
		show_debug_message("Map faild to load");
		return grid_to_copy_from;
	}
}