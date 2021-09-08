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

local _FileRole = "Demonology"
local _FileClass = "Warlock"
local _FilePrefix = _FileRole.." ".._FileClass

local credits ={
	url = "https://tbc.wowhead.com/guides/demonology-warlock-dps-karazhan-best-in-slot-gear-burning-crusade-classic-wow",
	title = "Burning Crusade Classic Demonology Warlock DPS Best in Slot (BiS) Phase 1 Gear Guide",
	author = "Zephan",
}

local el_Gems = {	--Extra List : Gems
	name = "Gems",
	ExtraList = true,
	TableType = PROF_ITTYPE,
	[NORMAL_DIFF] = {
		{01, "INV_MISC_DESECRATED_CLOTHHELM", nil, "Meta Gem" },
		{02, 32872}, {17, 32766},
		{05, "INV_MISC_GEM_01", nil, "Primary"},
		{06, 39470},
		{08, "INV_MISC_GEM_03", nil, "Meta Fit"},
		{09, 31104},
	}
}

local el_HeadShoulder = {	--Extra List: Shoulder Items
	name = "Head Glyph & Shoulder Inscription",
	ExtraList = true,
	TableType = NORMAL_ITTYPE,
	[NORMAL_DIFF] = {
		{01, "INV_MISC_DESECRATED_CLOTHHELM", nil, "Head Glyph"},
		{02, 29191 },	
		{04, "INV_MISC_DESECRATED_CLOTHSHOULDER", nil, "Shoulder Inscription"},
		{05, 23545 },
		{06, 28886 },
		{07, 28909 },
	}
}

local el_GearEnchants = {	--Extra List: Gear Enchants
	name = "Gear Enchants",
	ExtraList = true,
	TableType = PROF_ITTYPE,
	[NORMAL_DIFF] = {
		{01, "INV_MISC_CAPE_20", nil, "Back" },
		{02, 25084 },
		{04, "INV_MISC_DESECRATED_CLOTHCHEST", nil, "Chest" },{19, "INV_MISC_DESECRATED_CLOTHBRACER", nil, "Wrist" },
		{05, 27960 },{20, 27917 },
		{07, "INV_MISC_DESECRATED_CLOTHGLOVE", nil, "Hands" },{22, "INV_MISC_DESECRATED_CLOTHPANTS", nil, "Legs" },
		{08, 33994 },{23, 31432 },
		{09, 33997 },{24, 31430 },
		{11, "INV_MISC_DESECRATED_CLOTHBOOTS", nil, "Feet" },
		{12, 34008 },
	},
}

