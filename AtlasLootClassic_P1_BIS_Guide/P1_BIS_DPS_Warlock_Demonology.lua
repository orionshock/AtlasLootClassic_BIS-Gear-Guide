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
		{	--1-Handed Weapons
			name = "1-Handed Weapons",
			[NORMAL_DIFF] = {

			},
		},
		{	--2-Handed Weapons
			name = "2-Handed Weapons",
			[NORMAL_DIFF] = {

			},
		},
		{	--Wands
			name = "Wands",
			[NORMAL_DIFF] = {

			},
		},
		{	--Offhands
			name = "Offhands",
			[NORMAL_DIFF] = {

			},
		},
		el_Gems,
		el_HeadShoulder,
		el_GearEnchants,
		el_offEnchants,
	},
}