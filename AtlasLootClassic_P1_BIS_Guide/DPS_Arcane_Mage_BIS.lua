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

local _FileRole = "Arcane"
local _FileClass = "Mage"
local _FilePrefix = _FileRole.." ".._FileClass

local el_Gems = {	--Extra List : Gems
	name = "Gems",
	ExtraList = true,
	TableType = PROF_ITTYPE,
	[NORMAL_DIFF] = {
		{ 01, "INV_MISC_DESECRATED_CLOTHHELM", nil, "Meta Gem" },
		{ 02, 44794 },	{ 17, 32766 },
		
		{ 04, "INV_MISC_GEM_01", nil, "Primary"},
		{ 05, 31096 },
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
				{ 02, 31338 },	{ 17, 24262 },
				{ 03, 29079 },	{ 18, 28517 },
				{ 04, 28797 },	{ 19, 31339 },
				{ 05, 21848 },	{ 20, 28793 },
				{ 06, 28411 },	{ 21, 23207 },
				{ 07, 21847 },	{ 22, 29370 },
				{ 09, 28802 },
				{ 10, 29271 },
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
				{2,27994, nil, nil, "Optional" },
				{3,30925, nil, nil, "Optional" },
				{4,27778, nil, nil, "Optional" },
				{5,27796, nil, nil, "Optional" },
				{6,22983, nil, nil, "Optional" },
				{7,28075, nil, nil, "Easy to Obtain" },
				{8,30514, nil, nil, "Easy to Obtain" },
			},
		},
		{	--Back
			name = "Back",
			[NORMAL_DIFF] = {
				{1,28766, nil, nil, "BiS" },
				{2,28797, nil, nil, "BiS" },
				{3,30735, nil, nil, "Optional" },
				{4,23050, nil, nil, "Optional" },
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
				{1,27462, nil, nil, "BiS" },
				{2,28411, nil, nil, "BiS" },
				{3,24250, nil, nil, "Optional" },
				{4,28515, nil, nil, "Optional" },
				{5,28174, nil, nil, "Optional" },
				{6,27746, nil, nil, "Optional" },
				{7,29240, nil, nil, "Optional" },
				{8,28477, nil, nil, "Optional" },
				{9,30927, nil, nil, "Easy to Obtain" },
				{10,30520, nil, nil, "Easy to Obtain" },
			},

		},
		{	--Hands
			name = "Hands",
			[NORMAL_DIFF] = {
				{1,21847, nil, nil, "BiS" },
				{2,28507, nil, nil, "Optional" },
				{3,29080, nil, nil, "Optional" },
				{4,30725, nil, nil, "Optional" },
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
				{8,30929, nil, nil, "Easy to Obtain" },
				{9,21852, nil, nil, "Easy to Obtain" },
			},
		},
		{	--Feet
			name = "Feet",
			[NORMAL_DIFF] = {
				{1,28585, nil, nil, "BiS" },
				{2,28517, nil, nil, "BiS" },
				{3,29258, nil, nil, "Optional" },
				{4,28406, nil, nil, "Optional" },
				{5,27821, nil, nil, "Optional" },
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
				{1,28793, nil, nil, "BiS" },
				{2,28227, nil, nil, "BiS" },
				{3,31339, nil, nil, "BiS" },
				{4,21709, nil, nil, "BiS" },
				{5,28510, nil, nil, "Optional" },
				{6,29287, nil, nil, "Optional" },
				{7,28753, nil, nil, "Optional" },
				{8,23062, nil, nil, "Optional" },
				{9,29352, nil, nil, "Optional" },
				{10,29172, nil, nil, "Optional" },
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
				{5,27683, nil, nil, "Optional" },
				{6,28789, nil, nil, "Optional" },
				{7,28785, nil, nil, "Optional" },
				{8,19339, nil, nil, "Optional" },
				{9,19379, nil, nil, "Optional" },
				{10,23046, nil, nil, "Optional" },
				{11,28418, nil, nil, "Optional" },
				{12,29179, nil, nil, "Optional" },
				{13,28040, nil, nil, "Easy to Obtain" },
				{14,25620, nil, nil, "Easy to Obtain" },
				{15,25619, nil, nil, "Easy to Obtain" },
			},
		},
		{	--1H Wep
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
				{1,28734, nil, nil, "BiS" },
				{2,28603, nil, nil, "BiS" },
				{3,29271, nil, nil, "Optional" },
				{4,23049, nil, nil, "Optional" },
				{5,28412, nil, nil, "Optional" },
				{6,28187, nil, nil, "Optional" },
				{7,28781, nil, nil, "Optional" },
				{8,31699, nil, nil, "Easy to Obtain" },
				{9,31731, nil, nil, "Easy to Obtain" },
			},
		},
		{	--Wands
			name = "Wands",
			[NORMAL_DIFF] = {
				{1,28673, nil, nil, "BiS" },
				{2,28783, nil, nil, "BiS" },
				{3,28386, nil, nil, "Optional" },
				{4,22820, nil, nil, "Optional" },
				{5,22821, nil, nil, "Optional" },
				{6,25939, nil, nil, "Optional" },
				{7,29350, nil, nil, "Optional" },
				{8,27890, nil, nil, "Optional" },
				{9,31724, nil, nil, "Easy to Obtain" },
				{10,30523, nil, nil, "Easy to Obtain" },
			},
		},
		el_Gems,
		el_HeadShoulder,
		el_GearEnchants,
		el_offEnchants,
	},
}