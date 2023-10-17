
local ngad_aim200_name = 'AIM-200A Peregrine Active Rdr AAM'
local ngad_aim200_mass = 161.5
local pylon_mass = 1.0

local ngad_aim200_warhead = enhanced_a2a_warhead(9, 178)

local NGAD_aim200_AA = {
    category        = CAT_AIR_TO_AIR,
    name            = ngad_aim200_name,
    model           = 'Peregrine',
    user_name       = _(ngad_aim200_name),
	wsTypeOfWeapon 	= {wsType_Weapon,wsType_Missile,wsType_AA_Missile,WSTYPE_PLACEHOLDER},
    mass            = ngad_aim200_mass,

	Escort 			= 0,
    Head_Type 		= 2,
	sigma 			= {5, 5, 5},
    M 				= ngad_aim200_mass,
    H_max 			= 20000.0,
    H_min 			= 1.0,
    Diam			= 178.0,
    Cx_pil 			= 2.5,
    D_max 			= 29000.0,
    D_min 			= 700.0,
    Head_Form 		= 1,
    Life_Time 		= 90.0,
    Nr_max 			= 30,
    v_min 			= 140.0,
    v_mid 			= 700.0,
    Mach_max 		= 4.0,
    t_b 			= 0.0,
    t_acc 			= 0.0,
    t_marsh 		= 8.0,
    Range_max 		= 90000.0,
    H_min_t 		= 1.0,
    Fi_start 		= 0.5,
    Fi_rak 			= 3.14152,
    Fi_excort 		= 1.05,
    Fi_search 		= 1.05,
    OmViz_max 		= 0.52,
    exhaust 		= {0.8, 0.8, 0.8, 0.05 };
    X_back 			= -0.90,
    Y_back 			= 0.0,
    Z_back 			= 0.0,
    Reflection 		= 0.04,
    KillDistance 	= 15.0,
	loft 			= 1,
	hoj 			= 1,
	ccm_k0 			= 0.1,
	loft_factor 	= 1.1,

	active_radar_lock_dist	= 15000.0,
	go_active_by_default	= 1,
	
	PN_coeffs = {4, 				-- Number of Entries	
				15000.0 ,1.0,		-- Less 5 km to target Pn = 1
				25000.0, 0.5,		-- Between 10 and 5 km  to target, Pn smoothly changes from 0.5 to 1.0. 
				40000.0, 0.25,
				60000.0, 0.10};		-- Between 15 and 10 km  to target, Pn smoothly changes from 0.2 to 0.5. Longer then 15 km Pn = 0.2.

    warhead         = ngad_aim200_warhead,
    warhead_air     = ngad_aim200_warhead,

    shape_table_data = {
        {
            name     = ngad_aim200_name,
            file     = 'Peregrine',
            life     = 1,
            fire     = {0, 1},
            username = "AIM200",		--Shortened name for cockpit displays
            index    = WSTYPE_PLACEHOLDER,
        },
    },

	ModelData = {   58 ,  -- model params count
					0.4 ,   -- characteristic square (характеристическая площадь)
					
					-- параметры зависимости Сx
					0.029 , -- Cx_k0 планка Сx0 на дозвуке ( M << 1)
					0.06 , -- Cx_k1 высота пика волнового кризиса
					0.01 , -- Cx_k2 крутизна фронта на подходе к волновому кризису
					-0.245, -- Cx_k3 планка Cx0 на сверхзвуке ( M >> 1)
					0.08 , -- Cx_k4 крутизна спада за волновым кризисом 
					0.7 , -- коэффициент отвала поляры (пропорционально sqrt (M^2-1))
					
					-- параметры зависимости Cy
					1.4 , -- Cy_k0 планка Сy0 на дозвуке ( M << 1)
					0.6	 , -- Cy_k1 планка Cy0 на сверхзвуке ( M >> 1)
					1.2  , -- Cy_k2 крутизна спада(фронта) за волновым кризисом  
					
					0.5 , -- 7 Alfa_max  максимальный балансировачный угол, радианы
					0.0, --угловая скорость создаваймая моментом газовых рулей
					
				-- Engine data. Time, fuel flow, thrust.	
				--	t_statr		t_b		t_accel		t_march		t_inertial		t_break		t_end			-- Stage
					-1.0,		-1.0,	10.0,  		0.0,		0.0,			0.0,		1.0e9,         -- time of stage, sec
					 0.0,		0.0,	8.5,		0.0,		0.0,			0.0,		0.0,           -- fuel flow rate in second, kg/sec(секундный расход массы топлива кг/сек)
					 0.0,		0.0,	20000.0,	0.0,		0.0,			0.0,		0.0,           -- thrust, newtons
				
					 1.0e9, -- таймер самоликвидации, сек
					 90.0, -- время работы энергосистемы, сек
					 0, -- абсолютная высота самоликвидации, м
					 1.0, -- время задержки включения управления (маневр отлета, безопасности), сек
					 25000, --40000 -- дальность до цели в момент пуска, при превышении которой ракета выполняется маневр "горка", м
					 15000, --40000 -- дальность до цели, при которой маневр "горка" завершается и ракета переходит на чистую пропорциональную навигацию (должен быть больше или равен предыдущему параметру), м 
					 0.52356,--0.17, -- синус угла возвышения траектории набора горки
					 50.0, -- продольное ускорения взведения взрывателя
					 0.0, -- модуль скорости сообщаймый катапультным устройством, вышибным зарядом и тд
					 1.19, -- характристика системы САУ-РАКЕТА,  коэф фильтра второго порядка K0
					 1.0, -- характристика системы САУ-РАКЕТА,  коэф фильтра второго порядка K1
					 2.0, -- характристика системы САУ-РАКЕТА,  полоса пропускания контура управления

					  -- DLZ. Данные для рассчета дальностей пуска (индикация на прицеле)
					 21.0, 
					 -23.0, 
					 -3.0, 
					 45500, 
					 15500, 
					 75000,
					 29500, 
					 31000, 
					 9000, 
					 4000, 
					 0.4, 
					 -0.015, 
					 0.5,	
    },
}

