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
local _FileClass = "Shaman"
local _FilePrefix = _FileRole.." ".._FileClass

local el_Gems = {	--Extra List : Gems
	name = "Gems",
	ExtraList = true,
	TableType = PROF_ITTYPE,
	[NORMAL_DIFF] = {
		{ 01, "INV_MISC_DESECRATED_MAILHELM", nil, "Meta Gem" },
		{ 02, 32867 },	{ 17, 32765 },
		{ 03, 32870 },
		{ 05, "INV_MISC_GEM_01", nil, "Primary"},
		{ 06, 31087 },		
	}
}

local el_HeadShoulder = {	--Extra List: Shoulder Items
	name = "Head Glyph & Shoulder Inscription",
	ExtraList = true,
	TableType = NORMAL_ITTYPE,
	[NORMAL_DIFF] = {
		{ 01, "INV_MISC_DESECRATED_MAILHELM", nil, "Head Glyph"},
		{ 02, [ATLASLOOT_IT_HORDE] = 29190, [ATLASLOOT_IT_ALLIANCE] = 29189 },
		{ 04, "INV_MISC_DESECRATED_MAILSHOULDER", nil, "Shoulder Inscription"},
		{ 05, 28887, nil, nil, "BIS" },	{ 20, 23547 },
		{ 06, 28912, nil, nil, "If your Scryer" },
	}
}

