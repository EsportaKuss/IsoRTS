function scr_delete_map()
{
var map_number			= argument0;
var list_of_battle_maps = argument1;

ds_list_delete(list_of_battle_maps, map_number);

if (map_number >= ds_list_size(list_of_battle_maps)) then map_number = ds_list_size(list_of_battle_maps);

return map_number

show_debug_message("Map"+ string(map_number) + "deleted");
}