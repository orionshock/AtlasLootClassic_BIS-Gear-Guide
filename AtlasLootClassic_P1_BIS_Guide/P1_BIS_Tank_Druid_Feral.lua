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
		{ 05, 27977 },
	},
}

data[ _FilePrefix ] ={
	name = _FilePrefix,
	ContentType = roleType_Tank,
	LoadDifficulty = LOAD_DIFF,
	TableType = NORMAL_ITTYPE,
	gameVersion = 2,
	items = {
		{
			name = "Mitigation BIS",
			[NORMAL_DIFF] = {
				{ 01, 29098 },	{ 16, 28986 },
				{ 02, 28509 },	{ 17, 29099 },
				{ 03, 29100 },	{ 18, 30674 },
				{ 04, 28660 },	{ 19, 29279 },
				{ 05, 29096 },	{ 20, 28792 },
				{ 06, 28978 },	{ 21, 28830 },
				{ 07, 29097 },	{ 22, 23835 },
				{ 09, 28476 },
				{ 11, 23198 },
			}
		},
		{
			name = "Threat BIS",
			[NORMAL_DIFF] = {
				{ 01, 29098 },	{ 16, 28986 },
				{ 02, 28509 },	{ 17, 29099 },
				{ 03, 29100 },	{ 18, 28987 },
				{ 04, 28672 },	{ 19, 29279 },
				{ 05, 29096 },	{ 20, 30834 },
				{ 06, 28988 },	{ 21, 28830 },
				{ 07, 30644 },	{ 22, 29383 },
				{ 09, 28476 },
				{ 11, 23198 },
			}
		},
		{	--Head Slot
			name = "Head",
			[NORMAL_DIFF] = {
				{1,29098, nil, nil, "Best Overall" },
				{2,28796, nil, nil, "Best Threat" },
				{3,28127, nil, nil, "Mit skewed alternative" },
				{4,32087, nil, nil, "Threat skewed alternative" },
				{5,28732, nil, nil, "Threat skewed alternative" },
			}
		},
		{	--Shoulders
			name = "Shoulders",
			[NORMAL_DIFF] = {
				{1,29100, nil, nil, "Best" },
				{2,28129, nil, nil, "Mit skewed alternative" },
				{3,28755, nil, nil, "Threat skewed alternative" },
				{4,32080, nil, nil, "Alternative" },
				{5,27797, nil, nil, "Alternative" },
			},
		},
		{	--Back
			name = "Back",
			[NORMAL_DIFF] = {
				{1,28660, nil, nil, "Best Mitigation" },
				{2,28672, nil, nil, "Best Threat" },
				{3,28777, nil, nil, "Best Threat (6% hit set)" },
				{4,28256, nil, nil, "Mitigation Alternative" },
				{5,24258, nil, nil, "Mitigation Alternative" },
				{6,29382, nil, nil, "Threat Alternative" },
			},
		},
		{	--Chest
			name = "Chest",
			[NORMAL_DIFF] = {
				{1,29096, nil, nil, "Best" },
				{2,28130, nil, nil, "Mit skewed alternative" },
				{3,29525, nil, nil, "Threat skewed alternative" },
				{4,28601, nil, nil, "Alternative" },
				{5,25689, nil, nil, "Alternative" },
				{6,28264, nil, nil, "Alternative" },
			},
		},
		{	--Wrist
			name = "Wrist",
			[NORMAL_DIFF] = {
				{1,28978, nil, nil, "Best" },
				{2,28445, nil, nil, "Best" },
				{3,28988, nil, nil, "Best" },
				{4,28424, nil, nil, "Best" },
				{5,29263, nil, nil, "Close Second" },
				{6,30944, nil, nil, "Alternative" },
				{7,28514, nil, nil, "Alternative" },
				{8,29246, nil, nil, "Alternative" },
			},

		},
		{	--Hands
			name = "Hands",
			[NORMAL_DIFF] = {
				{1,29097, nil, nil, "Best mit skewed" },
				{2,30644, nil, nil, "Best threat skewed" },
				{3,28506, nil, nil, "Alternative" },
				{4,28776, nil, nil, "Alternative" },
				{5,27531, nil, nil, "Alternative" },
				{6,29503, nil, nil, "Alternative" },
			},
		},
		{	--Waist
			name = "Waist",
			[NORMAL_DIFF] = {
				{1,29264, nil, nil, "Best mit skewed" },
				{2,28828, nil, nil, "Best threat skewed" },
				{3,28750, nil, nil, "Threat skewed alternative" },
				{4,28986, nil, nil, "Best Defense swap" },
				{5,28423, nil, nil, "Best Defense swap" },
				{6,29247, nil, nil, "Alternative" },
				{7,28976, nil, nil, "Alternative" },
				{8,28443, nil, nil, "Alternative" },
			},
		},
		{	--Legs
			name = "Legs",
			[NORMAL_DIFF] = {
				{1,29099, nil, nil, "Best mit skewed" },
				{2,28741, nil, nil, "Best threat skewed" },
				{3,30535, nil, nil, "Alternative" },
				{4,28128, nil, nil, "Alternative" },
				{5,30538, nil, nil, "Alternative" },
			},
		},
		{	--Feet
			name = "Feet",
			[NORMAL_DIFF] = {
				{1,30674, nil, nil, "Best mit skewed" },
				{2,28545, nil, nil, "Best threat skewed" },
				{3,28987, nil, nil, "Best Defense swap" },
				{4,28422, nil, nil, "Best Defense swap" },
				{5,29265, nil, nil, "Alternative" },
				{6,25691, nil, nil, "Recommended Pre-raid Mitigation" },
				{7,28339, nil, nil, "Recommended Pre-raid Threat" },
			},
		},
		{	--Neck
			name = "Neck",
			[NORMAL_DIFF] = {
				{1,28509, nil, nil, "Best" },
				{2,29381, nil, nil, "Best" },
				{3,28674, nil, nil, "Alternative" },
				{4,28745, nil, nil, "Alternative" },
				{5,29386, nil, nil, "Defense Swap" },
				{6,28244, nil, nil, "Defense Swap" },
			},
		},
		{	--Rings
			name = "Rings",
			[NORMAL_DIFF] = {
				{1,29279, nil, nil, "Best" },
				{2,28792, nil, nil, "Best Mitigation" },
				{3,30834, nil, nil, "Best Threat" },
				{4,29384, nil, nil, "Mitigation Alternative" },
				{5,28675, nil, nil, "Mitigation Alternative" },
				{6,28757, nil, nil, "Threat Alternative" },
				{7,28649, nil, nil, "Threat Alternative" },
			},
		},
		{	--Trinkets
			name = "Trinkets",
			[NORMAL_DIFF] = {
				{1,23207, nil, nil, "Best Threat Option" },
				{2,28830, nil, nil, "Best Threat Option" },
				{3,29383, nil, nil, "Best Threat Option" },
				{4,23836, nil, nil, "Best Survivability Option" },
				{5,23835, nil, nil, "Best Survivability Option" },
				{6,13503, nil, nil, "Best Balanced Option" },
				{7,19406, nil, nil, "Best Balanced Option" },
				{8,29181, nil, nil, "Best Defense Swap" },
				{9,23041, nil, nil, "Threat Alternative" },
				{10,28034, nil, nil, "Threat Alternative" },
				{11,28288, nil, nil, "Threat Alternative" },
				{12,27770, nil, nil, "Survivability Alternative" },
				{13,31113, nil, nil, "Survivability Alternative" },
				{14,13966, nil, nil, "Survivability Alternative" },
			},
		},
		{	--Weapons
			name = "Weapons",
			[NORMAL_DIFF] = {
				{1,28658, nil, nil, "Best Overall" },
				{2,28476, nil, nil, "Best Defense Swap" },
				{3,29171, nil, nil, "Best Mitigation" },
				{4,29359, nil, nil, "Alternative" },
				{5,31334, nil, nil, "Alternative" },
			},
		},
		{	--Idols
			name = "Idols",
			[NORMAL_DIFF] = {
				{1,23198, nil, nil, "Best" },
				{2,28064, nil, nil, "Best" },
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