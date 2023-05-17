/// @desc

#region DETERMINE GRID_X/Y

grid_x = floor((mouse_x / iso_width)  + (mouse_y / iso_height));
grid_y = floor((mouse_y / iso_height) - (mouse_x / iso_width));

//cap grid_x/y
grid_x = clamp(grid_x, 0, hcells -1);
grid_y = clamp(grid_y, 0, vcells -1);

#endregion


#region CHANGE INDEX
if mouse_wheel_down() and !keyboard_check(vk_control)
{
	if not  keyboard_check(vk_shift)
	{
		if (new_index + 1) < sprite_get_number(current_sprite) new_index ++;
		else new_index = 0;
			
	}
	else
	{
		#region	Change tile part
		if (current_part + 1) <= e_tile_data.decor_index current_part++;
		else current_part = 0;
		
		current_sprite = global.cell_sprites[current_part];
		new_index = 1;
		#endregion
		
		
		
	}
	
}

if mouse_wheel_up() and !keyboard_check(vk_control)
{
	if not  keyboard_check(vk_shift)
	{
	if (new_index > 0) new_index--;
	else new_index = (sprite_get_number(current_sprite)-1);
		
	}
	else
	{
		#region change tile part
		if (current_part - 1) >= 0 current_part--;
		else current_part = e_tile_data.decor_index;

		current_sprite = global.cell_sprites[current_part];
		new_index = 1;
		#endregion
		
		
		
	}
}
#endregion

#region PAINT THE MAP
if mouse_check_button( mb_left)
{
	if mouse_check_button(mb_left)
	{
		var list = ds_terrain_data[# grid_x, grid_y];
		if current_part == undefined then current_part = 1;
		list[| current_part]	= new_index;
		list[| e_tile_data.z]	= current_height;
	}
}
#endregion

#region CHANGE THE HEIGHT


if keyboard_check(vk_control) and mouse_wheel_down()
{
	if (current_height + 1) < max_height current_height++;
	else current_height = 0;
}

if keyboard_check(vk_control) and mouse_wheel_up()
{
	if (current_height > 0) current_height--;
	else current_height = (max_height -1);
}
#endregion

#region TONGGLE DISPLAY_ALL_HEIGHTS

if keyboard_check_pressed(vk_tab) then display_all_heights = !display_all_heights;

#endregion

#region SAVE / LOAD ( CREATE NEW / DELETE CURRENT MAP

if keyboard_check_pressed(vk_f5) then battle_map_list[| current_map_number] = scr_save_map(current_map_number, ds_terrain_data)

	
#region LOAD PREVIOUS MAP
	
	if ds_list_size(battle_map_list) > 0
	{
		if keyboard_check(vk_shift)
		{	//LOAD PREVIOUS MAP
			if keyboard_check_pressed(ord("Q"))
			{
				//CHANGE MAP NUMBER
				if current_map_number > 0 then current_map_number --;
				else current_map_number = ds_list_size(battle_map_list) -1;
				//LOAD MAP FROM LIST
				scr_load_map(current_map_number, ds_terrain_data, battle_map_list);
				
			}
			else
			{
				//LOAD NEXT MAP
				if keyboard_check(ord("E")) 
				{
					if (current_map_number +1) < ds_list_size(battle_map_list) then current_map_number++;
					else current_map_number = 0;
					
					scr_load_map(current_map_number, ds_terrain_data, battle_map_list);
				}
			}
		}
	}

#endregion

//Create new map
if keyboard_check_pressed(vk_enter) then scr_create_new_map(battle_map_list, ds_terrain_data);
#endregion

#region testing



#endregion