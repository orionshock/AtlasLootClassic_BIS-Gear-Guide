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
		{ 04, "INV_MISC_DESECRATED_PLATECHEST", nil, "Chest" },	{ 19, "INV_MISC_DESECRATED_PLATEBRACER", nil, "Bracer" },
		{ 05, 27960 },	{ 20, 27914 },
		{ 06, 33992 },
		{ 08, "INV_MISC_DESECRATED_PLATEPANTS", nil, "Legs" },	{ 23, "INV_MISC_DESECRATED_PLATEGLOVES", nil, "Gloves" },
		{ 09, 35557 },	{ 24, 25072 },
		{ 11, "INV_MISC_DESECRATED_PLATEBOOTS", nil, "Boots" },
		{ 12, 34008 },
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
		{ 10, "INV_WEAPON_BOW_07" },
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
			name = "Best In Slot (no arena gear)",
			[NORMAL_DIFF] = {
				{ 01, 29011 },	{ 16, 28995 },
				{ 02, 28244 },	{ 17, 28621 },
				{ 03, 29023 },	{ 18, 28747 },
				{ 04, 28672 },	{ 19, 30834 },
				{ 05, 29012 },	{ 20, 29279 },
				{ 06, 28996 },	{ 21, 28121 },
				{ 07, 30644 },	{ 22, 23836 },
				{ 09, 28749 },
				{ 10, 28825 },
				{ 11, 28826 },
			}
		},
		{
			name = "Best In Slot (with arena gear)",
			[NORMAL_DIFF] = {
				{ 01, 24545 },	{ 16, 28779 },
				{ 02, 28244 },	{ 17, 28621 },
				{ 03, 29016 },	{ 18, 28747 },
				{ 04, 28672 },	{ 19, 30834 },
				{ 05, 24544 },	{ 20, 29279 },
				{ 06, 28795 },	{ 21, 28121 },
				{ 07, 30644 },	{ 22, 23836 },
				{ 09, 28749 },
				{ 10, 28825 },
				{ 11, 28319 },
			}
		},
		{	--Head Slot
			name = "Head",
			[NORMAL_DIFF] = {
				{1,29011, nil, nil, "Best Overall" },
				{2,24545, nil, nil, "Best Threat" },
				{3,29021, nil, nil, "Threat Alternative" },
				{4,30731, nil, nil, "Mitigation Alternative" },
				{5,28593, nil, nil, "Mitigation Alternative" },
			}
		},
		{	--Shoulders
			name = "Shoulders",
			[NORMAL_DIFF] = {
				{1,29023, nil, nil, "Best Overall" },
				{2,29016, nil, nil, "Best Mitigation" },
				{3,24546, nil, nil, "Threat Alternative" },
				{4,28743, nil, nil, "Mitigation Alternative" },
			},
		},
		{	--Back
			name = "Back",
			[NORMAL_DIFF] = {
				{1,28672, nil, nil, "Best Threat" },
				{2,28529, nil, nil, "Threat Alternative" },
				{3,28660, nil, nil, "Best Mitigation" },
				{4,29385, nil, nil, "Easy To Obtain" },
			},
		},
		{	--Chest
			name = "Chest",
			[NORMAL_DIFF] = {
				{1,29012, nil, nil, "Best Overall" },
				{2,24544, nil, nil, "Best Threat" },
				{3,28597, nil, nil, "Mitigation Alternative" },
				{4,28484, nil, nil, "Optional" },
			},
		},
		{	--Wrist
			name = "Wrist",
			[NORMAL_DIFF] = {
				{1,28996, nil, nil, "Best Overall" },
				{2,28502, nil, nil, "Best Mitigation" },
				{3,28795, nil, nil, "Best Threat" },
				{4,23538, nil, nil, "Optional" },
			},

		},
		{	--Hands
			name = "Hands",
			[NORMAL_DIFF] = {
				{1,30741, nil, nil, "Best Mitigation" },
				{2,30644, nil, nil, "Best Threat" },
				{3,28518, nil, nil, "Mitigation Alternative" },
				{4,29017, nil, nil, "Mitigation Alternative" },
			},
		},
		{	--Waist
			name = "Waist",
			[NORMAL_DIFF] = {
				{1,28995, nil, nil, "Best Overall" },
				{2,28566, nil, nil, "Best Mitigation" },
				{3,28779, nil, nil, "Best Threat" },
				{4,29238, nil, nil, "Optional" },
			},
		},
		{	--Legs
			name = "Legs",
			[NORMAL_DIFF] = {
				{1,28621, nil, nil, "Best Mitigation" },
				{2,24547, nil, nil, "Best Threat" },
				{3,29015, nil, nil, "Mitigation Alternative" },
			},
		},
		{	--Feet
			name = "Feet",
			[NORMAL_DIFF] = {
				{1,28747, nil, nil, "Best Mitigation" },
				{2,28608, nil, nil, "Best Threat" },
				{3,28997, nil, nil, "Threat Alternative" },
				{4,30641, nil, nil, "Mitigation Alternative" },
			},
		},
		{	--Neck
			name = "Neck",
			[NORMAL_DIFF] = {
				{1,29386, nil, nil, "Best Overall" },
				{2,28516, nil, nil, "Best Mitigation" },
				{3,28509, nil, nil, "Best Threat" },
				{4,28244, nil, nil, "Threat Alternative" },
			},
		},
		{	--Rings
			name = "Rings",
			[NORMAL_DIFF] = {
				{1,29279, nil, nil, "Best Mitigation" },
				{2,30834, nil, nil, "Best Threat" },
				{3,28675, nil, nil, "Mitigation Alternative" },
				{4,28792, nil, nil, "Mitigation Alternative" },
				{5,29384, nil, nil, "Mitigation Alternative" },
				{6,28649, nil, nil, "Threat Alternative" },
				{7,29283, nil, nil, "Threat Alternative" },
				{8,27822, nil, nil, "Threat Alternative" },
			},
		},
		{	--Trinkets
			name = "Trinkets",
			[NORMAL_DIFF] = {
				{1,23836, nil, nil, "Best Mitigation" },
				{2,23835, nil, nil, "Best Mitigation" },
				{3,27770, nil, nil, "Mitigation Alternative" },
				{4,31113, nil, nil, "Mitigation Alternative" },
				{5,29181, nil, nil, "Mitigation Alternative" },
				{6,28121, nil, nil, "Best Threat" },
				{7,28579, nil, nil, "Threat Alternative" },
				{8,19406, nil, nil, "Classic Alternative" },
				{9,29387, nil, nil, "Optional" },
			},
		},
		{	--1H Wep
			name = "1-Handed Weapons",
			[NORMAL_DIFF] = {
				{1,28749, nil, nil, "Best" },
				{2,28426, nil, nil, "Best" },
				{3,29165, nil, nil, "Orc Best" },
				{4,29362, nil, nil, "Best Mitigation" },
				{5,28189, nil, nil, "Best Pre-Raid" },
				{6,23577, nil, nil, "Optional" },
				{7,27980, nil, nil, "Optional" },
				{8,29156, nil, nil, "Optional" },
			},
		},
		{	--Shields
			name = "Shields",
			[NORMAL_DIFF] = {
				{1,28825, nil, nil, "Best" },
				{2,28358, nil, nil, "Alternative" },
				{3,28606, nil, nil, "Alternative" },
				{4,29176, nil, nil, "Best Pre-Raid" },
				{5,29266, nil, nil, "Pre-Raid Alternative" },
			},
		},
		{	--Ranged
			name = "Guns and Bows",
			[NORMAL_DIFF] = {
				{1,30724, nil, nil, "Best Overall" },
				{2,28319, nil, nil, "Alternative" },
				{3,28826, nil, nil, "Alternative" },
			},
		},
		el_Gems,
		el_HeadShoulder,
		el_GearEnchants,
		el_offEnchants,
	},
}