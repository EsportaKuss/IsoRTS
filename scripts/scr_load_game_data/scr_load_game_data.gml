//this scrip will load into the battle map list
function scr_load_game_data()
{
	
ini_open("battle_map_string.ini");

//how many maps
total_maps = ini_read_real("Total Maps", "Value", total_maps);

for (var i = 0; i < total_maps; i++)
{
	var str = ini_read_string("Data String", string(i), "");
	battle_map_list[| i] = str;
	
	show_debug_message(str);
}

ini_close();

// if a map exist in the firts slot of the list load it

if (ds_list_size(battle_map_list) > 0)
{
	scr_load_map(0, ds_terrain_data,battle_map_list);
}
}