local el_GearEnchants = {	--Extra List: Gear Enchants
	name = "Gear Enchants",
	ExtraList = true,
	TableType = PROF_ITTYPE,
	[NORMAL_DIFF] = {
		{ 01 , "INV_MISC_CAPE_20", nil, "Back" },	
		{ 02, 25084 },	
		{ 04, "INV_MISC_DESECRATED_MAILCHEST", nil, "Chest" },	{ 19 , "INV_MISC_DESECRATED_MAILBRACER", nil, "Bracer" },
		{ 05, 33991 },	{ 20, 27911 },
		{ 06, 27960 },	
		{ 08 , "INV_MISC_DESECRATED_MAILPANTS", nil, "Legs" },	{ 23 , "INV_MISC_DESECRATED_MAILGLOVE", nil, "Hands" },
		{ 09, 31433 },	{ 24, 33999 },
		{ 11 , "INV_MISC_DESECRATED_MAILBOOTS", nil, "Feet" },	
		{ 12, 34008 },	
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
		{ 07, "INV_SHIELD_30", nil, "Shield Enchant" },
		{ 08, 27945 },
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
			name = "BIS Example Set",
			[NORMAL_DIFF] = {
				{01,29028},{16,29524},
				{02,28609},{17,28751},
				{03,29031},{18,30737},
				{04,28765},{19,28763},
				{05,29522},{20,28790},
				{06,29523},{21,29376},
				{07,28520},{22,28190},
				{09,28771},
				{10,29458},
				{11,28523},
			}
		},
		{	--Head Slot
			name = "Head",
			[NORMAL_DIFF] = {
				{1,29028, nil, nil, "Best in slot" },
				{2,30728, nil, nil, "Great" },
				{3,24264, nil, nil, "Great" },
				{4,29508, nil, nil, "Great" },
			}
		},
		{	--Shoulders
			name = "Shoulders",
			[NORMAL_DIFF] = {
				{1,29031, nil, nil, "Best in slot" },
				{2,21874, nil, nil, "Great" },
				{3,28631, nil, nil, "Great" },
			},
		},
		{	--Back
			name = "Back",
			[NORMAL_DIFF] = {
				{1,28765, nil, nil, "Best in slot" },
				{2,31329, nil, nil, "Great" },
				{3,24254, nil, nil, "Great" },
			},
		},
		{	--Chest
			name = "Chest",
			[NORMAL_DIFF] = {
				{1,29522, nil, nil, "Best in slot" },
				{2,21875, nil, nil, "Best in slot" },
				{3,29029, nil, nil, "Great" },
			},
		},
		{	--Wrist
			name = "Wrist",
			[NORMAL_DIFF] = {
				{1,29523, nil, nil, "Best in slot" },
				{2,29183, nil, nil, "Great" },
				{3,28503, nil, nil, "Great" },
				
			},

		},
		{	--Hands
			name = "Hands",
			[NORMAL_DIFF] = {
				{1,28520, nil, nil, "Best in slot" },
				{2,28521, nil, nil, "Great" },
				{3,29032, nil, nil, "Great" },
			},
		},
		{	--Waist
			name = "Waist",
			[NORMAL_DIFF] = {
				{1,29524, nil, nil, "Best in slot" },
				{2,21873, nil, nil, "Best in slot" },
				{3,28567, nil, nil, "Great" },
			},
		},
		{	--Legs
			name = "Legs",
			[NORMAL_DIFF] = {
				{1,28751, nil, nil, "Best in slot" },
				{2,28591, nil, nil, "Great" },
				{3,24261, nil, nil, "Great" },
			},
		},
		{	--Feet
			name = "Feet",
			[NORMAL_DIFF] = {
				{1,30737, nil, nil, "Best in slot" },
				{2,28752, nil, nil, "Great" },
				{3,27525, nil, nil, "Great" },
			},
		},
		{	--Neck
			name = "Neck",
			[NORMAL_DIFF] = {
				{1,28609, nil, nil, "Best in slot" },
				{2,30726, nil, nil, "Great" },
				{3,28822, nil, nil, "Great" },
				{4,31691, nil, nil, "Great" },
			},
		},
		{	--Rings
			name = "Rings",
			[NORMAL_DIFF] = {
				{1,28763, nil, nil, "Best in slot" },
				{2,28790, nil, nil, "Best in slot" },
				{3,nil, nil, nil, "Great", [ATLASLOOT_IT_HORDE] = 29168, [ATLASLOOT_IT_ALLIANCE] = 29169 },
				{4,28259, nil, nil, "Great" },
				{5,29814, nil, nil, "Great" },
				{6,31923, nil, nil, "Great" },
			},
		},
		{	--Trinkets
			name = "Trinkets",
			[NORMAL_DIFF] = {
				{1,29376, nil, nil, "Best in slot" },
				{2,28190, nil, nil, "Best in slot" },
				{3,28190, nil, nil, "Great" },
				{4,23047, nil, nil, "Great" },
				{5,19395, nil, nil, "Great" },
				{6,30841, nil, nil, "Great" },
				{7,24390, nil, nil, "Great" },
				{8,25634, nil, nil, "Great" },
			},
		},
		{	--1-Handed Weapons
			name = "1-Handed Weapons",
			[NORMAL_DIFF] = {
				{1,28771, nil, nil, "Best in slot" },
				{2,32451, nil, nil, "Great" },
				{3,28522, nil, nil, "Great" },
				{4,23556, nil, nil, "Great" },
				{5,29353, nil, nil, "Great" },
				{6,31342, nil, nil, "Great" },
				{7,29175, nil, nil, "Great" },
			},
		},
		{
			name = "Shields / Off-Hands",
			[NORMAL_DIFF] = {
				{1,29458, nil, nil, "Best in slot" },
				{2,29274, nil, nil, "Great" },
				{3,28728, nil, nil, "Great" },
				{4,28754, nil, nil, "Great" },
				{5,22819, nil, nil, "Great" },
			},
		},
		{	--Totems
			name = "Totems",
			[NORMAL_DIFF] = {
				{1,28523, nil, nil, "Best in slot" },
				{2,27544, nil, nil, "Great" },
				{3,22396, nil, nil, "Great" },
				{4,25645, nil, nil, "Great" },
			},
		},
		el_Gems,
		el_HeadShoulder,
		el_GearEnchants,
		el_offEnchants,
	},
}