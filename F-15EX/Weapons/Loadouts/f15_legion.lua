
local f15_legion_name = 'Legion Pod'
local pylon_mass = 0.0

declare_loadout(
    {
        category    = CAT_PODS,
        name        = f15_legion_name,
        displayName = _(f15_legion_name),
        Picture     = "AAQ-28.png",        
        attribute = {wsType_Weapon, wsType_GContainer, wsType_Support, WSTYPE_PLACEHOLDER},
        CLSID       = "{LegionPod}",
        
        Weight = 208 + pylon_mass,
        Cx_pil = 0.0005,
        shape_table_data =
        {
            {
                name = f15_legion_name,
                file = "legion_pod",
                life = 1,
                fire = { 0, 1},
                username = "LEGIONPOD",
                index = WSTYPE_PLACEHOLDER,
            },
        },
        Elements =
        {
            {
                Position = {0, -0.25, 0},
                ShapeName = "legion_pod",
            },
        },
    }
)

local f15_pylons_name = 'EPAWSS'
local pylon_mass = 0.0

declare_loadout(
    {
        category    = CAT_PODS,
        name        = f15_pylons_name,
        displayName = _(f15_pylons_name),
        Picture     = "AAQ-28.png",        
        attribute = {wsType_Weapon, wsType_GContainer, wsType_Support, WSTYPE_PLACEHOLDER},
        CLSID       = "{F-15EX_pylon}",
        
        Weight = 299 + pylon_mass,
        Cx_pil = 0.0005,
        shape_table_data =
        {
            {
                name = f15_pylons_name,
                file = "F-15EX_pylons_v1",
                life = 1,
                fire = { 0, 1},
                username = "Faketank",
                index = WSTYPE_PLACEHOLDER,
            },
        },
        Elements =
        {
            {
                Position = {0, 0, 0},
                ShapeName = "F-15EX_pylons_v1",
            },
        },
    }
)

local f15_pylons_legion_name = 'F-15EX Pylons with Legion IRST'
local pylon_mass = 0.0

declare_loadout(
    {
        category    = CAT_PODS,
        name        = f15_pylons_legion_name,
        displayName = _(f15_pylons_legion_name),
        Picture     = "AAQ-28.png",        
        attribute = {wsType_Weapon, wsType_GContainer, wsType_Support, WSTYPE_PLACEHOLDER},
        CLSID       = "{F-15EX_pod}",
        
        Weight = 507 + pylon_mass,
        Cx_pil = 0.0005,
        shape_table_data =
        {
            {
                name = f15_pylons_name,
                file = "F-15EX_mods_v1",
                life = 1,
                fire = { 0, 1},
                username = "Faketank",
                index = WSTYPE_PLACEHOLDER,
            },
        },
        Elements =
        {
            {
                Position = {0, 0, 0},
                ShapeName = "F-15EX_mods_v1",
            },
        },
    }
)

local ex_tank610_name = 'EPAWSS with Fuel tank 610 gal'
local pylon_mass = 0.0

declare_loadout(
    {
        category    = CAT_FUEL_TANKS,
        name        = ex_tank610_name,
        displayName = _(ex_tank610_name),
        Picture     = "AAQ-28.png",
        attribute   = {wsType_Air, wsType_Free_Fall, wsType_FuelTank, WSTYPE_PLACEHOLDER},
        CLSID       = "{EX_TANK_CENTER}",
        
        Weight_Empty = 145 + pylon_mass,
        Weight = 145 + 1315.27 + pylon_mass,
        Cx_pil = 0.00148,
        shape_table_data =
        {
            {
                name = ex_tank610_name,
                file = "F-15E_PTB",
                life = 1,
                fire = { 0, 1},
                username = "Tank610G",
                index = WSTYPE_PLACEHOLDER,
            },
        },
        Elements =
        {
            {
                Position = {0, 0, 0},
                ShapeName = "F-15EX_pylons_v1",
				isAdapter = true,
            },
			{
                Position = {0, 0, 0},
                ShapeName = "F-15E_PTB",
            },
        },
    }
)