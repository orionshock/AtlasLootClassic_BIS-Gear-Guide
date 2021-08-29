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

local _FileRole = "Holy"
local _FileClass = "Paladin"
local _FilePrefix = _FileRole.." ".._FileClass

local el_Gems = {	--Extra List : Gems
	name = "Gems",
	ExtraList = true,
	TableType = PROF_ITTYPE,
	[NORMAL_DIFF] = {
		{ 01, "INV_MISC_DESECRATED_PLATEHELM", nil, "Meta Gem" },
		{ 02, 32867 },	{17, 32765 },
		{ 04, "INV_MISC_GEM_01", nil, "All Other Gems"},
		{ 05, 31087 },
	}
}

local el_HeadShoulder = {	--Extra List: Shoulder Items
	name = "Head Glyph & Shoulder Inscription",
	ExtraList = true,
	TableType = NORMAL_ITTYPE,
	[NORMAL_DIFF] = {
		{ 01, "INV_MISC_DESECRATED_PLATEHELM", nil, "Head Glyph"},
		{ 02, 29190, "INV_BANNERPVP_01"}, {17, 29189, "INV_BANNERPVP_02"},
		{ 04, "INV_MISC_DESECRATED_PLATESHOULDER", nil, "Shoulder Inscription"},
		{ 05, 28887, nil, nil, "Best - requires Exalted with The Aldor" },{20, 28912, nil, nil, "Alternate - Requires Exalted with Scryers"},
		{ 06, 23547, nil, nil, "drops from Sapphiron in the Naxxramas raid" }
	}
}

local el_GearEnchants = {	--Extra List: Gear Enchants
	name = "Gear Enchants",
	ExtraList = true,
	TableType = PROF_ITTYPE,
	[NORMAL_DIFF] = {
		{ 01 , "INV_MISC_CAPE_20", [4] = "Back" },	{16, "INV_MISC_DESECRATED_PLATECHEST", [4] = "Chest" },
		{ 02, 27962 },	{17, 33991 },	
		{ 04 , "INV_MISC_DESECRATED_PLATEBRACER", [4] = "Wrist" }, { 19 , "INV_MISC_DESECRATED_PLATEGLOVES", [4] = "Hands" },
		{ 05, 27911 },	{ 20, 33999 },
		{ 07 , "INV_MISC_DESECRATED_PLATEPANTS", [4] = "Legs" }, { 22 , "INV_MISC_DESECRATED_PLATEBOOTS", [4] = "Feet" },
		{ 08, 31433 },	{ 23, 34008 },
	},
}

local el_offEnchants = {	--Extra List: Ring/Wep/Sheild Enchants
	name = "Ring/Wep/Sheild Enchants",
	ExtraList = true,
	TableType = PROF_ITTYPE,
	[NORMAL_DIFF] = {
		{ 1, "INV_JEWELRY_RING_23", nil, "Ring Enchant" },
		{ 2, 27926 },
		{ 4, "INV_SWORD_65", nil, "1-Handed Weapons"},
		{ 5, 34010 },
		{ 7, "INV_SHIELD_30", nil, "Shields" }, 
		{ 8, 27945 },
	},
}

