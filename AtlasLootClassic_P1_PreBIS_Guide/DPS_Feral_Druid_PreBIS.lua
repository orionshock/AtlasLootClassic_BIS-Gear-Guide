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
		{ 05, 28888 },	{ 20, 28910 },
		{ 06, 20077 },
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
			name = "Karazhan - Pre Raid BIS",
			[NORMAL_DIFF] = {
				{ 01, 8345 },	{ 16, 31464 },
				{ 02, 24114 },	{ 17, 31544 },
				{ 03, 27776 },	{ 18, 25686 },
				{ 04, 31255 },	{ 19, 27925 },
				{ 05, 24396 },	{ 20, 30834 },
				{ 06, 28988 },	{ 21, 23041 },
				{ 07, 28396 },	{ 22, 28034 },
				{ 09, 31334 },
				{ 11, 28372 },
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
				{1,25790, nil, nil, "Easy to Acquire, Alliance only" },
				{2,27434, nil, nil, "Horde Alternative" },
				{3,27776, nil, nil, "Horde Alternative" },
				{4,27797, nil, nil, "BiS" },
				{5,27995, nil, nil, "Pre-raid Alternative" },
			},
		},
		{	--Back
			name = "Back",
			[NORMAL_DIFF] = {
				{1,31255, nil, nil, "BiS" },
				{2,27878, nil, nil, "Alternative" },
				{3,28031, nil, nil, "Alliance Alternative" },
				{4,28032, nil, nil, "Alliance Alternative" },
				{5,28249, nil, nil, "Alternative" },
			},
		},
		{	--Chest
			name = "Chest",
			[NORMAL_DIFF] = {
				{1,28204, nil, nil, "Easy to Acquire" },
				{2,24396, nil, nil, "Easy to Acquire, Over Hit" },
				{3,29525, nil, nil, "BiS, Very expensive" },
				{4,28264, nil, nil, "Alternative" },
				{5,27461, nil, nil, "Alternative" },
			},
		},
		{	--Wrist
			name = "Wrist",
			[NORMAL_DIFF] = {
				{1,28988, nil, nil, "Easy to acquire" },
				{2,28424, nil, nil, "Easy to acquire" },
				{3,28171, nil, nil, "Over Hit" },
				{4,29246, nil, nil, "BiS" },
				{5,29527, nil, nil, "Alternative" },
				{6,21602, nil, nil, "Alternative" },
			},

		},
		{	--Hands
			name = "Hands",
			[NORMAL_DIFF] = {
				{1,28396, nil, nil, "Easy to acquire" },
				{2,25685, nil, nil, "Over Hit" },
				{3,27509, nil, nil, "Over Hit" },
				{4,29507, nil, nil, "BiS" },
				{5,27531, nil, nil, "Alternative" },
			},
		},
		{	--Waist
			name = "Waist",
			[NORMAL_DIFF] = {
				{1,30372, nil, nil, "Easy to Acquire, Scryer only" },
				{2,31464, nil, nil, "Aldor Alternative" },
				{3,29247, nil, nil, "BiS" },
				{4,27760, nil, nil, "Alternative" },
				{5,27911, nil, nil, "Alternative" },
			},
		},
		{	--Legs
			name = "Legs",
			[NORMAL_DIFF] = {
				{1,31544, nil, nil, "BiS" },
				{2,27837, nil, nil, "Alternative" },
				{3,25687, nil, nil, "Alternative" },
				{4,30538, nil, nil, "Alternative" },
				{5,30535, nil, nil, "Alternative" },
			},
		},
		{	--Feet
			name = "Feet",
			[NORMAL_DIFF] = {
				{1,25686, nil, nil, "BiS" },
				{2,31288, nil, nil, "Alternative" },
				{3,29248, nil, nil, "Alternative" },
				{4,30939, nil, nil, "Alternative" },
				{5,28987, nil, nil, "Alternative" },
				{6,28422, nil, nil, "Alternative" },
			},
		},
		{	--Neck
			name = "Neck",
			[NORMAL_DIFF] = {
				{1,24114, nil, nil, "BiS" },
				{2,31275, nil, nil, "Pre-raid Budget Option" },
				{3,29381, nil, nil, "Best Budget Option" },
				{4,29119, nil, nil, "Alternative" },
				{5,27779, nil, nil, "Alternative" },
				{6,19377, nil, nil, "Pre-raid Alternative" },
				{7,25562, nil, nil, "Pre-raid Alternative" },
			},
		},
		{	--Rings
			name = "Rings",
			[NORMAL_DIFF] = {
				{1,30365, nil, nil, "BiS, Aldor only" },
				{2,30834, nil, nil, "BiS" },
				{3,27925, nil, nil, "Scryer Alternative" },
				{4,30860, nil, nil, "Close Second, Aldor only" },
				{5,31077, nil, nil, "Scryer Alternative" },				
			},
		},
		{	--Trinkets
			name = "Trinkets",
			[NORMAL_DIFF] = {
				{1,23207, nil, nil, "BiS" },
				{2,29383, nil, nil, "BiS" },
				{3,23041, nil, nil, "BiS" },
				{4,28034, nil, nil, "Close Second" },
				{5,28121, nil, nil, "Close Second" },
				{6,19406, nil, nil, "Close Second" },
				{7,29776, nil, nil, "Alliance Alternative" },
				{8,28288, nil, nil, "Alternative" },
			},
		},
		{	--Trinkets 2
			name = "Weapons",
			[NORMAL_DIFF] = {
				{1,31334, nil, nil, "Easy to acquire" },
				{2,28476, nil, nil, "BiS" },
				{3,29359, nil, nil, "Alternative" },
				{4,29171, nil, nil, "Alternative" },
				{5,27877, nil, nil, "Alternative" },
				{6,28325, nil, nil, "Pre-raid Alternative" },
				{7,30010, nil, nil, "Pre-raid Alternative" },
				{8,28948, nil, nil, "Pre-raid Alternative" },
				{9,28919, nil, nil, "Pre-raid Alternative" },
			},
		},
		{	--Trinkets 3
			name = "Idols",
			[NORMAL_DIFF] = {
				{1,28372, nil, nil, "Recommended Pre-raid" },
				{2,29390, nil, nil, "BiS" },
				{3,28064, nil, nil, "Pre-raid Alternative" },
			},
		},
		el_Gems,
		el_HeadShoulder,
		el_GearEnchants,
		el_offEnchants,
	},
}