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
			name = "BIS Tailor Healing Power Set",
			[NORMAL_DIFF] = {
				{ 01, 29086 },	{ 16, 21873 },
				{ 02, 28822 },	{ 17, 28591 },
				{ 03, 21874 },	{ 18, 28752 },
				{ 04, 28765 },	{ 19, 29290 },
				{ 05, 21875 },	{ 20, 28763 },
				{ 06, 29183 },	{ 21, 29376 },
				{ 07, 28521 },	{ 22, 30841 },
				{ 09, 28771 },
				{ 10, 29170 },
				{ 11, 27886 },
			}
		},
		{	--Head Slot
			name = "Head",
			[NORMAL_DIFF] = {
				{1,24264, nil, nil, "BiS" },
				{2,29086, nil, nil, "BiS" },
				{3,31376, nil, nil, "PvP" },
				{4,28803, nil, nil, "Optional" },
				{5,32090, nil, nil, "Optional" },
				{6,28413, nil, nil, "Optional" },
				{7,28348, nil, nil, "Optional" },
				{8,29505, nil, nil, "Optional" },
			}
		},
		{	--Shoulders
			name = "Shoulders",
			[NORMAL_DIFF] = {
				{1,21874, nil, nil, "BiS" },
				{2,29089, nil, nil, "BiS" },
				{3,28612, nil, nil, "Optional" },
				{4,27775, nil, nil, "Optional" },
				{5,28647, nil, nil, "Optional" },
				{6,31378, nil, nil, "PvP" },
				{7,27433, nil, nil, "Optional" },
				{8,27737, nil, nil, "Optional" },
			},
		},
		{	--Back
			name = "Back",
			[NORMAL_DIFF] = {
				{1,28765, nil, nil, "BiS" },
				{2,31329, nil, nil, "BiS" },
				{3,29354, nil, nil, "Optional" },
				{4,28582, nil, nil, "Optional" },
				{5,22960, nil, nil, "Optional" },
				{6,27946, nil, nil, "Optional" },
				{7,29375, nil, nil, "Optional" },
				{8,24254, nil, nil, "Optional" },
			},
		},
		{	--Chest
			name = "Chest",
			[NORMAL_DIFF] = {
				{1,21875, nil, nil, "BiS" },
				{2,29087, nil, nil, "Optional" },
				{3,29522, nil, nil, "Optional" },
				{4,31379, nil, nil, "PvP" },
				{5,28230, nil, nil, "Optional" },
				{6,28600, nil, nil, "Optional" },
				{7,28202, nil, nil, "Optional" },
				{8,27456, nil, nil, "Optional" },
				{9,27506, nil, nil, "Optional" },
			},
		},
		{	--Wrist
			name = "Wrist",
			[NORMAL_DIFF] = {
				{1,29183, nil, nil, "BiS" },
				{2,29523, nil, nil, "BiS" },
				{3,28511, nil, nil, "BiS" },
				{4,29249, nil, nil, "Optional" },
				{5,21604, nil, nil, "Optional" },
				{6,27827, nil, nil, "Optional" },
				{7,22495, nil, nil, "Optional" },
			},

		},
		{	--Hands
			name = "Hands",
			[NORMAL_DIFF] = {
				{1,28521, nil, nil, "BiS" },
				{2,28508, nil, nil, "Optional" },
				{3,29090, nil, nil, "Optional" },
				{4,29506, nil, nil, "Optional" },
				{5,31375, nil, nil, "PvP" },
				{6,24393, nil, nil, "Optional" },
				{7,25791, nil, nil, "Optional", [ATLASLOOT_IT_ALLIANCE] = true, [ATLASLOOT_IT_HORDE] = false },
				{8,28268, nil, nil, "Optional" },
				{9,29327, nil, nil, "Optional" },
			},
		},
		{	--Waist
			name = "Waist",
			[NORMAL_DIFF] = {
				{1,21873, nil, nil, "BiS" },
				{2,29524, nil, nil, "Optional" },
				{3,28655, nil, nil, "Optional" },
				{4,28652, nil, nil, "Optional" },
				{5,29250, nil, nil, "Optional" },
				{6,31594, nil, nil, "PvP" },
				{7,27542, nil, nil, "Optional" },
				{8,28398, nil, nil, "Optional" },
			},
		},
		{	--Legs
			name = "Legs",
			[NORMAL_DIFF] = {
				{1,30727, nil, nil, "BiS" },
				{2,24261, nil, nil, "BiS" },
				{3,28591, nil, nil, "BiS" },
				{4,30543, nil, nil, "Optional" },
				{5,28742, nil, nil, "Optional" },
				{6,31343, nil, nil, "Optional" },
				{7,29088, nil, nil, "Optional" },
				{8,31335, nil, nil, "Optional" },
				{9,28218, nil, nil, "Optional" },
				{10,31377, nil, nil, "PvP" },
				{11,29345, nil, nil, "Optional" },
				{12,30532, nil, nil, "Optional" },
				{13,27875, nil, nil, "Optional" },
			},
		},
		{	--Feet
			name = "Feet",
			[NORMAL_DIFF] = {
				{1,30737, nil, nil, "BiS" },
				{2,28752, nil, nil, "BiS" },
				{3,28663, nil, nil, "Optional" },
				{4,27411, nil, nil, "Optional" },
				{5,29251, nil, nil, "Optional" },
				{6,25792, nil, nil, "Optional", [ATLASLOOT_IT_ALLIANCE] = true, [ATLASLOOT_IT_HORDE] = false },
				{7,31595, nil, nil, "PvP" },
				{8,28251, nil, nil, "Optional" },
				{9,27525, nil, nil, "Optional" },				
			},
		},
		{	--Neck
			name = "Neck",
			[NORMAL_DIFF] = {
				{1,30726, nil, nil, "BiS" },
				{2,28822, nil, nil, "BiS" },
				{3,28609, nil, nil, "BiS" },
				{4,28731, nil, nil, "Optional" },
				{5,30377, nil, nil, "Optional" },
				{6,31691, nil, nil, "Optional" },
				{7,29374, nil, nil, "Optional" },
				{8,23036, nil, nil, "Optional" },
				{9,28233, nil, nil, "Optional" },
				{10,21712, nil, nil, "Optional" },
			},
		},
		{	--Rings
			name = "Rings",
			[NORMAL_DIFF] = {
				{1,29290, nil, nil, "BiS" },
				{2,28763, nil, nil, "BiS" },
				{3,28790, nil, nil, "BiS" },
				{4,30736, nil, nil, "BiS" },
				{5,27780, nil, nil, "Optional" },
				{6,nil, nil, nil, "Optional", [ATLASLOOT_IT_HORDE] = 29168, [ATLASLOOT_IT_ALLIANCE] = 29169 },
				{7,29169, nil, nil, "Optional" },
				{8,31383, nil, nil, "Optional" },
				{9,29373, nil, nil, "Optional" },
				{10,31923, nil, nil, "Optional" },
				{11,29814, nil, nil, "Optional" },
				{12,29322, nil, nil, "Optional" },
				{13,28259, nil, nil, "Optional" },
			},
		},
		{	--Trinkets
			name = "Trinkets",
			[NORMAL_DIFF] = {
				{1,29376, nil, nil, "BiS" },
				{2,25634, nil, nil, "BiS" },
				{3,19395, nil, nil, "Optional" },
				{4,30841, nil, nil, "Optional" },
				{5,28590, nil, nil, "Optional" },
				{6,28190, nil, nil, "Optional" },
				{7,23047, nil, nil, "Optional" },
				{8,28727, nil, nil, "Optional" },
				{9,28823, nil, nil, "Optional" },
				{10,24390, nil, nil, "Optional" },
			},
		},
		{	--1-Handed Weapons
			name = "1-Handed Weapons",
			[NORMAL_DIFF] = {
				{1,28771, nil, nil, "BiS" },
				{2,32451, nil, nil, "PvP" },
				{3,28522, nil, nil, "Optional" },
				{4,23556, nil, nil, "Optional" },
				{5,29353, nil, nil, "Optional" },
				{6,31342, nil, nil, "Optional" },
				{7,29175, nil, nil, "Optional" },
				{8,28257, nil, nil, "Optional" },
				{9,28216, nil, nil, "Optional" },
				{10,27538, nil, nil, "Optional" },
				{11,31304, nil, nil, "Optional" },
			},
		},
		{	--2-Handed Weapons
			name = "2-Handed Weapons",
			[NORMAL_DIFF] = {
				{1,30732, nil, nil, "BiS" },
				{2,28782, nil, nil, "BiS" },
				{3,28604, nil, nil, "Optional" },
				{4,22589, nil, nil, "Optional" },
				{5,27791, nil, nil, "Optional" },
				{6,29133, nil, nil, "Optional" },
				{7,28033, nil, nil, "Optional" },
				{8,28604, nil, nil, "Innervate" },
				{9,31289, nil, nil, "Innervate" },
			},
		},
		{	--Offhands
			name = "Offhands",
			[NORMAL_DIFF] = {
				{1,29274, nil, nil, "BiS" },
				{2,29170, nil, nil, "BiS" },
				{3,28728, nil, nil, "Optional" },
				{4,28525, nil, nil, "Optional" },
				{5,23048, nil, nil, "Optional" },
				{6,23029, nil, nil, "Optional" },
				{7,27477, nil, nil, "Optional" },
				{8,27714, nil, nil, "Optional" },
				{9,28213, nil, nil, "Optional" },
				{10,31493, nil, nil, "Optional" },
				{11,28387, nil, nil, "Optional" },
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