

F15EX =  {
      
		Name 			= 'F15EX',--AG
		DisplayName		= _('F-15EX'),--AG
        Picture 		= "F-15C.png",
        Rate 			= "50",
        Shape			= "VSN_F15E_AA",--AG	
        WorldID		=  WSTYPE_PLACEHOLDER,
        
	shape_table_data 	= 
	{
		{
			file  	 	= 'F_15EX';--AG
			life  	 	= 20; -- lifebar
			vis   	 	= 3; -- visibility gain.
			desrt    	= 'f-15-oblomok'; -- Name of destroyed object file name
			fire  	 	= { 300, 2}; -- Fire on the ground after destoyed: 300sec 2m
			username	= 'F15EX';--AG
			index       =  WSTYPE_PLACEHOLDER;
			classname   = "lLandPlane";
			positioning = "BYNORMAL";
		},
		{
			name  		= "f-15-oblomok";
			file  		= "f-15-oblomok";
			fire  		= { 240, 2};
		},
	},
	
	--Countries = {"USA","USAF Aggressors", "SAU", "ISR"},
	
	LandRWCategories = 
        {
        [1] = 
        {
			Name = "AircraftCarrier",
        },
        [2] = 
        {
            Name = "AircraftCarrier With Catapult",
        }, 
        [3] = 
        {
            Name = "AircraftCarrier With Tramplin",
        }, 
    }, -- end of LandRWCategories
        TakeOffRWCategories = 
        {
        [1] = 
        {
			Name = "AircraftCarrier",
        },
        [2] = 
        {
            Name = "AircraftCarrier With Catapult",
        }, 
        [3] = 
        {
            Name = "AircraftCarrier With Tramplin",
        }, 
    }, -- end of TakeOffRWCategories
	
	mapclasskey 		= "P0091000024",
	attribute  			= {wsType_Air, wsType_Airplane, wsType_Fighter, WSTYPE_PLACEHOLDER, "Fighters", "Refuelable", "Datalink", "Link16"},
	Categories= {"{78EFB7A2-FD52-4b57-A6A6-3BF0E1D6555F}", "Interceptor",},
	
		M_empty						=	15000,	-- kg  with pilot and nose load, F15
		M_nominal					=	25671,	-- kg (Empty Plus Full Internal Fuel)
		M_max						=	36741,	-- kg (Maximum Take Off Weight)
		M_fuel_max					=	9818,	-- kg (Internal Fuel Only)
		H_max						=	18300,	-- m  (Maximum Operational Ceiling)
		average_fuel_consumption	=	0.271,
		CAS_min						=	58,		-- Minimum CAS speed (m/s) (for AI)
		V_opt						=	220,	-- Cruise speed (m/s) (for AI)
		V_take_off					=	61,		-- Take off speed in m/s (for AI)
		V_land						=	71,		-- Land speed in m/s (for AI)
		has_afteburner				=	true,
		has_speedbrake				=	true,
		radar_can_see_ground		=	true,

		nose_gear_pos 				                = {4.659,	-2.24,	0},   -- nosegear coord 
	    nose_gear_amortizer_direct_stroke   		=  0,  -- down from nose_gear_pos !!!
	    nose_gear_amortizer_reversal_stroke  		=  0,  -- up 
	    nose_gear_amortizer_normal_weight_stroke 	=  0,   -- up 
	    nose_gear_wheel_diameter 	                = 0.754, -- in m
	
	    main_gear_pos 						 	    = {-0.773,	-2.24,	1.371}, -- main gear coords 
	    main_gear_amortizer_direct_stroke	 	    =   0, --  down from main_gear_pos !!!
	    main_gear_amortizer_reversal_stroke  	    = 	0, --  up 
	    main_gear_amortizer_normal_weight_stroke    =   0,-- down from main_gear_pos
	    main_gear_wheel_diameter 				    =   0.972, -- in m

		AOA_take_off				=	0.16,	-- AoA in take off (for AI)
		stores_number				=	12,
		bank_angle_max				=	60,		-- Max bank angle (for AI)
		tand_gear_max				=	1.732,	--XX  FA18 3.73, 
		V_max_sea_level				=	403,	-- Max speed at sea level in m/s (for AI)
		V_max_h						=	736.11,	-- Max speed at max altitude in m/s (for AI)
		Vy_max						=	275,	-- Max climb speed in m/s (for AI)
		tanker_type					=	1,--F14=2/S33=4/ M29=0/S27=0/F15=1/ F16=1/To=0/F18=2/A10A=1/ M29K=4/F4=0/
		wing_area					=	56.5,	-- wing area in m2
		wing_span					=	13.05,--XX   wing spain in m
		wing_type 					= 	0,--XX 0=FIXED_WING/ 1=VARIABLE_GEOMETRY/ 2=FOLDED_WING/ 3=ARIABLE_GEOMETRY_FOLDED
		thrust_sum_max				=	15563,	-- thrust in kgf (64.3 kN)
		thrust_sum_ab				=	26717,	-- thrust in kgf (95.1 kN)
		length						=	19.43,
		height						=	5.63,
		flaps_maneuver				=	1,
		Mach_max					=	2.5,	-- Max speed in Mach (for AI)
		range						=	2540,	-- Max range in km (for AI)
		RCS							=	5,		-- Radar Cross Section m2
		Ny_min						=	-3,		-- Min G (for AI)
		Ny_max						=	8,		-- Max G (for AI)
		Ny_max_e					=	8,		-- Max G (for AI)
		detection_range_max			=	250,
		IR_emission_coeff			=	0.91,	-- Normal engine -- IR_emission_coeff = 1 is Su-27 without afterburner. It is reference.
		IR_emission_coeff_ab		=	4,		-- With afterburner
		crew_size					=	2, --XX
		engines_count				=	2,    --XX
		wing_tip_pos		 		= 	{-3.9,	0.2,	6.6},
		
		--EPLRS 						= true,--?
		TACAN_AA					= true,--?
		mechanimations = "Default",
		
		engines_nozzles = 
		{
			[1] = 
			{
				pos = 	{-6.751,	0.067,	-0.705},
				diameter			=	1.1,
				exhaust_length_ab	=	12,
				exhaust_length_ab_K	=	0.76,
				smokiness_level		=	0.05,
				afterburner_circles_count = 11,
				afterburner_circles_pos = {0.2, 0.8},
				afterburner_circles_scale = 1.0,
				afterburner_effect_texture = "afterburner_f-16c",
			}, -- end of [1]
			[2] = 
			{
				pos = 	{-6.751,	0.067,	0.705},
				diameter			=	1.1,
				exhaust_length_ab	=	12,
				exhaust_length_ab_K	=	0.76,
				smokiness_level		=	0.05,
				afterburner_circles_count = 11,
				afterburner_circles_pos = {0.2, 0.8},
				afterburner_circles_scale = 1.0,
				afterburner_effect_texture = "afterburner_f-16c",
			}, -- end of [2]
		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				pos 				= {6.277,	1.198,	0},
				ejection_seat_name	= 17,
				drop_canopy_name	=	"F-15E-FONAR";--21 Glas
				canopy_pos			= {0,0,0}
			}, -- end of [1]
			[2] = 
			{
				pilot_body_arg		= 472,--pilot usblände
				ejection_seat_name	= 17,
				drop_canopy_name	= 0,
				pos 				= {4.327,	1.198,	0},
			}, -- end of [2]
		}, -- end of crew_members
		brakeshute_name	=	0,
		is_tanker	=	false,
		air_refuel_receptacle_pos = 	{1.39,	0.41,	-1.66},
		fires_pos = 
		{
			[1] = 	{-1.842,	0.563,	0},
			[2] = 	{-1.644,	0.481,	2.87},
			[3] = 	{-1.389,	0.461,	-3.232},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{-5.753,	0.06,	0.705},
			[9] = 	{-5.753,	0.06,	-0.705},
			[10] = 	{-0.992,	0.85,	0},
			[11] = 	{-1.683,	0.507,	-2.91},
		}, -- end of fires_pos
		
		effects_presets = {
			{effect = "OVERWING_VAPOR", file = current_mod_path.."/Effects/VSN_F15E_overwingVapor.lua"},
		},
		
		chaff_flare_dispenser = 
		{
			[1] = 
			{
				dir = 	{0,	-1,	0},
				pos = 	{1.158,	-1.77,	-0.967},
			}, -- end of [1]
			[2] = 
			{
				dir = 	{0,	-1,	0},
				pos = 	{1.158,	-1.77,	0.967},
			}, -- end of [2]
			[3] = 
			{
				dir = 	{-1,	0,	0},
				pos = 	{-7.52,	-0.2,	-1.67},
			}, -- end of [1]
			[4] = 
			{
				dir = 	{-1,	0,	0},
				pos = 	{1.158,	-0.2,	1.67},
			}, -- end of [2]
		}, -- end of chaff_flare_dispenser

        -- Countermeasures
