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
			name = "Every Pre-Raid Best",
			[NORMAL_DIFF] = {
				{ 01, 24264 },	{ 16, 29524 },
				{ 02, 31691 },	{ 17, 24261 },
				{ 03, 21874 },	{ 18, 27411 },
				{ 04, 31329 },	{ 19, [ATLASLOOT_IT_HORDE] = 29168, [ATLASLOOT_IT_ALLIANCE] = 29169 },
				{ 05, 29522 },	{ 20, 28259 },
				{ 06, 29523 },	{ 21, 29376 },
				{ 07, 27806 },	{ 22, 28190 },
				{ 09, 32451 },
				{ 10, 29274 },
				{ 11, 27544 },
			},
		},
		{
			name = "Fresh 70 Realistic Set",
			[NORMAL_DIFF] = {
				{ 01, 29174 },	{ 16, 29524 },
				{ 02, 31691 },	{ 17, 27875 },
				{ 03, 27775 },	{ 18, 27525 },
				{ 04, 24254 },	{ 19, [ATLASLOOT_IT_HORDE] = 29168, [ATLASLOOT_IT_ALLIANCE] = 29169 },
				{ 05, 29522 },	{ 20, 28259 },
				{ 06, 29253 },	{ 21, 29376 },
				{ 07, 27806 },	{ 22, 28190 },
				{ 09, 31304 },
				{ 10, 31292 },
				{ 11, 25645 },
			}
		},
		{	--Head Slot
			name = "Head",
			[NORMAL_DIFF] = {
				{1,24264, nil, nil, "Best in slot" },
				{2,29508, nil, nil, "Great" },
				{3,27759, nil, nil, "Great" },
				{4,29174, nil, nil, "Great" },
			}
		},
		{	--Shoulders
			name = "Shoulders",
			[NORMAL_DIFF] = {
				{1,21874, nil, nil, "Best in slot" },
				{2,27775, nil, nil, "Great" },
				{3,27826, nil, nil, "Great" },
			},
		},
		{	--Back
			name = "Back",
			[NORMAL_DIFF] = {
				{1,31329, nil, nil, "Best in slot" },
				{2,24254, nil, nil, "Great" },
				{3,27448, nil, nil, "Great" },
			},
		},
		{	--Chest
			name = "Chest",
			[NORMAL_DIFF] = {
				{1,29522, nil, nil, "Best in slot" },
				{2,21875, nil, nil, "Best in slot" },
				{3,23527, nil, nil, "Great" },
				{4,30298, nil, nil, "Great" },
			},
		},
		{	--Bracer
			name = "Bracer",
			[NORMAL_DIFF] = {
				{1,29523, nil, nil, "Best in slot" },
				{2,29183, nil, nil, "Great" },
				{3,28194, nil, nil, "Great" },
			},

		},
		{	--Gloves
			name = "Gloves",
			[NORMAL_DIFF] = {
				{1,27806, nil, nil, "Best in slot" },
				{2,28304, nil, nil, "Great" },
				{3,29506, nil, nil, "Great" },
			},
		},
		{	--Belt
			name = "Belt",
			[NORMAL_DIFF] = {
				{1,29524, nil, nil, "Best in slot" },
				{2,21873, nil, nil, "Best in slot" },
				{3,29250, nil, nil, "Great" },
			},
		},
		{	--Legs
			name = "Legs",
			[NORMAL_DIFF] = {
				{1,24261, nil, nil, "Best in slot" },
				{2,30543, nil, nil, "Great" },
				{3,31343, nil, nil, "Great" },
			},
		},
		{	--Boots
			name = "Boots",
			[NORMAL_DIFF] = {
				{1,27411, nil, nil, "Best in slot" },
				{2,27549, nil, nil, "Great" },
				{3,27525, nil, nil, "Great" },
			},
		},
		{	--Neck
			name = "Neck",
			[NORMAL_DIFF] = {
				{1,31691, nil, nil, "Best in slot" },
				{2,28233, nil, nil, "Great" },
				{3,29374, nil, nil, "Great" },
			},
		},
		{	--Rings
			name = "Rings",
			[NORMAL_DIFF] = {
				{1,nil, nil, nil, "Best in slot",[ATLASLOOT_IT_HORDE] = 29168, [ATLASLOOT_IT_ALLIANCE] = 29169 },
				{2,28259, nil, nil, "Best in slot" },
				{3,31923, nil, nil, "Best in slot" },
				{4,29814, nil, nil, "Best in slot" },
				{5,29373, nil, nil, "Best in slot" },
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
		{	--Weapons
			name = "Weapons",
			[NORMAL_DIFF] = {
				{1,32451, nil, nil, "Best in slot" },
				{2,23556, nil, nil, "Great" },
				{3,29353, nil, nil, "Great" },
				{4,31342, nil, nil, "Great" },
				{5,29175, nil, nil, "Great" },
			},
		},
		{	--Shields / Off-Hands
			name = "Shields / Off-Hands",
			[NORMAL_DIFF] = {
				{1,29274, nil, nil, "Best in slot" },
				{2,22819, nil, nil, "Great" },
				{3,27477, nil, nil, "Great" },
				{4,27772, nil, nil, "Great" },
				{5,31292, nil, nil, "Great" },
			},
		},
		{	--Totems
			name = "Totems",
			[NORMAL_DIFF] = {
				{1,27544, nil, nil, "Best in slot" },
				{2,22396, nil, nil, "Great" },
				{3,25645, nil, nil, "Great" },
			},
		},
		el_Gems,
		el_HeadShoulder,
		el_GearEnchants,
		el_offEnchants,
	},
}