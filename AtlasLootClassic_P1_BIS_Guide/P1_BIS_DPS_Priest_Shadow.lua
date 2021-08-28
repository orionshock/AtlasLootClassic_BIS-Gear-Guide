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

local _FileRole = "Shadow"
local _FileClass = "Priest"
local _FilePrefix = _FileRole.." ".._FileClass

local el_Gems = {	--Extra List : Gems
	name = "Gems",
	ExtraList = true,
	TableType = PROF_ITTYPE,
	[NORMAL_DIFF] = {
		{ 01, "INV_MISC_DESECRATED_CLOTHHELM", nil, "Meta Gem" },
		{ 02, 32872 }, { 17, 32766 },
		{ 04, "INV_MISC_GEM_01", nil, "Primary"},
		{ 05, 31088 },
		{ 07, "INV_MISC_GEM_03", nil, "Meta Fit"},
		{ 08, 39470 },
	}
}

local el_HeadShoulder = {	--Extra List: Shoulder Items
	name = "Head Glyph & Shoulder Inscription",
	ExtraList = true,
	TableType = NORMAL_ITTYPE,
	[NORMAL_DIFF] = {
		{ 01, "INV_MISC_DESECRATED_CLOTHHELM", nil, "Head Glyph"},
		{ 02, 29191 },
		{ 04, "INV_MISC_DESECRATED_CLOTHSHOULDER", nil, "Shoulder Inscription"},
		{ 05, 28886 },
		{ 06, 23545 },	{ 21, 28881 },	
		{ 07, 20076 },
		{ 08, 28909 },	{ 23, 28903 },
	}
}

