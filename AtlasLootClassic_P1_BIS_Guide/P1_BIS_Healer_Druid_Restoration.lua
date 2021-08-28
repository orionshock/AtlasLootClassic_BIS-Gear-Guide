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
local _FileClass = "Druid"
local _FilePrefix = _FileRole.." ".._FileClass

local el_Gems = {	--Extra List : Gems
	name = "Gems",
	ExtraList = true,
	TableType = PROF_ITTYPE,
	[NORMAL_DIFF] = {
        { 01, "INV_MISC_DESECRATED_LEATHERHELM", nil, "Meta Gem" },

        { 04, "INV_MISC_GEM_01", nil, "Primary"},

        { 07, "INV_MISC_GEM_03", nil, "Meta Fit"},
	}
}

local el_HeadShoulder = {	--Extra List: Shoulder Items
	name = "Head Glyph & Shoulder Inscription",
	ExtraList = true,
	TableType = NORMAL_ITTYPE,
	[NORMAL_DIFF] = {
		{ 01, "INV_MISC_DESECRATED_LEATHERHELM", nil, "Head Glyph"},

		{ 04, "INV_MISC_DESECRATED_LEATHERSHOULDER", nil, "Shoulder Inscription"},

	}
}

local el_GearEnchants = {	--Extra List: Gear Enchants
	name = "Gear Enchants",
	ExtraList = true,
	TableType = PROF_ITTYPE,
	[NORMAL_DIFF] = {
		{ 01 , "INV_MISC_CAPE_20", nil, "Back" },

		{ 16, "INV_MISC_DESECRATED_LEATHERCHEST", nil, "Chest" },

		{ 04 , "INV_MISC_DESECRATED_LEATHERBRACER", nil, "Wrist" },

		{ 08 , "INV_MISC_DESECRATED_LEATHERGLOVE", nil, "Hands" },

		{ 11 , "INV_MISC_DESECRATED_LEATHERPANTS", nil, "Legs" },

		{ 14 , "INV_MISC_DESECRATED_LEATHERBOOTS", nil, "Feet" },

	},
}

local el_offEnchants = {	--Extra List: Ring/Wep/Sheild Enchants
	name = "Ring/Wep/Sheild Enchants",
	ExtraList = true,
	TableType = PROF_ITTYPE,
	[NORMAL_DIFF] = {
		{ 1, "INV_JEWELRY_RING_23", nil, "Ring Enchant" },

		{ 4, "INV_SWORD_65", nil, "Weapon Enchant"},

		{ 7, "INV_SHIELD_30", nil, "Shield Enchant" },

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
			name = "Set1",
			[NORMAL_DIFF] = {

			}
		},
		{	--Head Slot
			name = "Head",
			[NORMAL_DIFF] = {

			}
		},
		{	--Shoulders
			name = "Shoulders",
			[NORMAL_DIFF] = {

			},
		},
		{	--Back
			name = "Back",
			[NORMAL_DIFF] = {

			},
		},
		{	--Chest
			name = "Chest",
			[NORMAL_DIFF] = {

			},
		},
		{	--Wrist
			name = "Wrist",
			[NORMAL_DIFF] = {

			},

		},
		{	--Hands
			name = "Hands",
			[NORMAL_DIFF] = {

			},
		},
		{	--Waist
			name = "Waist",
			[NORMAL_DIFF] = {

			},
		},
		{	--Legs
			name = "Legs",
			[NORMAL_DIFF] = {

			},
		},
		{	--Feet
			name = "Feet",
			[NORMAL_DIFF] = {

			},
		},
		{	--Neck
			name = "Neck",
			[NORMAL_DIFF] = {

			},
		},
		{	--Rings
			name = "Rings",
			[NORMAL_DIFF] = {

			},
		},
		{	--Trinkets 1
			name = "Trinkets1",
			[NORMAL_DIFF] = {

			},
		},
		{	--Trinkets 2
			name = "Trinkets2",
			[NORMAL_DIFF] = {

			},
		},
		{	--Trinkets 3
			name = "Trinkets3",
			[NORMAL_DIFF] = {

			},
		},
		{	--1H Wep
			name = "1-Handed Weapons",
			[NORMAL_DIFF] = {

			},
		},
		{	--2H Wep
			name = "2-Handed Weapons",
			[NORMAL_DIFF] = {

			},
		},
		{	--Ranged
			name = "Ranged",
			[NORMAL_DIFF] = {

			},
		},
		{	--Offhand
			name = "OffHand",
			[NORMAL_DIFF] = {

			},
		},
		el_Gems,
		el_HeadShoulder,
		el_GearEnchants,
		el_offEnchants,
	},
}