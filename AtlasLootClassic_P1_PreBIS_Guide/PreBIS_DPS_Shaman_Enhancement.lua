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

local _FileRole = "Enhancement"
local _FileClass = "Shaman"
local _FilePrefix = _FileRole.." ".._FileClass

local el_Gems = {	--Extra List : Gems
	name = "Gems",
	ExtraList = true,
	TableType = PROF_ITTYPE,
	[NORMAL_DIFF] = {
		{ 01, "INV_MISC_DESECRATED_MAILHELM", nil, "Meta Gem" },
		{ 02, 39961 },	{ 17, 32765 },
		{ 04, "INV_MISC_GEM_01", nil, "Primary"},
		{ 05, 31084 },	{ 20,  },
		{ 07, "INV_MISC_GEM_03", nil, "Meta Fit"},
		{ 08, 31102 },
		{ 09, 31106 },
	}
}

local el_HeadShoulder = {	--Extra List: Shoulder Items
	name = "Head Glyph & Shoulder Inscription",
	ExtraList = true,
	TableType = NORMAL_ITTYPE,
	[NORMAL_DIFF] = {
		{ 01, "INV_MISC_DESECRATED_MAILHELM", nil, "Head Glyph"},
		{ 02, 29192 },
		{ 04, "INV_MISC_DESECRATED_MAILSHOULDER", nil, "Shoulder Inscription"},
		{ 05, 28888 },	{ 20, 28910 },
	}
}

local el_GearEnchants = {	--Extra List: Gear Enchants
	name = "Gear Enchants",
	ExtraList = true,
	TableType = PROF_ITTYPE,
	[NORMAL_DIFF] = {
		{ 01 , "INV_MISC_CAPE_20", nil, "Back" },
		{ 02, 46505 },
		{ 04, "INV_MISC_DESECRATED_MAILCHEST", nil, "Chest" },	{ 19 , "INV_MISC_DESECRATED_MAILBRACER", nil, "Wrist" },
		{ 05, 27960 },	{ 20, 46493 },
		{ 07 , "INV_MISC_DESECRATED_MAILPANTS", nil, "Legs" },	{ 22 , "INV_MISC_DESECRATED_MAILGLOVE", nil, "Hands" },
		{ 08, 35554 },	{ 23, 46515 },
		{ 10 , "INV_MISC_DESECRATED_MAILBOOTS", nil, "Feet" },
		{ 11, 34007 },
	},
}

local el_offEnchants = {	--Extra List: Ring/Wep/Sheild Enchants
	name = "Ring/Wep/Sheild Enchants",
	ExtraList = true,
	TableType = PROF_ITTYPE,
	[NORMAL_DIFF] = {
		{ 01, "INV_JEWELRY_RING_23", nil, "Ring Enchant" },
		{ 02, 27927 },
		{ 04, "INV_SWORD_65", nil, "Weapon Enchant"},
		{ 05, 27984 },
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
			name = "Pre-Raid Gear",
			[NORMAL_DIFF] = {
				{ 01, 28224 },	{ 16, 29516 },
				{ 02, 29381 },	{ 17, 31544 },
				{ 03, 27797 },	{ 18, 25686 },
				{ 04, 24259 },	{ 19, 30834 },
				{ 05, 29515 },	{ 20, 30365 },
				{ 06, 29517 },	{ 21, 28288 },
				{ 07, 25685 },	{ 22, 29383 },
				{ 09, 29348 },
				{ 10, 27872 },
				{ 11, 27815 },
			}
		},
		{	--Head Slot
			name = "Head",
			[NORMAL_DIFF] = {
				{1,32087, nil, nil, "Best" },
				{2,28224, nil, nil, "Best" },
				{3,28182, nil, nil, "Optional" },
				{4,31109, nil, nil, "Optional" },
			}
		},
		{	--Shoulders
			name = "Shoulders",
			[NORMAL_DIFF] = {
				{1,27797, nil, nil, "Best" },
				{2,27434, nil, nil, "Optional" },
				{3, nil, nil, nil, "Optional", [ATLASLOOT_IT_HORDE] = 29147, [ATLASLOOT_IT_ALLIANCE] = 29148 },
				{4,25790, nil, nil, "Optional" },
			},
		},
		{	--Back
			name = "Back",
			[NORMAL_DIFF] = {
				{1,24259, nil, nil, "Best" },
				{2,27878, nil, nil, "Optional" },
				{3,27892, nil, nil, "Easy To Obtain" },
			},
		},
		{	--Chest
			name = "Chest",
			[NORMAL_DIFF] = {
				{1,29525, nil, nil, "Best" },
				{2,29515, nil, nil, "Best" },
				{3,25997, nil, nil, "Optional" },
			},
		},
		{	--Wrist
			name = "Wrist",
			[NORMAL_DIFF] = {
				{1,29527, nil, nil, "Best" },
				{2,29517, nil, nil, "Best" },
				{3,28171, nil, nil, "Easy To Obtain" },
				{4,30399, nil, nil, "Easy To Obtain" },
			},

		},
		{	--Hands
			name = "Hands",
			[NORMAL_DIFF] = {
				{1,30341, nil, nil, "Best" },
				{2,29503, nil, nil, "Optional" },
				{3,28396, nil, nil, "Easy to Obtain" },
			},
		},
		{	--Waist
			name = "Waist",
			[NORMAL_DIFF] = {
				{1,29526, nil, nil, "Best" },
				{2,29516, nil, nil, "Best" },
				{3,29247, nil, nil, "Best" },
				{4,27911, nil, nil, "Optional" },
			},
		},
		{	--Legs
			name = "Legs",
			[NORMAL_DIFF] = {
				{1,30257, nil, nil, "Best" },
				{2,31544, nil, nil, "Optional" },
			},
		},
		{	--Feet
			name = "Feet",
			[NORMAL_DIFF] = {
				{1,25686, nil, nil, "Best" },
				{2,27867, nil, nil, "Optional" },
				{3,30401, nil, nil, "Easy To Obtain" },
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
				{1,30834, nil, nil, "Best" },
				{2,29379, nil, nil, "Optional" },
				{3,28323, nil, nil, "Optional" },
				{4,30365, nil, nil, "Optional" },
				{5,31077, nil, nil, "Optional" },
			},
		},
		{	--Trinkets
			name = "Trinkets",
			[NORMAL_DIFF] = {
				{1,29383, nil, nil, "Best" },
				{2,28034, nil, nil, "Optional" },
				{3,28288, nil, nil, "Optional" },
			},
		},
		{	--1-Handed Weapons
			name = "1-Handed Weapons",
			[NORMAL_DIFF] = {
				{1,28308, nil, nil, "Best" },
				{2,28438, nil, nil, "Best (2.7 MH)" },
				{3,29348, nil, nil, "Optional" },
				{4,28392, nil, nil, "Optional (2.7 MH)" },
				{5,27872, nil, nil, "Optional" },
				{6,31139, nil, nil, "Optional (2.7 OH)" },
			},
		},
		{	--Totems
			name = "Totems",
			[NORMAL_DIFF] = {
				{1,27815, nil, nil, "Best" },
			},
		},
		el_Gems,
		el_HeadShoulder,
		el_GearEnchants,
		el_offEnchants,
	},
}