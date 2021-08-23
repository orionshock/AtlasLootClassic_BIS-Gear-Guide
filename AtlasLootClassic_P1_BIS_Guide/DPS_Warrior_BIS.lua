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
			name = "BiS Example for Arms",
			[NORMAL_DIFF] = {
				{ 01, 29021 },	{ 16, 28779 },
				{ 02, 29349 },	{ 17, 28741 },
				{ 03, 29023 },	{ 18, 28608 },
				{ 04, 24259 },	{ 19, 28757 },
				{ 05, 29019 },	{ 20, 28730 },
				{ 06, 28795 },	{ 21, 29383 },
				{ 07, 28824 },	{ 22, 28034 },
				{ 09, 28429 },
				{ 11, 30279 },
			}
		},
		{
			name = "BiS Example for Fury",
			[NORMAL_DIFF] = {
				{ 01, 29021 },	{ 16, 28779 },
				{ 02, 29381 },	{ 17, 28741 },
				{ 03, 29023 },	{ 18, 28608 },
				{ 04, 24259 },	{ 19, 28757 },
				{ 05, 29019 },	{ 20, 30834 },
				{ 06, 28795 },	{ 21, 29383 },
				{ 07, 28824 },	{ 22, 28830 },
				{ 09, 28438 },
				{ 10, 28729 },
				{ 11, 30279 },
			}
		},
		{	--Head Slot
			name = "Head",
			[NORMAL_DIFF] = {
				{1,29021, nil, nil, "Best" },
				{2,32087, nil, nil, "Pre-raid Best" },
				{3,28182, nil, nil, "Easy To Obtain" },
				{4,31105, nil, nil, "Easy To Obtain" },
			}
		},
		{	--Shoulders
			name = "Shoulders",
			[NORMAL_DIFF] = {
				{1,29023, nil, nil, "Best" },
				{2,30740, nil, nil, "World Boss Best" },
				{3,33173, nil, nil, "Crafted Best" },
				{4,27797, nil, nil, "Optional" },
				{5,27434, nil, nil, "Optional" },
			},
		},
		{	--Back
			name = "Back",
			[NORMAL_DIFF] = {
				{1,24259, nil, nil, "Best" },
				{2,30729, nil, nil, "World Boss Best" },
				{3,28672, nil, nil, "Karazhan Optional" },
				{4,27878, nil, nil, "Optional" },
				{5,27892, nil, nil, "Easy To Obtain" },
			},
		},
		{	--Chest
			name = "Chest",
			[NORMAL_DIFF] = {
				{1,29019, nil, nil, "Best" },
				{2,30730, nil, nil, "World Boss Best" },
				{3,23522, nil, nil, "Crafted Option" },
				{4,24544, nil, nil, "Optional" },
				{5,31548, nil, nil, "Easy To Obtain" },
			},
		},
		{	--Wrist
			name = "Wrist",
			[NORMAL_DIFF] = {
				{1,28795, nil, nil, "Best" },
				{2,23537, nil, nil, "Optional" },
				{3,28381, nil, nil, "Optional" },
				{4,28171, nil, nil, "Easy To Obtain" },
				{5,30399, nil, nil, "Easy To Obtain" },
			},

		},
		{	--Hands
			name = "Hands",
			[NORMAL_DIFF] = {
				{1,28824, nil, nil, "Best" },
				{2,30644, nil, nil, "Karazhan Option" },
				{3,29020, nil, nil, "Karazhan Option" },
				{4,25685, nil, nil, "Crafted Best" },
				{5,27497, nil, nil, "Dungeon Optional" },
			},
		},
		{	--Waist
			name = "Waist",
			[NORMAL_DIFF] = {
				{1,28779, nil, nil, "Best" },
				{2,28828, nil, nil, "Raid Option" },
				{3,27985, nil, nil, "Dungeon Optional" },
				{4,29247, nil, nil, "Optional" },
			},
		},
		{	--Legs
			name = "Legs",
			[NORMAL_DIFF] = {
				{1,30739, nil, nil, "Best" },
				{2,28741, nil, nil, "Raid Best" },
				{3,29022, nil, nil, "Raid Alternative" },
				{4,30538, nil, nil, "Dungeon Best" },
				{5,25687, nil, nil, "Crafted Optional" },
				{6,31544, nil, nil, "Easy to Obtain" },
			},
		},
		{	--Feet
			name = "Feet",
			[NORMAL_DIFF] = {
				{1,28608, nil, nil, "Best" },
				{2,25686, nil, nil, "Crafted Best" },
				{3,28545, nil, nil, "Optional" },
				{4,27867, nil, nil, "Optional" },
				{5,30401, nil, nil, "Easy To Obtain" },
			},
		},
		{	--Neck
			name = "Neck",
			[NORMAL_DIFF] = {
				{1,29381, nil, nil, "Best" },
				{2,29349, nil, nil, "Arms Best" },
				{3,28509, nil, nil, "Optional" },
				{4,31695, nil, nil, "Easy To Obtain" },
				{5,27546, nil, nil, "Optional" },
			},
		},
		{	--Rings
			name = "Rings",
			[NORMAL_DIFF] = {
				{1,30738, nil, nil, "World Boss Best" },
				{2,28757, nil, nil, "Best" },
				{3,28730, nil, nil, "Arms Best" },
				{4,30834, nil, nil, "Reputation Option" },
				{5,28649, nil, nil, "Raid Option" },
				{6,29283, nil, nil, "Reputation Option" },
				{7,29379, nil, nil, "Optional" },
				{8,28323, nil, nil, "Optional" },
			},
		},
		{	--Trinkets
			name = "Trinkets",
			[NORMAL_DIFF] = {
				{1,28830, nil, nil, "Best" },
				{2,29383, nil, nil, "Best" },
				{3,28034, nil, nil, "Optional" },
				{4,28288, nil, nil, "Optional" },
				{5,21670, nil, nil, "Classic Option" },
			},
		},
		{	--Main Hand Weapons
			name = "Main Hand Weapons",
			[NORMAL_DIFF] = {
				{1,28438, nil, nil, "Best" },
				{2,28437, nil, nil, "Easier to Obtain" },
				{3,28295, nil, nil, "Optional" },
				{4,28657, nil, nil, "Human Racial" },
				{5,28767, nil, nil, "Orc Racial" },
				{6,23054, nil, nil, "Classic" },
			},
		},
		{	--Off Hand Weapons
			name = "Off Hand Weapons",
			[NORMAL_DIFF] = {
				{1,28295, nil, nil, "Best" },
				{2,28729, nil, nil, "Best" },
				{3,30733, nil, nil, "World Boss Best" },
				{4,23542, nil, nil, "Orc Racial" },
				{5,29124, nil, nil, "Optional" },
			},
		},
		{	--2-Handed Weapon
			name = "2-Handed Weapon",
			[NORMAL_DIFF] = {
				{1,28429, nil, nil, "Best" },
				{2,28573, nil, nil, "Optional" },
				{3,28773, nil, nil, "Orc Optional" },
				{4,28441, nil, nil, "Hammersmith" },
				{5,24550, nil, nil, "Optional" },
				{6,28428, nil, nil, "Easier to Acquire" },
			},
		},
		{	--Guns and Bows
			name = "Guns and Bows",
			[NORMAL_DIFF] = {
				{1,30724, nil, nil, "Best" },
				{2,28772, nil, nil, "Best" },
				{3,30279, nil, nil, "Best" },
				{4,29211, nil, nil, "Easy To Obtain" },
				{5,22811, nil, nil, "Classic Optional" },
			},
		},
		{	--Shields
			name = "Shields",
			[NORMAL_DIFF] = {
				{1,28825, nil, nil, "Best" },
				{2,28358, nil, nil, "Best" },
				{3,28606, nil, nil, "Best" },
				{4,29266, nil, nil, "Optional" },
				{5,29176, nil, nil, "Optional" },
				{6,28316, nil, nil, "Easy To Obtain" },
				{7,27887, nil, nil, "Easy To Obtain" },
				{8,23043, nil, nil, "Classic Optional" },
			},
		},
		el_Gems,
		el_HeadShoulder,
		el_GearEnchants,
		el_offEnchants,
	},
}