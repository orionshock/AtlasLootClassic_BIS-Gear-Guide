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

local _FileRole = "Feral(Bear)"
local _FileClass = "Druid"
local _FilePrefix = _FileRole.." ".._FileClass

local el_Gems = {	--Extra List : Gems
	name = "Gems",
	ExtraList = true,
	TableType = PROF_ITTYPE,
	[NORMAL_DIFF] = {
		{ 01, "INV_MISC_DESECRATED_LEATHERHELM", nil, "Meta Gem" },
		{ 02, 39961 },	{ 17, 32765 },
		{ 04, "INV_MISC_GEM_01", nil, "Various"},
		{ 05, 31092 },	{ 20, 31085 },
		{ 06, 31113 },	{ 21, 31109 },
		{ 07, 31103 },
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
		{ 05, 20077 },
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
		{ 05, 27960 },	{ 20, 27914 },
		{ 07 , "INV_MISC_DESECRATED_LEATHERPANTS", nil, "Legs" },	{ 22 , "INV_MISC_DESECRATED_LEATHERGLOVE", nil, "Hands" },
		{ 08, 35555 },	{ 23, 25072 },
		{ 10 , "INV_MISC_DESECRATED_LEATHERBOOTS", nil, "Feet" },	
		{ 11, 34008 },	
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
		{ 05, 27977 },	},
}

