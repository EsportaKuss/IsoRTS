/// @desc Build the map

#region SETUP TILE ENUM

enum e_tile_data
{
	floor_index	,
	z			,
	decor_index ,
	weight		,
	land_index	,
	last
}
enum EditorMode
{
	building,			//to build
	controlling,		//to control units
	manager				//to save/load/delete the map
}

#endregion

#region SET UP GRID FROM "MAP -LIST"
hcells = 100;
vcells = 68;
layer_set_visible("Map",false);
ds_terrain_data = ds_grid_create(hcells, vcells)
var tileMap = layer_tilemap_get_id("Map");

for (var xx = 0; xx < hcells; xx ++){
for (var yy = 0; yy < vcells; yy ++){
	var tileMapData			= tilemap_get(tileMap, xx, yy);
	var thisTile			= [-1,0];
	thisTile[TILE.SPRITE]	= tileMapData;
	thisTile[TILE.Z]		= 0;
	//Make one list per cell
	var list = ds_list_create();
	
	//Set initical cell data for each list
	for (var i = 0; i < e_tile_data.last; i++)
	{
		if (i == e_tile_data.floor_index) list[| i] = thisTile[TILE.SPRITE] ; else list[| i] = 0;
		list [| e_tile_data.land_index] = 0;
	}
	ds_terrain_data[# xx, yy] = list;
	//show_debug_message(list[| e_tile_data.floor_index]);
	
}
}
#endregion

#region SETUP SPRITE ARRAY

global.cell_sprites[e_tile_data.floor_index]	= sTiles;
global.cell_sprites[e_tile_data.decor_index]	= Floor_items;
global.cell_sprites[e_tile_data.land_index]		= Tree;


#endregion

#region Extra Vars
	
	grid_x		= 0;	//mouse is x
	grid_y		= 0;	//mouse is y
	new_index	= 1;	//new terrain
	iso_width	= 16;	// 16
	iso_height	= 9;	// 9
	mode		= 0;
	//Moar editing vars
	current_height  = 0;
	max_height		= 12;
	
	current_part = e_tile_data.floor_index;
	current_sprite = global.cell_sprites[current_part];
	
	display_all_heights = true;
	
	current_map_number = 0;
	battle_map_list	= ds_list_create();
	total_maps = 0;
	show_debug_overlay(true);
	
	//Editor states
	mode = EditorMode.building;
	pos = 0;
	
	
	
#endregion

scr_load_game_data();