data[ _FilePrefix ] = {
	name = _FilePrefix,
	ContentType = roleType_Heal,
	LoadDifficulty = LOAD_DIFF,
	TableType = NORMAL_ITTYPE,
	gameVersion = 2,
	items = {
		{
			name = "Non-Crafted Gear Set",
			[NORMAL_DIFF] = {
				{ 01, 32084 },	{16, 29250 },
				{ 02, 31691 },	{17, 30543 },	
				{ 03, 27775 },	{18, 27411 },
				{ 04, 31329 },	{19, 29169 },
				{ 05, 28230 },	{20, 27780 },
				{ 06, 29183 },	{21, 29376 },
				{ 07, 29506 },	{22, 30841 },
				{ 09, 23556 },
				{ 10, 29274 },
				{ 11, 25644 },
			}
		},
		{
			name = "Tailoring Gear Set",
			[NORMAL_DIFF] = {
				{ 01, 24264 },	{16, 21873 },
				{ 02, 31691 },	{17, 24261 },	
				{ 03, 21874 },	{18, 27411 },
				{ 04, 31329 },	{19, 29169 },
				{ 05, 21875 },	{20, 27780 },
				{ 06, 29183 },	{21, 29376 },
				{ 07, 29506 },	{22, 30841 },
				{ 09, 23556 },
				{ 10, 29274 },
				{ 11, 25644 },
			}
		},
		{
			name = "Leatherworking Gear Set",
			[NORMAL_DIFF] = {
				{ 01, 32084 },	{16, 29524 },
				{ 02, 31691 },	{17, 30543 },	
				{ 03, 27775 },	{18, 27411 },
				{ 04, 31329 },	{19, 29169 },
				{ 05, 29522 },	{20, 27780 },
				{ 06, 29523 },	{21, 29376 },
				{ 07, 29506 },	{22, 30841 },
				{ 09, 23556 },
				{ 10, 29274 },
				{ 11, 25644 },
			}
		},
		{	--Head Slot
			name = "Head",
			[NORMAL_DIFF] = {
				{1,24264, nil, nil, "BiS" },
				{2,32084, nil, nil, "Optional" },
				{3,28413, nil, nil, "Optional" },
				{4,28348, nil, nil, "Optional" },
				{5,25820, nil, nil, "Quest" },
			}
		},
		{	--Shoulders
			name = "Shoulders",
			[NORMAL_DIFF] = {
				{1,21874, nil, nil, "BiS" },
				{2,27775, nil, nil, "Optional" },
				{3,27433, nil, nil, "Optional" },
				{4,30925, nil, nil, "Quest" },
			},
		},
		{	--Back
			name = "Back",
			[NORMAL_DIFF] = {
				{1,31329, nil, nil, "BiS" },
				{2,29354, nil, nil, "Optional" },
				{3,24254, nil, nil, "Optional" },
				{4,29375, nil, nil, "Optional" },
				{5, nil, nil, nil, "Quest", [ATLASLOOT_IT_HORDE] = 25810, [ATLASLOOT_IT_ALLIANCE] = 25805 },
			},
		},
		{	--Chest
			name = "Chest",
			[NORMAL_DIFF] = {
				{1,21875, nil, nil, "BiS" },
				{2,29522, nil, nil, "Optional" },
				{3,28230, nil, nil, "Optional" },
				{4,28202, nil, nil, "Optional" },
				{5,30298, nil, nil, "Quest" },
			},
		},
		{	--Wrist
			name = "Wrist",
			[NORMAL_DIFF] = {
				{1,29523, nil, nil, "BiS" },
				{2,29183, nil, nil, "BiS" },
				{3,23539, nil, nil, "BiS" },
				{4,21604, nil, nil, "Optional" },
				{5,29249, nil, nil, "Optional" },
				{6,28029, nil, nil, "Quest" },
			},

		},
		{	--Hands
			name = "Hands",
			[NORMAL_DIFF] = {
				{1,29506, nil, nil, "BiS" },
				{2,27457, nil, nil, "Optional" },
				{3,28304, nil, nil, "Optional" },
				{4,29327, nil, nil, "Quest" },
			},
		},
		{	--Waist
			name = "Waist",
			[NORMAL_DIFF] = {
				{1,21873, nil, nil, "BiS" },
				{2,29524, nil, nil, "Optional" },
				{3,29250, nil, nil, "Optional" },
				{4,21582, nil, nil, "Optional" },
				{5,30932, nil, nil, "Quest" },
			},
		},
		{	--Legs
			name = "Legs",
			[NORMAL_DIFF] = {
				{1,24261, nil, nil, "BiS" },
				{2,30543, nil, nil, "Optional" },
				{3,31343, nil, nil, "Optional" },
				{4,30299, nil, nil, "Quest" },
				{5,30256, nil, nil, "Quest" },
			},
		},
		{	--Feet
			name = "Feet",
			[NORMAL_DIFF] = {
				{1,27411, nil, nil, "BiS" },
				{2,29251, nil, nil, "Optional" },
				{3,28221, nil, nil, "Optional" },
				{4,27549, nil, nil, "Optional" },
				{5,25792, nil, nil, "Alliance Quest", [ATLASLOOT_IT_ALLIANCE] = true, [ATLASLOOT_IT_HORDE] = false },
			},
		},
		{	--Neck
			name = "Neck",
			[NORMAL_DIFF] = {
				{1,31691, nil, nil, "BiS" },
				{2,30377, nil, nil, "Optional - Aldor Only" },
				{3,29374, nil, nil, "Optional" },
				{4,21712, nil, nil, "Optional" },
			},
		},
		{	--Rings
			name = "Rings",
			[NORMAL_DIFF] = {
				{1,nil, nil, nil, "Best in slot", [ATLASLOOT_IT_HORDE] = 29168, [ATLASLOOT_IT_ALLIANCE] = 29169 },
				{2,27780, nil, nil, "BiS" },
				{3,28259, nil, nil, "Optional" },
				{4,31383, nil, nil, "Quest" },
				{5,29814, nil, nil, "Quest" },
			},
		},
		{	--Trinkets
			name = "Trinkets",
			[NORMAL_DIFF] = {
				{1,29376, nil, nil, "BiS" },
				{2,23047, nil, nil, "BiS" },
				{3,30841, nil, nil, "BiS" },
				{4,19395, nil, nil, "Optional" },
				{5,28190, nil, nil, "Optional" },
				{6,25634, nil, nil, "Quest" },
			},
		},
		{	--1H Wep
			name = "1-Handed Weapons",
			[NORMAL_DIFF] = {
				{1,23556, nil, nil, "BiS" },
				{2,29353, nil, nil, "BiS" },
				{3,31342, nil, nil, "Optional" },
				{4,29175, nil, nil, "Optional" },
				{5,25759, nil, nil, "Quest" },
			},
		},
		{	--Offhand
			name = "Offhands and Shields",
			[NORMAL_DIFF] = {
				{1,29274, nil, nil, "BiS" },
				{2,22819, nil, nil, "BiS" },
				{3,23048, nil, nil, "Optional" },
				{4,29170, nil, nil, "Optional" },
				{5,27772, nil, nil, "Optional" },
				{6,27477, nil, nil, "Optional" },
				{7,31493, nil, nil, "Quest" },
			},
		},
		{	--Ranged
			name = "Libram",
			[NORMAL_DIFF] = {
				{1,23006, nil, nil, "BiS" },
				{2,28296, nil, nil, "Optional" },
				{3,25644, nil, nil, "Quest" },
			},
		},
		el_Gems,
		el_HeadShoulder,
		el_GearEnchants,
		el_offEnchants,
	},
}
