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

        { 04, "INV_MISC_GEM_01", nil, "Primary"},

        { 07, "INV_MISC_GEM_03", nil, "Meta Fit"},
	}
}

local el_HeadShoulder = {	--Extra List: Shoulder Items
	name = "Head Glyph & Shoulder Inscription",
	ExtraList = true,
	TableType = NORMAL_ITTYPE,
	[NORMAL_DIFF] = {
		{ 01, "INV_MISC_DESECRATED_MAILHELM", nil, "Head Glyph"},

		{ 04, "INV_MISC_DESECRATED_MAILSHOULDER", nil, "Shoulder Inscription"},

	}
}

local el_GearEnchants = {	--Extra List: Gear Enchants
	name = "Gear Enchants",
	ExtraList = true,
	TableType = PROF_ITTYPE,
	[NORMAL_DIFF] = {
		{ 01 , "INV_MISC_CAPE_20", nil, "Back" },

		{ 16, "INV_MISC_DESECRATED_MAILCHEST", nil, "Chest" },

		{ 04 , "INV_MISC_DESECRATED_MAILBRACER", nil, "Wrist" },

		{ 08 , "INV_MISC_DESECRATED_MAILGLOVE", nil, "Hands" },

		{ 11 , "INV_MISC_DESECRATED_MAILPANTS", nil, "Legs" },

		{ 14 , "INV_MISC_DESECRATED_MAILBOOTS", nil, "Feet" },

	},
}

local el_offEnchants = {	--Extra List: Ring/Wep/Sheild Enchants
	name = "Ring/Wep/Sheild Enchants",
	ExtraList = true,
	TableType = PROF_ITTYPE,
	[NORMAL_DIFF] = {
		{ 01, "INV_JEWELRY_RING_23", nil, "Ring Enchant" },

		{ 04, "INV_SWORD_65", nil, "Weapon Enchant"},

		{ 07, "INV_WEAPON_BOW_07", nil, "Guns and Bows" },
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
		{	--Trinkets
			name = "Trinkets",
			[NORMAL_DIFF] = {

			},
		},
		{	--Main Hand
			name = "Main Hand",
			[NORMAL_DIFF] = {

			},
		},
		{	--Offhand
			name = "Offhand",
			[NORMAL_DIFF] = {

			},
		},
		{	--Ranged
			name = "Two-Handed",
			[NORMAL_DIFF] = {

			},
		},
		{	--Ranged Weapon
			name = "Ranged Weapon",
			[NORMAL_DIFF] = {

			},
		},
		{	--Quivers
			name = "Quivers",
			[NORMAL_DIFF] = {

			},
		},
		{	--Ammo Pouches
			name = "Ammo Pouches",
			[NORMAL_DIFF] = {

			},
		},
		el_Gems,
		el_HeadShoulder,
		el_GearEnchants,
		el_offEnchants,
	},
}