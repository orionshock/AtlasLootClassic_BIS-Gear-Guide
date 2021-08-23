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

local _FileRole = "Shadow"
local _FileClass = "Priest"
local _FilePrefix = _FileRole.." ".._FileClass

local el_Gems = {	--Extra List : Gems
	name = "Gems",
	ExtraList = true,
	TableType = PROF_ITTYPE,
	[NORMAL_DIFF] = {
		{ 01, "INV_MISC_DESECRATED_CLOTHHELM", nil, "Meta Gem" },
		{ 02, 32872 }, { 17, 32766 },
		{ 04, "INV_MISC_GEM_01", nil, "Primary"},
		{ 05, 31088 },
		{ 07, "INV_MISC_GEM_03", nil, "Meta Fit"},
		{ 08, 31104 },
		{ 09, 39470 },
	},
}

local el_HeadShoulder = {	--Extra List: Shoulder Items
	name = "Head Glyph & Shoulder Inscription",
	ExtraList = true,
	TableType = NORMAL_ITTYPE,
	[NORMAL_DIFF] = {
		{ 01, "INV_MISC_DESECRATED_CLOTHHELM", nil, "Head Glyph"},
		{ 02, 29191 },
		{ 04, "INV_MISC_DESECRATED_CLOTHSHOULDER", nil, "Shoulder Inscription"},
		{ 05, 28886, nil, nil, "best due to prioritizing spell power"},
		{ 07, 23545, '"worse than Aldor"' },
		{ 08, 20076, '"worse than Aldor"' },
		{ 10, 28909, nil, nil, '"Better than Nothing"' },
	}
}

