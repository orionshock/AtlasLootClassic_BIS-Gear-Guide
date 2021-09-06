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

local _FileRole = "Elemental"
local _FileClass = "Shaman"
local _FilePrefix = _FileRole.." ".._FileClass

local el_Gems = {	--Extra List : Gems
	name = "Gems",
	ExtraList = true,
	TableType = PROF_ITTYPE,
	[NORMAL_DIFF] = {
		{ 01, "INV_MISC_DESECRATED_MAILHELM", nil, "Meta Gem" },
		{ 02, 44794 },	{ 17, 32766 },
		{ 04, "INV_MISC_GEM_01", nil, "Primary"},
		{ 05, 31088 },
		{ 07, "INV_MISC_GEM_03", nil, "Meta Fit"},
		{ 08, 31104 },	{ 23, 31107 },
	}
}

local el_HeadShoulder = {	--Extra List: Shoulder Items
	name = "Head Glyph & Shoulder Inscription",
	ExtraList = true,
	TableType = NORMAL_ITTYPE,
	[NORMAL_DIFF] = {
		{ 01, "INV_MISC_DESECRATED_MAILHELM", nil, "Head Glyph"},
		{ 02, 29191 },
		{ 04, "INV_MISC_DESECRATED_MAILSHOULDER", nil, "Shoulder Inscription"},
		{ 05, 28886 },	{ 20, 28909 },
	}
}

local el_GearEnchants = {	--Extra List: Gear Enchants
	name = "Gear Enchants",
	ExtraList = true,
	TableType = PROF_ITTYPE,
	[NORMAL_DIFF] = {
		{ 01 , "INV_MISC_CAPE_20", nil, "Back" },
		{ 02, 25084 },
		{ 03, 34003, nil, nil, "PvP" },
		{ 05, "INV_MISC_DESECRATED_MAILCHEST", nil, "Chest" },	{ 20 , "INV_MISC_DESECRATED_MAILBRACER", nil, "Wrist" },
		{ 06, 27960 },	{ 21, 27917 },
		{ 08 , "INV_MISC_DESECRATED_MAILPANTS", nil, "Legs" },	{ 23 , "INV_MISC_DESECRATED_MAILGLOVE", nil, "Hands" },
		{ 09, 31432 },	{ 24, 33997 },
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
		{ 02, 27924 },
		{ 04, "INV_SWORD_65", nil, "Weapon Enchant"},
		{ 05, 27975 },
		{ 07, "INV_SHIELD_30", nil, "Shield Enchant" },
		{ 08, 27945 },
	},
}

