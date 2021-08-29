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

local _FileRole = "Protection"
local _FileClass = "Warrior"
local _FilePrefix = _FileRole.." ".._FileClass

local el_Gems = {	--Extra List : Gems
	name = "Gems",
	ExtraList = true,
	TableType = PROF_ITTYPE,
	[NORMAL_DIFF] = {
		{ 01, "INV_MISC_DESECRATED_PLATEHELM", nil, "Meta Gem" },
		{ 02, 32866 },{ 17, 32765 },
		{ 04, "INV_MISC_GEM_01", nil, "Primary"},
		{ 05, 31092 },{ 20, 28950 },
	}
}

local el_HeadShoulder = {	--Extra List: Shoulder Items
	name = "Head Glyph & Shoulder Inscription",
	ExtraList = true,
	TableType = NORMAL_ITTYPE,
	[NORMAL_DIFF] = {
		{ 01, "INV_MISC_DESECRATED_PLATEHELM", nil, "Head Glyph"},
		{ 02, 19782 },	{ 17, 29186 },
		{ 04, "INV_MISC_DESECRATED_PLATESHOULDER", nil, "Shoulder Inscription"},
		{ 05, 28889 },	{ 20, 28911 },
		{ 06, 34330, nil, nil, "cheap alternative" },	{ 21, 23549, nil, nil, "as available" },
	}
}

local el_GearEnchants = {	--Extra List: Gear Enchants
	name = "Gear Enchants",
	ExtraList = true,
	TableType = PROF_ITTYPE,
	[NORMAL_DIFF] = {
		{ 01, "INV_MISC_CAPE_20", nil, "Cloak" },
		{ 02, 34004 },
		{ 04, "INV_MISC_DESECRATED_PLATECHEST", nil, "Chest" },{ 19, "INV_MISC_DESECRATED_PLATEBRACER", nil, "Bracer" },
		{ 05, 27960 },{ 20, 27914 },
		{ 06, 27957, nil, nil, "Cheap" },{ 21, 27906 },
		{ 07, 33992, nil, nil, "helps with crit immunity" },{ 22, 20011, nil, nil, "cheap" },
		{ 09, "INV_MISC_DESECRATED_PLATEPANTS", nil, "Legs" },{ 24, "INV_MISC_DESECRATED_PLATEGLOVES", nil, "Gloves" },
		{ 10, 35555 },{ 25, 25072 },
		{ 11, 44970, nil, nil, "Cheap" },{ 26, 44970, nil, nil, "Cheap" },
		{ 13, "INV_MISC_DESECRATED_PLATEBOOTS", nil, "Boots" },
		{ 14, 34008 },
		{ 15, 44970, nil, nil, "Cheap" },
	},
}

local el_offEnchants = {	--Extra List: Ring/Wep/Sheild Enchants
	name = "Ring/Wep/Sheild Enchants",
	ExtraList = true,
	TableType = PROF_ITTYPE,
	[NORMAL_DIFF] = {
		{ 01, "INV_JEWELRY_RING_23", nil, "Ring Enchant" },
		{ 02, 27927 },		
		{ 04, "INV_SWORD_65", nil, "Weapon Enchant"},
		{ 05, 27984 },		
		{ 07, "INV_SHIELD_30", nil, "Shield Enchant" }, 
		{ 08, 34009 },
		{ 10, "INV_WEAPON_BOW_07", nil, "Guns and Bows" },
		{ 11, 30332 },
	},
}