local el_GearEnchants = {	--Extra List: Gear Enchants
	name = "Gear Enchants",
	ExtraList = true,
	TableType = PROF_ITTYPE,
	[NORMAL_DIFF] = {
		{ 01 , "INV_MISC_CAPE_20", nil, "Back" },	
		{ 02, 25084, nil, nil, "Helps reduce aggro" },			{ 17, 34003, nil, nil, "For PvP and maybe in PvE" },
		{ 03, 34006, nil, nil, "Defensive Best" },				{ 18, 27962, nil, nil, "Defensive, balanced / expensive" },
		{ 04, 27961, nil, nil, "Defensive, Cheapest" },	
			
		{ 06, "INV_MISC_DESECRATED_CLOTHCHEST", nil, "Chest" },	{ 21 , "INV_MISC_DESECRATED_CLOTHGLOVE", nil, "Hands" },
		{ 07, 33990 },											{ 22, 33997 },
		{ 08, 33991 },											{ 23, 25073 },
			
		{ 10 , "INV_MISC_DESECRATED_CLOTHPANTS", nil, "Legs" },	{ 25 , "INV_MISC_DESECRATED_CLOTHBOOTS", nil, "Feet" },
		{ 11, 31432, nil, nil, "Best" },						{ 26, 27948, nil, nil, "Health and mana efficiency" },
		{ 12, 31430, nil, nil, "Alternative" },					{ 27, 27954, nil, nil, "PvP" },
																{ 28, 34008 },
		{ 14 , "INV_MISC_DESECRATED_CLOTHBRACER", nil, "Wrist" },	
		{ 15, 27917 },

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
		{ 05, 27982 },
		{ 06, 27975 },
		{ 08, 28003, nil, nil, "entirely situational and not the primary choice" },	
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
			name = "Absolute Pre-Raid Best in Slot",
			[NORMAL_DIFF] = {
				{ 01, 24266 },	{ 16, 24256 },
				{ 02, 28245, 28118, nil, "PVP Gem" },	{ 17, 24262 },	
				{ 03, 21869 },	{ 18, 21870 },
				{ 04, 25043, nil, nil, "of Shadow Wrath. +45 Shadow Damage" },	{ 19, 21709 },
				{ 05, 21871 },	{ 20, 23031 },
				{ 06, 24692, nil, nil, "of Shadow Wrath. +45 Shadow Damage" },	{ 21, 29370 },
				{ 07, 24688, nil, nil, "of Shadow Wrath. +60 Shadow Damage" },	{ 22, 27683 },
				{ 09, 23554 },
				{ 10, 29272 },
				{ 11, 25295 },
			}
		},
		{
			name = "Realistic Pre-Raid Setup",
			[NORMAL_DIFF] = {
				{ 01, 24266 },	{ 16, 24685, nil, nil, "of Shadow Wrath. +60 Shadow Damage" },
				{ 02, 28245, 31867, nil },	{ 17, 24262 },	
				{ 03, 21869 },	{ 18, 21870 },
				{ 04, 25043, nil, nil, "of Shadow Wrath. +45 Shadow Damage" },	{ 19, 29172 },
				{ 05, 21871, 28118, nil, "PvP Gem & Runed Living Ruby" },	{ 20, 29352 },
				{ 06, 24692, nil, nil, "of Shadow Wrath. +45 Shadow Damage" },	{ 21, 29370 },
				{ 07, 24688, nil, nil, "of Shadow Wrath. +60 Shadow Damage" },	{ 22, 27683 },
				{ 09, 30832 },
				{ 10, 29272 },
				{ 11, 25295, nil, nil, "of Shadow Wrath. +25 Shadow Damage" },
			}
		},
		{	--Head Slot
			name = "Head",
			[NORMAL_DIFF] = {
				{1,24266, nil, nil, "Raid BiS" },
				{2,24689, nil, nil, "of Shadow Wrath, +80 Shadow Damage" },
				{3,28415, nil, nil, "Great" },
				{4,28169, nil, nil, "Viable" },
				{5,31104, nil, nil, "Viable" },
				{6,28193, nil, nil, "Viable" },
				{7,28183, nil, nil, "Viable" },
			}
		},
		{	--Shoulders
			name = "Shoulders",
			[NORMAL_DIFF] = {
				{1,21869, nil, nil, "Best in slot" },
				{2,24691, nil, nil, "of Shadow Wrath, +60 Shadow Damage" },
				{3,27778, nil, nil, "Great" },
				{4,27796, nil, nil, "Viable" },
				{5,30925, nil, nil, "Viable" },
			},
		},
		{	--Back
			name = "Back",
			[NORMAL_DIFF] = {
				{1,25043, nil, nil, "of Shadow Wrath, +45 Shadow Damage" },
				{2,24252, nil, nil, "Raid BiS" },
				{3,29813, nil, nil, "Great" },
				{4,31140, nil, nil, "Great" },
				{5,27981, nil, nil, "Great" },
			},
		},
		{	--Chest
			name = "Chest",
			[NORMAL_DIFF] = {
				{1,21871, nil, nil, "Best in slot" },
				{2,31297, nil, nil, "Viable" },
				{3,29341, nil, nil, "Viable" },
				{4,28232, nil, nil, "Viable" },
				{5,28342, nil, nil, "Viable" },
			},
		},
		{	--Wrist
			name = "Wrist",
			[NORMAL_DIFF] = {
				{1,24692, nil, nil, "of Shadow Wrath, +45 Shadow Damage" },
				{2,24250, nil, nil, "P1 Raid BiS" },
				{3,27462, nil, nil, "Viable" },
				{4,29240, nil, nil, "Viable" },
				{5,28174, nil, nil, "Easy to acquire" },
			},

		},
		{	--Hands
			name = "Hands",
			[NORMAL_DIFF] = {
				{1,24688, nil, nil, "of Shadow Wrath, +60 Shadow Damage" },
				{2,29317, nil, nil, "Best in slot" },
				{3,21585, nil, nil, "Great" },
				{4,19407, nil, nil, "Great" },
				{5,27537, nil, nil, "Viable" },
			},
		},
		{	--Waist
			name = "Waist",
			[NORMAL_DIFF] = {
				{1,24256, nil, nil, "Pre-Raid BiS" },
				{2,24685, nil, nil, "of Shadow Wrath, +60 Shadow Damage" },
				{3,27843, nil, nil, "Great" },
				{4,29241, nil, nil, "Great" },
				{5,22730, nil, nil, "Viable" },
				{6,24395, nil, nil, "Viable" },
				{7,31461, nil, nil, "Easy" },
			},
		},
		{	--Legs
			name = "Legs",
			[NORMAL_DIFF] = {
				{1,24262, nil, nil, "P1 Raid BiS" },
				{2,24690, nil, nil, "of Shadow Wrath, +80 Shadow Damage" },
				{3,30531, nil, nil, "Viable" },
				{4,30532, nil, nil, "Viable" },
				{5,28185, nil, nil, "Entry" },
				{6,27948, nil, nil, "Entry" },
			},
		},
		{	--Feet
			name = "Feet",
			[NORMAL_DIFF] = {
				{1,21870, nil, nil, "Best in slot" },
				{2,24686, nil, nil, "of Shadow Wrath, +60 Shadow Damage" },
				{3,28179, nil, nil, "Viable" },				
			},
		},
		{	--Neck
			name = "Neck",
			[NORMAL_DIFF] = {
				{1,18814, nil, nil, "P1 Raid BiS" },
				{2,31692, nil, nil, "Great" },
				{3,31693, nil, nil, "Great" },
				{4,21608, nil, nil, "Great" },
				{5,29368, nil, nil, "Great" },
			},
		},
		{	--Rings
			name = "Rings",
			[NORMAL_DIFF] = {
				{1,21709, nil, nil, "P1 Raid BiS" },
				{2,23031, nil, nil, "P1 Raid BiS" },
				{3,29172, nil, nil, "Great" },
				{4,28555, nil, nil, "Great" },
				{5,29126, nil, nil, "Great" },
				{6,29352, nil, nil, "Great" },
				{7,19434, nil, nil, "Viable" },
				{8,19147, nil, nil, "Viable" },
				{9,31290, nil, nil, "Viable" },
				{10,31075, nil, nil, "Viable" },
				{11,30366, nil, nil, "Viable" },
				{12,29793, nil, nil, "Viable" },
			},
		},
		{	--Trinkets 1
			name = "Trinkets1",
			[NORMAL_DIFF] = {
				{1,23207, nil, nil, "vs Demons & Undead" },
				{2,29370, nil, nil, "P1 Raid BiS" },
				{3,23046, nil, nil, "Great" },
				{4,19379, nil, nil, "Great" },
				{5,27683, nil, nil, "Great" },
				{6,29132, nil, nil, "Viable" },
				{7,28223, nil, nil, "Viable" },
				{8,26055, nil, nil, "Entry" },
				{9,27922, "INV_BANNERPVP_02", nil, "Entry" },{ 24, 27924, "INV_BANNERPVP_01", nil, "Entry" }
			},
		},
		{	--Main and Two–Handed Weaons
			name = "Main and Two–Handed Weaons",
			[NORMAL_DIFF] = {
				{1,32450, nil, nil, "Best in slot - Phase 2" },
				{2,28297, nil, nil, "Best in slot - Phase 2" },
				{3,30832, nil, nil, "Best in slot" },
				{4,27543, nil, nil, "Viable" },
			},
		},
		{	--Wands
			name = "Wands",
			[NORMAL_DIFF] = {
				{1,25295, nil, nil, "of Shadow Wrath, +25 Shadow Damage" },
				{2,29350, nil, nil, "Viable" },
				{3,28386, nil, nil, "Viable" },
				{4,30859, nil, nil, "Viable" },
				{5,27890, nil, nil, "Viable" },
			},
		},
		{	--Offhand
			name = "Off Hand",
			[NORMAL_DIFF] = {
				{1,29272, nil, nil, "P1 Raid BiS" },
				{2,29273, nil, nil, "Great" },
				{3,19309, nil, nil, "Viable" },
				{4,19315, nil, nil, "Viable" },
				{5,23049, nil, nil, "Viable" },
				{6,28412, nil, nil, "Viable" },	
			},
		},
		el_Gems,
		el_HeadShoulder,
		el_GearEnchants,
		el_offEnchants,
	},
}