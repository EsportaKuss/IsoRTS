function scr_save_game_data()
{
	ini_open("battle_map_string.ini");
	
	for (var i = 0; i < ds_list_size(battle_map_list); i ++)
	{
		ini_write_string("Data String", string(i), battle_map_list[| i]);
		
	}
	ini_write_real("Total Maps", "Value", ds_list_size(battle_map_list));
	
	ini_close();
	
	show_debug_message("scr_save_game_data finished");
}