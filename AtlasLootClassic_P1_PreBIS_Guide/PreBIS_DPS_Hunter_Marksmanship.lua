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

local _FileRole = "Marksmanship"
local _FileClass = "Hunter"
local _FilePrefix = _FileRole.." ".._FileClass

local el_Gems = {	--Extra List : Gems
	name = "Gems",
	ExtraList = true,
	TableType = PROF_ITTYPE,
	[NORMAL_DIFF] = {
		{ 01, "INV_MISC_DESECRATED_MAILHELM", nil, "Meta Gem" },
		{ 02, 32873 },	{ 17, 32766 },
		{ 04, "INV_MISC_GEM_01", nil, "Primary"},
		{ 05, 31085 },
	}
}

local el_HeadShoulder = {	--Extra List: Shoulder Items
	name = "Head Glyph, Shoulder Inscription, Meta Fit Gems",
	ExtraList = true,
	TableType = NORMAL_ITTYPE,
	[NORMAL_DIFF] = {
		{ 01, "INV_MISC_DESECRATED_MAILHELM", nil, "Head Glyph"},
		{ 02, 29192 },
		{ 04, "INV_MISC_DESECRATED_MAILSHOULDER", nil, "Shoulder Inscription"},
		{ 05, 23548 },	{ 20, 28888 },
		{ 07, "INV_MISC_GEM_03", nil, "Meta Fit Gems"},
		{ 08, 30549 },	{ 23, 30602 },
		{ 09, 30582 },	{ 24, 30550 },
	}
}

local el_GearEnchants = {	--Extra List: Gear Enchants
	name = "Gear Enchants",
	ExtraList = true,
	TableType = PROF_ITTYPE,
	[NORMAL_DIFF] = {
		{ 01 , "INV_MISC_CAPE_20", nil, "Back" },	
		{ 02, 34004 },	
		{ 04, "INV_MISC_DESECRATED_MAILCHEST", nil, "Chest" },	{ 19 , "INV_MISC_DESECRATED_MAILBRACER", nil, "Wrist" },
		{ 05, 27960 },	{ 20, 34002 },
		{ 07 , "INV_MISC_DESECRATED_MAILPANTS", nil, "Legs" },	{ 22 , "INV_MISC_DESECRATED_MAILGLOVE", nil, "Hands" },
		{ 08, 35554 },	{ 23, 25080 },
		{ 10 , "INV_MISC_DESECRATED_MAILBOOTS", nil, "Feet" },	
		{ 11, 27951 },	
	},
}