data[ _FilePrefix ] ={
	name = _FilePrefix,
	ContentType = roleType_Tank,
	LoadDifficulty = LOAD_DIFF,
	TableType = NORMAL_ITTYPE,
	gameVersion = 2,
	items = {
		{
			name = "Karazhan Prep - Mitigation",
			[NORMAL_DIFF] = {
				{ 01, 28182 },	{ 16, 28986 },
				{ 02, 29815 },	{ 17, 25690 },
				{ 03, 27776 },	{ 18, 25691 },
				{ 04, 28256 },	{ 19, 27436 },
				{ 05, 25689 },	{ 20, 30834 },
				{ 06, 28978 },	{ 21, 23835 },
				{ 07, 30943 },	{ 22, 19406 },
				{ 09, 29171 },
				{ 11, 23198 },
			}
		},
		{
			name = "Karazhan Prep - Threat",
			[NORMAL_DIFF] = {
				{ 01, 28182 },	{ 16, 28986 },
				{ 02, 29815 },	{ 17, 31544 },
				{ 03, 27434 },	{ 18, 28339 },
				{ 04, 28256 },	{ 19, 27925 },
				{ 05, 23226 },	{ 20, 30834 },
				{ 06, 28978 },	{ 21, 28034 },
				{ 07, 30341 },	{ 22, 28288 },
				{ 09, 29171 },
				{ 11, 23198 },
			}
		},
		{	--Head Slot
			name = "Head",
			[NORMAL_DIFF] = {
				{1,28182, 28556, nil, "Recommended Pre-raid" },
				{2,28127, nil, nil, "Best mit skewed" },
				{3,32087, nil, nil, "Best threat skewed" },
				{4,32088, nil, nil, "Alternative" },
				{5,29502, nil, nil, "Alternative" },
				{6,28224, nil, nil, "Alternative" },
				{7,31109, nil, nil, "Pre-raid Alternative" },
			}
		},
		{	--Shoulders
			name = "Shoulders",
			[NORMAL_DIFF] = {
				{1,27434, nil, nil, "Recommended Pre-raid" },
				{2,27776, nil, nil, "Recommended Pre-raid" },
				{3,28129, nil, nil, "BiS" },
				{4,32080, nil, nil, "Alternative" },
				{5,27797, nil, nil, "Alternative" },
				{6,28622, nil, nil, "Pre-raid Alternative" },
				{7,28814, nil, nil, "Pre-raid Alternative" },
			},
		},
		{	--Back
			name = "Back",
			[NORMAL_DIFF] = {
				{1,28256, nil, nil, "BiS" },
				{2,24258, nil, nil, "Second Best" },
				{3,29385, nil, nil, "Mit skewed alternative" },
				{4,29382, nil, nil, "Threat skewed alternative" },
				{5,24379, nil, nil, "Pre-raid Alternative" },
				{6,28377, nil, nil, "Pre-raid Alternative" },
				{7,29777, nil, nil, "Pre-raid Alternative" },
			},
		},
		{	--Chest
			name = "Chest",
			[NORMAL_DIFF] = {
				{1,25689, nil, nil, "Recommended Pre-raid" },
				{2,28130, nil, nil, "BiS" },
				{3,29525, nil, nil, "Alternative" },
				{4,28264, nil, nil, "Alternative" },
				{5,23226, nil, nil, "Pre-raid Alternative" },
			},
		},
		{	--Wrist
			name = "Wrist",
			[NORMAL_DIFF] = {
				{1,28978, nil, nil, "BiS" },
				{2,28445, nil, nil, "BiS" },
				{3,28988, nil, nil, "BiS" },
				{4,28424, nil, nil, "BiS" },
				{5,29263, nil, nil, "Close Second" },
				{6,30944, nil, nil, "Alternative" },
				{7,29246, nil, nil, "Alternative" },
				{8,29527, nil, nil, "Alternative" },
				{9,28171, nil, nil, "Alternative" },
			},

		},
		{	--Hands
			name = "Hands",
			[NORMAL_DIFF] = {
				{1,30943, nil, nil, "Best mit skewed" },
				{2,29507, nil, nil, "Best threat skewed" },
				{3,29503, nil, nil, "Best threat skewed" },
				{4,28126, nil, nil, "Alternative" },
				{5,27531, nil, nil, "Pre-raid Alternative" },
				{6,30341, nil, nil, "Pre-raid Alternative" },
				{7,28396, nil, nil, "Pre-raid Alternative" },
			},
		},
		{	--Waist
			name = "Waist",
			[NORMAL_DIFF] = {
				{1,28986, nil, nil, "Recommended Pre-raid" },
				{2,28423, nil, nil, "Recommended Pre-raid" },
				{3,29264, nil, nil, "BiS" },
				{4,29247, nil, nil, "Threat skewed alternative" },
				{5,28976, nil, nil, "Mit skewed alternative" },
				{6,28443, nil, nil, "Mit skewed alternative" },
				{7,30942, nil, nil, "Easy to Obtain" },
			},
		},
		{	--Legs
			name = "Legs",
			[NORMAL_DIFF] = {
				{1,25690, nil, nil, "Recommended Pre-raid Mitigation" },
				{2,31544, nil, nil, "Recommended Pre-raid Threat" },
				{3,30535, nil, nil, "BiS" },
				{4,28128, nil, nil, "Mit skewed alternative" },
				{5,30538, nil, nil, "Threat skewed alternative" },
				{6,30941, nil, nil, "Pre-raid mit skewed alternative" },
				{7,30257, nil, nil, "Pre-raid threat skewed alternative" },
			},
		},
		{	--Feet
			name = "Feet",
			[NORMAL_DIFF] = {
				{1,25691, nil, nil, "Recommended Pre-raid Mitigation" },
				{2,28339, nil, nil, "Recommended Pre-raid Threat" },
				{3,29265, nil, nil, "BiS" },
				{4,28987, nil, nil, "Alternative" },
				{5,28422, nil, nil, "Alternative" },
				{6,29248, nil, nil, "Alternative" },
				{7,31532, nil, nil, "Pre-raid Alternative" },
				{8,19381, nil, nil, "Pre-raid Alternative" },
			},
		},
		{	--Neck
			name = "Neck",
			[NORMAL_DIFF] = {
				{1,29815, nil, nil, "Recommended Pre-raid" },
				{2,28168, nil, nil, "Horde Recommended Pre-raid" },
				{3,29381, nil, nil, "BiS" },
				{4,28244, nil, nil, "Alternative" },
				{5,27779, nil, nil, "Alternative" },
				{6,28343, nil, nil, "Pre-raid Alternative" },
				{7,31727, nil, nil, "Pre-raid Alternative" },
			},
		},
		{	--Rings
			name = "Rings",
			[NORMAL_DIFF] = {
				{1,30834, nil, nil, "Recommended Pre-raid" },
				{2,27436, nil, nil, "Recommended Pre-raid Mitigation" },
				{3,29177, nil, nil, "Recommended Pre-raid Threat" },
				{4,29384, nil, nil, "BiS" },
				{5,28211, nil, nil, "Mit skewed alternative" },
				{6,29379, nil, nil, "Threat skewed alternative" },
				{7,23018, nil, nil, "Pre-raid Alternative" },
				{8,29128, nil, nil, "Aldor Pre-raid Alternative" },
				{9,27925, nil, nil, "Pre-raid Alternative" },
			},
		},
		{	--Trinkets
			name = "Trinkets",
			[NORMAL_DIFF] = {
				{1,23207, nil, nil, "Best Threat Option" },
				{2,29383, nil, nil, "Best Threat Option" },
				{3,23836, nil, nil, "Best Survivability Option" },
				{4,23835, nil, nil, "Best Survivability Option" },
				{5,13503, nil, nil, "Best Balanced Option" },
				{6,23041, nil, nil, "Threat Alternative" },
				{7,19406, nil, nil, "Threat Alternative" },
				{8,28034, nil, nil, "Threat Alternative" },
				{9,28288, nil, nil, "Threat Alternative" },
				{10,27770, nil, nil, "Survivability Alternative" },
				{11,13966, nil, nil, "Survivability Alternative" },
				{12,29181, nil, nil, "Survivability Alternative" },
			},
		},
		{	--Weapons
			name = "Weapons",
			[NORMAL_DIFF] = {
				{1,29171, nil, nil, "Best mit skewed" },
				{2,28476, nil, nil, "Best threat skewed" },
				{3,29359, nil, nil, "Alternative" },
				{4,31334, nil, nil, "Alternative" },
				{5,27757, nil, nil, "Alternative" },
				{6,27877, nil, nil, "Alternative" },
				{7,28948, nil, nil, "Pre-raid Alternative" },
				{8,28919, nil, nil, "Pre-raid Alternative" },
				{9,30010, nil, nil, "Pre-raid Alternative" },
				{10,28325, nil, nil, "Pre-raid Alternative" },
			},
		},
		{	--Idols
			name = "Idols",
			[NORMAL_DIFF] = {
				{1,23198, nil, nil, "BiS" },
				{2,28064, nil, nil, "BiS" },
				{3,33945, nil, nil, "Situational" },
				{4,27744, nil, nil, "Distant Second" },
			},
		},
		el_Gems,
		el_HeadShoulder,
		el_GearEnchants,
		el_offEnchants,
	},
}