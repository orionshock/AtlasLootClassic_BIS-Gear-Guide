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

local _FileRole = "Frost"
local _FileClass = "Mage"
local _FilePrefix = _FileRole.." ".._FileClass

local el_Gems = {	--Extra List : Gems
	name = "Gems",
	ExtraList = true,
	TableType = PROF_ITTYPE,
	[NORMAL_DIFF] = {
		{ 01, "INV_MISC_DESECRATED_CLOTHHELM", nil, "Meta Gem" },
		{ 02, 32872 },		
		{ 04, "INV_MISC_GEM_01", nil, "Primary"},
		{ 05, 31088 },		
		{ 07, "INV_MISC_GEM_03", nil, "Meta Fit"},
		{ 08, 31104 },
	}
}

local el_HeadShoulder = {	--Extra List: Shoulder Items
	name = "Head Glyph & Shoulder Inscription",
	ExtraList = true,
	TableType = NORMAL_ITTYPE,
	[NORMAL_DIFF] = {
		{ 01, "INV_MISC_DESECRATED_CLOTHHELM", nil, "Head Glyph"},
		{ 02, 29191 },	{ 17,  },
		{ 04, "INV_MISC_DESECRATED_CLOTHSHOULDER", nil, "Shoulder Inscription"},
		{ 05, 28886 },	{ 20, 28909 },
		{ 07, "INV_MISC_GEM_03", nil, "Meta Gem Fit" },
		{ 08, 30600 },
	}
}

