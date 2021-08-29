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

local _FileRole = "Restoration"
local _FileClass = "Druid"
local _FilePrefix = _FileRole.." ".._FileClass

local el_Gems = {	--Extra List : Gems
	name = "Gems",
	ExtraList = true,
	TableType = PROF_ITTYPE,
	[NORMAL_DIFF] = {
		{ 01, "INV_MISC_DESECRATED_LEATHERHELM", nil, "Meta Gem" },
		{ 02, 32867 },	{ 17, 32765 },
		{ 04, "INV_MISC_GEM_01", nil, "Primary"},
		{ 05, 31087 },
	}
}

local el_HeadShoulder = {	--Extra List: Shoulder Items
	name = "Head Glyph & Shoulder Inscription",
	ExtraList = true,
	TableType = NORMAL_ITTYPE,
	[NORMAL_DIFF] = {
		{ 01, "INV_MISC_DESECRATED_LEATHERHELM", nil, "Head Glyph"},
		{ 02, 29189 },
		{ 04, "INV_MISC_DESECRATED_LEATHERSHOULDER", nil, "Shoulder Inscription"},
		{ 05, 28887 },
		{ 06, 23547 },	{ 21, 20078 },
	}
}

local el_GearEnchants = {	--Extra List: Gear Enchants
	name = "Gear Enchants",
	ExtraList = true,
	TableType = PROF_ITTYPE,
	[NORMAL_DIFF] = {
		{ 01 , "INV_MISC_CAPE_20", nil, "Back" },	
		{ 02, 25084 },	
		{ 04, "INV_MISC_DESECRATED_LEATHERCHEST", nil, "Chest" }, { 19 , "INV_MISC_DESECRATED_LEATHERBRACER", nil, "Wrist" },
		{ 05, 33990 }, { 20, 27911 },
		{ 07 , "INV_MISC_DESECRATED_LEATHERPANTS", nil, "Legs" }, { 22 , "INV_MISC_DESECRATED_LEATHERGLOVE", nil, "Hands" },
		{ 08, 31433 }, { 23, 33999 },
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
		{ 02, 27926 },
		{ 04, "INV_SWORD_65", nil, "Weapon Enchant"},
		{ 05, 34010 },		
	},
}

