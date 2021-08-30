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
		{ 01, "INV_MISC_DESECRATED_CLOTHHELM", nil, "Meta Gem" },
		{ 02, 32867 },	{ 17, 32765 },	
		{ 03, 32870 },
		{ 05, "INV_MISC_GEM_01", nil, "Primary"},
		{ 06, 31087 },
		{ 08, "INV_MISC_GEM_03", nil, "Meta Fit"},
		{ 09, 41429 },
	},
}

local el_HeadShoulder = {	--Extra List: Shoulder Items
	name = "Head Glyph & Shoulder Inscription",
	ExtraList = true,
	TableType = NORMAL_ITTYPE,
	[NORMAL_DIFF] = {
		{ 01, "INV_MISC_DESECRATED_CLOTHHELM", nil, "Head Glyph"},
		{ 02, [ATLASLOOT_IT_HORDE] = 29190, [ATLASLOOT_IT_ALLIANCE] = 29189 },	
		{ 04, "INV_MISC_DESECRATED_CLOTHSHOULDER", nil, "Shoulder Inscription"},
		{ 05, 28887 },	{ 20, 23547 },
		{ 06, 20078 },
		{ 07, 28878 },
		{ 08, 28912 },
		{ 09, 28904 },
	}
}

local el_GearEnchants = {	--Extra List: Gear Enchants
	name = "Gear Enchants",
	ExtraList = true,
	TableType = PROF_ITTYPE,
	[NORMAL_DIFF] = {
		{ 01 , "INV_MISC_CAPE_20", nil, "Back" }, { 16 , "INV_MISC_DESECRATED_CLOTHBRACER", nil, "Wrist" },
		{ 02, 34006, nil, nil, "best choice"}, { 17, 27911, nil, nil, "Best" },
		{ 03, 27962, nil, nil, "balanced resistance option" }, { 18, 27913, nil, nil, "2nd Best" },
		{ 04, 25084, nil, nil, "will be unlikely to pull aggro" }, { 19, 27914, nil, nil, "PvP" },
		{ 06, "INV_MISC_DESECRATED_CLOTHCHEST", nil, "Chest" },	
		{ 07, 33990, nil, nil, "Best" }, { 22, 33991, nil, nil, "2nd Best" },
		{ 08, 33992, nil, nil, "PvP" }, { 23, 27957, nil, nil, "PvP" },
		{ 10 , "INV_MISC_DESECRATED_CLOTHGLOVE", nil, "Hands" }, { 25 , "INV_MISC_DESECRATED_CLOTHPANTS", nil, "Legs" },
		{ 11, 33999, nil, nil, "Best" }, { 26, 31433 },
		{ 12, 32458, nil, nil, "inferior, use with for transient gear." }, { 27, 31431 },
		{ 14 , "INV_MISC_DESECRATED_CLOTHBOOTS", nil, "Feet" },	
		{ 15, 27948 }, { 30, 34008 },
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
		{ 05, 34010 },	{ 20, 28003 },
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
				{ 01, 28413 },	{ 16, 21873 },
				{ 02, 29374 },	{ 17, 30543 },	
				{ 03, 21874 },	{ 18, 29251 },
				{ 04, 29375 },	{ 19, 29373 },
				{ 05, 21875 },	{ 20, [ATLASLOOT_IT_HORDE] = 29168, [ATLASLOOT_IT_ALLIANCE] = 29169 },
				{ 06, 29183 },	{ 21, 29376 },
				{ 07, 27536 },	{ 22, 28190 },
				{ 09, 29175 },
				{ 10, 29170 },
				{ 11, 27885 },
			}
		},
		{
			name = "Whitemend Wisdom",
			[NORMAL_DIFF] = {
				{ 01, 24264 },	{ 16, 21873 },
				{ 02, 29374 },	{ 17, 24261 },	
				{ 03, 21874 },	{ 18, 29251 },
				{ 04, 29375 },	{ 19, 29373 },
				{ 05, 21875 },	{ 20, [ATLASLOOT_IT_HORDE] = 29168, [ATLASLOOT_IT_ALLIANCE] = 29169 },
				{ 06, 29183 },	{ 21, 29376 },
				{ 07, 27536 },	{ 22, 28190 },
				{ 09, 29175 },
				{ 10, 29170 },
				{ 11, 27885 },
			}
		},
		{
			name = "Non-Tailor Alternative",
			[NORMAL_DIFF] = {
				{ 01, 28413 },	{ 16, 29250 },
				{ 02, 29374 },	{ 17, 30543 },	
				{ 03, 27775 },	{ 18, 29251 },
				{ 04, 29375 },	{ 19, 29373 },
				{ 05, 28230 },	{ 20, [ATLASLOOT_IT_HORDE] = 29168, [ATLASLOOT_IT_ALLIANCE] = 29169 },
				{ 06, 29183 },	{ 21, 29376 },
				{ 07, 27536 },	{ 22, 28190 },
				{ 09, 29175 },
				{ 10, 29170 },
				{ 11, 27885 },
			}
		},
		{
			name = "Fresh 70 Quick Option",
			[NORMAL_DIFF] = {
				{ 01, 28413 },	{ 16, 24395 },
				{ 02, 30377 },	{ 17, 30256 },	
				{ 03, 27775 },	{ 18, 28179 },
				{ 04, 28373 },	{ 19, 29322 },
				{ 05, 28230 },	{ 20, [ATLASLOOT_IT_HORDE] = 29168, [ATLASLOOT_IT_ALLIANCE] = 29169 },
				{ 06, 28174 },	{ 21, 30841 },
				{ 07, 27536 },	{ 22, 28190 },
				{ 09, 31304 },
				{ 10, 28387 },
				{ 11, 27885 },
			}
		},
		{	--Head Slot
			name = "Head",
			[NORMAL_DIFF] = {
				{1,24264, nil, nil, "Best in slot" },
				{2,28413, nil, nil, "Great" },
				{3,22514, nil, nil, "Purified Shadow Pearl" },
				{4,19132, nil, nil, "Viable" },
				{5,31410, nil, nil, "Viable" },
				{6,29174, nil, nil, "Viable" },
				{7,31104, nil, nil, "Viable" },
			}
		},
		{	--Shoulders
			name = "Shoulders",
			[NORMAL_DIFF] = {
				{1,21874, nil, nil, "Best in slot" },
				{2,27775, nil, nil, "Non-Tailoring" },
				{3,31412, nil, nil, "Viable" },
				{4,27433, nil, nil, "Viable" },
				{5,22515, nil, nil, "Viable" },
				{6,28250, nil, nil, "Viable" },
			},
		},
		{	--Back
			name = "Back",
			[NORMAL_DIFF] = {
				{1,31329, nil, nil, "Best in slot" },
				{2,22960, nil, nil, "Best in slot" },
				{3,21583, nil, nil, "Best in slot" },
				{4,29375, nil, nil, "Best in slot" },
				{5,29354, nil, nil, "Great" },
				{6,27448, nil, nil, "Great" },
				{7,24254, nil, nil, "Great" },
				{8,28373, nil, nil, "Viable" },
				{9,27789, nil, nil, "Viable" },
				{10,25810, "INV_BANNERPVP_01", nil, "Viable" },{ 25, 25805, "INV_BANNERPVP_02", nil, "Viable" },
				{11,27946, nil, nil, "Viable" },
				{12,25945, nil, nil, "Viable" },
				{13,31465, nil, nil, "Viable" },
			},
		},
		{	--Chest
			name = "Chest",
			[NORMAL_DIFF] = {
				{1,21875, nil, nil, "Best in slot" },
				{2,28230, nil, nil, "Non-Tailoring" },
				{3,31413, nil, nil, "Viable" },
				{4,24397, nil, nil, "Viable" },
				{5,27506, nil, nil, "Viable" },
				{6,22512, nil, nil, "Viable" },
			},
		},
		{	--Wrist
			name = "Wrist",
			[NORMAL_DIFF] = {
				{1,29183, nil, nil, "Best in slot" },
				{2,29249, nil, nil, "Viable" },
				{3,21604, nil, nil, "Viable" },
				{4,22519, nil, nil, "Viable" },
				{5,24684, nil, nil, "Viable, of Healing, +68 healing" },
				{6,28174, nil, nil, "Viable" },
			},

		},
		{	--Hands
			name = "Hands",
			[NORMAL_DIFF] = {
				{1,22517, nil, nil, "Best in slot" },
				{2,27536, nil, nil, "Best in slot" },
				{3,28304, nil, nil, "Best in slot" },
				{4,24393, nil, nil, "Viable" },
				{5,29315, nil, nil, "Viable" },
				{6,31409, nil, nil, "Viable" },
				{7,29317, nil, nil, "Viable" },
			},
		},
		{	--Waist
			name = "Waist",
			[NORMAL_DIFF] = {
				{1,21873, nil, nil, "Best in slot" },
				{2,29250, nil, nil, "Non-Tailoring" },
				{3,27542, nil, nil, "Great" },
				{4,21582, nil, nil, "Viable" },
				{5,22518, nil, nil, "Viable" },
				{6,27843, nil, nil, "Viable" },
			},
		},
		{	--Legs
			name = "Legs",
			[NORMAL_DIFF] = {
				{1,30543, nil, nil, "Best in slot" },
				{2,24261, nil, nil, "Best in slot" },
				{3,24261, nil, nil, "Best in slot" },
				{4,28218, nil, nil, "Viable" },
				{5,22513, nil, nil, "Viable" },
				{6,28185, nil, nil, "Viable" },
				{7,30256, nil, nil, "Viable" },
				{8,19385, nil, nil, "Viable" },
			},
		},
		{	--Feet
			name = "Feet",
			[NORMAL_DIFF] = {
				{1,29251, nil, nil, "Best in slot" },
				{2,27411, nil, nil, "Best in slot" },
				{3,19437, nil, nil, "Great" },
				{4,22516, nil, nil, "Great" },
			},
		},
		{	--Neck
			name = "Neck",
			[NORMAL_DIFF] = {
				{1,29374, nil, nil, "Best in slot" },
				{2,30377, nil, nil, "Best in slot" },
				{3,28233, nil, nil, "Best in slot" },
				{4,31691, nil, nil, "Best in slot" },
				{5,23036, nil, nil, "Best in slot" },
				{6,21712, nil, nil, "Eye of C'Thun" },
				{7,27766, nil, nil, "Great" },
				{8,28419, nil, nil, "Viable" },
				{9,29334, nil, nil, "Viable" },
			},
		},
		{	--Rings
			name = "Rings",
			[NORMAL_DIFF] = {
				{1,29373, nil, nil, "Best in slot" },
				{2,23061, nil, nil, "Best in slot" },
				{3,22939, nil, nil, "Best in slot" },
				{4,19382, nil, nil, "Best in slot" },
				{5,21620, nil, nil, "Best in slot" },
				{6, nil, nil, nil, "Best in slot", [ATLASLOOT_IT_HORDE] = 29168, [ATLASLOOT_IT_ALLIANCE] = 29169 },
				{7,31923, nil, nil, "Best in slot"},
				{8,31383, nil, nil, "Best in slot" },
				{9,29322, nil, nil, "Viable" },
				{10,28259, nil, nil, "Viable" },
				{11,27780, nil, nil, "Viable" },
				{12,29814, nil, nil, "Viable" },
			},
		},
		{	--Trinkets
			name = "Trinkets",
			[NORMAL_DIFF] = {
				{1,29376, nil, nil, "Best in slot" },
				{2,21625, nil, nil, "Best in slot" },
				{3,19288, nil, nil, "Best in slot" },
				{4,23047, nil, nil, "Great" },
				{5,19395, nil, nil, "Great" },
				{6,28190, nil, nil, "Great" },
				{7,30841, nil, nil, "Viable" },
				{8,24390, nil, nil, "Viable" },
				{9,25634, nil, nil, "Viable" },
				{10,28370, nil, nil, "Viable" },
			},
		},
		{	--Main and two–handed
			name = "Main and two–handed",
			[NORMAL_DIFF] = {
				{1,32451, nil, nil, "Best in slot" },
				{2,23556, nil, nil, "Best in slot" },
				{3,29353, nil, nil, "Best in slot" },
				{4,31342, nil, nil, "Best in slot" },
				{5,29175, nil, nil, "Best in slot" },
				{6,28257, nil, nil, "Viable" },
				{7,23056, nil, nil, "Viable" },
				{8,31304, nil, nil, "Viable" },
				{9,27538, nil, nil, "Viable" },
				{10,28216, nil, nil, "Viable" },
				{11,27791, nil, nil, "Entry" },
				{12,28033, nil, nil, "Entry" },
				{13,29133, nil, nil, "Entry" },
			},
		},
		{	--Wands
			name = "Wands",
			[NORMAL_DIFF] = {
				{1,25295, nil, nil, "Best in slot, of Healing,  +39 Healing" },
				{2,29779, nil, nil, "Best in slot" },
				{3,27885, nil, nil, "Best in slot" },
				{4,23009, nil, nil, "Best in slot" },
			},
		},
		{	--Offhand
			name = "Off Hand",
			[NORMAL_DIFF] = {
				{1,29274, nil, nil, "Best in slot" },
				{2,29170, nil, nil, "Best in slot" },
				{3,23048, nil, nil, "Great" },
				{4,27477, nil, nil, "Viable" },
				{5,28213, nil, nil, "Viable" },
				{6,23029, nil, nil, "Viable" },
				{7,27714, nil, nil, "Viable" },
				{8,28387, nil, nil, "Viable" },
			},
		},
		el_Gems,
		el_HeadShoulder,
		el_GearEnchants,
		el_offEnchants,
	},
}