local el_offEnchants = {	--Extra List: Ring/Wep/Sheild Enchants
	name = "Ring/Wep/Sheild Enchants",
	ExtraList = true,
	TableType = PROF_ITTYPE,
	[NORMAL_DIFF] = {
		{01, "INV_JEWELRY_RING_23", nil, "Ring Enchant" },
		{02, 27924 },
		{04, "INV_SWORD_65", nil, "Weapon Enchant"},
		{03, 46538 },
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
			name = "BiS Example (w/ 3% Hit Totem)",
			[NORMAL_DIFF] = {
				{01,28963}, { 16,24256},
				{02,30666}, { 17,24262},
				{03,28967}, { 18,21870},
				{04,28766}, { 19,29172},
				{05,28964}, { 20,28793},
				{06,24250}, { 21,29370},
				{07,28968}, { 22,27683},
				{09,28802},
				{10,29273},
				{11,28673},
			}
		},
		{	--Head Slot
			name = "Head",
			[NORMAL_DIFF] = {
				{1,28963, nil, nil, "BiS" },
				{2,24266, nil, nil, "Alternative" },
				{3,28744, nil, nil, "Under Hit Cap" },
			}
		},
		{	--Shoulders
			name = "Shoulders",
			[NORMAL_DIFF] = {
				{1,28967, nil, nil, "BiS" },
				{2,21869, nil, nil, "Alternative" },
			},
		},
		{	--Cloak
			name = "Cloak",
			[NORMAL_DIFF] = {
				{1,28766, nil, nil, "Under Hit Cap" },
				{2,30735, nil, nil, "Over Hit Cap" },
				{3,28797, nil, nil, "Alternative" },
			},
		},
		{	--Chest
			name = "Chest",
			[NORMAL_DIFF] = {
				{1,28964, nil, nil, "BiS" },
				{2,21871, nil, nil, "Alternative" },
				{3,28602, nil, nil, "Alternative" },
			},
		},
		{	--Wrist
			name = "Bracer",
			[NORMAL_DIFF] = {
				{1,24250, nil, nil, "BiS" },
				{2,24692, nil, nil, "of Shadow Wrath (+45 Shadow Damage), Alternative" },
				{3,28515, nil, nil, "Alternative" },
			},

		},
		{	--Gloves
			name = "Gloves",
			[NORMAL_DIFF] = {
				{1,30725, nil, nil, "Under Hit Cap" },
				{2,28780, nil, nil, "Over Hit Cap" },
				{3,28507, nil, nil, "Easier to Obtain" },
				{4,28968, nil, nil, "Optional" },
			},
		},
		{	--Belt
			name = "Belt",
			[NORMAL_DIFF] = {
				{1,24256, nil, nil, "BiS" },
				{2,28799, nil, nil, "Cheaper Alternative" },
			},
		},
		{	--Legs
			name = "Legs",
			[NORMAL_DIFF] = {
				{1,24262, nil, nil, "Best" },
				{2,30734, nil, nil, "Alternative" },
				{3,28966, nil, nil, "Optional" },
			},
		},
		{	--Feet
			name = "Feet",
			[NORMAL_DIFF] = {
				{1,21870, nil, nil, "BiS" },
				{2,28585, nil, nil, "Under Hit Cap" },
				{3,28517, nil, nil, "Over Hit Cap" },
			},
		},
		{	--Neck
			name = "Neck",
			[NORMAL_DIFF] = {
				{1,28530, nil, nil, "Best Under Hit Cap" },
				{2,30666, nil, nil, "Best Over Hit Cap" },
				{3,28762, nil, nil, "Over Hit Cap" },
				{4,28134, nil, nil, "Under Hit Cap" },
			},
		},
		{	--Rings
			name = "Rings",
			[NORMAL_DIFF] = {
				{1,28793, nil, nil, "Best Under Hit Cap" },
				{2,29172, nil, nil, "Best Under Hit Cap" },
				{3,28227, nil, nil, "Under Hit Cap Easier to Obtain" },
				{4,21709, nil, nil, "Under Hit Cap Easier to Obtain" },
				{5,28753, nil, nil, "Best Over Hit Cap" },
				{6,29287, nil, nil, "Best Over Hit Cap" },
			},
		},
		{	--Trinkets
			name = "Trinkets",
			[NORMAL_DIFF] = {
				{1,19337, nil, nil, "Best Demo" },
				{2,23207, nil, nil, "Best vs Demons and Undead" },
				{3,27683, nil, nil, "Best" },
				{4,29370, nil, nil, "Best" },
				{5,29132, nil, nil, "Best Under Hit Cap" },
				{6,19379, nil, nil, "Under Hit Cap Option" },
			},
		},
		{	--1-Handed Weapons
			name = "1-Handed Weapons",
			[NORMAL_DIFF] = {
				{1,30723, nil, nil, "BiS" },
				{2,28802, nil, nil, "Raid Option" },
				{3,28770, nil, nil, "Raid Option" },
				{4,28297, nil, nil, "PvP Option" },
				{5,30787, nil, nil, "Demon" },
				{6,31336, nil, nil, "Auction House Alternative" },
				{7,23554, nil, nil, "Auction House Alternative" },
			},
		},
		{	--2-Handed Weapons
			name = "2-Handed Weapons",
			[NORMAL_DIFF] = {
				{1,22589, nil, nil, "BiS" },
			},
		},
		{	--Wands
			name = "Wands",
			[NORMAL_DIFF] = {
				{1,28673, nil, nil, "Best Under Hit Cap" },
				{2,29350, nil, nil, "Best Over Hit Cap" },
				{3,28783, nil, nil, "Best Over Hit Cap" },
				{4,28386, nil, nil, "Easier to Obtain Under Hit Cap" },
			},
		},
		{	--Offhands
			name = "Offhands",
			[NORMAL_DIFF] = {
				{1,29273, nil, nil, "BiS" },
				{2,29272, nil, nil, "Alternative" },
				{3,28734, nil, nil, "Under Hit Cap Option" },
			},
		},
		el_Gems,
		el_HeadShoulder,
		el_GearEnchants,
		el_offEnchants,
	},
}