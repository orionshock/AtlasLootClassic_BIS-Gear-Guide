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

local _FileRole = "Balance"
local _FileClass = "Druid"
local _FilePrefix = _FileRole.." ".._FileClass

local el_Gems = {	--Extra List : Gems
	name = "Gems",
	ExtraList = true,
	TableType = PROF_ITTYPE,
	[NORMAL_DIFF] = {
		{ 01, "INV_MISC_DESECRATED_LEATHERHELM", nil, "Meta Gem" },
		{ 02, 46601 },	{ 17, 32766 },
		{ 04, "INV_MISC_GEM_01", nil, "Primary"},
		{ 05, 31088 },
		{ 07, "INV_MISC_GEM_03", nil, "Meta Fit"},
		{ 08, 31107 },		
	}
}

local el_HeadShoulder = {	--Extra List: Shoulder Items
	name = "Head Glyph & Shoulder Inscription",
	ExtraList = true,
	TableType = NORMAL_ITTYPE,
	[NORMAL_DIFF] = {
		{ 01, "INV_MISC_DESECRATED_LEATHERHELM", nil, "Head Glyph"},
		{ 02, 29191 },
		{ 04, "INV_MISC_DESECRATED_LEATHERSHOULDER", nil, "Shoulder Inscription"},
		{ 05, 28909 },	{ 20, 28886 },
	}
}

local el_GearEnchants = {	--Extra List: Gear Enchants
	name = "Gear Enchants",
	ExtraList = true,
	TableType = PROF_ITTYPE,
	[NORMAL_DIFF] = {
		{ 01 , "INV_MISC_CAPE_20", nil, "Back" },
		{ 02, 25084 },
		{ 04, "INV_MISC_DESECRATED_LEATHERCHEST", nil, "Chest" },{ 19 , "INV_MISC_DESECRATED_LEATHERBRACER", nil, "Wrist" },
		{ 05, 27960 },{ 20, 27917 },
		{ 07 , "INV_MISC_DESECRATED_LEATHERPANTS", nil, "Legs" },{ 22 , "INV_MISC_DESECRATED_LEATHERGLOVE", nil, "Hands" },
		{ 08, 31432 },{ 23, 33997 },
		{ 10 , "INV_MISC_DESECRATED_LEATHERBOOTS", nil, "Feet" },
		{ 11, 34008 },
	},
}

local el_offEnchants = {	--Extra List: Ring/Wep/Sheild Enchants
	name = "Ring/Wep/Sheild Enchants",
	ExtraList = true,
	TableType = PROF_ITTYPE,
	[NORMAL_DIFF] = {
		{ 1, "INV_JEWELRY_RING_23", nil, "Ring Enchant" },
		{ 02, 27924 },
		{ 4, "INV_SWORD_65", nil, "Weapon Enchant"},
		{ 05, 27981 },
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
			name = "Best In Slot Gear Example",
			[NORMAL_DIFF] = {
				{ 01, 24266 },	{ 16, 21846 },
				{ 02, 28134 },	{ 17, 24262 },
				{ 03, 27796 },	{ 18, 27821 },
				{ 04, 27981 },	{ 19, 29172 },
				{ 05, 21848 },	{ 20, 28227 },
				{ 06, 24250 },	{ 21, 29370 },
				{ 07, 21847 },	{ 22, 29132 },
				{ 09, 30832 },
				{ 10, 29271 },
				{ 11, 27518 },
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