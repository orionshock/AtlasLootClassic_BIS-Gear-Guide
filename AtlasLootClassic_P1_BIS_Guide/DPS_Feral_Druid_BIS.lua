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

local _FileRole = "Feral(Cat)"
local _FileClass = "Druid"
local _FilePrefix = _FileRole.." ".._FileClass

local el_Gems = {	--Extra List : Gems
	name = "Gems",
	ExtraList = true,
	TableType = PROF_ITTYPE,
	[NORMAL_DIFF] = {
		{ 01, "INV_MISC_GEM_01", nil, "Primary"},
		{ 02, 31085 },
		
		{ 04, "INV_MISC_GEM_03", nil, "Meta Fit"},
		{ 05, 31109 },
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
		{ 06, 28888 },	{ 21, 28910 },
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
		{ 05, 27960 },	{ 20, 27899 },
		{ 07 , "INV_MISC_DESECRATED_LEATHERPANTS", nil, "Legs" },	{ 22 , "INV_MISC_DESECRATED_LEATHERGLOVE", nil, "Hands" },
		{ 08, 35549 },	{ 23, 25080 },
		{ 09, 35554 },	
		{ 11 , "INV_MISC_DESECRATED_LEATHERBOOTS", nil, "Feet" },	
		{ 12, 34007 },	
	},
}

