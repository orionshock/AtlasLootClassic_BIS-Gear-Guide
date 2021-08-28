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
		{ 01, "INV_MISC_DESECRATED_PLATEHELM", nil, "Meta Gem" },	{16,  },
		{ 02, 32867 },	{17, 32765 },
		{ 04, "INV_MISC_GEM_01", nil, "All Other Gems"},	{19,  },
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
			name = "World Boss Gear Set",
			[NORMAL_DIFF] = {
				{ 01, 30728 },	{16, 28733 },
				{ 02, 30726 },	{17, 30727 },	
				{ 03, 29064 },	{18, 30737 },
				{ 04, 31329 },	{19, 30736 },
				{ 05, 29062 },	{20, 28763 },
				{ 06, 29183 },	{21, 29376 },
				{ 07, 28505 },	{22, 28590 },
				{ 09, 28771 },
				{ 10, 29458 },
				{ 11, 28592 },
			}
		},
		{
			name = "Non-Crafted Gear Set (focusing on using plate gear)",
			[NORMAL_DIFF] = {
				{ 01, 29061 },	{16, 28733 },
				{ 02, 28609 },	{17, 28748 },	
				{ 03, 29064 },	{18, 28569 },
				{ 04, 28765 },	{19, 28763 },
				{ 05, 29062 },	{20, 28790 },
				{ 06, 23539 },	{21, 29376 },
				{ 07, 28505 },	{22, 28590 },
				{ 09, 28771 },
				{ 10, 29458 },
				{ 11, 28592 },
			},
		},
		{
			name = "Tailoring Gear Set",
			[NORMAL_DIFF] = {
				{ 01, 24264 },	{16, 21873 },
				{ 02, 28609 },	{17, 24261 },	
				{ 03, 21874 },	{18, 28752 },
				{ 04, 31329 },	{19, 28763 },
				{ 05, 21875 },	{20, 28790 },
				{ 06, 29183 },	{21, 29376 },
				{ 07, 28505 },	{22, 28590 },
				{ 09, 28771 },
				{ 10, 29458 },
				{ 11, 28592 },
			},
		},
		{
			name = "Leatherworking Gear Set",
			[NORMAL_DIFF] = {
				{ 01, 29061 },	{16, 29524 },
				{ 02, 28609 },	{17, 28751 },	
				{ 03, 29064 },	{18, 28752 },
				{ 04, 31329 },	{19, 28763 },
				{ 05, 29522 },	{20, 28790 },
				{ 06, 29523 },	{21, 29376 },
				{ 07, 28505 },	{22, 28590 },
				{ 09, 28771 },
				{ 10, 29458 },
				{ 11, 28592 },
			},
		},
		{	--Head Slot
			name = "Head",
			[NORMAL_DIFF] = {
				{ 01, 30728, nil, nil, "BiS" },
				{ 02, 29061, nil, nil, "Optional" },
				{ 03, 24264, nil, nil, "Optional" },
				{ 04, 28803, nil, nil, "Optional" },
				{ 05, 28756, nil, nil, "Optional" },
			}
		},
		{	--Shoulders
			name = "Shoulders",
			[NORMAL_DIFF] = {
				{ 01, 29064, nil, nil, "BiS" },
				{ 02, 21874, nil, nil, "Optional" },
				{ 03, 28631, nil, nil, "Optional" },
				{ 04, 28666, nil, nil, "Optional" },
				{ 05, 28647, nil, nil, "Optional" },
			},
		},
		{	--Back
			name = "Back",
			[NORMAL_DIFF] = {
				{ 01, 31329, nil, nil, "BiS" },
				{ 02, 28765, nil, nil, "Optional" },
				{ 03, 29354, nil, nil, "Optional" },
				{ 04, 28582, nil, nil, "Optional" },
				{ 05, 24254, nil, nil, "Optional" },
			},
		},
		{	--Chest
			name = "Chest",
			[NORMAL_DIFF] = {
				{ 01, 29062, nil, nil, "BiS" },
				{ 02, 21875, nil, nil, "Optional" },
				{ 03, 29522, nil, nil, "Optional" },
				{ 04, 28662, nil, nil, "Optional" },
				{ 05, 28735, nil, nil, "Quest" },
				{ 06, 28230, nil, nil, "Optional" },
			},
		},
		{	--Wrist
			name = "Wrist",
			[NORMAL_DIFF] = {
				{ 01, 29523, nil, nil, "BiS" },
				{ 02, 29183, nil, nil, "BiS" },
				{ 03, 23539, nil, nil, "BiS" },
				{ 04, 28512, nil, nil, "Optional" },
				{ 05, 28503, nil, nil, "Optional" },
				{ 06, 28511, nil, nil, "Quest" },
			},

		},
		{	--Hands
			name = "Hands",
			[NORMAL_DIFF] = {
				{ 01, 28505, nil, nil, "BiS" },
				{ 02, 28520, nil, nil, "Optional" },
				{ 03, 28521, nil, nil, "Optional" },
				{ 04, 29065, nil, nil, "Optional" },
				{ 05, 29506, nil, nil, "Optional" },
			},
		},
		{	--Waist
			name = "Waist",
			[NORMAL_DIFF] = {
				{ 01, 21873, nil, nil, "BiS" },
				{ 02, 29524, nil, nil, "Optional" },
				{ 03, 28733, nil, nil, "Optional" },
				{ 04, 28655, nil, nil, "Optional" },
				{ 05, 29250, nil, nil, "Optional" },
				{ 06, 32985, nil, nil, "PVP" },
			},
		},
		{	--Legs
			name = "Legs",
			[NORMAL_DIFF] = {
				{ 01, 30727, nil, nil, "BiS" },
				{ 02, 28751, nil, nil, "Optional" },
				{ 03, 28748, nil, nil, "Optional" },
				{ 04, 28591, nil, nil, "Optional" },
				{ 05, 28742, nil, nil, "Optional" },
				{ 06, 24261, nil, nil, "Optional" },
			},
		},
		{	--Feet
			name = "Feet",
			[NORMAL_DIFF] = {
				{ 01, 30737, nil, nil, "BiS" },
				{ 02, 28751, nil, nil, "Optional" },
				{ 03, 28569, nil, nil, "Optional" },
				{ 04, 27411, nil, nil, "Optional" },
			},
		},
		{	--Neck
			name = "Neck",
			[NORMAL_DIFF] = {
				{ 01, 30726, nil, nil, "BiS" },
				{ 02, 28609, nil, nil, "Optional" },
				{ 03, 31691, nil, nil, "Optional" },
				{ 04, 30377, nil, nil, "Optional - Aldor Only" },
				{ 05, 29374, nil, nil, "Optional" },
				{ 06, 21712, nil, nil, "Optional" },
			},
		},
		{	--Rings
			name = "Rings",
			[NORMAL_DIFF] = {
				{ 01, 30736, nil, nil, "BiS" },
				{ 02, 28763, nil, nil, "BiS" },
				{ 03, 28790, nil, nil, "Optional" },
				{ 04, 29169, "INV_BANNERPVP_02", nil, "Optional" }, { 19, 29168, "INV_BANNERPVP_01", nil, "Optional" },
				{ 05, 29290, nil, nil, "Optional" },
				{ 06, 27780, nil, nil, "Optional" },
			},
		},
		{	--Trinkets
			name = "Trinkets",
			[NORMAL_DIFF] = {
				{ 01, 29376, nil, nil, "BiS" },
				{ 02, 28590, nil, nil, "BiS" },
				{ 03, 23047, nil, nil, "BiS" },
				{ 04, 30841, nil, nil, "BiS" },
				{ 05, 19395, nil, nil, "Optional" },
				{ 06, 28190, nil, nil, "Optional" },
			},
		},
		{	--1H Wep
			name = "1-Handed Weapons",
			[NORMAL_DIFF] = {
				{ 01, 28771, nil, nil, "BiS" },
				{ 02, 32451, nil, nil, "PVP" },
				{ 03, 28522, nil, nil, "Optional" },
				{ 04, 23556, nil, nil, "Optional" },
				{ 05, 29353, nil, nil, "Optional" },
				{ 06, 31342, nil, nil, "Optional" },
				{ 07, 29175, nil, nil, "Optional" },				
			},
		},
		{	--Offhands and Shields
			name = "Offhands and Shields",
			[NORMAL_DIFF] = {
				{ 01, 29458, nil, nil, "BiS" },
				{ 02, 28728, nil, nil, "Optional" },
				{ 03, 29274, nil, nil, "Optional" },
				{ 04, 22819, nil, nil, "Optional" },
				{ 05, 23048, nil, nil, "Optional" },
				{ 06, 29170, nil, nil, "Optional" },
			},
		},
		{	--Librams
			name = "Librams",
			[NORMAL_DIFF] = {
				{ 01, 28592, nil, nil, "BiS" },
				{ 02, 23006, nil, nil, "Optional" },
				{ 03, 28296, nil, nil, "Optional" },
				{ 04, 25644, nil, nil, "Optional" },
			},
		},
		el_Gems,
		el_HeadShoulder,
		el_GearEnchants,
		el_offEnchants,
	},
}