data[ _FilePrefix ] ={
	name = _FilePrefix,
	ContentType = roleType_Heal,
	LoadDifficulty = LOAD_DIFF,
	TableType = NORMAL_ITTYPE,
	gameVersion = 2,
	items = {
		{
			name = "Pre BIS Tailor Healing Power Set",
			[NORMAL_DIFF] = {
				{ 01, 24264 },	{ 16, 21873 },
				{ 02, 30377 },	{ 17, 24261 },
				{ 03, 21874 },	{ 18, 27411 },
				{ 04, 27946 },	{ 19, nil, nil, nil, "Best in slot", [ATLASLOOT_IT_HORDE] = 29168, [ATLASLOOT_IT_ALLIANCE] = 29169 },
				{ 05, 21875 },	{ 20, 31383 },
				{ 06, 29183 },	{ 21, 29376 },
				{ 07, 24393 },	{ 22, 30841 },
				{ 09, 29353 },
				{ 10, 29170 },
				{ 11, 27886 },
			}
		},
		{	--Head Slot
			name = "Head",
			[NORMAL_DIFF] = {
				{1,24264, nil, nil, "BiS" },
				{2,31376, nil, nil, "PvP" },
				{3,32090, nil, nil, "Optional" },
				{4,28413, nil, nil, "Optional" },
				{5,28348, nil, nil, "Optional" },
				{6,29174, nil, nil, "Optional" },
				{7,29505, nil, nil, "Optional" },
			}
		},
		{	--Shoulders
			name = "Shoulders",
			[NORMAL_DIFF] = {
				{1,21874, nil, nil, "BiS" },
				{2,27775, nil, nil, "Optional" },
				{3,31378, nil, nil, "PvP" },
				{4,27433, nil, nil, "Optional" },
				{5,27737, nil, nil, "Optional" },
			},
		},
		{	--Back
			name = "Back",
			[NORMAL_DIFF] = {
				{1,31329, nil, nil, "BiS" },
				{2,22960, nil, nil, "BiS" },
				{3,27946, nil, nil, "BiS" },
				{4,29354, nil, nil, "Optional" },
				{5,29375, nil, nil, "Optional" },
				{6,24254, nil, nil, "Optional" },
			},
		},
		{	--Chest
			name = "Chest",
			[NORMAL_DIFF] = {
				{1,21875, nil, nil, "BiS" },
				{2,29522, nil, nil, "Optional" },
				{3,31379, nil, nil, "PvP" },
				{4,28230, nil, nil, "Optional" },
				{5,28202, nil, nil, "Optional" },
				{6,27456, nil, nil, "Optional" },
				{7,27506, nil, nil, "Optional" },
			},
		},
		{	--Wrist
			name = "Wrist",
			[NORMAL_DIFF] = {
				{1,29183, nil, nil, "BiS" },
				{2,29523, nil, nil, "BiS" },
				{3,29249, nil, nil, "Optional" },
				{4,21604, nil, nil, "Optional" },
				{5,27827, nil, nil, "Optional" },
				{6,22495, nil, nil, "Optional" },
			},

		},
		{	--Hands
			name = "Hands",
			[NORMAL_DIFF] = {
				{1,29506, nil, nil, "BiS" },
				{2,31375, nil, nil, "Optional" },
				{3,24393, nil, nil, "Optional" },
				{4,25791, nil, nil, "Optional", [ATLASLOOT_IT_ALLIANCE] = true, [ATLASLOOT_IT_HORDE] = false },
				{5,28268, nil, nil, "Optional" },
				{6,29327, nil, nil, "Optional" },
			},
		},
		{	--Waist
			name = "Waist",
			[NORMAL_DIFF] = {
				{1,21873, nil, nil, "BiS" },
				{2,29524, nil, nil, "Optional" },
				{3,29250, nil, nil, "Optional" },
				{4,31594, nil, nil, "PvP" },
				{5,27542, nil, nil, "Optional" },
				{6,28398, nil, nil, "Optional" },
			},
		},
		{	--Legs
			name = "Legs",
			[NORMAL_DIFF] = {
				{1,24261, nil, nil, "BiS" },
				{2,30543, nil, nil, "BiS" },
				{3,31343, nil, nil, "BiS" },
				{4,31335, nil, nil, "Optional" },
				{5,28218, nil, nil, "Optional" },
				{6,31377, nil, nil, "PvP" },
				{7,29345, nil, nil, "Optional" },
				{8,30532, nil, nil, "Optional" },
				{9,27875, nil, nil, "Optional" },
			},
		},
		{	--Feet
			name = "Feet",
			[NORMAL_DIFF] = {
				{1,27411, nil, nil, "BiS" },
				{2,29251, nil, nil, "BiS" },
				{3,25792, nil, nil, "BiS", [ATLASLOOT_IT_ALLIANCE] = true, [ATLASLOOT_IT_HORDE] = false },
				{4,31595, nil, nil, "PvP" },
				{5,28251, nil, nil, "Optional" },
				{6,27525, nil, nil, "Optional" },
			},
		},
		{	--Neck
			name = "Neck",
			[NORMAL_DIFF] = {
				{1,30377, nil, nil, "BiS" },
				{2,31691, nil, nil, "Optional" },
				{3,29374, nil, nil, "Optional" },
				{4,23036, nil, nil, "Optional" },
				{5,28233, nil, nil, "Optional" },
				{6,21712, nil, nil, "Optional" },
			},
		},
		{	--Rings
			name = "Rings",
			[NORMAL_DIFF] = {
				{1,27780, nil, nil, "BiS" },
				{2,nil, nil, nil, "BIS", [ATLASLOOT_IT_HORDE] = 29168, [ATLASLOOT_IT_ALLIANCE] = 29169 },
				{3,31383, nil, nil, "BiS" },
				{4,29373, nil, nil, "Optional" },
				{5,31923, nil, nil, "Optional" },
				{6,29814, nil, nil, "Optional" },
				{7,29322, nil, nil, "Optional" },
				{8,28259, nil, nil, "Optional" },
			},
		},
		{	--Trinkets
			name = "Trinkets",
			[NORMAL_DIFF] = {
				{1,29376, nil, nil, "BiS" },
				{2,30841, nil, nil, "BiS" },
				{3,19395, nil, nil, "BiS" },
				{4,23047, nil, nil, "BiS" },
				{5,28190, nil, nil, "Optional" },
				{6,25634, nil, nil, "Optional" },
				{7,24390, nil, nil, "Optional" },
			},
		},
		{	--1-Handed Weapons
			name = "1-Handed Weapons",
			[NORMAL_DIFF] = {
				{1,32451, nil, nil, "PvP" },
				{2,23556, nil, nil, "BiS" },
				{3,29353, nil, nil, "BiS" },
				{4,31342, nil, nil, "Optional" },
				{5,29175, nil, nil, "Optional" },
				{6,28257, nil, nil, "Optional" },
				{7,28216, nil, nil, "Optional" },
				{8,27538, nil, nil, "Optional" },
				{9,31304, nil, nil, "Optional" },
			},
		},
		{	--2-Handed Weapons
			name = "2-Handed Weapons",
			[NORMAL_DIFF] = {
				{1,22589, nil, nil, "BiS" },
				{2,27791, nil, nil, "BiS" },
				{3,29133, nil, nil, "Optional" },
				{4,28033, nil, nil, "Optional" },
			},
		},
		{	--Offhands
			name = "Offhands",
			[NORMAL_DIFF] = {
				{1,29274, nil, nil, "BiS" },
				{2,29170, nil, nil, "BiS" },
				{3,23048, nil, nil, "Optional" },
				{4,23029, nil, nil, "Optional" },
				{5,27477, nil, nil, "Optional" },
				{6,27714, nil, nil, "Optional" },
				{7,28213, nil, nil, "Optional" },
				{8,31493, nil, nil, "Optional" },
				{9,28387, nil, nil, "Optional" },
			},
		},
		{	--Idols
			name = "Idols",
			[NORMAL_DIFF] = {
				{1,27886, nil, nil, "BiS" },
				{2,25643, nil, nil, "Optional" },
			},
		},
		el_Gems,
		el_HeadShoulder,
		el_GearEnchants,
		el_offEnchants,
	},
}