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

local _FileRole = "Fire"
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
				{ 01, 24266 },	{ 16, 21846 },
				{ 02, 28762 },	{ 17, 24262 },
				{ 03, 29079 },	{ 18, 28585 },
				{ 04, 28766 },	{ 19, 28793 },
				{ 05, 21848 },	{ 20, 21709 },
				{ 06, 24250 },	{ 21, 23207 },
				{ 07, 21847 },	{ 22, 29132 },
				{ 09, 28802 },
				{ 10, 29270 },
				{ 11, 28673 },
			}
		},
		{	--Head Slot
			name = "Head",
			[NORMAL_DIFF] = {
				{1,24266, nil, nil, "BiS" },
				{2,29076, nil, nil, "Optional" },
				{3,28415, nil, nil, "Optional" },
				{4,28278, nil, nil, "Optional" },
				{5,28193, nil, nil, "Optional" },
				{6,28744, nil, nil, "Optional" },
				{7,31104, nil, nil, "Easy to Obtain" },
				{8,30515, nil, nil, "Easy to Obtain" },
			}
		},
		{	--Shoulders
			name = "Shoulders",
			[NORMAL_DIFF] = {
				{1,29079, nil, nil, "BiS" },
				{2,30925, nil, nil, "Optional" },
				{3,27778, nil, nil, "Optional" },
				{4,27796, nil, nil, "Optional" },
				{5,22983, nil, nil, "Optional" },
				{6,27994, nil, nil, "Optional" },
				{7,28075, nil, nil, "Easy to Obtain" },
				{8,30514, nil, nil, "Easy to Obtain" },
			},
		},
		{	--Back
			name = "Back",
			[NORMAL_DIFF] = {
				{1,28766, nil, nil, "BiS" },
				{2,30735, nil, nil, "BiS" },
				{3,23050, nil, nil, "Optional" },
				{4,28797, nil, nil, "Optional" },
				{5,22731, nil, nil, "Optional" },
				{6,27981, nil, nil, "Optional" },
				{7,28570, nil, nil, "Optional" },
				{8,29369, nil, nil, "Optional" },
				{9,29813, nil, nil, "Easy to Obtain" },
				{10,25777, nil, nil, "Easy to Obtain" },
			},
		},
		{	--Chest
			name = "Chest",
			[NORMAL_DIFF] = {
				{1,21848, nil, nil, "BiS" },
				{2,31297, nil, nil, "Optional" },
				{3,29341, nil, nil, "Optional" },
				{4,28342, nil, nil, "Optional" },
				{5,31340, nil, nil, "Optional" },
				{6,29077, nil, nil, "Optional" },
				{7,28602, nil, nil, "Optional" },
				{8,29780, nil, nil, "Easy to Obtain" },
				{9,31717, nil, nil, "Easy to Obtain" },
			},
		},
		{	--Wrist
			name = "Wrist",
			[NORMAL_DIFF] = {
				{1,24250, nil, nil, "BiS" },
				{2,27462, nil, nil, "Optional" },
				{3,28515, nil, nil, "Optional" },
				{4,28174, nil, nil, "Optional" },
				{5,27746, nil, nil, "Optional" },
				{6,29240, nil, nil, "Optional" },
				{7,28477, nil, nil, "Optional" },
				{8,30927, nil, nil, "Easy to Obtain" },
				{9,30520, nil, nil, "Easy to Obtain" },
			},

		},
		{	--Hands
			name = "Hands",
			[NORMAL_DIFF] = {
				{1,21847, nil, nil, "BiS" },
				{2,30725, nil, nil, "Optional" },
				{3,28507, nil, nil, "Optional" },
				{4,29080, nil, nil, "Optional" },
				{5,28780, nil, nil, "Optional" },
				{6,27465, nil, nil, "Optional" },
				{7,27493, nil, nil, "Optional" },
				{8,21585, nil, nil, "Optional" },
				{9,30924, nil, nil, "Easy to Obtain" },
				{10,30930, nil, nil, "Easy to Obtain" },
			},
		},
		{	--Waist
			name = "Waist",
			[NORMAL_DIFF] = {
				{1,21846, nil, nil, "BiS" },
				{2,24256, nil, nil, "Optional" },
				{3,30673, nil, nil, "Optional" },
				{4,28799, nil, nil, "Optional" },
				{5,29241, nil, nil, "Optional" },
				{6,22730, nil, nil, "Optional" },
				{7,28654, nil, nil, "Optional" },
				{8,31461, nil, nil, "Optional" },
				{9,30923, nil, nil, "Easy to Obtain" },
				{10,29771, nil, nil, "Easy to Obtain" },
				
			},
		},
		{	--Legs
			name = "Legs",
			[NORMAL_DIFF] = {
				{1,24262, nil, nil, "BiS" },
				{2,30734, nil, nil, "Optional" },
				{3,30531, nil, nil, "Optional" },
				{4,29078, nil, nil, "Optional" },
				{5,28594, nil, nil, "Optional" },
				{6,28185, nil, nil, "Optional" },
				{7,30532, nil, nil, "Optional" },
				{8,28338, nil, nil, "Optional" },
				{9,30929, nil, nil, "Easy to Obtain" },
				{10,21852, nil, nil, "Easy to Obtain" },
			},
		},
		{	--Feet
			name = "Feet",
			[NORMAL_DIFF] = {
				{1,28585, nil, nil, "BiS" },
				{2,28517, nil, nil, "BiS" },
				{3,28406, nil, nil, "Optional" },
				{4,27821, nil, nil, "Optional" },
				{5,28179, nil, nil, "Optional" },
				{6,29242, nil, nil, "Optional" },
				{7,30519, nil, nil, "Easy to Obtain" },
				{8,30398, nil, nil, "Easy to Obtain" },
			},
		},
		{	--Neck
			name = "Neck",
			[NORMAL_DIFF] = {
				{1,28134, nil, nil, "BiS" },
				{2,28530, nil, nil, "BiS" },
				{3,28762, nil, nil, "BiS" },
				{4,31338, nil, nil, "BiS" },
				{5,27758, nil, nil, "Optional" },
				{6,18814, nil, nil, "Optional" },
				{7,21608, nil, nil, "Optional" },
				{8,29368, nil, nil, "Optional" },
				{9,31692, nil, nil, "Easy to Obtain" },
				{10,31178, nil, nil, "Easy to Obtain" },
			},
		},
		{	--Rings
			name = "Rings",
			[NORMAL_DIFF] = {
				{1,21709, nil, nil, "BiS" },
				{2,28793, nil, nil, "BiS" },
				{3,29172, nil, nil, "BiS" },
				{4,28227, nil, nil, "BiS" },
				{5,28555, nil, nil, "BiS" },
				{6,31339, nil, nil, "BiS" },
				{7,23062, nil, nil, "Optional" },
				{8,29126, nil, nil, "Optional" },
				{9,29287, nil, nil, "Optional" },
				{10,23025, nil, nil, "Optional" },
				{11,23031, nil, nil, "Optional" },
				{12,28753, nil, nil, "Optional" },
				{13,23237, nil, nil, "Optional" },
				{14,29352, nil, nil, "Optional" },
				{15,31075, nil, nil, "Easy to Obtain" },
				{16,30366, nil, nil, "Easy to Obtain" },
				{17,32774, nil, nil, "Easy to Obtain" },
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
		{	--1-Handed Weapons
			name = "1-Handed Weapons",
			[NORMAL_DIFF] = {
				{1,30723, nil, nil, "BiS" },
				{2,28802, nil, nil, "Optional" },
				{3,28770, nil, nil, "Optional" },
				{4,30787, nil, nil, "Optional" },
				{5,23554, nil, nil, "Optional" },
				{6,29153, nil, nil, "Optional" },
				{7,29155, nil, nil, "Optional" },
				{8,31336, nil, nil, "Optional" },
				{9,27905, nil, nil, "Optional" },
				{10,27543, nil, nil, "Optional" },
				{11,29185, nil, nil, "Optional" },
				{12,24453, nil, nil, "Easy to Obtain" },
				{13,31142, nil, nil, "Easy to Obtain" },
			},
		},
		{	--2H Wep
			name = "2-Handed Weapons",
			[NORMAL_DIFF] = {
				{1,28633, nil, nil, "BiS" },
				{2,22589, nil, nil, "Optional" },
				{3,29355, nil, nil, "Optional" },
				{4,29130, nil, nil, "Optional" },
				{5,28341, nil, nil, "Optional" },
				{6,27842, nil, nil, "Optional" },
				{7,31308, nil, nil, "Easy to Obtain" },
				{8,25760, nil, nil, "Easy to Obtain" },
			},
		},
		{	--Offhands
			name = "Offhands",
			[NORMAL_DIFF] = {
				{1,29270, nil, nil, "BiS" },
				{2,28734, nil, nil, "Optional" },
				{3,23049, nil, nil, "Optional" },
				{4,28412, nil, nil, "Optional" },
				{5,28187, nil, nil, "Optional" },
				{6,28781, nil, nil, "Optional" },
				{7,28603, nil, nil, "Optional" },
				{8,31699, nil, nil, "Easy to Obtain" },
				{9,31731, nil, nil, "Easy to Obtain" },
			},
		},
		{	--Wands
			name = "Wands",
			[NORMAL_DIFF] = {
				{1,28673, nil, nil, "BiS" },
				{2,28783, nil, nil, "BiS" },
				{3,22821, nil, nil, "Optional" },
				{4,28386, nil, nil, "Optional" },
				{5,22820, nil, nil, "Optional" },
				{6,32872, nil, nil, "Optional" },
				{7,25939, nil, nil, "Optional" },
				{8,29350, nil, nil, "Optional" },
				{9,27890, nil, nil, "Optional" },
				{10,31724, nil, nil, "Easy to Obtain" },
				{11,30523, nil, nil, "Easy to Obtain" },
			},
		},
		el_Gems,
		el_HeadShoulder,
		el_GearEnchants,
		el_offEnchants,
	},
}