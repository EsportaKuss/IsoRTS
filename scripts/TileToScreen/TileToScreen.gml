function TileToScreenX(argument0, argument1){
var _tx = argument0;
var _ty = argument1;
return ((_tx - _ty) * (TILE_W * 0.5))  + (ROOM_W * 0.5);
}

function TileToScreenY(argument0, argument1){
var _tx = argument0;
var _ty = argument1;
return ((_tx + _ty) * (TILE_H * 0.5)) + (ROOM_H * 0.25);
}