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
			name = "Spellstrike/Spellfire Set",
			[NORMAL_DIFF] = {
				{ 01, 24266 },{ 16, 21846 },
				{ 02, 28530 },{ 17, 24262 },
				{ 03, 29095 },{ 18, 28517 },
				{ 04, 28766 },{ 19, 29172 },
				{ 05, 21848 },{ 20, 28793 },
				{ 06, 24250 },{ 21, 29370 },
				{ 07, 21847 },{ 22, 29132 },
				{ 09, 28770 },
				{ 10, 29271 },
				{ 11, 27518 },
			}
		},
		{	--Head Slot
			name = "Head",
			[NORMAL_DIFF] = {
				{1,24266, nil, nil, "BiS" },
				{2,28744, nil, nil, "BiS" },
				{3,23828, nil, nil, "Option" },
				{4,29093, nil, nil, "Option" },
				{5,31110, nil, nil, "Option" },
				{6,28804, nil, nil, "Option" },
				{7,28169, nil, nil, "Option" },
				{8,32089, nil, nil, "Option" },
				{9,28137, nil, nil, "PvP" },
				{10,28278, nil, nil, "Option" },
				{11,28415, nil, nil, "Option" },
			}
		},
		{	--Shoulders
			name = "Shoulders",
			[NORMAL_DIFF] = {
				{1,29095, nil, nil, "BiS" },
				{2,27796, nil, nil, "Option" },
				{3,27778, nil, nil, "Option" },
				{4,30925, nil, nil, "Option" },
				{5,27994, nil, nil, "Option" },
				{6,22983, nil, nil, "Option" },
				{7,28139, nil, nil, "PvP" },
				{8,27738, nil, nil, "Option" },
				{9,31797, nil, nil, "Option" },
			},
		},
		{	--Back
			name = "Back",
			[NORMAL_DIFF] = {
				{1,28766, nil, nil, "BiS" },
				{2,30735, nil, nil, "Option" },
				{3,28797, nil, nil, "Option" },
				{4,27981, nil, nil, "Option" },
				{5,28570, nil, nil, "Option" },
				{6,31140, nil, nil, "Option" },
				{7,23050, nil, nil, "Option" },
				{8,22731, nil, nil, "Option" },
				{9,29369, nil, nil, "Option" },
				{10,24252, nil, nil, "Option" },
				{11,25777, nil, nil, "Option" },
			},
		},
		{	--Chest
			name = "Chest",
			[NORMAL_DIFF] = {
				{1,21848, nil, nil, "BiS" },
				{2,29091, nil, nil, "BiS" },
				{3,29522, nil, nil, "Option" },
				{4,31297, nil, nil, "Option" },
				{5,29341, nil, nil, "Option" },
				{6,31340, nil, nil, "Option" },
				{7,28342, nil, nil, "Option" },
				{8,28140, nil, nil, "PvP" },
				{9,29129, nil, nil, "Option" },
				{10,28229, nil, nil, "Option" },
			},
		},
		{	--Wrist
			name = "Wrist",
			[NORMAL_DIFF] = {
				{1,29523, nil, nil, "BiS" },
				{2,24250, nil, nil, "BiS" },
				{3,27462, nil, nil, "Option" },
				{4,28515, nil, nil, "Option" },
				{5,29240, nil, nil, "Option" },
				{6,21186, nil, nil, "Option" },
				{7,28453, nil, nil, "Option" },
				{8,28174, nil, nil, "Option" },
				{9,29255, nil, nil, "Option" },
			},

		},
		{	--Hands
			name = "Hands",
			[NORMAL_DIFF] = {
				{1,21847, nil, nil, "BiS" },
				{2,30725, nil, nil, "BiS" },
				{3,28507, nil, nil, "BiS" },
				{4,28780, nil, nil, "Option" },
				{5,27493, nil, nil, "Option" },
				{6,27537, nil, nil, "Option" },
				{7,24450, nil, nil, "Option" },
				{8,31149, nil, nil, "Option" },
				{9,27465, nil, nil, "Option" },
				{10,29092, nil, nil, "Option" },
				{11,29317, nil, nil, "Option" },
				{12,24452, nil, nil, "Option" },
			},
		},
		{	--Waist
			name = "Waist",
			[NORMAL_DIFF] = {
				{1,21846, nil, nil, "BiS" },
				{2,24256, nil, nil, "BiS" },
				{3,28799, nil, nil, "Option" },
				{4,29524, nil, nil, "Option" },
				{5,29241, nil, nil, "Option" },
				{6,27843, nil, nil, "Option" },
				{7,31461, nil, nil, "Option" },
				{8,28654, nil, nil, "Option" },
				{9,24395, nil, nil, "Option" },
			},
		},
		{	--Legs
			name = "Legs",
			[NORMAL_DIFF] = {
				{1,24262, nil, nil, "BiS" },
				{2,30734, nil, nil, "BiS" },
				{3,28594, nil, nil, "Option" },
				{4,29141, nil, nil, "Option" },
				{5,29142, nil, nil, "Option" },
				{6,30531, nil, nil, "Option" },
				{7,29343, nil, nil, "Option" },
				{8,30532, nil, nil, "Option" },
				{9,28212, nil, nil, "Option" },
				{10,27492, nil, nil, "Option" },
				{11,28185, nil, nil, "Option" },
			},
		},
		{	--Feet
			name = "Feet",
			[NORMAL_DIFF] = {
				{1,28517, nil, nil, "BiS" },
				{2,28585, nil, nil, "BiS" },
				{3,27821, nil, nil, "Option" },
				{4,28406, nil, nil, "Option" },
				{5,30737, nil, nil, "Option" },
				{6,28179, nil, nil, "Option" },
				{7,28410, nil, nil, "PvP" },
				{8,29808, nil, nil, "Option" },
				{9,30519, nil, nil, "Option" },
				{10,29258, nil, nil, "Option" },
				{11,27848, nil, nil, "Option" },
				{12,27914, nil, nil, "Option" },
				{13,29242, nil, nil, "Option" },				
			},
		},
		{	--Neck
			name = "Neck",
			[NORMAL_DIFF] = {
				{1,28530, nil, nil, "BiS" },
				{2,28762, nil, nil, "BiS" },
				{3,24116, nil, nil, "Option" },
				{4,28134, nil, nil, "Option" },
				{5,27758, nil, nil, "Option" },
				{6,31692, nil, nil, "Option" },
				{7,28245, nil, nil, "PvP" },
				{8,29333, nil, nil, "Option" },
				{9,24462, nil, nil, "Option" },
			},
		},
		{	--Rings
			name = "Rings",
			[NORMAL_DIFF] = {
				{1,28793, nil, nil, "BiS" },
				{2,28753, nil, nil, "BiS" },
				{3,29172, nil, nil, "BiS" },
				{4,29287, nil, nil, "BiS" },
				{5,28227, nil, nil, "Option" },
				{6,21709, nil, nil, "Option" },
				{7,23031, nil, nil, "Option" },
				{8,28555, nil, nil, "Option" },
				{9,29352, nil, nil, "Option" },
				{10,29367, nil, nil, "Option" },
				{11,29126, nil, nil, "Option" },
				{12,31075, nil, nil, "Option" },
				{13,30366, nil, nil, "Option" },
				{14,31290, nil, nil, "Option" },
				{15,28394, nil, nil, "Option" },
			},
		},
		{	--Trinkets 1
			name = "Trinkets1",
			[NORMAL_DIFF] = {
				{1,29370, nil, nil, "BiS" },
				{2,27683, nil, nil, "BiS" },
				{3,29132, nil, nil, "BiS" },
				{4,19379, nil, nil, "BiS" },
				{5,28789, nil, nil, "Option" },
				{6,23046, nil, nil, "Option" },
				{7,28223, nil, nil, "Option" },
				{8,26055, nil, nil, "Option" },
				{9,30340, nil, nil, "Option" },
				{10,12930, nil, nil, "Option" },
				{11,25936, nil, nil, "Option" },
				{12,25620, nil, nil, "Option" },
				{13,25619, nil, nil, "Option" },
			},
		},
		{	--1H Wep
			name = "1-Handed Weapons",
			[NORMAL_DIFF] = {
				{1,28770, nil, nil, "BiS" },
				{2,30723, nil, nil, "BiS" },
				{4,30832, nil, nil, "Option" },
				{5,28297, nil, nil, "PvP" },
				{6,32450, nil, nil, "PvP" },
				{7,23554, nil, nil, "Option" },
				{8,27543, nil, nil, "Option" },
				{9,23458, nil, nil, "PvP" },
				{10,27937, nil, nil, "Option" },
				{11,27741, nil, nil, "Option" },
				{12,27868, nil, nil, "Option" },
			},
		},
		{	--2H Wep
			name = "2-Handed Weapons",
			[NORMAL_DIFF] = {
				{1,24557, nil, nil, "PvP" },
				{2,28633, nil, nil, "BiS" },
				{3,29355, nil, nil, "Option" },
				{4,27842, nil, nil, "Option" },
				{5,29130, nil, nil, "Option" },
				{6,18874, nil, nil, "PvP" },
				{7,28341, nil, nil, "Option" },
				{8,31308, nil, nil, "Option" },
				{9,28188, nil, nil, "Option" },
			},
		},
		{	--Offhands
			name = "Offhands",
			[NORMAL_DIFF] = {
				{1,29271, nil, nil, "BiS" },
				{2,28734, nil, nil, "BiS" },
				{3,29273, nil, nil, "Option" },
				{4,28412, nil, nil, "Option" },
				{5,23049, nil, nil, "Option" },
				{6,28603, nil, nil, "Option" },
				{7,28187, nil, nil, "Option" },
				{8,28260, nil, nil, "Option" },
				{9,29330, nil, nil, "Option" },
			},
		},
		{	--Idols
			name = "Idols",
			[NORMAL_DIFF] = {
				{1,27518, nil, nil, "BiS" },
				{2,31025, nil, nil, "Option" },
				{3,23197, nil, nil, "Option" },
			},
		},
		el_Gems,
		el_HeadShoulder,
		el_GearEnchants,
		el_offEnchants,
	},
}