data[ _FilePrefix ] ={
	name = _FilePrefix,
	ContentType = roleType_Tank,
	LoadDifficulty = LOAD_DIFF,
	TableType = NORMAL_ITTYPE,
	gameVersion = 2,
	items = {
		{
			name = "Best In Slot Gear Example",
			[NORMAL_DIFF] = {
				{ 01, 23519 },	{ 16, 28995 },
				{ 02, 29336 },	{ 17, 29184 },
				{ 03, 27803 },	{ 18, 28176 },
				{ 04, 27804 },	{ 19, 30006 },
				{ 05, 28205 },	{ 20, 28553 },
				{ 06, 28996 },	{ 21, 23836, nil, nil, "x2" },
				{ 07, 27475 },
				{ 09, 28189 },
				{ 10, 28316 },
				{ 11, 30227 },
			}
		},
		{	--Head Slot
			name = "Head",
			[NORMAL_DIFF] = {
				{1,28180, nil, nil, "Best" },
				{2,23519, nil, nil, "Crafted Alternative" },
				{3,27408, nil, nil, "Threat Alternative" },
				{4,28350, nil, nil, "Mitigation Alternative" },				
			}
		},
		{	--Shoulders
			name = "Shoulders",
			[NORMAL_DIFF] = {
				{1,27847, nil, nil, "Optional" },
				{2,32073, nil, nil, "Optional" },
				{3,27803, nil, nil, "Best" },
				{4,29316, nil, nil, "Easy To Obtain" },
			},
		},
		{	--Back
			name = "Cloak",
			[NORMAL_DIFF] = {
				{1,27804, nil, nil, "Best" },
				{2,24253, nil, nil, "Crafted Optional" },
				{3,28328, nil, nil, "Alternative" },
			},
		},
		{	--Chest
			name = "Chest",
			[NORMAL_DIFF] = {
				{1,28205, nil, nil, "Best" },
				{2,28262, nil, nil, "Alternative" },
				{3,25819, nil, nil, "Best Threat" },
				{4,28403, nil, nil, "Threat Alternative" },
				{5,22416, nil, nil, "Classic Alternative" },
				{6,29127, nil, nil, "Easy To Obtain" },
			},
		},
		{	--Bracer
			name = "Bracer",
			[NORMAL_DIFF] = {
				{1,28996, nil, nil, "Best" },
				{2,29463, nil, nil, "Optional" },
				{3,27459, nil, nil, "Optional" },
				{4,28167, nil, nil, "Easy To Obtain" },
				{5,30225, nil, nil, "Easy To Obtain" },
			},

		},
		{	--Hands
			name = "Gloves",
			[NORMAL_DIFF] = {
				{1,27475, nil, nil, "Best" },
				{2,32072, nil, nil, "Optional" },
				{3,23517, nil, nil, "Alternative" },
				{4,29134, nil, nil, "Easy to Obtain" },
				{5,30375, nil, nil, "Easy to Obtain" },
			},
		},
		{	--Waist
			name = "Belt",
			[NORMAL_DIFF] = {
				{1,28995, nil, nil, "Best" },
				{2,27672, nil, nil, "Optional" },
				{3,29238, nil, nil, "Optional" },
				{4,31460, nil, nil, "Alternative" },
				{5,25922, nil, nil, "Easy To Obtain" },
				{6,22422, nil, nil, "Classic Alternative" },
			},
		},
		{	--Legs
			name = "Legs",
			[NORMAL_DIFF] = {
				{1,29184, nil, nil, "Best Mitigation" },
				{2,30533, nil, nil, "Best Threat" },
				{3,23518, nil, nil, "Optional" },
				{4,27527, nil, nil, "Alternative" },
				{5,28175, nil, nil, "Easy To Obtain", [ATLASLOOT_IT_ALLIANCE] = false, [ATLASLOOT_IT_HORDE] = true },
				{6,29783, nil, nil, "Easy To Obtain" },
			},
		},
		{	--Boots
			name = "Boots",
			[NORMAL_DIFF] = {
				{1,29239, nil, nil, "Optional" },
				{2,28997, nil, nil, "Best" },
				{3,28176, nil, nil, "Easy To Obtain" },
				{4,30386, nil, nil, "Easy To Obtain" },
				{5,22420, nil, nil, "Classic Alternative" },
			},
		},
		{	--Neck
			name = "Neck",
			[NORMAL_DIFF] = {
				{1,29336, nil, nil, "Best" },
				{2,30378, nil, nil, "Alternative (Scryers only)" },
				{3,31696, nil, nil, "Alternative" },
				{4,28244, nil, nil, "Optional" },
			},
		},
		{	--Rings
			name = "Rings",
			[NORMAL_DIFF] = {
				{1,30834, nil, nil, "Best Threat" },
				{2,27822, nil, nil, "Threat Alternative" },
				{3,28211, nil, nil, "Best Mitigation" },
				{4,28553, nil, nil, "Threat Alternative" },
				{5,30006, nil, nil, "Easy To Obtain" },
				{6,31078, nil, nil, "Easy To Obtain" },
				{7,28407, nil, nil, "Alternative" },
				{8,23059, nil, nil, "Classic Alternative" },
			},
		},
		{	--Trinkets 
			name = "Trinkets",
			[NORMAL_DIFF] = {
				{1,23836, nil, nil, "Best Mitigation" },
				{2,23835, nil, nil, "Best Mitigation" },
				{3,27770, nil, nil, "Mitigation Alternative" },
				{4,29181, nil, nil, "Mitigation Alternative" },
				{5,27891, nil, nil, "Optional" },
				{6,30300, nil, nil, "Easy To Obtain" },
				{7,28042, nil, nil, "Easy To Obtain" },
				{8,28121, nil, nil, "Best Threat" },
				{9,29387, nil, nil, "Threat Alternative" },
				{10,19406, nil, nil, "Threat Alternative" },
			},
		},
		{	--1H Wep
			name = "1-Handed Weapons",
			[NORMAL_DIFF] = {
				{1,28189, nil, nil, "Best Threat" },
				{2,29165, nil, nil, "Best for Orc" },
				{3,29362, nil, nil, "Optional" },
				{4,27980, nil, nil, "Alternative" },
				{5,23577, nil, nil, "Classic Alternative" },
				{6,29156, nil, nil, "Alternative" },
				{7,19019, nil, nil, "Classic Alternative" },
				{8,31071, nil, nil, "Easy To Obtain" },
			},
		},
		{	--Shields
			name = "Shields",
			[NORMAL_DIFF] = {
				{1,29266, nil, nil, "Best" },
				{2,29176, nil, nil, "Non Heroic Best" },
				{3,32082, nil, nil, "Optional" },
				{4,28316, nil, nil, "Alternative" },
				{5,27887, nil, nil, "Alternative" },
				{6,31490, nil, nil, "Easy To Obtain" },
				{7,23043, nil, nil, "Classic Alternative" },
			},
		},
		{	--Guns and Bows
			name = "Guns and Bows",
			[NORMAL_DIFF] = {
				{1,27817, nil, nil, "Optional" },
				{2,30227, nil, nil, "Best" },
				{3,32832, nil, nil, "Easy To Obtain" },
				{4,29115, nil, nil, "Alternative" },
				{5,28258, nil, nil, "Alternative" },
				{6,21459, nil, nil, "Classic Alternative" },
			},
		},
		el_Gems,
		el_HeadShoulder,
		el_GearEnchants,
		el_offEnchants,
	},
}