data[ _FilePrefix ] = {
	name = _FilePrefix,
	ContentType = roleType_DPS,
	LoadDifficulty = LOAD_DIFF,
	TableType = NORMAL_ITTYPE,
	gameVersion = 2,
	items = {
		{
			name = "Pre BIS Example",
			[NORMAL_DIFF] = {
				{ 01, 32086 },	{ 16, 29520 },
				{ 02, 28134 },	{ 17, 24262 },
				{ 03, 32078 },	{ 18, 28406 },
				{ 04, 29369 },	{ 19, 29367 },
				{ 05, 29519 },	{ 20, 29352 },
				{ 06, 29521 },	{ 21, 27683 },
				{ 07, 27465 },	{ 22, 29370 },
				{ 09, 30832 },
				{ 10, 29268 },
				{ 11, 28248 },
			}
		},
		{	--Head Slot
			name = "Head",
			[NORMAL_DIFF] = {
				{1,32086, nil, nil, "Best in slot" },
				{2,28415, nil, nil, "Great" },
				{3,28278, nil, nil, "Great" },
				{4,24266, nil, nil, "Great" },
				{5,31330, nil, nil, "Great" },
				{6,31107, nil, nil, "Great" },
			}
		},
		{	--Shoulders
			name = "Shoulders",
			[NORMAL_DIFF] = {
				{1,32078, nil, nil, "Best in slot" },
				{2,30925, nil, nil, "Great" },
				{3,27796, nil, nil, "Great" },
			},
		},
		{	--Back
			name = "Back",
			[NORMAL_DIFF] = {
				{1,29369, nil, nil, "Best in slot" },
				{2,31201, nil, nil, "of Nature's Wrath, Great" },
				{3,27981, nil, nil, "Great" },
			},
		},
		{	--Chest
			name = "Chest",
			[NORMAL_DIFF] = {
				{1,29519, nil, nil, "Best in slot" },
				{2,29522, nil, nil, "Best in slot" },
				{3,28191, nil, nil, "Great" },
				{4,31340, nil, nil, "Great" },
			},
		},
		{	--Wrist
			name = "Wrist",
			[NORMAL_DIFF] = {
				{1,29521, nil, nil, "Best in slot" },
				{2,29523, nil, nil, "Best in slot" },
				{3,24250, nil, nil, "Great" },
				{4,28638, nil, nil, "Great" },
			},

		},
		{	--Hands
			name = "Hands",
			[NORMAL_DIFF] = {
				{1,27465, nil, nil, "Best in slot" },
				{2,27793, nil, nil, "Best in slot" },
				{3,31149, nil, nil, "Great" },
			},
		},
		{	--Waist
			name = "Waist",
			[NORMAL_DIFF] = {
				{1,29520, nil, nil, "Best in slot" },
				{2,24256, nil, nil, "Best in slot" },
				{3,29524, nil, nil, "Best in slot" },
				{4,31283, nil, nil, "Great" },
			},
		},
		{	--Legs
			name = "Legs",
			[NORMAL_DIFF] = {
				{1,24262, nil, nil, "Best in slot" },
				{2,30541, nil, nil, "Great" },
				{3, nil, nil, nil, "Option", [ATLASLOOT_IT_HORDE] = 29141, [ATLASLOOT_IT_ALLIANCE] = 29142 },
				{4,30709, nil, nil, "Great" },
			},
		},
		{	--Feet
			name = "Feet",
			[NORMAL_DIFF] = {
				{1,28406, nil, nil, "Best in slot" },
				{2,28179, nil, nil, "Great" },
				{3,28640, nil, nil, "Great" },
			},
		},
		{	--Neck
			name = "Neck",
			[NORMAL_DIFF] = {
				{1,28134, nil, nil, "Best in slot" },
				{2,31692, nil, nil, "Great" },
				{3,29333, nil, nil, "Great" },
			},
		},
		{	--Rings
			name = "Rings",
			[NORMAL_DIFF] = {
				{1,29126, nil, nil, "Best in slot" },
				{2,29367, nil, nil, "Best in slot" },
				{3,29352, nil, nil, "Best in slot" },
				{4,31290, nil, nil, "Best in slot" },
				{5,29172, nil, nil, "Great" },
				{6,28227, nil, nil, "Great" },
			},
		},
		{	--Trinkets
			name = "Trinkets",
			[NORMAL_DIFF] = {
				{1,23207, nil, nil, "Special" },
				{2,29370, nil, nil, "Best in slot" },
				{3,27683, nil, nil, "Best in slot" },
				{4,29179, nil, nil, "Great" },
				{5,29132, nil, nil, "Great" },
				{6,28418, nil, nil, "Great" },
				{7,19379, nil, nil, "Great" },
			},
		},
		{	--1-Handed Weapons
			name = "1-Handed Weapons",
			[NORMAL_DIFF] = {
				{1,32450, nil, nil, "Best in slot" },
				{2,23554, nil, nil, "Great" },
				{3,30832, nil, nil, "Great" },
				{4,27868, nil, nil, "Great" },
			},
		},
		{	--Shields / Off-Hands
			name = "Shields / Off-Hands",
			[NORMAL_DIFF] ={
				{1,29273, nil, nil, "Best in slot" },
				{2,29268, nil, nil, "Best in slot" },
				{3,31287, nil, nil, "Great" },
				{4,23049, nil, nil, "Great" },
				{5,28412, nil, nil, "Great" },
			},	
		},
		{	--Totems
			name = "Totems",
			[NORMAL_DIFF] = {
				{1,28248, nil, nil, "Best in slot" },
				{2,23199, nil, nil, "Great" },
				{3,29389, nil, nil, "Great" },
			},
		},
		el_Gems,
		el_HeadShoulder,
		el_GearEnchants,
		el_offEnchants,
	},
}