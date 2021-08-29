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
				{1,24266, nil, nil, "BiS" },
				{2,31110, nil, nil, "Optional" },
				{3,28169, nil, nil, "Optional", [ATLASLOOT_IT_ALLIANCE] = false, [ATLASLOOT_IT_HORDE] = true },
				{4,32089, nil, nil, "Optional" },
				{5,28137, nil, nil, "PvP" },
				{6,28278, nil, nil, "Optional" },
				{7,28415, nil, nil, "Optional" },
			}
		},
		{	--Shoulders
			name = "Shoulders",
			[NORMAL_DIFF] = {
				{1,27796, nil, nil, "BiS" },
				{2,27778, nil, nil, "BiS" },
				{3,30925, nil, nil, "Optional" },
				{4,27994, nil, nil, "Optional" },
				{5,22983, nil, nil, "Optional" },
				{6,28139, nil, nil, "PvP" },
				{7,27738, nil, nil, "Optional" },
				{8,31797, nil, nil, "Optional" },
			},
		},
		{	--Back
			name = "Back",
			[NORMAL_DIFF] = {
				{1,27981, nil, nil, "BiS" },
				{2,31140, nil, nil, "Optional" },
				{3,23050, nil, nil, "Optional" },
				{4,22731, nil, nil, "Optional" },
				{5,29369, nil, nil, "Optional" },
				{6,24252, nil, nil, "Optional" },
				{7,25777, nil, nil, "Optional" },
			},
		},
		{	--Chest
			name = "Chest",
			[NORMAL_DIFF] = {
				{1,21848, nil, nil, "BiS" },
				{2,29522, nil, nil, "Optional" },
				{3,31297, nil, nil, "Optional" },
				{4,29341, nil, nil, "Optional" },
				{5,31340, nil, nil, "Optional" },
				{6,28342, nil, nil, "Optional" },
				{7,28140, nil, nil, "PvP" },
				{8,29129, nil, nil, "Optional" },
				{9,28229, nil, nil, "Optional" },
			},
		},
		{	--Wrist
			name = "Wrist",
			[NORMAL_DIFF] = {
				{1,29523, nil, nil, "BiS" },
				{2,24250, nil, nil, "BiS" },
				{3,27462, nil, nil, "Optional" },
				{4,28411, nil, nil, "PvP" },
				{5,29240, nil, nil, "Optional" },
				{6,21186, nil, nil, "Optional" },
				{7,28174, nil, nil, "Optional" },
				{8,29255, nil, nil, "Optional" },
			},

		},
		{	--Hands
			name = "Hands",
			[NORMAL_DIFF] = {
				{1,21847, nil, nil, "BiS" },
				{2,27493, nil, nil, "Optional" },
				{3,27537, nil, nil, "Optional" },
				{4,24450, nil, nil, "Optional" },
				{5,31149, nil, nil, "Optional" },
				{6,27465, nil, nil, "Optional" },
				{7,29317, nil, nil, "Optional" },
				{8,24452, nil, nil, "Optional" },
			},
		},
		{	--Waist
			name = "Waist",
			[NORMAL_DIFF] = {
				{1,21846, nil, nil, "BiS" },
				{2,24256, nil, nil, "BiS" },
				{3,29524, nil, nil, "Optional" },
				{4,29241, nil, nil, "Optional" },
				{5,27843, nil, nil, "Optional" },
				{6,31461, nil, nil, "Optional" },
				{7,24395, nil, nil, "Optional" },
			},
		},
		{	--Legs
			name = "Legs",
			[NORMAL_DIFF] = {
				{1,24262, nil, nil, "BiS" },
				{2,29141, nil, nil, "Optional" },
				{3,29142, nil, nil, "Optional" },
				{4,30531, nil, nil, "Optional" },
				{5,29343, nil, nil, "Optional" },
				{6,30532, nil, nil, "Optional" },
				{7,28212, nil, nil, "Optional" },
				{8,27492, nil, nil, "Optional" },
				{9,28185, nil, nil, "Optional" },
			},
		},
		{	--Feet
			name = "Feet",
			[NORMAL_DIFF] = {
				{1,27821, nil, nil, "BiS" },
				{2,28406, nil, nil, "BiS" },
				{3,28179, nil, nil, "Optional" },
				{4,28410, nil, nil, "PvP" },
				{5,29808, nil, nil, "Optional" },
				{6,30519, nil, nil, "Optional" },
				{7,29258, nil, nil, "Optional" },
				{8,27848, nil, nil, "Optional" },
				{9,27914, nil, nil, "Optional" },
				{10,29242, nil, nil, "Optional" },
			},
		},
		{	--Neck
			name = "Neck",
			[NORMAL_DIFF] = {
				{1,28134, nil, nil, "BiS" },
				{2,27758, nil, nil, "Optional" },
				{3,31692, nil, nil, "Optional" },
				{4,28245, nil, nil, "PvP" },
				{5,29333, nil, nil, "Optional" },
				{6,24462, nil, nil, "Optional" },
			},
		},
		{	--Rings
			name = "Rings",
			[NORMAL_DIFF] = {
				{1,29172, nil, nil, "BiS" },
				{2,28227, nil, nil, "BiS" },
				{3,21709, nil, nil, "Optional" },
				{4,23031, nil, nil, "Optional" },
				{5,28555, nil, nil, "Optional" },
				{6,29352, nil, nil, "Optional" },
				{7,29367, nil, nil, "Optional" },
				{8,29126, nil, nil, "Optional" },
				{9,31075, nil, nil, "Optional" },
				{10,30366, nil, nil, "Optional" },
				{11,31290, nil, nil, "Optional" },
				{12,28394, nil, nil, "Optional" },
			},
		},
		{	--Trinkets
			name = "Trinkets",
			[NORMAL_DIFF] = {
				{1,29370, nil, nil, "BiS" },
				{2,27683, nil, nil, "BiS" },
				{3,29132, nil, nil, "BiS" },
				{4,19379, nil, nil, "BiS" },
				{5,23046, nil, nil, "Optional" },
				{6,28223, nil, nil, "Optional" },
				{7,26055, nil, nil, "Optional" },
				{8,30340, nil, nil, "Optional" },
				{9,12930, nil, nil, "Optional" },
				{10,25936, nil, nil, "Optional" },
				{11, nil, nil, nil, "Optional", [ATLASLOOT_IT_HORDE] = 25620, [ATLASLOOT_IT_ALLIANCE] = 25619 },

			},
		},
		{	--1-Handed Weapons
			name = "1-Handed Weapons",
			[NORMAL_DIFF] = {
				{1,23554, nil, nil, "BiS" },
				{2,30832, nil, nil, "BiS" },
				{3,28297, nil, nil, "PvP" },
				{4,32450, nil, nil, "PvP" },
				{5,27543, nil, nil, "Optional" },
				{6,23458, nil, nil, "Optional" },
				{7,27937, nil, nil, "Optional" },
				{8,27741, nil, nil, "Optional" },
				{9,27868, nil, nil, "Optional" },
			},
		},
		{	--2-Handed Weapons
			name = "2-Handed Weapons",
			[NORMAL_DIFF] = {
				{1,24557, nil, nil, "PvP" },
				{2,29355, nil, nil, "BiS" },
				{3,27842, nil, nil, "Optional" },
				{4,29130, nil, nil, "Optional" },
				{5,18874, nil, nil, "PvP" },
				{6,28341, nil, nil, "Optional" },
				{7,31308, nil, nil, "Optional" },
				{8,28188, nil, nil, "Optional" },
			},
		},
		{	--Offhands
			name = "Offhands",
			[NORMAL_DIFF] = {
				{1,29271, nil, nil, "BiS" },
				{2,29273, nil, nil, "Optional" },
				{3,28412, nil, nil, "Optional" },
				{4,23049, nil, nil, "Optional" },
				{5,28187, nil, nil, "Optional" },
				{6,28260, nil, nil, "Optional" },
				{7,29330, nil, nil, "Optional" },
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