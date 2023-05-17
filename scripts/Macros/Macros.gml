#macro MAP_W	110
#macro MAP_H	60
#macro TILE_W	16
#macro TILE_H	8
#macro ROOM_W	1920
#macro ROOM_H	1080

enum TILE
{
	SPRITE,	//0
	Z,		//1
	dec_index,
	last
}
enum BL
{
	air,
	GRASS,
	DIRT,
	STONE,
	WATER
}