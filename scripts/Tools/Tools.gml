
function draw_decor (_index, _offX, _offY)
{
if current_part == _index
				{
					var spr = global.cell_sprites[current_part];
					draw_sprite_ext(spr,new_index , draw_x + _offX ,draw_y + _offY,1,1,0,c_yellow,1);
				}	
}

function place_decor (_item,_list,xx,yy,_offX, _offY, _col)
{
var spr = global.cell_sprites[_item];
						var index = _list[| _item];
					
						if index == undefined then index = 0;
						draw_sprite_ext(spr,index, xx +_offX ,yy + _offY,1,1,0,_col,1);
}
