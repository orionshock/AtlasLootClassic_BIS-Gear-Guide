local addonName, addonScope = ...
local data = addonScope.data
local AL = addonScope.AL
local ALIL = addonScope.ALIL
local NORMAL_DIFF = addonScope.NORMAL_DIFF
local ALLIANCE_DIFF = addonScope.ALLIANCE_DIFF
local HORDE_DIFF = addonScope.HORDE_DIFF
local LOAD_DIFF = addonScope.LOAD_DIFF
local NORMAL_ITTYPE = addonScope.NORMAL_ITTYPE
local PROF_ITTYPE = addonScope.PROF_ITTYPE
local roleType_Tank = addonScope.roleType_Tank
local roleType_Heal = addonScope.roleType_Heal
local roleType_DPS  = addonScope.roleType_DPS 

local _FileRole = "Arms/Fury"
local _FileClass = "Warrior"
local _FilePrefix = _FileRole.." ".._FileClass

local el_Gems = {	--Extra List : Gems
	name = "Gems",
	ExtraList = true,
	TableType = PROF_ITTYPE,
	[NORMAL_DIFF] = {
		{ 01, "INV_MISC_DESECRATED_PLATEHELM", nil, "Meta Gem" },
		{ 02, 39961 },	{ 17, 32765 },
		{ 04, "INV_MISC_GEM_01", nil, "Socket By Color"},
		{ 05, 31097 },	{ 20, 31113 },
		{ 06, 31106 },
		{ 08, 31092, nil, nil, "For Shield, as needed" },
		
	}
}

local el_HeadShoulder = {	--Extra List: Shoulder Items
	name = "Head Glyph & Shoulder Inscription",
	ExtraList = true,
	TableType = NORMAL_ITTYPE,
	[NORMAL_DIFF] = {
		{ 01, "INV_MISC_DESECRATED_PLATEHELM", nil, "Head Glyph"},
		{ 02, 29192 },
		{ 04, "INV_MISC_DESECRATED_PLATESHOULDER", nil, "Shoulder Inscription"},
		{ 05, 28910 },	{ 20, 28888 },
	}
}

local el_GearEnchants = {	--Extra List: Gear Enchants
	name = "Gear Enchants",
	ExtraList = true,
	TableType = PROF_ITTYPE,
	[NORMAL_DIFF] = {
		{ 01 , "INV_MISC_CAPE_20", nil, "Back" },
		{ 02 , 34004 },
		{ 03 , "INV_MISC_DESECRATED_PLATECHEST", nil, "Chest" },
		{ 04 , 27960 },
		{ 05 , "INV_MISC_DESECRATED_PLATEBRACER", nil, "Wrist" },
		{ 06 , 27899 },
		{ 07 , "INV_MISC_DESECRATED_PLATEGLOVES", nil, "Hands" },
		{ 08 , 33995 },
		{ 09 , "INV_MISC_DESECRATED_PLATEPANTS", nil, "Legs" },
		{ 10 , 35554 },
		{ 11 , "INV_MISC_DESECRATED_PLATEBOOTS", nil, "Feet" },
		{ 12 , 34007 },
	},
}

local el_offEnchants = {	--Extra List: Ring/Wep/Sheild Enchants
	name = "Ring/Wep/Sheild Enchants",
	ExtraList = true,
	TableType = PROF_ITTYPE,
	[NORMAL_DIFF] = {
		{ 01, "INV_SWORD_65", nil, "Weapon Enchant"},
		{ 02, 27984 },		
		{ 03, "INV_SHIELD_30", nil, "Shield Enchant" }, 
		{ 04, 34009 },
		{ 05, "INV_WEAPON_BOW_07", nil, "Guns and Bows" },
		{ 06, 30332 },
	},
}

data[ _FilePrefix ] ={
	name = _FilePrefix,
	ContentType = roleType_DPS,
	LoadDifficulty = LOAD_DIFF,
	TableType = NORMAL_ITTYPE,
	gameVersion = 2,
	items = {
		{
			name = "Set1",
			[NORMAL_DIFF] = {

			}
		},
		{	--Head Slot
			name = "Head",
			[NORMAL_DIFF] = {

			}
		},
		{	--Shoulders
			name = "Shoulders",
			[NORMAL_DIFF] = {

			},
		},
		{	--Back
			name = "Back",
			[NORMAL_DIFF] = {

			},
		},
		{	--Chest
			name = "Chest",
			[NORMAL_DIFF] = {

			},
		},
		{	--Wrist
			name = "Wrist",
			[NORMAL_DIFF] = {

			},

		},
		{	--Hands
			name = "Hands",
			[NORMAL_DIFF] = {

			},
		},
		{	--Waist
			name = "Waist",
			[NORMAL_DIFF] = {

			},
		},
		{	--Legs
			name = "Legs",
			[NORMAL_DIFF] = {

			},
		},
		{	--Feet
			name = "Feet",
			[NORMAL_DIFF] = {

			},
		},
		{	--Neck
			name = "Neck",
			[NORMAL_DIFF] = {

			},
		},
		{	--Rings
			name = "Rings",
			[NORMAL_DIFF] = {

			},
		},
		{	--Trinkets 1
			name = "Trinkets1",
			[NORMAL_DIFF] = {

			},
		},
		{	--Trinkets 2
			name = "Trinkets2",
			[NORMAL_DIFF] = {

			},
		},
		{	--Trinkets 3
			name = "Trinkets3",
			[NORMAL_DIFF] = {

			},
		},
		{	--1H Wep
			name = "1-Handed Weapons",
			[NORMAL_DIFF] = {

			},
		},
		{	--2H Wep
			name = "2-Handed Weapons",
			[NORMAL_DIFF] = {

			},
		},
		{	--Ranged
			name = "Ranged",
			[NORMAL_DIFF] = {

			},
		},
		{	--Offhand
			name = "Off Hand",
			[NORMAL_DIFF] = {

			},
		},
		el_Gems,
		el_HeadShoulder,
		el_GearEnchants,
		el_offEnchants,
	},
}