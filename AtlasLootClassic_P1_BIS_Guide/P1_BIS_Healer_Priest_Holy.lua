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
local _FileClass = "Priest"
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
		{ 02, [ATLASLOOT_IT_HORDE] = 29190, [ATLASLOOT_IT_ALLIANCE] = 29189 },
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

data[ _FilePrefix ] ={
	name = _FilePrefix,
	ContentType = roleType_Heal,
	LoadDifficulty = LOAD_DIFF,
	TableType = NORMAL_ITTYPE,
	gameVersion = 2,
	items = {
		{
			name = "Mooncloth Tailoring",
			[NORMAL_DIFF] = {
				{ 01, 29049 },	{ 16, 21873 },
				{ 02, 28822 },	{ 17, 28742 },
				{ 03, 21874 },	{ 18, 29251 },
				{ 04, 28765 },	{ 19, 28790 },
				{ 05, 21875 },	{ 20, 29290 },
				{ 06, 29183 },	{ 21, 29376 },
				{ 07, 29055 },	{ 22, 28823 },
				{ 09, 28771 },
				{ 10, 29170 },
				{ 11, 28588 },
			}
		},
		{
			name = "Non-Tailor Alternative",
			[NORMAL_DIFF] = {
				{ 01, 29049 },	{ 16, 28652 },
				{ 02, 28822 },	{ 17, 28742 },
				{ 03, 29054 },	{ 18, 29251 },
				{ 04, 28765 },	{ 19, 28790 },
				{ 05, 29050 },	{ 20, 29290 },
				{ 06, 29183 },	{ 21, 29376 },
				{ 07, 29055 },	{ 22, 28823 },
				{ 09, 28771 },
				{ 10, 29170 },
				{ 11, 28588 },
			}
		},
		{
			name = "Maximum Healing",
			[NORMAL_DIFF] = {
				{ 01, 29049 },	{ 16, 21873 },
				{ 02, 30726 },	{ 17, 30727 },
				{ 03, 21874 },	{ 18, 27411 },
				{ 04, 28765 },	{ 19, 28763 },
				{ 05, 21875 },	{ 20, 30736 },
				{ 06, 29183 },	{ 21, 29376 },
				{ 07, 28508 },	{ 22, 28590 },
				{ 09, 28771 },
				{ 10, 29274 },
				{ 11, 28588 },
			}
		},
		{	--Head Slot
			name = "Head",
			[NORMAL_DIFF] = {
				{1,29049, nil, nil, "Best in slot" },
				{2,24264, nil, nil, "Best in slot" },
				{3,28756, nil, nil, "Viable" },
			}
		},
		{	--Shoulders
			name = "Shoulders",
			[NORMAL_DIFF] = {
				{1,21874, nil, nil, "Best in slot" },
				{2,29054, nil, nil, "Great" },
				{3,28612, nil, nil, "Viable" },
			},
		},
		{	--Back
			name = "Back",
			[NORMAL_DIFF] = {
				{1,28765, nil, nil, "Best in slot" },
				{2,31329, nil, nil, "Best in slot" },
				{3,22960, nil, nil, "Great" },
				{4,28582, nil, nil, "Great" },
				{5,29375, nil, nil, "Great" },
			},
		},
		{	--Chest
			name = "Chest",
			[NORMAL_DIFF] = {
				{1,21875, nil, nil, "Best in slot" },
				{2,29050, nil, nil, "Great" },
			},
		},
		{	--Wrist
			name = "Wrist",
			[NORMAL_DIFF] = {
				{1,30684, nil, nil, "Best in slot" },
				{2,29183, nil, nil, "Best in slot" },
				{3,28511, nil, nil, "Best in slot" },
				{4,29249, nil, nil, "Best in slot" },
			},

		},
		{	--Hands
			name = "Hands",
			[NORMAL_DIFF] = {
				{1,28508, nil, nil, "Best in slot" },
				{2,29055, nil, nil, "Best in slot" },
			},
		},
		{	--Waist
			name = "Waist",
			[NORMAL_DIFF] = {
				{1,21873, nil, nil, "Best in slot" },
				{2,30675, nil, nil, "Viable" },
				{3,28652, nil, nil, "Viable" },
				{4,29250, nil, nil, "Viable" },
			},
		},
		{	--Legs
			name = "Legs",
			[NORMAL_DIFF] = {
				{1,30727, nil, nil, "Best in slot" },
				{2,28742, nil, nil, "Great" },
				{3,30543, nil, nil, "Great" },
				{4,24261, nil, nil, "Great" },
				{5,31343, nil, nil, "Great" },
			},
		},
		{	--Feet
			name = "Feet",
			[NORMAL_DIFF] = {
				{1,30680, nil, nil, "Best in slot" },
				{2,28663, nil, nil, "Best in slot" },
				{3,27411, nil, nil, "Best in slot" },
				{4,29251, nil, nil, "Best in slot" },
			},
		},
		{	--Neck
			name = "Neck",
			[NORMAL_DIFF] = {
				{1,28609, nil, nil, "Best in slot" },
				{2,30726, nil, nil, "Best in slot" },
				{3,28822, nil, nil, "Best in slot" },
				{4,28731, nil, nil, "Great" },
			},
		},
		{	--Rings
			name = "Rings",
			[NORMAL_DIFF] = {
				{1,30736, nil, nil, "Best in slot" },
				{2,28763, nil, nil, "Best in slot" },
				{3,29290, nil, nil, "Best in slot" },
				{4,28790, nil, nil, "Best in slot" },
				{5,28661, nil, nil, "Great" },
			},
		},
		{	--Trinkets
			name = "Trinkets",
			[NORMAL_DIFF] = {
				{1,29376, nil, nil, "Best in slot" },
				{2,28590, nil, nil, "Best in slot" },
				{3,28823, nil, nil, "Best in slot" },
				{4,19288, nil, nil, "Great" },
				{5,28190, nil, nil, "Great" },
			},
		},
		{	--Main and Two–handed
			name = "1-Handed Weapons",
			[NORMAL_DIFF] = {
				{1,28771, nil, nil, "Best in slot" },
				{2,30732, nil, nil, "Best in slot" },
				{3,32451, nil, nil, "Great" },
				{4,28782, nil, nil, "Great" },
			},
		},
		{	--Off-hand
			name = "Off-hand",
			[NORMAL_DIFF] = {
				{1,29274, nil, nil, "Best in slot" },
				{2,29170, nil, nil, "Best in slot" },
				{3,28728, nil, nil, "Great" },
				{4,28525, nil, nil, "Viable" },
			},
		},
		{	--Wands
			name = "Wands",
			[NORMAL_DIFF] = {
				{1,28588, nil, nil, "Best in slot" },
				{2,25295, nil, nil, "Best in slot" },
				{3,29779, nil, nil, "Great" },
				{4,27885, nil, nil, "Great" },
				{5,23009, nil, nil, "Great" },
			},
		},
		el_Gems,
		el_HeadShoulder,
		el_GearEnchants,
		el_offEnchants,
	},
}