local el_offEnchants = {	--Extra List: Ring/Wep/Sheild Enchants
	name = "Ring/Wep/Sheild Enchants",
	ExtraList = true,
	TableType = PROF_ITTYPE,
	[NORMAL_DIFF] = {
		{ 01, "INV_JEWELRY_RING_23", nil, "Ring Enchant" },
		{ 02, 27920 },
		{ 04, "INV_SWORD_65", nil, "Weapon Enchant"},
		{ 05, 23800 },	{ 20, 27977 },
		{ 07, "INV_WEAPON_BOW_07", nil, "Guns and Bows" },
		{ 08, 22793 },	{ 23, 30332 },
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
			name = "PreRaid, Optimized for DPS",
			[NORMAL_DIFF] = {
				{ 01, 28275 },	{ 16, 29526 },
				{ 02, 29381 },	{ 17, 27874 },
				{ 03, 27801 },	{ 18, 25686 },
				{ 04, 24259 },	{ 19, 30860 },
				{ 05, 29525 },	{ 20, 31077 },
				{ 06, 29527 },	{ 21, 28288 },
				{ 07, 27474 },	{ 22, 29383 },
				{ 09, 28435 },	{ 24,  },
				{ 11, 29351 },
				{ 12, 18714 },
			}
		},
		{	--Head Slot
			name = "Head",
			[NORMAL_DIFF] = {
				{1,28275, nil, nil, "BiS" },
				{2,22438, nil, nil, "Optional" },
				{3,31109, nil, nil, "Optional" },
				{4,31106, nil, nil, "Optional" },
				{5,31281, nil, nil, "Optional" },
				{6,27414, nil, nil, "Optional" },
			}
		},
		{	--Shoulders
			name = "Shoulders",
			[NORMAL_DIFF] = {
				{1,27801, nil, nil, "BiS" },
				{2,25790, nil, nil, "Optional", [ATLASLOOT_IT_ALLIANCE] = true, [ATLASLOOT_IT_HORDE] = false },
				{3,22439, nil, nil, "Optional" },
				{4,27797, nil, nil, "Optional" },
				{5,27434, nil, nil, "Optional" },
			},
		},
		{	--Cloak
			name = "Cloak",
			[NORMAL_DIFF] = {
				{1,24259, nil, nil, "BiS" },
				{2,29382, nil, nil, "Optional" },
				{3,27878, nil, nil, "Optional" },
				{4,27892, nil, nil, "Optional" },
			},
		},
		{	--Chest
			name = "Chest",
			[NORMAL_DIFF] = {
				{1,28228, nil, nil, "BiS" },
				{2,29525, nil, nil, "BiS" },
				{3,29515, nil, nil, "Optional" },
				{4,30933, nil, nil, "Optional" },
				{5,22436, nil, nil, "Optional" },
			},
		},
		{	--Wrist
			name = "Wrist",
			[NORMAL_DIFF] = {
				{1,29527, nil, nil, "BiS" },
				{2,29246, nil, nil, "Optional" },
				{3,25697, nil, nil, "Optional" },
				{4,29517, nil, nil, "Optional" },
				{5,22443, nil, nil, "Optional" },
			},

		},
		{	--Gloves
			name = "Gloves",
			[NORMAL_DIFF] = {
				{1,27474, nil, nil, "BiS" },
				{2,16463, nil, nil, "Optional" },
				{3,16571, nil, nil, "Optional" },
				{4,30951, nil, nil, "Optional" },
				{5,22441, nil, nil, "Optional" },
				{6,30003, nil, nil, "Optional" },
			},
		},
		{	--Belt
			name = "Belt",
			[NORMAL_DIFF] = {
				{1,29526, nil, nil, "BiS" },
				{2,27760, nil, nil, "Optional" },
				{3,29516, nil, nil, "Optional" },
				{4,25695, nil, nil, "Optional" },
				{5,22442, nil, nil, "Optional" },
			},
		},
		{	--Legs
			name = "Legs",
			[NORMAL_DIFF] = {
				{1,27874, nil, nil, "BiS" },
				{2,30538, nil, nil, "BiS" },
				{3,27837, nil, nil, "Optional" },
				{4,22437, nil, nil, "Optional" },
			},
		},
		{	--Boots
			name = "Boots",
			[NORMAL_DIFF] = {
				{1,25686, nil, nil, "BiS" },
				{2,31288, nil, nil, "Optional" },
				{3,22440, nil, nil, "Optional" },
				{4,30401, nil, nil, "Optional" },
			},
		},
		{	--Neck
			name = "Neck",
			[NORMAL_DIFF] = {
				{1,29381, nil, nil, "BiS" },
				{2,19377, nil, nil, "Optional" },
				{3,28343, nil, nil, "Optional" },
				{4,25562, nil, nil, "Optional" },
			},
		},
		{	--Rings
			name = "Rings",
			[NORMAL_DIFF] = {
				{1,30860, nil, nil, "BiS" },
				{2,31077, nil, nil, "BiS" },
				{3,23038, nil, nil, "Optional" },
				{4,27925, nil, nil, "Optional" },
				{5,30973, nil, nil, "Optional" },
			},
		},
		{	--Trinkets
			name = "Trinkets",
			[NORMAL_DIFF] = {
				{1,28034, nil, nil, "BiS" },
				{2,29383, nil, nil, "BiS" },
				{3,28288, nil, nil, "Optional" },
				{4,21670, nil, nil, "Optional" },
				{5,28041, nil, nil, "Optional" },
			},
		},
		{	--Main Hand
			name = "Main Hand",
			[NORMAL_DIFF] = {
				{1,27846, nil, nil, "BiS" },
				{2,30277, nil, nil, "Optional" },
				{3,21673, nil, nil, "Optional" },
				{4,28263, nil, nil, "Optional" },
			},
		},
		{	--Offhand
			name = "Offhand",
			[NORMAL_DIFF] = {
				{1,28315, nil, nil, "BiS" },
				{2,29372, nil, nil, "Optional" },
				{3,23242, nil, nil, "Optional" },
				{4,29121, nil, nil, "Optional" },
			},
		},
		{	--Two-Handed
			name = "Two-Handed",
			[NORMAL_DIFF] = {
				{1,28435, nil, nil, "BiS" },
				{2,27903, nil, nil, "Optional" },
				{3,29356, nil, nil, "Optional" },
				{4,23039, nil, nil, "Optional" },
				{5,29329, nil, nil, "Optional" },
			},
		},
		{	--Ranged Weapon
			name = "Ranged Weapon",
			[NORMAL_DIFF] = {
				{1,29351, nil, nil, "BiS" },
				{2,22812, nil, nil, "Optional" },
				{3, nil, nil, nil, "Optional", [ATLASLOOT_IT_HORDE] = 29152, [ATLASLOOT_IT_ALLIANCE] = 29151 },
				{4,31323, nil, nil, "Optional" },
				{5,31303, nil, nil, "Optional" },
			},
		},
		{	--Quivers/Arros, Pouches/Ammo
			name = "Quivers/Arros, Pouches/Ammo",
			[NORMAL_DIFF] = {
				{ 01, "INV_MISC_QUIVER_09", nil, "Quivers" },	{ 16, "INV_AMMO_ARROW_02", nil, "Arrows" },
				{ 02, 18714 },	{ 17, 31949 },
				{ 03, [ATLASLOOT_IT_HORDE] = 29143, [ATLASLOOT_IT_ALLIANCE] = 29144 },	{ 18, 30611 },
				{ 04, 19319 },	{ 19, 28056 },
				{ 06, "INV_MISC_BAG_09_RED", nil, "Ammo Pouches" },	{ 21, "INV_AMMO_BULLET_02", nil, "Bullets" },
				{ 07, 29118 },	{ 22, [ATLASLOOT_IT_HORDE] = 32882, [ATLASLOOT_IT_ALLIANCE] = 32883 },
				{ 08, 19320 },	{ 23, 30612 },
				{ 24, 28061 },
			},
		},
		el_Gems,
		el_HeadShoulder,
		el_GearEnchants,
		el_offEnchants,
	},
}