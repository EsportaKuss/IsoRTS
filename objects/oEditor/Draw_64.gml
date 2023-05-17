/// @desc

#region DRAW NEW_INDEX
var draw_x = display_get_gui_width() / 2;
var draw_y = display_get_gui_height() -32;
var scale = 5

var spr = global.cell_sprites[current_part];


draw_sprite_ext(spr, new_index , draw_x, draw_y -60,scale, scale, 0, c_white, 1);
#endregion