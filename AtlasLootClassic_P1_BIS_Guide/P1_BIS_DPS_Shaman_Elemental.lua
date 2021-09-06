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

data[ _FilePrefix ] ={
	name = _FilePrefix,
	ContentType = roleType_DPS,
	LoadDifficulty = LOAD_DIFF,
	TableType = NORMAL_ITTYPE,
	gameVersion = 2,
	items = {
		{
			name = "BIS Example Set",
			[NORMAL_DIFF] = {
				{ 01, 29035 },	{ 16, 29520 },
				{ 02, 28762 },	{ 17, 24262 },
				{ 03, 29037 },	{ 18, 28517 },
				{ 04, 28797 },	{ 19, 30667 },
				{ 05, 29519 },	{ 20, 28753 },
				{ 06, 29521 },	{ 21, 28785 },
				{ 07, 28780 },	{ 22, 29370 },
				{ 09, 28770 },
				{ 10, 29268 },
				{ 11, 28248 },
			}
		},
		{	--Head Slot
			name = "Head",
			[NORMAL_DIFF] = {
				{1,29035, nil, nil, "Best in slot" },
				{2,32086, nil, nil, "Great" },
				{3,28415, nil, nil, "Great" },
				{4,28278, nil, nil, "Great" },
				{5,24266, nil, nil, "Great" },
				{6,31330, nil, nil, "Great" },
				{7,28583, nil, nil, "Great" },
			}
		},
		{	--Shoulders
			name = "Shoulders",
			[NORMAL_DIFF] = {
				{1,29037, nil, nil, "Best in slot" },
				{2,32078, nil, nil, "Great" },
				{3,30925, nil, nil, "Great" },
			},
		},
		{	--Back
			name = "Back",
			[NORMAL_DIFF] = {
				{1,28797, nil, nil, "Best in slot" },
				{2,28766, nil, nil, "Great" },
				{3,30735, nil, nil, "Great" },
			},
		},
		{	--Chest
			name = "Chest",
			[NORMAL_DIFF] = {
				{1,29519, nil, nil, "Best in slot" },
				{2,29522, nil, nil, "Best in slot" },
				{3,29033, nil, nil, "Great" },
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
				{1,28780, nil, nil, "Best in slot" },
				{2,28507, nil, nil, "Great" },
				{3,29034, nil, nil, "Great" },
			},
		},
		{	--Waist
			name = "Waist",
			[NORMAL_DIFF] = {
				{1,29520, nil, nil, "Best in slot" },
				{2,24256, nil, nil, "Best in slot" },
				{3,29524, nil, nil, "Best in slot" },
				{4,28799, nil, nil, "Great" },
			},
		},
		{	--Legs
			name = "Legs",
			[NORMAL_DIFF] = {
				{1,24262, nil, nil, "Best in slot" },
				{2,30734, nil, nil, "Great" },
				{3,30541, nil, nil, "Great" },
				{4,nil, nil, nil, "Great", [ATLASLOOT_IT_HORDE] = 29141, [ATLASLOOT_IT_ALLIANCE] = 29142 },
			},
		},
		{	--Feet
			name = "Feet",
			[NORMAL_DIFF] = {
				{1,28517, nil, nil, "Best in slot" },
				{2,28810, nil, nil, "Great" },
				{3,28406, nil, nil, "Great" },
			},
		},
		{	--Neck
			name = "Neck",
			[NORMAL_DIFF] = {
				{1,28762, nil, nil, "Best in slot" },
				{2,28530, nil, nil, "Great" },
				{3,28134, nil, nil, "Great" },
			},
		},
		{	--Rings
			name = "Rings",
			[NORMAL_DIFF] = {
				{1,30667, nil, nil, "Best in slot" },
				{2,28753, nil, nil, "Best in slot" },
				{3,29287, nil, nil, "Great" },
				{4,29126, nil, nil, "Great" },
				{5,28227, nil, nil, "Great" },
				{6,31290, nil, nil, "Great" },
			},
		},
		{	--Trinkets
			name = "Trinkets",
			[NORMAL_DIFF] = {
				{1,23207, nil, nil, "Special" },
				{2,28785, nil, nil, "Best in slot" },
				{3,29370, nil, nil, "Best in slot" },
				{4,27683, nil, nil, "Great" },
				{5,29179, nil, nil, "Great" },
				{6,29132, nil, nil, "Great" },
				{7,28418, nil, nil, "Great" },
				{8,19379, nil, nil, "Great" },
			},
		},
		{	--Weapons
			name = "Weapons",
			[NORMAL_DIFF] = {
				{1,30723, nil, nil, "Best in slot" },
				{2,28770, nil, nil, "Best in slot" },
				{3,32450, nil, nil, "Great" },
				{4,23554, nil, nil, "Great" },
				{5,30832, nil, nil, "Great" },
			},
		},
		{
			name = "Shields / Off-Hands",
			[NORMAL_DIFF] ={
				{1,29273, nil, nil, "Best in slot" },
				{2,29268, nil, nil, "Best in slot" },
				{3,28734, nil, nil, "Great" },
				{4,23049, nil, nil, "Great" },
				{5,28603, nil, nil, "Great" },
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