local el_GearEnchants = {	--Extra List: Gear Enchants
	name = "Gear Enchants",
	ExtraList = true,
	TableType = PROF_ITTYPE,
	[NORMAL_DIFF] = {
		{ 01 , "INV_MISC_CAPE_20", nil, "Back" },	
		{ 02, 25084 },
		{ 04, "INV_MISC_DESECRATED_CLOTHCHEST", nil, "Chest" },	
		{ 05, 27960 },
		{ 07 , "INV_MISC_DESECRATED_CLOTHBRACER", nil, "Wrist" },
		{ 08, 27917 },
		{ 10 , "INV_MISC_DESECRATED_CLOTHGLOVE", nil, "Hands" },
		{ 11, 33997 },
		{ 13 , "INV_MISC_DESECRATED_CLOTHPANTS", nil, "Legs" },
		{ 14, 31432 },
		{ 16 , "INV_MISC_DESECRATED_CLOTHBOOTS", nil, "Feet" },
		{ 17, 34008 },
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
		{ 05, 27981 },
		{ 06, 27975 },
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
				{ 01, 24266 },	{ 16, 24256 },
				{ 02, 28134 },	{ 17, 24262 },
				{ 03, 21869 },	{ 18, 21870 },
				{ 04, 23050 },	{ 19, 29172 },
				{ 05, 21871 },	{ 20, 21709 },
				{ 06, 24250 },	{ 21, 23207 },
				{ 07, 27493 },	{ 22, 29132 },
				{ 09, 23554 },
				{ 10, 29269 },
				{ 11, 28386 },
			}
		},
		{	--Head Slot
			name = "Head",
			[NORMAL_DIFF] = {
				{1,24266, nil, nil, "BiS" },
				{2,28169, nil, nil, "Optional" },
				{3,28415, nil, nil, "Optional" },
				{4,28278, nil, nil, "Optional" },
				{5,28193, nil, nil, "Optional" },
				{6,22498, nil, nil, "Optional" },
				{7,19375, nil, nil, "Optional" },
				{8,31104, nil, nil, "Easy to Obtain" },
				{9,30515, nil, nil, "Easy to Obtain" },
			}
		},
		{	--Shoulders
			name = "Shoulders",
			[NORMAL_DIFF] = {
				{1,21869, nil, nil, "BiS" },
				{2,30925, nil, nil, "Optional" },
				{3,27778, nil, nil, "Optional" },
				{4,27796, nil, nil, "Optional" },
				{5,22983, nil, nil, "Optional" },
				{6,27994, nil, nil, "Optional" },
				{7,22499, nil, nil, "Optional" },
				{8,28075, nil, nil, "Easy to Obtain" },
				{9,30514, nil, nil, "Easy to Obtain" },
			},
		},
		{	--Back
			name = "Back",
			[NORMAL_DIFF] = {
				{1,23050, nil, nil, "BiS" },
				{2,22731, nil, nil, "Optional" },
				{3,27981, nil, nil, "Optional" },
				{4,31140, nil, nil, "Optional" },
				{5,24252, nil, nil, "Optional" },
				{6,29369, nil, nil, "Optional" },
				{7,29813, nil, nil, "Easy to Obtain" },
				{8,25777, nil, nil, "Easy to Obtain" },
			},
		},
		{	--Chest
			name = "Chest",
			[NORMAL_DIFF] = {
				{1,21871, nil, nil, "BiS" },
				{2,31297, nil, nil, "Optional" },
				{3,29341, nil, nil, "Optional" },
				{4,28342, nil, nil, "Optional" },
				{5,31340, nil, nil, "Optional" },
				{6,28232, nil, nil, "Optional" },
				{7,22496, nil, nil, "Optional" },
				{8,29780, nil, nil, "Easy to Obtain" },
				{9,31717, nil, nil, "Easy to Obtain" },
			},
		},
		{	--Wrist
			name = "Wrist",
			[NORMAL_DIFF] = {
				{1,24250, nil, nil, "BiS" },
				{2,27462, nil, nil, "Optional" },
				{3,28174, nil, nil, "Optional" },
				{4,27746, nil, nil, "Optional" },
				{5,29240, nil, nil, "Optional" },
				{6,23021, nil, nil, "Optional" },
				{7,30927, nil, nil, "Easy to Obtain" },
				{8,30520, nil, nil, "Easy to Obtain" },
			},

		},
		{	--Hands
			name = "Hands",
			[NORMAL_DIFF] = {
				{1,27493, nil, nil, "BiS" },
				{2,21585, nil, nil, "Optional" },
				{3,27537, nil, nil, "Optional" },
				{4,29317, nil, nil, "Optional" },
				{5,27465, nil, nil, "Optional" },
				{6,30924, nil, nil, "Easy to Obtain" },
				{7,30930, nil, nil, "Easy to Obtain" },
			},
		},
		{	--Waist
			name = "Waist",
			[NORMAL_DIFF] = {
				{1,24256, nil, nil, "BiS" },
				{2,29241, nil, nil, "Optional" },
				{3,22730, nil, nil, "Optional" },
				{4,31461, nil, nil, "Optional" },
				{5,27795, nil, nil, "Optional" },
				{6,30923, nil, nil, "Easy to Obtain" },
				{7,29771, nil, nil, "Easy to Obtain" },
			},
		},
		{	--Legs
			name = "Legs",
			[NORMAL_DIFF] = {
				{1,24262, nil, nil, "BiS" },
				{2,30531, nil, nil, "Optional" },
				{3,28185, nil, nil, "Optional" },
				{4,30532, nil, nil, "Optional" },
				{5,28338, nil, nil, "Optional" },
				{6,23070, nil, nil, "Optional" },
				{7,30929, nil, nil, "Easy to Obtain" },
				{8,21852, nil, nil, "Easy to Obtain" },
			},
		},
		{	--Feet
			name = "Feet",
			[NORMAL_DIFF] = {
				{1,21870, nil, nil, "BiS" },
				{2,27821, nil, nil, "Optional" },
				{3,28406, nil, nil, "Optional" },
				{4,28179, nil, nil, "Optional" },
				{5,22500, nil, nil, "Optional" },
				{6,29242, nil, nil, "Optional" },
				{7,30519, nil, nil, "Easy to Obtain" },
				{8,30398, nil, nil, "Easy to Obtain" },
			},
		},
		{	--Neck
			name = "Neck",
			[NORMAL_DIFF] = {
				{1,28134, nil, nil, "BiS" },
				{2,27758, nil, nil, "BiS" },
				{3,31338, nil, nil, "BiS" },
				{4,18814, nil, nil, "BiS" },
				{5,21608, nil, nil, "Optional" },
				{6,29368, nil, nil, "Optional" },
				{7,23057, nil, nil, "Optional" },
				{8,31692, nil, nil, "Easy to Obtain" },
				{9,31178, nil, nil, "Easy to Obtain" },
			},
		},
		{	--Rings
			name = "Rings",
			[NORMAL_DIFF] = {
				{1,21709, nil, nil, "BiS" },
				{2,29172, nil, nil, "BiS" },
				{3,28227, nil, nil, "BiS" },
				{4,28555, nil, nil, "BiS" },
				{5,31339, nil, nil, "BiS" },
				{6,23062, nil, nil, "Optional" },
				{7,29126, nil, nil, "Optional" },
				{8,23025, nil, nil, "Optional" },
				{9,23031, nil, nil, "Optional" },
				{10,29352, nil, nil, "Optional" },
				{11,31075, nil, nil, "Easy to Obtain" },
				{12,30366, nil, nil, "Easy to Obtain" },
				{13,32774, nil, nil, "Easy to Obtain" },
			},
		},
		{	--Trinkets
			name = "Trinkets",
			[NORMAL_DIFF] = {
				{1,23207, nil, nil, "BiS" },
				{2,31856, nil, nil, "BiS" },
				{3,29132, nil, nil, "BiS" },
				{4,29370, nil, nil, "BiS" },
				{5,19339, nil, nil, "Optional" },
				{6,19379, nil, nil, "Optional" },
				{7,27683, nil, nil, "Optional" },
				{8,23046, nil, nil, "Optional" },
				{9,28418, nil, nil, "Optional" },
				{10,29179, nil, nil, "Optional" },
				{11,28040, nil, nil, "Easy to Obtain" },
				{12,25620, nil, nil, "Easy to Obtain" },
				{13,25619, nil, nil, "Easy to Obtain" },
			},
		},
		{	--1H Wep
			name = "1-Handed Weapons",
			[NORMAL_DIFF] = {
				{1,23554, nil, nil, "BiS" },
				{2,30787, nil, nil, "Optional" },
				{3,29153, nil, nil, "Optional" },
				{4,29155, nil, nil, "Optional" },
				{5,31336, nil, nil, "Optional" },
				{6,27905, nil, nil, "Optional" },
				{7,27543, nil, nil, "Optional" },
				{8,29185, nil, nil, "Optional" },
				{9,24453, nil, nil, "Easy to Obtain" },
				{10,31142, nil, nil, "Easy to Obtain" },
			},
		},
		{	--2H Wep
			name = "2-Handed Weapons",
			[NORMAL_DIFF] = {
				{1,22589, nil, nil, "BiS" },
				{2,29355, nil, nil, "Optional" },
				{3,29130, nil, nil, "Optional" },
				{4,28341, nil, nil, "Optional" },
				{5,27842, nil, nil, "Optional" },
				{6,31308, nil, nil, "Easy to Obtain" },
				{7,25760, nil, nil, "Easy to Obtain" },
			},
		},
		{	--Offhands
			name = "Offhands",
			[NORMAL_DIFF] = {
				{1,29269, nil, nil, "BiS" },
				{2,23049, nil, nil, "Optional" },
				{3,28412, nil, nil, "Optional" },
				{4,28187, nil, nil, "Optional" },
				{5,28260, nil, nil, "Optional" },
				{6,27534, nil, nil, "Optional" },
				{7,31699, nil, nil, "Easy to Obtain" },
				{8,31731, nil, nil, "Easy to Obtain" },
			},
		},
		{	--Wands
			name = "Wands",
			[NORMAL_DIFF] = {
				{1,22821, nil, nil, "BiS" },
				{2,28386, nil, nil, "BiS" },
				{3,22820, nil, nil, "Optional" },
				{4,32872, nil, nil, "Optional" },
				{5,25939, nil, nil, "Optional" },
				{6,29350, nil, nil, "Optional" },
				{7,27890, nil, nil, "Optional" },
				{8,31724, nil, nil, "Easy to Obtain" },
				{9,30523, nil, nil, "Easy to Obtain" },
			},
		},
		el_Gems,
		el_HeadShoulder,
		el_GearEnchants,
		el_offEnchants,
	},
}