#region MAP DRAW
for (var xx = 0; xx < hcells; xx ++){
for (var yy = 0; yy < vcells; yy ++){
		

#region USING LIST

		var list = ds_terrain_data[# xx, yy];
		floor_ind = list[| e_tile_data.floor_index];
		height	  = list[| e_tile_data.z];
		draw_x = (xx - yy) * (iso_width / 2);
		//draw_y = (xx + yy) * (iso_height / 2);
	
		if floor_ind != 0 
		{
		//draw_sprite(sTiles, floor_ind -1, draw_x, draw_y);
			for (var draw_height = 0; draw_height <= height; draw_height++)
			{
				if not  display_all_heights and draw_height <= current_height or (display_all_heights == true)
				{
					draw_y = (xx + yy) * (iso_height / 2) - (draw_height * (iso_height /2));
				
					//change color in different heights
					var rgb_value = 150 +(draw_height *9);
					var col = make_color_rgb(rgb_value, rgb_value, rgb_value);
				
					draw_sprite_ext(sTiles, floor_ind, draw_x,draw_y,1,1,0,col,1);
				
					if draw_height == height
					{
						var spr = global.cell_sprites[e_tile_data.decor_index];
						var index = list[| e_tile_data.decor_index];
					
						if index == undefined then index = 0;
						draw_sprite_ext(spr,index, draw_x ,draw_y,1,1,0,col,1);
						
					}
					//lands
				
					
				}	
			}
			
		}
		#region Draw cursor
		if xx == grid_x and yy == grid_y
		{
			for (var draw_height = 0; draw_height <= current_height; draw_height++)
			{
				draw_y = (xx + yy) * (iso_height / 2) - (draw_height * (iso_height/2));
				draw_sprite(Col,0,draw_x, draw_y);		
				#region DRAW BLUEPRINT
				
				if current_part == e_tile_data.decor_index
				{
					var spr = global.cell_sprites[current_part];
					draw_sprite_ext(spr,new_index , draw_x ,draw_y,1,1,0,c_yellow,1);
				}	
				#endregion
			}
		}
		#endregion
#endregion



	#region TESTING
			/*
			draw_set_halign(fa_center);
			draw_set_valign(fa_middle);
			draw_set_color(c_gray);
			draw_text(draw_x, draw_y +tileZ, string(tileIndex));
			*/
		#endregion
}
}

#endregion







