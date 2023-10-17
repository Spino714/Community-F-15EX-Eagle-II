local f15_mk82_name = 'Mk-82 GP Bomb Low-drag '
local f15_mk82_mass = 226.8

local f15_MK82_BOMB = {
	category  = CAT_BOMBS,
	name   = "Mk-82 500lb LD Bomb",
	model    = "mk-82",  
	user_name   = _(f15_mk82_name),
	wsTypeOfWeapon = {wsType_Weapon,wsType_Bomb,wsType_Bomb_A,WSTYPE_PLACEHOLDER},
	
	scheme = "bomb-common",
	type = 0,
	mass = f15_mk82_mass,
	hMin = 100.0,
	hMax = 15000.0,
	Cx = 0.00018, 
	VyHold = -100.0,
	Ag = -1.23,

	fm =
	{
		mass            = f15_mk82_mass,
		caliber         = 0.214000 * 2.0,
		cx_coeff        = {1.000000, 0.290000, 0.710000, 0.140000, 1.280000},
		L               = 2.210000,
		I               = 94.425933,
		Ma              = 2.746331,
		Mw              = 2.146083,
		wind_time       = 1000.000000,
		wind_sigma      = 80.000000,
	},
warhead = simple_warhead(125,450); -- Explosive 60 kg + fragments bonus


	
	shape_table_data =
	{
		{
			name  = "mk-82",
			file  = "mk-82", 
			life  = 1,
			fire  = { 0, 1},
			username = "Mk-82",
			index = WSTYPE_PLACEHOLDER,
		},
	},

	targeting_data =
	{
		char_time = 21.02, 
	}

}

declare_weapon(f15_MK82_BOMB)

declare_loadout(
{
	category			= CAT_BOMBS,
	CLSID				= "{F15_MK82FL}",
	attribute			= {4,	5,	32,	32},	
	wsTypeOfWeapon		= f15_MK82_BOMB.wsTypeOfWeapon,
	Count				= 4,
	--Cx_pil	=			(f15_MK82_BOMB.Cx*4)+0.0003,


	Picture				= "mk82.png",
	displayName			= _('4 x ' .. f15_mk82_name),
	Weight				=  (f15_mk82_mass * 4),
Elements	=	{
					[1]	=	
					{ -- Back upper
						
						Position	=	{-2.974,	0.31,	-0.4},
						ShapeName	=	"mk-82",
						Rotation    = 	{1,0,0},
					}, 
					[2]	=	
					{ -- Back lower
						
						Position	=	{-5.3,	0.39, -0.38},
						ShapeName	=	"mk-82",
						Rotation    = 	{0,0,-3},
					}, 
					[3]	=	
					{ -- Front upper
						
						Position	=	{-0.35,	0.33, -0.4},
						ShapeName	=	"mk-82",
						Rotation    = 	{1,0,0},
					}, 
					[4]	=	
					{ -- Front lower
						
						Position	=	{0.2,	0.0, 0.0},
						ShapeName	=	"mk-82",
						Rotation    = 	{0,0,0},
					}, 
				}, -- end of Elements
}
)
declare_loadout(
{
	category			= CAT_BOMBS,
	CLSID				= "{F15_MK82FR}",
	attribute			= {4,	5,	32,	32},	
	wsTypeOfWeapon		= f15_MK82_BOMB.wsTypeOfWeapon,
	Count				= 4,
	--Cx_pil	=			(f15_MK82_BOMB.Cx*4)+0.0003,


	Picture				= "mk82.png",
	displayName			= _('4 x ' .. f15_mk82_name),
	Weight				=  (f15_mk82_mass * 4),
Elements	=	{
					[1]	=	
					{ -- Back lower
						
						Position	=	{-5.3,	0.38,	0.39},
						ShapeName	=	"mk-82",
						Rotation    = 	{0,0,-3},
					}, 
					[2]	=	
					{ -- Back upper
						
						Position	=	{-2.974,	0.31, 0.4},
						ShapeName	=	"mk-82",
						Rotation    = 	{-1,0,0},
					}, 
					[3]	=	
					{ -- Front lower
						
						Position	=	{0.2,	-0.0, -0.0},
						ShapeName	=	"mk-82",
						Rotation    = 	{0,0,0},
					}, 
					[4]	=	
					{ -- Front upper
						
						Position	=	{-0.35,	0.33, 0.4},
						ShapeName	=	"mk-82",
						Rotation    = 	{-1,0,0},
					}, 
				}, -- end of Elements
}
)