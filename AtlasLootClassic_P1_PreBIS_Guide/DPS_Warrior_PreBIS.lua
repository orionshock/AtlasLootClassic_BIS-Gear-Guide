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

local _FileRole = "Fury/Arms"
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
		{ 04 , "INV_MISC_DESECRATED_PLATECHEST", ni, "Chest" }, { 19 , "INV_MISC_DESECRATED_PLATEBRACER", nil, "Wrist" },
		{ 05 , 27960 },	{ 20 , 27899 },
		{ 07 , "INV_MISC_DESECRATED_PLATEPANTS", nil, "Legs" }, { 22 , "INV_MISC_DESECRATED_PLATEGLOVES", nil, "Hands" },
		{ 08 , 35554 }, { 23 , 33995 },
		{ 10 , "INV_MISC_DESECRATED_PLATEBOOTS", nil, "Feet" },				
		{ 11 , 34007 },				
	},
}

local el_offEnchants = {	--Extra List: Ring/Wep/Sheild Enchants
	name = "Ring/Wep/Sheild Enchants",
	ExtraList = true,
	TableType = PROF_ITTYPE,
	[NORMAL_DIFF] = {
		{ 01, "INV_SWORD_65", nil, "Weapon Enchant"},
		{ 02, 27984 },		
		{ 04, "INV_SHIELD_30", nil, "Shield Enchant" }, 
		{ 05, 34009 },
		{ 07, "INV_WEAPON_BOW_07", nil, "Guns and Bows" },
		{ 08, 30332 },
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
			name = "Standard Fury PreBiS",
			[NORMAL_DIFF] = {
				{ 01, 32087 },	{ 16, 27985 },
				{ 02, 29381 },	{ 17, 30538 },
				{ 03, 33173 },	{ 18, 25686 },
				{ 04, 24259 },	{ 19, 30834 },
				{ 05, 23522 },	{ 20, 29379 },
				{ 06, 23537 },	{ 21, 29383 },
				{ 07, 25685 },	{ 22, 28034 },
				{ 09, 28438 },
				{ 10, 28295 },
				{ 11, 30279 },
			}
		},
		{
			name = "Standard Arms PreBiS",
			[NORMAL_DIFF] = {
				{ 01, 32087 },	{ 16, 27985 },
				{ 02, 29381 },	{ 17, 30538 },
				{ 03, 33173 },	{ 18, 25686 },
				{ 04, 24259 },	{ 19, 30834 },
				{ 05, 23522 },	{ 20, 29379 },
				{ 06, 23537 },	{ 21, 28034 },
				{ 07, 25685 },	{ 22, 29383 },
				{ 09, 28429 },
				{ 11, 30279 },
			}
		},
		{	--Head Slot
			name = "Head",
			[NORMAL_DIFF] = {
				{1,32087, nil, nil, "Best" },
				{2,28224, nil, nil, "Optional" },
				{3,28182, nil, nil, "Easy To Obtain" },
				{4,31105, nil, nil, "Easy To Obtain" },
			}
		},
		{	--Shoulders
			name = "Shoulders",
			[NORMAL_DIFF] = {
				{1,33173, nil, nil, "Best" },
				{2,27797, nil, nil, "Optional" },
				{3,27434, nil, nil, "Optional" },
				{4,25790, nil, nil, "Easy To Obtain" },
			},
		},
		{	--Cloak
			name = "Cloak",
			[NORMAL_DIFF] = {
				{1,24259, nil, nil, "Best" },
				{2,27878, nil, nil, "Optional" },
				{3,23045, nil, nil, "Classic Option" },
				{4,27892, nil, nil, "Easy To Obtain" },
			},
		},
		{	--Chest
			name = "Chest",
			[NORMAL_DIFF] = {
				{1,24544, nil, nil, "Best" },
				{2,23522, nil, nil, "Best" },
				{3,28403, nil, nil, "Dungeon Best" },
				{4,30258, nil, nil, "Quest Best" },
			},
		},
		{	--Bracer
			name = "Bracer",
			[NORMAL_DIFF] = {
				{1,23537, nil, nil, "Best" },
				{2,28381, nil, nil, "Optional" },
				{3,22936, nil, nil, "Classic Option" },
				{4,28171, nil, nil, "Easy To Obtain" },
			},

		},
		{	--Gloves
			name = "Gloves",
			[NORMAL_DIFF] = {
				{1,25685, nil, nil, "Best" },
				{2,27497, nil, nil, "Best" },
				{3,23520, nil, nil, "Optional" },
			},
		},
		{	--Belt
			name = "Belt",
			[NORMAL_DIFF] = {
				{1,27985, nil, nil, "Best" },
				{2,29247, nil, nil, "Optional" },
				{3,31462, nil, nil, "Easy To Obtain" },
			},
		},
		{	--Legs
			name = "Legs",
			[NORMAL_DIFF] = {
				{1,30538, nil, nil, "Best" },
				{2,25687, nil, nil, "Optional" },
				{3,30257, nil, nil, "Optional" },
				{4,31544, nil, nil, "Easy to Obtain" },
			},
		},
		{	--Boots
			name = "Boots",
			[NORMAL_DIFF] = {
				{1,25686, nil, nil, "Best" },
				{2,27867, nil, nil, "Optional" },
				{3,28176, nil, nil, "Easy To Obtain" },
			},
		},
		{	--Neck
			name = "Neck",
			[NORMAL_DIFF] = {
				{1,29381, nil, nil, "Best" },
				{2,31695, nil, nil, "Easy To Obtain" },
				{3,27546, nil, nil, "Optional" },
			},
		},
		{	--Rings
			name = "Rings",
			[NORMAL_DIFF] = {
				{1,23038, nil, nil, "Best" },
				{2,29379, nil, nil, "Best" },
				{3,30834, nil, nil, "Best" },
				{4,28323, nil, nil, "Easy to Obtain" },
				{5,31077, nil, nil, "Easy to Obtain" },
			},
		},
		{	--Trinkets
			name = "Trinkets",
			[NORMAL_DIFF] = {
				{1,29383, nil, nil, "Best" },
				{2,28034, nil, nil, "Optional" },
				{3,28288, nil, nil, "Optional" },
				{4,23041, nil, nil, "Classic Option" },
				{5,21670, nil, nil, "Classic Option" },
			},
		},
		{	--Main Hand Weapons
			name = "Main Hand Weapons",
			[NORMAL_DIFF] = {
				{1,28438, nil, nil, "Best" },
				{2,28437, nil, nil, "Easier to Obtain" },
				{3,28295, nil, nil, "Optional" },
				{4,27872, nil, nil, "Orc Racial" },
				{5,29124, nil, nil, "Easier to Obtain" },
				{6,23054, nil, nil, "Classic" },
				
			},
		},
		{	--OffHand Weapons
			name = "OffHand Weapons",
			[NORMAL_DIFF] = {
				{1,28295, nil, nil, "Best" },
				{2,29124, nil, nil, "Best" },
				{3,23542, nil, nil, "Optional" },
				{4,27872, nil, nil, "Orc Racial" },
				{5,28189, nil, nil, "Easy to Obtain" },
				{6,23577, nil, nil, "Classic" },
			},
		},
		{	--2-Handed Weapon
			name = "2-Handed Weapon",
			[NORMAL_DIFF] = {
				{1,28429, nil, nil, "Best" },
				{2,29356, nil, nil, "Optional" },
				{3,28441, nil, nil, "Hammersmith" },
				{4,24550, nil, nil, "Optional" },
				{5,28428, nil, nil, "Easier to Acquire" },
			},
		},
		{	--Guns and Bows
			name = "Guns and Bows",
			[NORMAL_DIFF] = {
				{1,30279, nil, nil, "Best" },
				{2,29211, nil, nil, "Easy To Obtain" },
				{3,22811, nil, nil, "Classic Optional" },
			},
		},
		{	--Shields
			name = "Shields",
			[NORMAL_DIFF] = {
				{1,29176, nil, nil, "Best" },
				{2,28316, nil, nil, "Easy To Obtain" },
				{3,27887, nil, nil, "Easy To Obtain" },
				{4,23043, nil, nil, "Classic" },
			},
		},
		el_Gems,
		el_HeadShoulder,
		el_GearEnchants,
		el_offEnchants,
	},
}