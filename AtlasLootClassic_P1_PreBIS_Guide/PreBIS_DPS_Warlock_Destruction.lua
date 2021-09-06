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

local _FileRole = "Destruction"
local _FileClass = "Warlock"
local _FilePrefix = _FileRole.." ".._FileClass

local el_Gems = {	--Extra List : Gems
	name = "Gems",
	ExtraList = true,
	TableType = PROF_ITTYPE,
	[NORMAL_DIFF] = {
		{01, "INV_MISC_DESECRATED_CLOTHHELM", nil, "Meta Gem" },
		{02, 44794}, {17, 32766},
		
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
			name = "Shadow Destruction (w/ 3% Hit Totem)",
			[NORMAL_DIFF] = {
				{01,28193}, { 16,30038},
				{02,28134}, { 17,24262},
				{03,21869}, { 18,21870},
				{04,23050}, { 19,28227},
				{05,21871}, { 20,21709},
				{06,24250}, { 21,29370},
				{07,27465}, { 22,27683},
				{09,29155},
				{10,29273},
				{11,22821},
			}
		},
		{
			name = "Fire Destruction (w/ 3% Hit Totem)",
			[NORMAL_DIFF] = {
				{01,28193}, { 16,21846},
				{02,28134}, { 17,24262},
				{03,27796}, { 18,28406},
				{04,23050}, { 19,28227},
				{05,21848}, { 20,21709},
				{06,24250}, { 21,29370},
				{07,21847}, { 22,27683},
				{09,29155},
				{10,29270},
				{11,22821},3
			}
		},
		{	--Head Slot
			name = "Head",
			[NORMAL_DIFF] = {
				{1,32494, nil, nil, "Best" },
				{2,24266, nil, nil, "Best" },
				{3,31104, nil, nil, "Alternative Over Hit" },
				{4,28278, nil, nil, "Alternative Over Hit" },
				{5,28415, nil, nil, "Alternative Over Hit" },
				{6,28169, nil, nil, "Horde Only", [ATLASLOOT_IT_ALLIANCE] = false, [ATLASLOOT_IT_HORDE] = true },
			}
		},
		{	--Shoulders
			name = "Shoulders",
			[NORMAL_DIFF] = {
				{1,21869, nil, nil, "BiS" },
				{2,22507, nil, nil, "Second Best" },
				{3,27796, nil, nil, "Best Under Hit Cap" },
				{4,27994, nil, nil, "Alternative Under Hit Cap" },
				{5,30925, nil, nil, "Best Over Hit Cap" },
			},
		},
		{	--Back
			name = "Back",
			[NORMAL_DIFF] = {
				{1,23050, nil, nil, "BiS" },
				{2,27981, nil, nil, "Alternative" },
				{3,22731, nil, nil, "Alternative" },
				{4,31140, nil, nil, "Easy to Obtain" },
			},
		},
		{	--Chest
			name = "Chest",
			[NORMAL_DIFF] = {
				{1,21871, nil, nil, "Shadown BiS Over Hit Cap" },
				{2,21848, nil, nil, "Fire BiS" },
				{3,31297, nil, nil, "BiS Under Hit Cap" },
				{4,22504, nil, nil, "Alternative" },
				{5,29341, nil, nil, "Alternative" },
				{6,28191, nil, nil, "Alternative" },
				{7,28232, nil, nil, "Alternative" },
			},
		},
		{	--Wrist
			name = "Wrist",
			[NORMAL_DIFF] = {
				{1,21186, nil, nil, "BiS" },
				{2,24250, nil, nil, "BiS" },
				{3,27462, nil, nil, "Optional" },
			},

		},
		{	--Hands
			name = "Hands",
			[NORMAL_DIFF] = {
				{1,21847, nil, nil, "Fire BiS" },
				{2,31149, nil, nil, "BiS" },
				{3,21585, nil, nil, "Classic Option" },
				{4,27465, nil, nil, "Under Hit Cap" },
				{5,27537, nil, nil, "Under Hit Cap" },
				{6,24450, nil, nil, "Under Hit Cap" },
			},
		},
		{	--Waist
			name = "Waist",
			[NORMAL_DIFF] = {
				{1,30038, nil, nil, "Best" },
				{2,21846, nil, nil, "Fire BiS" },
				{3,24256, nil, nil, "BiS" },
				{4,22730, nil, nil, "BiS Under Hit" },
				{5,31461, nil, nil, "Over Hit Cap" },
				{6,27795, nil, nil, "Under Hit Cap" },
			},
		},
		{	--Legs
			name = "Legs",
			[NORMAL_DIFF] = {
				{1,24262, nil, nil, "BiS" },
				{2,30531, nil, nil, "BiS over Hit Cap" },
				{3,23070, nil, nil, "Over Hit Cap" },
				{4,19133, nil, nil, "Over Hit Cap" },
				{5,27948, nil, nil, "Under Hit Cap" },
				{6,27907, nil, nil, "Under Hit Cap" },
			},
		},
		{	--Feet
			name = "Feet",
			[NORMAL_DIFF] = {
				{1,21870, nil, nil, "Shadow BiS" },
				{2,27821, nil, nil, "Under Hit Cap" },
				{3,28406, nil, nil, "Over Hit Cap" },
				{4,28179, nil, nil, "Over Hit Cap" },
				{5,22508, nil, nil, "Over Hit Cap" },
			},
		},
		{	--Neck
			name = "Neck",
			[NORMAL_DIFF] = {
				{1,28134, nil, nil, "BiS" },
				{2,27758, nil, nil, "BiS" },
				{3,21608, nil, nil, "Optional" },
				{4,23057, nil, nil, "Optional" },
				{5,18814, nil, nil, "Optional" },
			},
		},
		{	--Rings
			name = "Rings",
			[NORMAL_DIFF] = {
				{1,29172, nil, nil, "BiS Under Hit Cap" },
				{2,28227, nil, nil, "BiS Under Hit Cap" },
				{3,28555, nil, nil, "Alternative Under Hit" },
				{4,29126, nil, nil, "BiS Over Hit Cap" },
				{5,23237, nil, nil, "Fire Alternative" },
				{6,21709, nil, nil, "Alternative" },
				{7,23031, nil, nil, "Alternative" },
				{8,23025, nil, nil, "Alternative" },
			},
		},
		{	--Trinkets
			name = "Trinkets",
			[NORMAL_DIFF] = {
				{1,23207, nil, nil, "BiS" },
				{2,29370, nil, nil, "BiS" },
				{3,27683, nil, nil, "Under Hit Cap" },
				{4,29132, nil, nil, "Under Hit Alternative" },
				{5,19379, nil, nil, "Alternative" },
				{6,23046, nil, nil, "Optional" },
			},
		},
		{	--1-Handed Weapons
			name = "1-Handed Weapons",
			[NORMAL_DIFF] = {
				{1,31336, nil, nil, "BiS" },
				{2,30787, nil, nil, "Demon" },
				{3,nil, nil, nil, "Alternative", [ATLASLOOT_IT_HORDE] = 29155, [ATLASLOOT_IT_ALLIANCE] = 29153 },
				{4,27905, nil, nil, "Optional" },
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
				{1,22128, nil, nil, "BiS" },
				{1,22821, nil, nil, "BiS" },
				{2,29350, nil, nil, "Alternative" },
				{3,22820, nil, nil, "Alternative" },
				{4,28386, nil, nil, "Alternative" },
			},
		},
		{	--Offhands
			name = "Offhands",
			[NORMAL_DIFF] = {
				{1,29270, nil, nil, "Fire BiS" },
				{2,29273, nil, nil, "BiS Over Hit Cap" },
				{3,29272, nil, nil, "Alternative Over Hit Cap" },
				{4,28412, nil, nil, "BiS Under Hit Cap" },
				{5,23049, nil, nil, "Alternative Under Hit Cap" },
				{6,21597, nil, nil, "Alternative Under Hit Cap" },
			},
		},
		el_Gems,
		el_HeadShoulder,
		el_GearEnchants,
		el_offEnchants,
	},
}