declare_weapon(NGAD_aim200_AA)

declare_loadout({
	category		=	CAT_AIR_TO_AIR,
	CLSID			= 	"{NGAD_AIM200}",
	Picture			=	"us_AIM-120C.png",
	wsTypeOfWeapon	=	NGAD_aim200_AA.wsTypeOfWeapon,
	displayName		=	_('2 x ' .. ngad_aim200_name),
	attribute		=	{4,	4,	32,	WSTYPE_PLACEHOLDER},
	Count			=	2,
	Weight			=	ngad_aim200_mass * 2 + pylon_mass,
	Elements		=	
	{
		{
		
			ShapeName	=	"Peregrine",
			Position	=	{1.1,	0,	0}
		},
		{
		
			ShapeName	=	"Peregrine",
			Position	=	{-1.1,	0,	0}
		},
	}, 	
	
})

declare_loadout({
	category		=	CAT_AIR_TO_AIR,
	CLSID			= 	"{F22C_AIM200}",
	Picture			=	"us_AIM-120C.png",
	wsTypeOfWeapon	=	NGAD_aim200_AA.wsTypeOfWeapon,
	displayName		=	_('4 x ' .. ngad_aim200_name),
	attribute		=	{4,	4,	32,	WSTYPE_PLACEHOLDER},
	Count			=	4,
	Weight			=	ngad_aim200_mass * 4 + pylon_mass,
	Elements		=	
	{
		{
		
			ShapeName	=	"Peregrine",
			Position	=	{1.25,	0,	-0.5}
		},
				{
		
			ShapeName	=	"Peregrine",
			Position	=	{-1.25,	0,	-0.5}
		},
		{
		
			ShapeName	=	"Peregrine",
			Position	=	{-1.25,	0,	0.5}
		},
				{
		
			ShapeName	=	"Peregrine",
			Position	=	{1.25,	0,	0.5}
		},
	}, 	
	
})

declare_loadout({
    category        = CAT_AIR_TO_AIR,
    CLSID           = "{WL_2xAIM200}",
    wsTypeOfWeapon  = NGAD_aim200_AA.wsTypeOfWeapon,
    attribute       = {4, 4, 32, WSTYPE_PLACEHOLDER},
    Count           = 2,
    Picture         = "us_AIM-120C.png",
    displayName     = _('LAU-135 with 2 x ' .. ngad_aim200_name),
    Weight          = ngad_aim200_mass * 2 + 50,
	Elements = {
	
		{
			Position	=	{0, 0, 0},
			ShapeName	=	"WingLauncher",
			IsAdapter 	= true,
		},
		{
			Position	=	{1.0,	-0.23,	0.25}, --1
			ShapeName	=	"Peregrine",
		},
		{
			Position	=	{1.0,	-0.23,	-0.25}, --2
			ShapeName	=	"Peregrine"
		},
	},
    
    JettisonSubmunitionOnly = false,
})

declare_loadout({
    category        = CAT_AIR_TO_AIR,
    CLSID           = "{PAMC_4xAIM200}",
    wsTypeOfWeapon  = NGAD_aim200_AA.wsTypeOfWeapon,
    attribute       = {4, 4, 32, WSTYPE_PLACEHOLDER},
    Count           = 4,
    Picture         = "us_AIM-120C.png",
    displayName     = _('4 x ' .. ngad_aim200_name),
    Weight          =  ngad_aim200_mass * 4 + 50,
	Elements = {
	
		{
			Position	=	{0, 0, 0},
			ShapeName	=	"PAMC",
			IsAdapter 	= true,
		},
		{
			Position	=	{-1.0,	-0.05,	0.15}, --1
			ShapeName	=	"Peregrine",
			Rotation = {-45,0,0},
		},
		{
			Position	=	{-1.0,	-0.05,	-0.15}, --2
			ShapeName	=	"Peregrine",
			Rotation = {45,0,0},
		},
		{
			Position	=	{1.0,	-0.05,	0.15}, --3
			ShapeName	=	"Peregrine",
			Rotation = {-45,0,0},
		},
		{
			Position	=	{1.0,	-0.05,	-0.15}, --4
			ShapeName	=	"Peregrine",
			Rotation = {45,0,0},
		},
	},
    
    JettisonSubmunitionOnly = false,
})