local el_GearEnchants = {	--Extra List: Gear Enchants
	name = "Gear Enchants",
	ExtraList = true,
	TableType = PROF_ITTYPE,
	[NORMAL_DIFF] = {
		{ 01 , "INV_MISC_CAPE_20", nil, "Back" },	
		{ 02, 34006, nil, nil, "Defensive Best" },{ 17, 25084, nil, nil, "Helps reduce aggro" },
		{ 03, 27962, nil, nil, "Defensive, balanced / expensive" },	{ 18, 34003, nil, nil, "For PvP and maybe in PvE" },
		{ 04, "INV_MISC_DESECRATED_CLOTHCHEST", nil, "Chest" },	
		{ 05, 33990 },{ 20, 33991 },
		{ 06, 33992, nil, nil, "PvP" },{ 21, 27957, nil, nil, "PvP Alt or Stam for PvE" },
			
		{ 08 , "INV_MISC_DESECRATED_CLOTHBRACER", nil, "Wrist" },{ 23 , "INV_MISC_DESECRATED_CLOTHGLOVE", nil, "Hands" },
		{ 09, 27917, nil, nil, "BIS" }, { 24, 33997, nil, nil, "BIS" },
		{ 10, 27914, nil, nil, "PvP Alt" }, { 25, 33994, nil, nil, "Alternative" },
			
		{ 12 , "INV_MISC_DESECRATED_CLOTHPANTS", nil, "Legs" }, { 27 , "INV_MISC_DESECRATED_CLOTHBOOTS", nil, "Feet" },
		{ 13, 31432, nil, nil, "Best" }, { 28, 27948, nil, nil, "BIS" },
		{ 14, 31430, nil, nil, "Alternative" },{ 29, 34008, nil, nil, "Alternate" },
		{ 30, 27954, nil, nil, "PvP" },
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
		{ 05, 27982 },
		{ 06, 27975 },
		{ 08, 28003, nil, nil, "entirely situational and not the primary choice" },	
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
			name = "Maximum Output",
			[NORMAL_DIFF] = {
				{ 01, 24266 },	{ 16, 30675 },
				{ 02, 30666 },	{ 17, 24262 },	
				{ 03, 21869 },	{ 18, 21870 },
				{ 04, 25043, nil, nil, "of Shadow Wrath. +45 Shadow Damage" },	{ 19, 21709 },
				{ 05, 21871 },	{ 20, 23031 },
				{ 06, 30684 },	{ 21, 29370 },
				{ 07, 28780 },	{ 22, 27683 },
				{ 09, 30723 },
				{ 10, 29272 },
				{ 11, 25295, nil, nil, "of Shadow Wrath. +25 Shadow Damage" },
			}
		},
		{
			name = "Realistic Setup",
			[NORMAL_DIFF] = {
				{ 01, 24266 },	{ 16, 24256 },
				{ 02, 30666 },	{ 17, 24262 },	
				{ 03, 21869 },	{ 18, 21870 },
				{ 04, 25043, nil, nil, "of Shadow Wrath. +45 Shadow Damage" },	{ 19, 28793 },
				{ 05, 21871 },	{ 20, 29352 },
				{ 06, 24692, nil, nil, "of Shadow Wrath. +45 Shadow Damage" },	{ 21, 29370 },
				{ 07, 28507 },	{ 22, 27683 },
				{ 09, 28770 },
				{ 10, 29272 },
				{ 11, 25295, nil, nil, "of Shadow Wrath. +25 Shadow Damage" },
			},
		},
		{	--Head Slot
			name = "Head",
			[NORMAL_DIFF] = {
				{1,24266, nil, nil, "Best in slot" },
				{2,29058, nil, nil, "Great" },
			}
		},
		{	--Shoulders
			name = "Shoulders",
			[NORMAL_DIFF] = {
				{1,21869, nil, nil, "Best in slot" },
				{2,29060, nil, nil, "Viable" },
			},
		},
		{	--Back
			name = "Back",
			[NORMAL_DIFF] = {
				{1, 25043, nil, nil, "of Shadow Wrath. +45 Shadow Damage, Best in slot" },
				{2,28766, nil, nil, "Best in slot" },
				{3,28570, nil, nil, "Best in slot" },
				{4,24252, nil, nil, "Best in slot" },
			},
		},
		{	--Chest
			name = "Chest",
			[NORMAL_DIFF] = {
				{1,21871, nil, nil, "Best in slot" },
				{2,29056, nil, nil, "Viable" },
			},
		},
		{	--Wrist
			name = "Wrist",
			[NORMAL_DIFF] = {
				{1,30684, nil, nil, "of Shadow Wrath, +58 Shadow Damage -- Best in slot" },
				{2,24692, nil, nil, "of Shadow Wrath, +45 Shadow Damage -- Great" },
				{3,24250, nil, nil, "Great" },
				{4,28515, nil, nil, "Viable" },
				{5,28477, nil, nil, "Viable" },
			},

		},
		{	--Hands
			name = "Hands",
			[NORMAL_DIFF] = {
				{1,28507, nil, nil, "Best in slot" },
				{2,30725, nil, nil, "Best in slot" },
				{3,28780, nil, nil, "Great" },
			},
		},
		{	--Waist
			name = "Waist",
			[NORMAL_DIFF] = {
				{1,28799, nil, nil, "Best in slot" },
				{2,24256, nil, nil, "Best in slot" },
			},
		},
		{	--Legs
			name = "Legs",
			[NORMAL_DIFF] = {
				{1,30734, nil, nil, "Best in slot" },
				{2,24262, nil, nil, "Best in slot" },
				{3,28594, nil, nil, "Great" },
			},
		},
		{	--Feet
			name = "Feet",
			[NORMAL_DIFF] = {
				{1,21870, nil, nil, "Best in slot" },
				{2,28585, nil, nil, "Viable" },
				{3,28517, nil, nil, "Viable" },
			},
		},
		{	--Neck
			name = "Neck",
			[NORMAL_DIFF] = {
				{1,30666, nil, nil, "Best in slot" },
				{2,28530, nil, nil, "Viable" },
				{3,18814, nil, nil, "Viable" },
			},
		},
		{	--Rings
			name = "Rings",
			[NORMAL_DIFF] = {
				{1,21709, nil, nil, "Best in slot" },
				{2,23031, nil, nil, "Best in slot" },
				{3,28793, nil, nil, "Best in slot" },
				{4,29172, nil, nil, "Great" },
				{5,28555, nil, nil, "Great" },
				{6,29126, nil, nil, "Great" },
				{7,29352, nil, nil, "Great" },
				{8,28753, nil, nil, "Great" },
				{9,19434, nil, nil, "Great" },
				{10,19147, nil, nil, "Great" },
			},
		},
		{	--Trinkets
			name = "Trinkets",
			[NORMAL_DIFF] = {
				{1,23207, nil, nil, "Best in slot" },
				{2,29370, nil, nil, "Best in slot" },
				{3,23046, nil, nil, "Best in slot" },
				{4,19379, nil, nil, "Great" },
				{5,27683, nil, nil, "Great" },
				{6,28789, nil, nil, "Great" },
			},
		},
		{	--Main and two–handed
			name = "Main and 2–handed",
			[NORMAL_DIFF] = {
				{1,30723, nil, nil, "Best in slot" },
				{2,28770, nil, nil, "Great" },
				{3,23450, nil, nil, "Great" },
				{4,28297, nil, nil, "Great" },
				{5,30832, nil, nil, "Viable" },				
			},
		},
		{	--Wand
			name = "Wand",
			[NORMAL_DIFF] = {
				{1,28673, nil, nil, "Best in slot" },
				{2,32872, nil, nil, "Best in slot" },
				{3,29350, nil, nil, "Best in slot" },
			},
		},
		{
			name = "Off Hand",
			[NORMAL_DIFF] = {
				{1,29272, nil, nil, "Best in slot" },
			}
		},
		el_Gems,
		el_HeadShoulder,
		el_GearEnchants,
		el_offEnchants,
	},
}