passivCounterm 		= {
CMDS_Edit 			= true,
SingleChargeTotal 	= 360,
chaff 				= {default = 120, increment = 30, chargeSz = 1},
flare 				= {default = 60, increment = 30, chargeSz = 2}
 },
	
        CanopyGeometry 	= {
            azimuth 	= {-145.0, 145.0},
            elevation 	= {-50.0, 90.0}
        },

Sensors = {
RADAR 	= "AN/APG-63",--F15
RWR 	= "Abstract RWR"--F15
},
Countermeasures = {
ECM 			= "AN/ALQ-135"--F15
},
	Failures = {
			{ id = 'asc', 		label = _('ASC'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'autopilot', label = _('AUTOPILOT'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'hydro',  	label = _('HYDRO'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'l_engine',  label = _('L-ENGINE'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'r_engine',  label = _('R-ENGINE'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'radar',  	label = _('RADAR'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
		  --{ id = 'eos',  		label = _('EOS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
		  --{ id = 'helmet',  	label = _('HELMET'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'mlws',  	label = _('MLWS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'rws',  		label = _('RWS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'ecm',   	label = _('ECM'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'hud',  		label = _('HUD'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'mfd',  		label = _('MFD'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },		
	},
	HumanRadio = {
		frequency 		= 127.5,  -- Radio Freq
		editable 		= true,
		minFrequency	= 100.000,
		maxFrequency 	= 156.000,
		modulation 		= MODULATION_AM
	},

Guns = {gun_mount("M_61", { count = 500 },{muzzle_pos = {4.00000, 0.450000, 2.000000}})--
-- Alle Muster verfügen über eine interne 20-mm-Bordkanone vom Typ M61 Vulcan. Die F-15A-C haben 940 Schuss Munition geladen, die F-15E nur 450 Schuss.

},

pylons_enumeration = {1, 11, 10, 2, 3, 9, 4, 8, 5, 7, 6},

	Pylons =     {

        pylon(1, 0, 0, 0.2, 0.0, {use_full_connector_position=false},

            {
                { CLSID = "LAU-115_2*LAU-127_AIM-120C" , attach_point_position = {-2.4,  0.05,  -0.95},
				required = {{station = 6, loadout = {"{F-15EX_pylon}"}}},
				}, -- AIM-120C*2
				{ CLSID = "{LAU-115 - AIM-120C}" , attach_point_position = {-2.4,  0.05,  -0.95},
				required = {{station = 6, loadout = {"{F-15EX_pylon}"}}},}, -- AIM-120C
				{ CLSID = "{LAU_115_2xAIM120C7}" , attach_point_position = {-2.4,  0.05,  -0.95},
				required = {{station = 6, loadout = {"{F-15EX_pylon}"}}},}, -- AIM-120C7*2
				{ CLSID = "{LAU_115_2xAIM120D}" , attach_point_position = {-2.4,  0.05,  -0.95},
				required = {{station = 6, loadout = {"{F-15EX_pylon}"}}},}, -- AIM-120D*2
			   -- { CLSID = "{OUTERW_2xAIM120C7}" , attach_point_position = {-2.3,  0.2,  -0.95}}, -- AIM-120C7*2
				--{ CLSID = "{OUTERW_2xAIM120D}" , attach_point_position = {-2.3,  0.2,  -0.95}, Type = 0}, -- AIM-120D*2
				--{ CLSID = "{OUTERW_2xAIM120D2}" , attach_point_position = {-2.3,  0.2,  -0.95}, Type = 0}, -- AIM-120D2*2
				{ CLSID = "LAU-115_2*LAU-127_AIM-9X" , attach_point_position = {-2.4,  0.05,  -0.95},
				required = {{station = 6, loadout = {"{F-15EX_pylon}"}}},}, -- AIM-9X*2
                { CLSID = "LAU-115_LAU-127_AIM-9X" , attach_point_position = {-2.4,  0.05,  -0.95},
				required = {{station = 6, loadout = {"{F-15EX_pylon}"}}},}, -- AIM-9X
				{ CLSID = '{AIM-260A}',attach_point_position = {-2.0,  -0.00,  -0.97},
				required = {{station = 6, loadout = {"{F-15EX_pylon}"}}},
				}, -- AIM-260A
				{ CLSID = "{PAMC_4xAIM200}", attach_point_position = {-2.35, 0.05, -0.95}, Type = 1,
				required = {{station = 6, loadout = {"{F-15EX_pylon}"}}},
				}, -- AIM-200*4
				--{ CLSID = "{OUTERW_AIM-9X2}" , attach_point_position = {-2.4,  0.2,  -0.95}}, -- AIM-9X II *2
				--{ CLSID = "{OUTERW_AIM-9X3}" , attach_point_position = {-2.4,  0.2,  -0.95}}, -- AIM-9X II+ *2
				{ CLSID = "{harmF-15ex}" , attach_point_position = {-2.2,  0.0,  -0.95}}, -- AGM-88F
				{ CLSID = "{B06DD79A-F21E-4EB9-BD9D-AB3844618C93}" , attach_point_position = {-2.0,  0.05,  -0.95},
				required = {{station = 6, loadout = {"{F-15EX_pylon}"}}},
				}, -- AGM-88C
				{ CLSID = '{aargm_er}' , attach_point_position = {-2.0,  -0.05,  -0.95},
				required = {{station = 6, loadout = {"{F-15EX_pylon}"}}},
				}, -- AGM-88G
				--{ CLSID = "{AIS_ASQ_T50}" ,arg_increment = -0.1, attach_point_position = {0.30,  0.0,  0.0}},			-- ACMI pod
            }
        ),
        pylon(2, 0, 0, 0, 0, {use_full_connector_position=true, connector = "Pylon2" },
            {
                -- FUEL TANKS --
				{ CLSID = "{F15E_EXTTANK}" }, -- Fuel
				{ CLSID = "{F15E_EXTTANK_EMPTY}" }, -- Fuel		
				
				-- AIR TO AIR MISSILES --
				{ CLSID = '{AIM-260A}',attach_point_position = {0.4,  -0.15, 0.0}}, -- AIM-260A
				{ CLSID = "{LAU_115_2xAIM120D}"}, -- AIM-120D*2
				
				{ CLSID = "{LAU_115_2xAIM120C7}"}, -- AIM-120C7*2
				{ CLSID = "LAU-115_2*LAU-127_AIM-120C" }, -- AIM-120*2
				{ CLSID = "{PAMC_4xAIM200}", attach_point_position = {-0.35, -0.1, 0.0}, Type = 1}, -- AIM-200*4
				
				-- AIR TO GROUND MISSILES --
				{ CLSID = '{harmF-15ex}',attach_point_position = {0.4,  -0.3, 0.0}}, -- AGM-88F
				{ CLSID = '{aargm_er}',attach_point_position = {0.4,  -0.15, 0.0}}, -- AGM-88G
				{ CLSID = "{B21_AGM-158B}",attach_point_position = {0.2,  -0.25, 0.0}}, -- JASSM
				{ CLSID = "{B21_AGM-158C}",attach_point_position = {0.2,  -0.25, 0.0}}, -- LRASM
				{ CLSID = "{AGM_84H}" },
				{ CLSID = "{B06DD79A-F21E-4EB9-BD9D-AB3844618C93}" }, -- AGM-88C
				{ CLSID = "{AGM_130A}" },
				{ CLSID = "{AGM-154A}" },
				{ CLSID = "{AGM-154B}" },
				{ CLSID = "{AGM-154C}" },
				
				-- UNGUIDED BOMBS AND ROCKETS --
				{ CLSID = "{60CC734F-0AFA-4E2E-82B8-93B941AB11CF}" }, -- Mk-82-TER
				{ CLSID = "{BRU33_2X_ROCKEYE}" }, -- BRU-33 2x Mk-20
				{ CLSID = "{BRU-42_3*Mk-82AIR}" }, -- Mk-82AIR-TER
				{ CLSID = "{B83CB620-5BBE-4BEA-910C-EB605A327EF9}" }, -- 3 Mk-20-TER
				{ CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" }, -- Mk-84
                { CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" },  -- Mk-82
				{ CLSID = "{64329ED9-B14C-4c0b-A923-A3C911DA1527}" }, -- BRU-42 3x LAU-68 HE
				{ CLSID = "{BRU33_2*LAU61}" }, -- BRU-33 2x LAU-61 HE
				{ CLSID = "{CLB4_BLU107}" ,attach_point_position = {-0.5,  -0.21, 0.0} },
				{ CLSID = "{BRU41_6X_MK-82}" },
				{ CLSID = "{BRU33_2X_MK-83}" },
				
				-- GUIDED BOMBS --
				{ CLSID = "{GBU_15_V_31B}"},
				{ CLSID = "{GBU-24}"},
				{ CLSID = "{EF0A9419-01D6-473B-99A3-BEBDB923B14D}" },
				{ CLSID = "{GBU-38}" },
				{ CLSID = "{JAS39_SDB}" ,attach_point_position = {0.0,  -0.15, 0.0}},
				{ CLSID = "{GBU_54_V_1B}" },
            }
        ),
        pylon(3, 0, 0, 0, 0, {use_full_connector_position=false},
            {
                
				{ CLSID = "{UPPERW_2xAIM120C5}" , attach_point_position = {-0.75,  0.05,  -0.33}}, -- AIM-120C*2
				{ CLSID = "{UPPERW_2xAIM120C7}" , attach_point_position = {-0.75,  0.05,  -0.33}}, -- AIM-120C7*2
				{ CLSID = "{UPPERW_2xAIM120D}" , attach_point_position = {-0.75,  0.05,  -0.33}}, -- AIM-120D*2
				
				{ CLSID = "{f15ex_AIM-9X}" , attach_point_position = {-0.75,  0.05,  -0.33}}, -- AIM-9X*2
				{ CLSID = "{UPPERW_AIM-9X2}" , attach_point_position = {-0.75,  0.05,  -0.33}}, -- AIM-9X II *2
				{ CLSID = "{UPPERW_AIM-9X3}" , attach_point_position = {-0.75,  0.05,  -0.33}}, -- AIM-9X II+ *2
            }
        ),
        pylon(4, 0, 0, 0, 0, {use_full_connector_position=true, connector = "Pylon9" },
            {
             			
               -- AIR TO AIR MISSILES --
				{ CLSID = "{F15_AIM120C7}" , attach_point_position = {-0.20,  -0.0,  0.0}, Type = 1, arg_value = 0.15}, -- AIM-120C7
				{ CLSID = "{AIM-120D}" , attach_point_position = {-0.20,  -0.0,  0.0}, Type = 1, arg_value = 0.15}, -- AIM-120D
				{ CLSID = "{AIM-120D2}" , attach_point_position = {-0.20,  -0.0,  0.0}, Type = 1, arg_value = 0.15}, -- AIM-120D2
				{ CLSID = '{AIM-260A}',attach_point_position = {-0.20,  -0.15, 0.0}, Type = 1, arg_value = 0.15}, -- AIM-260A
				{ CLSID = "{AMBER_2xAIM120C5}" , attach_point_position = {0.0,  -0.12,  0.0}, Type = 1}, -- AIM-120C*2
				{ CLSID = "{AMBER_2xAIM120C7}" , attach_point_position = {0.0,  -0.12,  0.0}, Type = 1}, -- AIM-120C7*2
				{ CLSID = "{AMBER_2xAIM120D}" , attach_point_position = {0.0,  -0.12,  0.0}, Type = 1}, -- AIM-120D*2
				{ CLSID = "{NGAD_AIM200}" , attach_point_position = {-0.85,  -0.1,  0.0}, Type = 1}, -- AIM-200*2
				{ CLSID = "{PAMC_4xAIM200}", attach_point_position = {-0.35, -0.1, 0.0}, Type = 1}, -- AIM-200*4
				{ CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}", attach_point_position = {0.0,  -0.1,  0.0}, Type = 1, arg_value = 0.15}, -- AIM-120C
				
				-- AIR TO GROUND MISSILES --
				{ CLSID = '{aargm_er}',attach_point_position = {0.0,  -0.15, 0.0}, Type = 1}, -- AGM-88G
				{ CLSID = "{B21_AGM-158B}",attach_point_position = {0.2,  -0.25, 0.0}, Type = 1}, -- JASSM
				{ CLSID = "{B21_AGM-158C}",attach_point_position = {0.2,  -0.25, 0.0}, Type = 1}, -- LRASM
				{ CLSID = "{AGM-154A}" , Type = 1},
				{ CLSID = "{AGM-154B}" , Type = 1},
				{ CLSID = "{AGM-154C}" , Type = 1},
				
				-- UNGUIDED BOMBS --
				{ CLSID = "{5335D97A-35A5-4643-9D9B-026C75961E52}" }, -- CBU-97	
				{ CLSID = "{CBU-87}" }, -- CBU-87
				{ CLSID = "{Mk82AIR}" }, -- Mk-82AIR-TER
				--{ CLSID = "{F15_MK82FL}" },  -- Mk-82*4	
				{ CLSID = "{CFT_L_BLU107_x_6}", attach_point_position = {-1.0,  0.0,  0.0}},
				{ CLSID = "{CFT_L_CBU_87_x_6}", attach_point_position = {-1.0,  0.0,  0.0}},
				{ CLSID = "{CFT_L_CBU_97_x_6}", attach_point_position = {-1.0,  0.0,  0.0}},
				{ CLSID = "{CFT_L_CBU_100_x_6}", attach_point_position = {-1.0,  0.0,  0.0}},
				{ CLSID = "{CFT_L_MK82AR_x_6}", attach_point_position = {-1.0,  0.0,  0.0}},
				{ CLSID = "{CFT_L_MK82LD_x_6}", attach_point_position = {-1.0,  0.0,  0.0}},
				
				-- GUIDED BOMBS --
				{ CLSID = "{JAS39_SDB}" ,attach_point_position = {-0.50,  -0.15, 0.0}},
				{ CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}" }, -- GBU-12
				{ CLSID = "{GBU-38}" }, -- GBU-38
				{ CLSID = "{GBU_54_V_1B}" }, -- GBU-54
		
            }
        ),
		pylon(5, 0, 0, 0, 0, {use_full_connector_position=true, connector = "Pylon7" },
            {
				-- AIR TO AIR MISSILES --
				{ CLSID = "{F15_AIM120C7}" , attach_point_position = {0.5,  -0.0,  0.0}, Type = 1, arg_value = 0.15}, -- AIM-120C7
				{ CLSID = "{AIM-120D}" , attach_point_position = {0.5,  -0.0,  0.0}, Type = 1, arg_value = 0.15}, -- AIM-120D
				{ CLSID = "{AIM-120D2}" , attach_point_position = {0.5,  -0.0,  0.0}, Type = 1, arg_value = 0.15}, -- AIM-120D2
				{ CLSID = '{AIM-260A}',attach_point_position = {0.4,  -0.15, 0.0}, Type = 1, arg_value = 0.15}, -- AIM-260A
				{ CLSID = "{AMBER_2xAIM120C5}" , attach_point_position = {0.0,  -0.12,  0.0}, Type = 1}, -- AIM-120C*2
				{ CLSID = "{AMBER_2xAIM120C7}" , attach_point_position = {0.0,  -0.12,  0.0}, Type = 1}, -- AIM-120C7*2
				{ CLSID = "{AMBER_2xAIM120D}" , attach_point_position = {0.0,  -0.12,  0.0}, Type = 1}, -- AIM-120D*2
				{ CLSID = "{NGAD_AIM200}" , attach_point_position = {-0.85,  -0.1,  0.0}, Type = 1}, -- AIM-200*2
				{ CLSID = "{PAMC_4xAIM200}", attach_point_position = {-0.35, -0.1, 0.0}, Type = 1}, -- AIM-200*4
				{ CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}", attach_point_position = {0.6,  -0.1,  0.0}, Type = 1, arg_value = 0.15}, -- AIM-120C
				
				-- AIR TO GROUND MISSILES --
				{ CLSID = '{aargm_er}',attach_point_position = {0.0,  -0.15, 0.0}, Type = 1}, -- AGM-88G
				{ CLSID = "{B21_AGM-158B}",attach_point_position = {0.2,  -0.25, 0.0}, Type = 1}, -- JASSM
				{ CLSID = "{B21_AGM-158C}",attach_point_position = {0.2,  -0.25, 0.0}, Type = 1}, -- LRASM
				{ CLSID = "{AGM-154A}" , Type = 1},
				{ CLSID = "{AGM-154B}" , Type = 1},
				{ CLSID = "{AGM-154C}" , Type = 1},
				
				-- UNGUIDED BOMBS --
				{ CLSID = "{5335D97A-35A5-4643-9D9B-026C75961E52}" }, -- CBU-97	
				{ CLSID = "{CBU-87}" }, -- CBU-87
				{ CLSID = "{Mk82AIR}" }, -- Mk-82AIR-TER
				{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" },  -- Mk-82	
				{ CLSID = "{BLU107B_DURANDAL}" },
				
				-- GUIDED BOMBS --
				{ CLSID = "{JAS39_SDB}" ,attach_point_position = {0.0,  -0.15, 0.0}},
				{ CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}" }, -- GBU-12
				{ CLSID = "{GBU-38}" }, -- GBU-38
				{ CLSID = "{GBU_54_V_1B}" }, -- GBU-54
            }
		),
        pylon(6, 0, 0, 0, 0, {use_full_connector_position=true, connector = "Pylon10" },
            {
                --{ CLSID = "{E1F29B21-F291-4589-9FD8-3272EEC69506}" },
				--{ CLSID = "{CLB4_BLU107}" ,attach_point_position = {-0.5,  -0.2, 0.0} },
				--{ CLSID = "{LegionPod}" ,attach_point_position = {-0.0,  -0.2, 0.0} },
				--{ CLSID = "{F-15EX_pod}" ,attach_point_position = {-0.3,  0.2, 0.0} },
				{ CLSID = "{F-15EX_pylon}" ,attach_point_position = {-0.3,  0.2, 0.0} },
				--{ CLSID = "{EX_TANK_CENTER}" ,attach_point_position = {-0.3,  0.2, 0.0} },
				--{ CLSID = "{BRU41_6X_MK-82}" },
				--{ CLSID = "{BRU33_2X_MK-83}" },
				
				-- GUIDED BOMBS --
				--{ CLSID = "{JAS39_SDB}" ,attach_point_position = {0.0,  -0.15, 0.0}},
				
            }
        ),
        pylon(7, 0, 0, 0, 0, {use_full_connector_position=true, connector = "Pylon11" },
            {
            	-- AIR TO AIR MISSILES --
				{ CLSID = "{F15_AIM120C7}" , attach_point_position = {0.5,  -0.0,  0.0}, Type = 1, arg_value = 0.15}, -- AIM-120C7
				{ CLSID = "{AIM-120D}" , attach_point_position = {0.5,  -0.0,  0.0}, Type = 1, arg_value = 0.15}, -- AIM-120D
				{ CLSID = "{AIM-120D2}" , attach_point_position = {0.5,  -0.0,  0.0}, Type = 1, arg_value = 0.15}, -- AIM-120D2
				{ CLSID = '{AIM-260A}',attach_point_position = {0.4,  -0.15, 0.0}, Type = 1, arg_value = 0.15}, -- AIM-260A
				{ CLSID = "{AMBER_2xAIM120C5}" , attach_point_position = {0.0,  -0.12,  0.0}, Type = 1}, -- AIM-120C*2
				{ CLSID = "{AMBER_2xAIM120C7}" , attach_point_position = {0.0,  -0.12,  0.0}, Type = 1}, -- AIM-120C7*2
				{ CLSID = "{AMBER_2xAIM120D}" , attach_point_position = {0.0,  -0.12,  0.0}, Type = 1}, -- AIM-120D*2
				{ CLSID = "{NGAD_AIM200}" , attach_point_position = {-0.85,  -0.1,  0.0}, Type = 1}, -- AIM-200*2
				{ CLSID = "{PAMC_4xAIM200}", attach_point_position = {-0.35, -0.1, 0.0}, Type = 1}, -- AIM-200*4
				{ CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}", attach_point_position = {0.6,  -0.1,  0.0}, Type = 1, arg_value = 0.15}, -- AIM-120C
				
				-- AIR TO GROUND MISSILES --
				{ CLSID = '{aargm_er}',attach_point_position = {0.0,  -0.15, 0.0}, Type = 1}, -- AGM-88G
				{ CLSID = "{B21_AGM-158B}",attach_point_position = {0.0,  -0.25, 0.0}, Type = 1}, -- JASSM
				{ CLSID = "{B21_AGM-158C}",attach_point_position = {0.0,  -0.25, 0.0}, Type = 1}, -- LRASM
				{ CLSID = "{AGM-154A}" , Type = 1},
				{ CLSID = "{AGM-154B}" , Type = 1},
				{ CLSID = "{AGM-154C}" , Type = 1},
				
				-- UNGUIDED BOMBS --
				{ CLSID = "{5335D97A-35A5-4643-9D9B-026C75961E52}" }, -- CBU-97	
				{ CLSID = "{CBU-87}" }, -- CBU-87
				{ CLSID = "{Mk82AIR}" }, -- Mk-82AIR-TER
				{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" },  -- Mk-82	
				{ CLSID = "{BLU107B_DURANDAL}" },
				
				-- GUIDED BOMBS --
				{ CLSID = "{JAS39_SDB}" ,attach_point_position = {0.0,  -0.15, 0.0}},
				{ CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}" }, -- GBU-12
				{ CLSID = "{GBU-38}" }, -- GBU-38
				{ CLSID = "{GBU_54_V_1B}" }, -- GBU-54
				
            }
        ),
		---------
		pylon(8, 0, 0, 0, 0, {use_full_connector_position=true, connector = "Pylon13" },
            {
				 -- AIR TO AIR MISSILES --
				{ CLSID = "{F15_AIM120C7}" , attach_point_position = {-0.20,  -0.0,  0.0}, Type = 1, arg_value = 0.15}, -- AIM-120C7
				{ CLSID = "{AIM-120D}" , attach_point_position = {-0.20,  -0.0,  0.0}, Type = 1, arg_value = 0.15}, -- AIM-120D
				{ CLSID = "{AIM-120D2}" , attach_point_position = {0.5,  -0.0,  0.0}, Type = 1, arg_value = 0.15}, -- AIM-120D2
				{ CLSID = '{F15_AIM-260A}',attach_point_position = {-0.20,  -0.15, 0.0}, Type = 1, arg_value = 0.15}, -- AIM-260A
				{ CLSID = "{AMBER_2xAIM120C5}" , attach_point_position = {0.0,  -0.12,  0.0}, Type = 1}, -- AIM-120C*2
				{ CLSID = "{AMBER_2xAIM120C7}" , attach_point_position = {0.0,  -0.12,  0.0}, Type = 1}, -- AIM-120C7*2
				{ CLSID = "{AMBER_2xAIM120D}" , attach_point_position = {0.0,  -0.12,  0.0}, Type = 1}, -- AIM-120D*2
				{ CLSID = "{NGAD_AIM200}" , attach_point_position = {-0.85,  -0.1,  0.0}, Type = 1}, -- AIM-200*2
				{ CLSID = "{PAMC_4xAIM200}", attach_point_position = {-0.35, -0.1, 0.0}, Type = 1}, -- AIM-200*4
				{ CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}", attach_point_position = {0.0,  -0.1,  0.0}, Type = 1, arg_value = 0.15}, -- AIM-120C
				
				-- AIR TO GROUND MISSILES --
				{ CLSID = '{aargm_er}',attach_point_position = {0.0,  -0.15, 0.0}, Type = 1}, -- AGM-88G
				{ CLSID = "{B21_AGM-158B}",attach_point_position = {0.2,  -0.25, 0.0}, Type = 1}, -- JASSM
				{ CLSID = "{B21_AGM-158C}",attach_point_position = {0.2,  -0.25, 0.0}, Type = 1}, -- LRASM
				{ CLSID = "{AGM-154A}" , Type = 1},
				{ CLSID = "{AGM-154B}" , Type = 1},
				{ CLSID = "{AGM-154C}" , Type = 1},
				
				-- UNGUIDED BOMBS --
				{ CLSID = "{5335D97A-35A5-4643-9D9B-026C75961E52}" }, -- CBU-97	
				{ CLSID = "{CBU-87}" }, -- CBU-87
				{ CLSID = "{Mk82AIR}" }, -- Mk-82AIR-TER
				--{ CLSID = "{F15_MK82FR}" },  -- Mk-82*4	
				{ CLSID = "{CFT_R_BLU107_x_6}", attach_point_position = {-1.0,  0.0,  0.0}},
				{ CLSID = "{CFT_R_CBU_87_x_6}", attach_point_position = {-1.0,  0.0,  0.0}},
				{ CLSID = "{CFT_R_CBU_97_x_6}", attach_point_position = {-1.0,  0.0,  0.0}},
				{ CLSID = "{CFT_R_CBU_100_x_6}", attach_point_position = {-1.0,  0.0,  0.0}},
				{ CLSID = "{CFT_R_MK82AR_x_6}", attach_point_position = {-1.0,  0.0,  0.0}},
				{ CLSID = "{CFT_R_MK82LD_x_6}", attach_point_position = {-1.0,  0.0,  0.0}},
				
				-- GUIDED BOMBS --
				{ CLSID = "{JAS39_SDB}" ,attach_point_position = {-0.50,  -0.15, 0.0}},
				{ CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}" }, -- GBU-12
				{ CLSID = "{GBU-38}" }, -- GBU-38
				{ CLSID = "{GBU_54_V_1B}" }, -- GBU-54
				
				
            }
		),
        pylon(9, 0, 0, 0, 0, {use_full_connector_position=false},
            {
                
				{ CLSID = "{UPPERW_2xAIM120C5}"  , attach_point_position = {-2.05,  0.98,  4.65}}, -- AIM-120C*2
				{ CLSID = "{UPPERW_2xAIM120C7}" , attach_point_position = {-2.05,  0.98,  4.65}}, -- AIM-120C7*2
				{ CLSID = "{UPPERW_2xAIM120D}"  , attach_point_position = {-2.05,  0.98,  4.65}}, -- AIM-120D*2
				
				{ CLSID = "{f15ex_AIM-9X}" , attach_point_position = {-2.05,  0.98,  4.7}}, -- AIM-9X*2
				{ CLSID = "{AIM-9X2_inner}" , attach_point_position = {-2.05,  0.98,  4.7}}, -- AIM-9X II*2
				{ CLSID = "{AIM-9X3_inner}" , attach_point_position = {-2.05,  0.98,  4.7}}, -- AIM-9X II+ *2
				
            }
        ),
        pylon(10, 0, 0, 0, 0, {use_full_connector_position=true, connector = "Pylon18" },
            {
			   -- FUEL TANKS --
				{ CLSID = "{F15E_EXTTANK}" }, -- Fuel
				{ CLSID = "{F15E_EXTTANK_EMPTY}" }, -- Fuel			   
				
				-- AIR TO AIR MISSILES --
				{ CLSID = '{AIM-260A}',attach_point_position = {0.4,  -0.15, 0.0}}, -- AIM-260A
				{ CLSID = "{LAU_115_2xAIM120D}"}, -- AIM-120D*2
				--{ CLSID = "{LAU_115_2xAIM260}"}, -- AIM-260*2
				{ CLSID = "{LAU_115_2xAIM120C7}"}, -- AIM-120C7*2
				{ CLSID = "LAU-115_2*LAU-127_AIM-120C" }, -- AIM-120*2
				{ CLSID = "{PAMC_4xAIM200}", attach_point_position = {-0.35, -0.1, 0.0}, Type = 1}, -- AIM-200*4
				
				-- AIR TO GROUND MISSILES --
				{ CLSID = '{harmF-15ex}',attach_point_position = {0.4,  -0.3, 0.0}}, -- AGM-88F
				{ CLSID = '{aargm_er}',attach_point_position = {0.4,  -0.15, 0.0}}, -- AGM-88G
				{ CLSID = "{B21_AGM-158B}",attach_point_position = {0.2,  -0.25, 0.0}}, -- JASSM
				{ CLSID = "{B21_AGM-158C}",attach_point_position = {0.2,  -0.25, 0.0}}, -- LRASM
				{ CLSID = "{AGM_84H}" },
				{ CLSID = "{B06DD79A-F21E-4EB9-BD9D-AB3844618C93}" }, -- AGM-88C
				{ CLSID = "{AGM_130A}" },
				{ CLSID = "{AGM-154A}" },
				{ CLSID = "{AGM-154B}" },
				{ CLSID = "{AGM-154C}" },
				
				-- UNGUIDED BOMBS AND ROCKETS --
				{ CLSID = "{60CC734F-0AFA-4E2E-82B8-93B941AB11CF}" }, -- Mk-82-TER
				{ CLSID = "{BRU33_2X_ROCKEYE}" }, -- BRU-33 2x Mk-20
				{ CLSID = "{BRU-42_3*Mk-82AIR}" }, -- Mk-82AIR-TER
				{ CLSID = "{B83CB620-5BBE-4BEA-910C-EB605A327EF9}" }, -- 3 Mk-20-TER
				{ CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" }, -- Mk-84
                { CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" },  -- Mk-82
				{ CLSID = "{64329ED9-B14C-4c0b-A923-A3C911DA1527}" }, -- BRU-42 3x LAU-68 HE
				{ CLSID = "{BRU33_2*LAU61}" }, -- BRU-33 2x LAU-61 HE
				{ CLSID = "{CLB4_BLU107}" ,attach_point_position = {-0.5,  -0.21, 0.0} },
				{ CLSID = "{BRU41_6X_MK-82}" },
				{ CLSID = "{BRU33_2X_MK-83}" },
				
				-- GUIDED BOMBS --
				{ CLSID = "{GBU_15_V_31B}"},
				{ CLSID = "{GBU-24}"},
				{ CLSID = "{EF0A9419-01D6-473B-99A3-BEBDB923B14D}" },
				{ CLSID = "{GBU-38}" },
				{ CLSID = "{JAS39_SDB}" ,attach_point_position = {0.0,  -0.15, 0.0}},
				{ CLSID = "{GBU_54_V_1B}" },
				
				
				
            }
        ),
        pylon(11, 0, 0, 0, 0, {use_full_connector_position=false},
            {
               
			    --{ CLSID = "{OUTERW_2xAIM120C5}" , attach_point_position = {1.5,  0.90,  2.53}}, -- AIM-120C*2
				{ CLSID = "LAU-115_2*LAU-127_AIM-120C" , attach_point_position = {1.7,  0.75,  2.53},
				required = {{station = 6, loadout = {"{F-15EX_pylon}"}}},
				}, -- AIM-120C*2
				{ CLSID = "{LAU-115 - AIM-120C_R}" , attach_point_position = {1.7,  0.75,  2.53},
				required = {{station = 6, loadout = {"{F-15EX_pylon}"}}},
				}, -- AIM-120C
				{ CLSID = "{LAU_115_2xAIM120C7}" , attach_point_position = {1.7,  0.75,  2.53},
				required = {{station = 6, loadout = {"{F-15EX_pylon}"}}},
				}, -- AIM-120C*2
				{ CLSID = "{LAU_115_2xAIM120D}" , attach_point_position = {1.7,  0.75,  2.53},
				required = {{station = 6, loadout = {"{F-15EX_pylon}"}}},
				}, -- AIM-120C*2
				{ CLSID = "LAU-115_2*LAU-127_AIM-9X" , attach_point_position = {1.6,  0.75,  2.53},
				required = {{station = 6, loadout = {"{F-15EX_pylon}"}}},
				}, -- AIM-9X*2
				{ CLSID = "LAU-115_LAU-127_AIM-9X_R" , attach_point_position = {1.6,  0.75,  2.53},
				required = {{station = 6, loadout = {"{F-15EX_pylon}"}}},
				}, -- AIM-9X
				{ CLSID = '{AIM-260A}',attach_point_position = {2.0,  0.70,  2.53},
				required = {{station = 6, loadout = {"{F-15EX_pylon}"}}},
				}, -- AIM-260A
				{ CLSID = "{PAMC_4xAIM200}", attach_point_position = {1.75, 0.70, 2.53}, Type = 1,
				required = {{station = 6, loadout = {"{F-15EX_pylon}"}}},
				}, -- AIM-200*4
				--{ CLSID = "{OUTER_AIM-9X}" , attach_point_position = {1.7,  0.90,  2.53}}, -- AIM-9X*2
				--{ CLSID = "{OUTERW_AIM-9X2}" , attach_point_position = {1.7,  0.90,  2.53}}, -- AIM-9X II *2
				--{ CLSID = "{OUTERW_AIM-9X3}" , attach_point_position = {1.7,  0.90,  2.53}}, -- AIM-9X II+ *2
				--{ CLSID = "{OUTERW_2xAIM120C7}" , attach_point_position = {1.5,  0.90,  2.53}}, -- AIM-120C7*2
				--{ CLSID = "{OUTERW_2xAIM120D}" , attach_point_position = {1.5,  0.90,  2.53}, Type = 0}, -- AIM-120D*2
				--{ CLSID = "{OUTERW_2xAIM120D2}" , attach_point_position = {1.5,  0.90,  2.53}, Type = 0}, -- AIM-120D2*2
				{ CLSID = "{harmF-15ex}" , attach_point_position = {1.5,  0.7,  2.53}}, -- AGM-88F
				{ CLSID = "{B06DD79A-F21E-4EB9-BD9D-AB3844618C93}" , attach_point_position = {1.9,  0.75,  2.53},
				required = {{station = 6, loadout = {"{F-15EX_pylon}"}}},
				}, -- AGM-88C
				{ CLSID = '{aargm_er}' , attach_point_position = {1.9,  0.75,  2.53},
				required = {{station = 6, loadout = {"{F-15EX_pylon}"}}},
				}, -- AGM-88G
				
				--{ CLSID = "{AIS_ASQ_T50}" ,arg_increment = -0.1, attach_point_position = {1.5,  0.75,  2.5}},			-- ACMI pod
            }
        ),
		--[{pylon(12, 0, 0, 0, 0, {use_full_connector_position=true, connector = "Pylon10" },
          --  {
               
			--	{ CLSID = "{F-15EX_pylon}" ,attach_point_position = {-0.3,  0.2, 0.0} },
				
				
				
          --  }
        --),
		
},
	
	Tasks = {
        aircraft_task(CAP),
     	aircraft_task(Escort),
      	aircraft_task(FighterSweep),
		aircraft_task(Intercept),
		aircraft_task(Reconnaissance),
    	aircraft_task(GroundAttack),
     	aircraft_task(CAS),
		aircraft_task(SEAD),
--      aircraft_task(AFAC),
 	    aircraft_task(RunwayAttack),
--    	aircraft_task(AntishipStrike),
    },	
	DefaultTask = aircraft_task(CAP),

	SFM_Data = {
	aerodynamics = --F15
		{
			Cy0	=	0,
			Mzalfa	=	6,
			Mzalfadt	=	1,
			kjx = 2.95,
			kjz = 0.00125,
			Czbe = -0.016,
			cx_gear = 0.0268,
			cx_flap = 0.06,
			cy_flap = 0.4,
			cx_brk = 0.06,
			table_data = 
			{
			--      M	 Cx0		 Cya		 B		 B4	      Omxmax	Aldop	Cymax
				{0.0,	0.0215,		0.055,		0.08,		0.22,	0.65,	25.0,	1.2 	},
				{0.2,	0.0215,		0.055,		0.08,		0.22,	1.80,	25.0,	1.2     },
				{0.4,	0.0215,		0.055,		0.08,	   	0.22,	3.00,	25.0,	1.2     },
				{0.6,	0.0215,		0.055,		0.05,		0.28,	4.20,	25.0,	1.2     },
				{0.7,	0.0215,		0.055,		0.05,		0.28,	4.20,	23.0,	1.15    },
				{0.8,	0.0215,		0.055,		0.05,		0.28,	4.20,	21.7,	1.1     },
				{0.9,	0.0230,		0.058,		0.09,		0.20,	4.20,	20.1,	1.07    },
				{1.0,	0.0320,		0.062,		0.17,		0.15,	4.20,	18.9,	1.04    },
				{1.1,	0.0430,		0.062,	   	0.235,		0.09,	3.78,	17.4,	1.02    },
				{1.2,	0.0460,		0.062,	   	0.285,		0.08,	2.94,	17.0,	1.00 	},		
				{1.3,	0.0470,		0.06,	   	0.29,		0.10,	2.10,	16.0,	0.92 	},				
				{1.4,	0.0470,		0.056,	   	0.3,		0.136,	1.80,	15.0,	0.80 	},					
				{1.6,	0.0470,		0.052,	   	0.34,		0.21,	1.08,	13.0,	0.7 	},					
				{1.8,	0.0460,		0.042,	   	0.34,		2.43,	0.96,	12.0,	0.55 	},		
				{2.2,	0.0420,		0.037,	   	0.49,		3.5,	0.84,	 10.0,	0.37 	},					
				{2.5,	0.0420,		0.033,		0.6,		4.7,	0.84,	 9.0,	0.3 	},		
				{3.9,	0.0400,		0.023,		0.9,		6.0,	0.84,	 7.0,	0.2		},
			}, -- end of table_data
		}, -- end of aerodynamics
		engine = 
		{
			Nmg		=	67.5,
			MinRUD	=	0,
			MaxRUD	=	1,
			MaksRUD	=	0.85,
			ForsRUD	=	0.91,
			type	=	"TurboJet",
			hMaxEng	=	19.5,
			dcx_eng	=	0.0114,
			cemax	=	1.24,
			cefor	=	2.56,
			dpdh_m	=	6000,
			dpdh_f	=	14000.0,
			table_data = {
			--   M		Pmax		 Pfor
				{0.0,	115000,		212000},
				{0.2,	 94000,		200000},
				{0.4,	 92000,		205000},
				{0.6,	103000,		207000},
				{0.7,	105000,		210000},
				{0.8,	105000,		220000},
				{0.9,	105000,		235000},
				{1.0,	107000,		250000},
				{1.1,	103000,		258000},
				{1.2,	 94000,		268000},
				{1.3,	 84000,		285000},
				{1.4,	 71000,		300000},
				{1.6,	 34000,		318000},
				{1.8,	 19000,		337000},
				{2.2,	 17000,		370000},
				{2.5,	 19000,		390000},
				{3.9,	 82000,		310000},
			}, -- end of table_data
		}, -- end of engineengine =
		{
			type	=	"TurboFan",
			Nmg		=	67.5,
 			Nominal_RPM		= 14710.0,
			Nominal_Fan_RPM	= 8215.0,
			Startup_Prework = 10.0,
			Startup_Duration = 35.0,
			Shutdown_Duration = 19.0,
			MinRUD	=	0,
			MaxRUD	=	1,
			MaksRUD	=	0.85,
			ForsRUD	=	0.91,
			hMaxEng	=	19,
			dcx_eng	=	0.0144,
			cemax	=	1.24,
			cefor	=	2.56,
			dpdh_m	=	6200,
			dpdh_f	=	13000,
			table_data =
			{
				[1] =	{0,		77000,	108313.6},
				[2] =	{0.2,	74000,	109850},
				[3] =	{0.4,	74000,	122000},
				[4] =	{0.6,	82000,	142000},
				[5] =	{0.7,	85000,	156000},
				[6] =	{0.8,	92000,	177000},
				[7] =	{0.9,	100000,	202000},
				[8] =	{1,		109000,	218000},
				[9] =	{1.096,	99000,	222000},
				[10] =	{1.2,	86000,	228000},
				[11] =	{1.3,	68000,	231000},
				[12] =	{1.4,	55000,	230000},
				[13] =	{1.6,	56000,	229000},
				[14] =	{1.8,	56000,	227000},
				[15] =	{2.2,	52000,	234000},
				[16] =	{2.35,	43000,	224000},
				[17] =	{3.9,	25000,	120636.4},
			}, -- end of table_data
		}, -- end of engine
	},


	--damage , index meaning see in  Scripts\Aircrafts\_Common\Damage.lua
	Damage = {
	[0]  = {critical_damage = 5,  args = {146}},
	[1]  = {critical_damage = 3,  args = {296}},
	[2]  = {critical_damage = 3,  args = {297}},
	[3]  = {critical_damage = 8, args = {65}},
	[4]  = {critical_damage = 2,  args = {298}},
	[5]  = {critical_damage = 2,  args = {301}},
	[7]  = {critical_damage = 2,  args = {249}},
	[8]  = {critical_damage = 3,  args = {265}},
	[9]  = {critical_damage = 3,  args = {154}},
	[10] = {critical_damage = 3,  args = {153}},
	[11] = {critical_damage = 1,  args = {167}},
	[12] = {critical_damage = 1,  args = {161}},
	[13] = {critical_damage = 2,  args = {169}},
	[14] = {critical_damage = 2,  args = {163}},
	[15] = {critical_damage = 2,  args = {267}},
	[16] = {critical_damage = 2,  args = {266}},
	[17] = {critical_damage = 2,  args = {168}},
	[18] = {critical_damage = 2,  args = {162}},
	[20] = {critical_damage = 2,  args = {183}},
	[23] = {critical_damage = 5, args = {223}},
	[24] = {critical_damage = 5, args = {213}},
	[25] = {critical_damage = 2,  args = {226}},
	[26] = {critical_damage = 2,  args = {216}},
	[29] = {critical_damage = 5, args = {224}, deps_cells = {23, 25}},
	[30] = {critical_damage = 5, args = {214}, deps_cells = {24, 26}},
	[35] = {critical_damage = 6, args = {225}, deps_cells = {23, 29, 25, 37}},
	[36] = {critical_damage = 6, args = {215}, deps_cells = {24, 30, 26, 38}}, 
	[37] = {critical_damage = 2,  args = {228}},
	[38] = {critical_damage = 2,  args = {218}},
	[39] = {critical_damage = 2,  args = {244}, deps_cells = {53}}, 
	[40] = {critical_damage = 2,  args = {241}, deps_cells = {54}}, 
	[43] = {critical_damage = 2,  args = {243}, deps_cells = {39, 53}},
	[44] = {critical_damage = 2,  args = {242}, deps_cells = {40, 54}}, 
	[51] = {critical_damage = 2,  args = {240}}, 
	[52] = {critical_damage = 2,  args = {238}},
	[53] = {critical_damage = 2,  args = {248}},
	[54] = {critical_damage = 2,  args = {247}},
	[56] = {critical_damage = 2,  args = {158}},
	[57] = {critical_damage = 2,  args = {157}},
	[59] = {critical_damage = 3,  args = {148}},
	[61] = {critical_damage = 2,  args = {147}},
	[82] = {critical_damage = 2,  args = {152}},
	},
	
	DamageParts = 
	{  
		[1] = "f-15e-oblomok-wing-r", -- wing R
		[2] = "f-15e-oblomok-wing-l", -- wing L
--		[3] = "f-15e-oblomok-noise", -- nose
--		[4] = "f-15e-oblomok-tail-r", -- tail
--		[5] = "f-15e-oblomok-tail-l", -- tail
	},
	

	lights_data = { 
	typename = "collection", 
	lights = {
		[WOLALIGHT_NAVLIGHTS] = {
            typename = "Collection",
            lights = {
                {
                    typename = "Spot", connector = "BANO_0", dir_correction = {azimuth = math.rad(180.0)}, argument = 192,
                    proto = lamp_prototypes.ANO_3_Bl, angle_max = math.rad(180.0), angle_min = math.rad(170.0),
                },
                {
                    typename = "Spot", connector = "BANO_1", dir_correction = {azimuth = math.rad(-45.0)}, argument = 190,
                    proto = lamp_prototypes.ANO_3_Kr, angle_max = math.rad(180.0), angle_min = math.rad(90.0),
                    controller = "Strobe", mode = 1, power_up_t = 0.3, cool_down_t = 0.6, period = 1.0, flash_time = 0.7,
                },
                {
                    typename = "Spot", connector = "BANO_2", dir_correction = {azimuth = math.rad(45.0)}, argument = 191,
                    proto = lamp_prototypes.ANO_3_Zl, angle_max = math.rad(180.0), angle_min = math.rad(90.0),
                    controller = "Strobe", mode = 1, power_up_t = 0.3, cool_down_t = 0.6, period = 1.0, flash_time = 0.7,
                },
            }
        },
        [WOLALIGHT_SPOTS] = {
            typename = "Collection",
            lights = {
                {
                    typename = "Collection",
                    lights = {
                        {
                            typename = "Spot", connector = "MAIN_SPOT_PTR", dir_correction = {elevation = math.rad(12.0)}, argument = 209,
                            proto = lamp_prototypes.LFS_P_27_1000,
                            exposure = {{0, 0.99, 1.0}}, movable = true,
                        },
                        {
                            typename = "Spot", connector = "MAIN_SPOT_PTR", dir_correction = {elevation = math.rad(12.0)},
                            proto = lamp_prototypes.LFS_P_27_1000, range = 18.0, angle_max = math.rad(180.0), angle_min = math.rad(170.0),
                            exposure = {{0, 0.99, 1.0}}, movable = true,
                        },
                    },
                },
            },
        },
        [WOLALIGHT_TAXI_LIGHTS] = {
            typename = "Collection",
            lights = {
                {
                    typename = "Collection",
                    lights = {
                        {
                            typename = "Spot", connector = "MAIN_SPOT_PTR", argument = 208,
                            proto = lamp_prototypes.LFS_R_27_180, angle_max = math.rad(72.0),
                            exposure = {{0, 0.99, 1.0}}, power_up_t = 0.75, movable = true,
                        },
                        {
                            typename = "Spot", connector = "MAIN_SPOT_PTR", argument = 208,
                            proto = lamp_prototypes.LFS_R_27_180, range = 18.0, angle_max = math.rad(180.0), angle_min = math.rad(170.0),
                            exposure = {{0, 0.99, 1.0}}, power_up_t = 0.75, movable = true,
                        },
                    },
                },
            },
        },
        [WOLALIGHT_STROBES] = {
            typename = "collection",
            lights = {
                {
                    typename = "collection",
                    lights = {
                        { -- Left Anticollision Light
                            typename = "Spot", connector = "RESERV1_BANO_1", dir_correction = {azimuth = math.rad(-55.0)}, argument = 199,
                            proto = lamp_prototypes.SMI_2KM,
                        },
                        { -- Right Anticollision Light
                            typename = "Spot", connector = "RESERV_BANO_1", dir_correction = {azimuth = math.rad(55.0)},
                            proto = lamp_prototypes.SMI_2KM,
                        },
                        { -- Tail Anticollision Light
                            typename = "Omni", connector = "RESERV2_BANO_1",
                            proto = lamp_prototypes.SMI_2KM,
                        },
                    },
                },
            },
        },
        [WOLALIGHT_FORMATION_LIGHTS] = {
            typename = "argumentlight", argument = 88,
        },
	}},
}

add_aircraft(F15EX) --AG
