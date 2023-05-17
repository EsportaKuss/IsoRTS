function ScreenToTileX()
{
	var _screenX = argument0 - (ROOM_W * 0.5);
	var _screenY = argument1 - (ROOM_H * 0.25);
return floor( _screenX / TILE_W + _screenY / TILE_H );

}
function ScreenToTileY()
{
	var _screenX = argument0 - (ROOM_W * 0.5);
	var _screenY = argument1 - (ROOM_H * 0.25);
return floor( _screenY / TILE_H - _screenX / TILE_W );
}

