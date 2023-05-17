/// @desc
enum e_facing
{
	west,
	nort,
	eats,
	south
}

enum e_units
{
	first_empy,
	INF_LIGHT,
	INF_HALF,
	INF_HEAVY,
	INF_WIZ_LIGHT,
	INF_WIZ_HALF,
	INF_WIZ_HEAVY,
	CAV_LIGHT,
	CAV_HALF,
	CAV_HEAVY,
	CAV_WIZ_LIGHT,
	CAV_WIZ_HALF,
	CAV_WIZ_HEAVY,
	ART_LIGHT,
	ART_HALF,
	ART_HARD,
	ART_WIZ_LIGHT,
	ART_WIZ_HALF,
	ART_WIZ_HEAVY,
	WIZ_LIGHT,
	WIZ_HALF,
	WIZ_HEAVY,
	COL_IC,
	COL_AA,
	COL_COS,
	BAST,
	last,
}

enum e_stats
{
	NAME,	
	PLAYER,	
	IA,	
	CLASS,	
	HP_MAX,	
	HP_CURRENT,	
	MP_MAX,	
	MP_CURRENT,	
	LEVEL,	
	XP,	
	STRENGHT,	
	INTELLIGENCE,	
	AGILITY,	
	DEFENCE,	
	BLOCK_MELEE	,
	BLOCK_RANGE	,
	ITEM1

}
global.character_stats = load_csv("Units_St.csv");
#region SETP UP SPRITE GRID

enum e_actor_sprite
{
	stationary,
	last
}
global.ac_spr = ds_grid_create(e_actor_sprite.last, e_units);

global.ac_spr[# e_actor_sprite.stationary, e_units.INF_LIGHT] = spr_INF_LIGHT;

#endregion