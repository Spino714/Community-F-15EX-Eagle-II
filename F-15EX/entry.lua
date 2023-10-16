self_ID = "F15EX"
declare_plugin(self_ID,
{
image     	 = "FC3.bmp",
installed 	 = true, -- if false that will be place holder , or advertising
dirName	  	 = current_mod_path,
displayName  = _("F-15EX"),
developerName = _("Spino"),

fileMenuName = _("F-15EX"),
update_id        = "F15EX",
version		 = "1.7",
state		 = "installed",
info		 = _("The F-15EX Eagle II is a recent development of the F-15E Strike Eagle, and intended to replace the USAF's existing fleet of legacy F-15C air superiority fighters.  It can carry up to 22 AIM-120 AMRAAMs thanks to its outer wing pylons and AMBER missile launchers."),

Skins	=
	{
		{
		    name	= _("F-15EX"),
			dir		= "Theme"
		},
	},
Missions =
	{
		{
			name		    = _("F-15EX"),
			dir			    = "Missions",
  		},
	},
LogBook =
	{
		{
			name		= _("F-15EX"),
			type		= "F-15EX",
		},
		
	},	
		
InputProfiles =
	{
		--["VSN_F15E_AA"] = current_mod_path .. '/Input/VSN_F15E_AA',
		["F15EX"] = current_mod_path .. '/Input/F15EX',
	},
	
})
----------------------------------------------------------------------------------------
mount_vfs_model_path	(current_mod_path.."/Shapes")
mount_vfs_liveries_path (current_mod_path.."/Liveries")
mount_vfs_texture_path (current_mod_path.."/Textures")
-------------------------------------------------------------------------------------
dofile(current_mod_path.."/Views_F15Pit.lua")
make_view_settings('F15EX', ViewSettings, SnapViews)
make_flyable('F15EX',current_mod_path..'/Cockpit/KneeboardRight/',{nil, old = 6}, current_mod_path..'/comm.lua')--SFM
-------------------------------------------------------------------------------------
--dofile(current_mod_path..'/VSN_F15E_AA.lua')
dofile(current_mod_path..'/F15EX.lua')
-------------------------------------------------------------------------------------
dofile(current_mod_path.."/Weapons/Loadout.lua")
--dofile(current_mod_path.."/UnitPayloads/F15EX.lua")
-----------------------------------------------------------
plugin_done()
