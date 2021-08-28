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

local _FileRole = "DPS"
local _FileClass = "Rogue"
local _FilePrefix = _FileRole.." ".._FileClass

local el_Gems = {	--Extra List : Gems
	name = "Gems",
	ExtraList = true,
	TableType = PROF_ITTYPE,
	[NORMAL_DIFF] = {
		{ 01, "INV_MISC_DESECRATED_LEATHERHELM", nil, "Meta Gem" },
		{ 02, 39961 },	{ 17, 32765 },	
		{ 03,  },	{ 18,  },
		{ 04, "INV_MISC_GEM_01", nil, "Main Gems"},
		{ 05, 31103 },	{ 20, 31098 },
		{ 06, 31085 },	{ 21, 31109 },
	}
}

local el_HeadShoulder = {	--Extra List: Shoulder Items
	name = "Head Glyph & Shoulder Inscription",
	ExtraList = true,
	TableType = NORMAL_ITTYPE,
	[NORMAL_DIFF] = {
		{ 01, "INV_MISC_DESECRATED_LEATHERHELM", nil, "Head Glyph"},
		{ 02, 29192 },
		{ 04, "INV_MISC_DESECRATED_LEATHERSHOULDER", nil, "Shoulder Inscription"},
		{ 05, 23548 },
		{ 06, 28888 },
	}
}

local el_GearEnchants = {	--Extra List: Gear Enchants
	name = "Gear Enchants",
	ExtraList = true,
	TableType = PROF_ITTYPE,
	[NORMAL_DIFF] = {
		{ 01 , "INV_MISC_CAPE_20", nil, "Back" },	
		{ 02, 34004 },
		{ 04, "INV_MISC_DESECRATED_LEATHERCHEST", nil, "Chest" },	{ 19 , "INV_MISC_DESECRATED_LEATHERBRACER", nil, "Wrist" },
		{ 05, 27960 },{ 20, 34002 },
		{ 07 , "INV_MISC_DESECRATED_LEATHERPANTS", nil, "Legs" },{ 22 , "INV_MISC_DESECRATED_LEATHERGLOVE", nil, "Hands" },
		{ 08, 35554 },{ 23, 25080 },
		{ 10 , "INV_MISC_DESECRATED_LEATHERBOOTS", nil, "Feet" },
		{ 11, 34007 },
	},
}