local el_offEnchants = {	--Extra List: Ring/Wep/Sheild Enchants
	name = "Ring/Wep/Sheild Enchants",
	ExtraList = true,
	TableType = PROF_ITTYPE,
	[NORMAL_DIFF] = {
		{ 01, "INV_JEWELRY_RING_23", nil, "Ring Enchant" },
		{ 02, 27920 },
		{ 04, "INV_SWORD_65", nil, "Weapon Enchant"},
		{ 05, 27977 },

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
			name = "BIS with out Faerie Fire",
			[NORMAL_DIFF] = {
				{ 01, 8345 },	{ 16, 28750 },
				{ 02, 24114 },	{ 17, 28741 },
				{ 03, 29100 },	{ 18, 28545 },
				{ 04, 28672 },	{ 19, 28649 },
				{ 05, 29096 },	{ 20, 30834 },
				{ 06, 29246 },	{ 21, 28830 },
				{ 07, 28506 },	{ 22, 29383 },
				{ 09, 28658 },
				{ 11, 29390 },
			}
		},
		{
			name = "BIS with Faerie Fire",
			[NORMAL_DIFF] = {
				{ 01, 8345 },	{ 16, 28750 },
				{ 02, 24114 },	{ 17, 28741 },
				{ 03, 29100 },	{ 18, 28545 },
				{ 04, 24259 },	{ 19, 28791 },
				{ 05, 29096 },	{ 20, 30834 },
				{ 06, 29246 },	{ 21, 28830 },
				{ 07, 28506 },	{ 22, 29383 },
				{ 09, 28476 },
				{ 11, 29390 },
			}
		},
		{	--Head Slot
			name = "Head",
			[NORMAL_DIFF] = {
				{1, 8345, nil, nil, "Still BIS"}
			}
		},
		{	--Shoulders
			name = "Shoulders",
			[NORMAL_DIFF] = {
				{1,29100, nil, nil, "BiS" },
				{2,27797, nil, nil, "Close Second" },
				{3,25790, nil, nil, "Alliance Alternative" },
				{4,28755, nil, nil, "Alternative" },
				{5,27434, nil, nil, "Alternative" },
			},
		},
		{	--Back
			name = "Back",
			[NORMAL_DIFF] = {
				{1,28672, nil, nil, "BiS" },
				{2,24259, nil, nil, "Best in 5% hit set" },
				{3,31255, nil, nil, "Alternative" },
				{4,27878, nil, nil, "Alternative" },
				{5,29382, nil, nil, "Alternative in 5% hit set" },
			},
		},
		{	--Chest
			name = "Chest",
			[NORMAL_DIFF] = {
				{1,29096, nil, nil, "BiS" },
				{2,30730, nil, nil, "Alternative" },
				{3,28601, nil, nil, "Alternative" },
				{4,29525, nil, nil, "Alternative" },
				{5,24396, nil, nil, "Alternative" },
			},
		},
		{	--Wrist
			name = "Wrist",
			[NORMAL_DIFF] = {
				{1,29246, nil, nil, "Recommended" },
				{2,30685, nil, nil, "of the Tiger, Best (unrealistic)" },
				{3,30685, nil, nil, "of Agility, Alternative (unrealistic)" },
				{4,28171, nil, nil, "Recommended Alternative" },
				{5,21602, nil, nil, "Recommended Alternative" },
			},

		},
		{	--Hands
			name = "Hands",
			[NORMAL_DIFF] = {
				{1,28506, nil, nil, "BiS" },
				{2,30644, nil, nil, "Close Second" },
				{3,29507, nil, nil, "Alternative" },
				{4,25685, nil, nil, "Alternative" },
				{5,27509, nil, nil, "Recommended Pre-raid" },
			},
		},
		{	--Waist
			name = "Waist",
			[NORMAL_DIFF] = {
				{1,29247, nil, nil, "Best Individually" },
				{2,30676, nil, nil, "of the Tiger, Best in 9% hit set (unrealistic)" },
				{3,28750, nil, nil, "Recommended in 9% hit set" },
				{4,28828, nil, nil, "Recommended in 9% hit set" },
				{5,30372, nil, nil, "Scryer Alternative" },
				{6,27911, nil, nil, "Alternative" },
				{7,31464, nil, nil, "Alternative" },
				{8,27760, nil, nil, "Alternative" },
			},
		},
		{	--Legs
			name = "Legs",
			[NORMAL_DIFF] = {
				{1,28741, nil, nil, "BiS" },
				{2,31544, nil, nil, "Alternative" },
				{3,27837, nil, nil, "Alternative" },
				{4,25687, nil, nil, "Alternative" },
				{5,30538, nil, nil, "Alternative" },
			},
		},
		{	--Feet
			name = "Feet",
			[NORMAL_DIFF] = {
				{1,28545, nil, nil, "BiS" },
				{2,25686, nil, nil, "Alternative" },
				{3,31288, nil, nil, "Alternative" },
				{4,29248, nil, nil, "Alternative" },
				{5,30939, nil, nil, "Alternative" },
			},
		},
		{	--Neck
			name = "Neck",
			[NORMAL_DIFF] = {
				{1,24114, nil, nil, "BiS" },
				{2,29381, nil, nil, "Best budget option" },
				{3,29119, nil, nil, "Best budget option in 6% hit set" },
				{4,28509, nil, nil, "Alternative" },
				{5,31275, nil, nil, "Alternative" },
				{6,27779, nil, nil, "Alternative" },
				{7,28745, nil, nil, "Alternative in 6% hit set" },
			},
		},
		{	--Rings
			name = "Rings",
			[NORMAL_DIFF] = {
				{1,30834, nil, nil, "BiS" },
				{2,28649, nil, nil, "Best in 9% hit set" },
				{3,28791, nil, nil, "Best in 6% hit set" },
				{4,28757, nil, nil, "Alternative" },
				{5,30738, nil, nil, "Alternative" },
				{6,30365, nil, nil, "Aldor Alternative" },
				{7,29283, nil, nil, "Alternative" },
				{8,27925, nil, nil, "Alternative" },
			},
		},
		{	--Trinkets
			name = "Trinkets",
			[NORMAL_DIFF] = {
				{1,23207, nil, nil, "BiS" },
				{2,28830, nil, nil, "BiS" },
				{3,29383, nil, nil, "BiS" },
				{4,23041, nil, nil, "Alternative" },
				{5,28034, nil, nil, "Alternative" },
				{6,19406, nil, nil, "Alternative" },
				{7,28121, nil, nil, "Alternative" },
			},
		},
		{	--Weapons
			name = "Weapons",
			[NORMAL_DIFF] = {
				{1,28658, nil, nil, "BiS" },
				{2,28476, nil, nil, "Best in 6% hit set" },
				{3,29359, nil, nil, "Alternative" },
				{4,31334, nil, nil, "Alternative" },
				{5,29171, nil, nil, "Alternative" },
				{6,27877, nil, nil, "Alternative" },
			},
		},
		{	--Idols
			name = "Idols",
			[NORMAL_DIFF] = {
				{1,29390, nil, nil, "BiS" },
				{2,28372, nil, nil, "Recommended Pre-raid" },
				{3,28064, nil, nil, "Pre-raid Alternative" },
			},
		},
		el_Gems,
		el_HeadShoulder,
		el_GearEnchants,
		el_offEnchants,
	},
}