local el_offEnchants = {	--Extra List: Ring/Wep/Sheild Enchants
	name = "Ring/Wep/Sheild Enchants",
	ExtraList = true,
	TableType = PROF_ITTYPE,
	[NORMAL_DIFF] = {
		{ 01, "INV_JEWELRY_RING_23", nil, "Ring Enchant" },
		{ 02, 27927 },	{ 17, 27920 },
		{ 04, "INV_SWORD_65", nil, "Weapon Enchant"},
		{ 05, 27984 },	{ 20, 20034 },
		{ 07, "INV_SHIELD_30", nil, "Ranged Weapon" }, 
		{ 08, 30334 },
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
			name = "Best In Slot Gear",
			[NORMAL_DIFF] = {
				{ 01, 28224 },	{ 16, 29247 },
				{ 02, 29381 },	{ 17, 27837 },	
				{ 03, 27797 },	{ 18, 25686 },
				{ 04, 27878 },	{ 19, 31077 },
				{ 05, 28264 },	{ 20, 30834 },
				{ 06, 28171 },	{ 21, 29383 },
				{ 07, 25685 },	{ 22, 28288 },
				{ 09, 29124 },
				{ 10, 28189 },
				{ 11, 29151 },
			}
		},
		{	--Head Slot
			name = "Head",
			[NORMAL_DIFF] = {
				{1,28224, nil, nil, "Best" },
				{2,32087, nil, nil, "Optional" },
				{3,28182, nil, nil, "Optional" },
			}
		},
		{	--Shoulders
			name = "Shoulders",
			[NORMAL_DIFF] = {
				{1,27797, nil, nil, "Best" },
				{2,25790, nil, nil, "Optional" },
				{3,29148, nil, nil, "Optional" },
				{4,29147, nil, nil, "Optional" },
			},
		},
		{	--Back
			name = "Back",
			[NORMAL_DIFF] = {
				{1,24259, nil, nil, "Best" },
				{2,27878, nil, nil, "Optional" },
				{3,29382, nil, nil, "Optional" },
				{4,28032, nil, nil, "Optional" },
			},
		},
		{	--Chest
			name = "Chest",
			[NORMAL_DIFF] = {
				{1,28264, nil, nil, "Best" },
				{2,29525, nil, nil, "Best" },
				{3,30933, nil, nil, "Optional" },
			},
		},
		{	--Wrist
			name = "Wrist",
			[NORMAL_DIFF] = {
				{1,29246, nil, nil, "Best" },
				{2,29527, nil, nil, "Best" },
				{3,28171, nil, nil, "Optional" },
			},

		},
		{	--Hands
			name = "Hands",
			[NORMAL_DIFF] = {
				{1,25685, nil, nil, "Best" },
				{2,27531, nil, nil, "Best" },
				{3,30003, nil, nil, "Optional" },				
			},
		},
		{	--Waist
			name = "Waist",
			[NORMAL_DIFF] = {
				{1,29247, nil, nil, "Best" },
				{2,29526, nil, nil, "Best" },
				{3,30372, nil, nil, "Optional" },
				{4,31464, nil, nil, "Optional" },
			},
		},
		{	--Legs
			name = "Legs",
			[NORMAL_DIFF] = {
				{1,27837, nil, nil, "Best" },
				{2,25687, nil, nil, "Optional" },
				{3,31544, nil, nil, "Optional" },
			},
		},
		{	--Feet
			name = "Feet",
			[NORMAL_DIFF] = {
				{1,25686, nil, nil, "Best" },
				{2,30939, nil, nil, "Optional" },
			},
		},
		{	--Neck
			name = "Neck",
			[NORMAL_DIFF] = {
				{1,29381, nil, nil, "Best" },
				{2,24114, nil, nil, "Best" },
				{3,25562, nil, nil, "Optional" },
				{4,19377, nil, nil, "Optional" },
			},
		},
		{	--Rings
			name = "Rings",
			[NORMAL_DIFF] = {
				{1,31920, nil, nil, "Best" },
				{2,30834, nil, nil, "Best" },
				{3,31077, nil, nil, "Best" },
				{4,30860, nil, nil, "Best" },
				{5,30973, nil, nil, "Optional" },
				{6,27925, nil, nil, "Optional" },
			},
		},
		{	--Trinkets
			name = "Trinkets",
			[NORMAL_DIFF] = {
				{1,23206, nil, nil, "Best" },
				{2,29383, nil, nil, "Best" },
				{3,28288, nil, nil, "Best" },
				{4,23041, nil, nil, "Optional" },
				{5,22954, nil, nil, "Optional" },
				{6,28034, nil, nil, "Optional" },
				{7,21670, nil, nil, "Optional" },
			},
		},
		{	--Main Hand Weapons
			name = "Main Hand Weapons",
			[NORMAL_DIFF] = {
				{1,28438, nil, nil, "Best" },
				{2,28295, nil, nil, "Best" },
				{3,31332, nil, nil, "Best" },
				{4,29124, nil, nil, "Optional" },
				{5,28312, nil, nil, "Best - Dagger" },
				{6,31331, nil, nil, "Optional - Dagger" },
			},
		},
		{	--Off Hand Weapons
			name = "Off Hand Weapons",
			[NORMAL_DIFF] = {
				{1,28307, nil, nil, "Best" },
				{2,28189, nil, nil, "Best" },
				{3,29275, nil, nil, "Best - Dagger" },
				{4,28310, nil, nil, "Optional - Dagger" },
			},
		},
		{	--Guns and Bows
			name = "Guns and Bows",
			[NORMAL_DIFF] = {
				{1,29152, "INV_BANNERPVP_01", nil, "Best" },{ 16, 29151, "INV_BANNERPVP_02", nil, "Best" },
				{2,30279, nil, nil, "Optional" },
				{3,30227, nil, nil, "Optional" },
			},
		},
		el_Gems,
		el_HeadShoulder,
		el_GearEnchants,
		el_offEnchants,
	},
}