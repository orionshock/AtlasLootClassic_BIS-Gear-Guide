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

local _FileRole = "Retribution"
local _FileClass = "Paladin"
local _FilePrefix = _FileRole.." ".._FileClass

local el_Gems = {	--Extra List : Gems
	name = "Gems",
	ExtraList = true,
	TableType = PROF_ITTYPE,
	[NORMAL_DIFF] = {
        { 01, "INV_MISC_DESECRATED_PLATEHELM", nil, "Meta Gem" },
        { 02, 39961 },	{17, 32765 },
        { 04, "INV_MISC_GEM_01", nil, "Primary"},
        { 05, 31084 },
        { 07, "INV_MISC_GEM_03", nil, "Meta Fit"},
        { 08, 31106 },
        { 09, 31102 },
	}
}

local el_HeadShoulder = {	--Extra List: Shoulder Items
	name = "Head Glyph & Shoulder Inscription",
	ExtraList = true,
	TableType = NORMAL_ITTYPE,
	[NORMAL_DIFF] = {
        { 01, "INV_MISC_DESECRATED_PLATEHELM", nil, "Head Glyph"},
        { 02, 29192 },
        { 04, "INV_MISC_DESECRATED_PLATESHOULDER", nil, "Shoulder Inscription"},
        { 05, 28888, nil, nil, "Recommended Aldor" }, {20, 28910, nil, nil, "Alternative Scryer" },
        { 06, 20077, nil, nil, "Alternative Classic" }, {21, 23548, nil, nil, "Alternative Classic, from Nax" },
	}
}

local el_GearEnchants = {	--Extra List: Gear Enchants
	name = "Gear Enchants",
	ExtraList = true,
	TableType = PROF_ITTYPE,
	[NORMAL_DIFF] = {
        { 01 , "INV_MISC_CAPE_20", [4] = "Back" },	
        { 02, 34004 }, { 17, 25084, nil, nil, "If you have threat issues." },
        { 04, "INV_MISC_DESECRATED_PLATECHEST", [4] = "Chest" }, { 19 , "INV_MISC_DESECRATED_PLATEBRACER", [4] = "Wrist" },
        { 05, 27960 },{ 20, 27899 },
        { 07 , "INV_MISC_DESECRATED_PLATEPANTS", [4] = "Legs" },{ 22 , "INV_MISC_DESECRATED_PLATEGLOVES", [4] = "Hands" },
        { 08, 35554 },{ 23, 33995 },
        { 10 , "INV_MISC_DESECRATED_PLATEBOOTS", [4] = "Feet" },
        { 11, 34007, nil, nil, "<2pts in Pursuit of Justice" },
        { 12, 27951, nil, nil, ">2pts in Pursuit of Justice" },	{27, 27954, nil, nil, "Hit" },
        { 14, "INV_SWORD_65", nil, "2-Handed Weapons"},
        { 15, 27984 }
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
			name = "Improved Faerie Fire Gear Set",
			[NORMAL_DIFF] = {
				{ 01, 29073 }, {16, 28779 },
				{ 02, 28745 }, {17, 30257 },	
				{ 03, 29075 }, {18, 28608 },
				{ 04, 24259 }, {19, 30834 },
				{ 05, 29071 }, {20, 28730 },
				{ 06, 28795 }, {21, 28830 },
				{ 07, 30644 }, {22, 29383 },
				{ 09, 28429 },
				{ 11, 27484 },
			}
		},
		{
			name = "Non Improved Faerie Fire",
			[NORMAL_DIFF] = {
				{ 01, 29073 }, {16, 28779 },
				{ 02, 29381 }, {17, 30257 },	
				{ 03, 29075 }, {18, 28545 },
				{ 04, 24259 }, {19, 30834 },
				{ 05, 29071 }, {20, 28757 },
				{ 06, 28795 }, {21, 28830 },
				{ 07, 30644 }, {22, 29383 },
				{ 09, 28429 },
				{ 11, 27484 },
			}
		},
		{	--Head Slot
			name = "Head",
			[NORMAL_DIFF] = {
				{1,29073, nil, nil, "BIS" },
				{2,27881, nil, nil, "Optional-PVP" },
				{3,28182, nil, nil, "Optinoal" },
				{4,31105, nil, nil, "Optional - No Meta Gem" },
			}
		},
		{	--Shoulders
			name = "Shoulders",
			[NORMAL_DIFF] = {
				{1,29075, nil, nil, "BIS" },
				{2,30740, nil, nil, "WORLD BOSS" },
				{3,28755, nil, nil, "Option" },
				{4,27883, nil, nil, "PVP" },
			},
		},
		{	--Back
			name = "Back",
			[NORMAL_DIFF] = {
				{1,33122, nil, nil, "BIS-Crafted" },
				{2,24259, nil, nil, "Optional-Crafted" },
				{3,27878, nil, nil, "BIS for Hit" },
				{4,27892, nil, nil, "Optional - Hit" },
				{5,28249, nil, nil, "Option" },
			},
		},
		{	--Chest
			name = "Chest",
			[NORMAL_DIFF] = {
				{1,29071, nil, nil, "BIS" },
				{2,30730, nil, nil, "WORLD BOSS" },
				{3,29515, nil, nil, "BIS-Crafted - Leatherworking" },
				{4,29525, nil, nil, "Optional-Crafted Leatherworking" },
				{5,28403, nil, nil, "BIS-NonCrafted" },
			},
		},
		{	--Wrist
			name = "Wrist",
			[NORMAL_DIFF] = {
				{1,28795, nil, nil, "BIS" },
				{2,23537, nil, nil, "Optional-Crafted" },
				{3,28646, nil, nil, "Optional-PVP" },
				{4,27918, nil, nil, "Option" },
			},

		},
		{	--Hands
			name = "Hands",
			[NORMAL_DIFF] = {
				{1,30644, nil, nil, "BIS" },
				{2,30341, nil, nil, "Option" },
				{3,18823, nil, nil, "Option" },
			},
		},
		{	--Waist
			name = "Waist",
			[NORMAL_DIFF] = {
				{1,28779, nil, nil, "BIS" },
				{2,28828, nil, nil, "Option" },
				{3,29247, nil, nil, "Optional-Hit" },
				{4,28750, nil, nil, "Option" },
			},
		},
		{	--Legs
			name = "Legs",
			[NORMAL_DIFF] = {
				{1,30257, nil, nil, "BIS" },
				{2,31544, nil, nil, "BIS-Hit Option" },
			},
		},
		{	--Feet
			name = "Feet",
			[NORMAL_DIFF] = {
				{1,28608, nil, nil, "BIS-NonHit" },
				{2,28545, nil, nil, "BIS-Hit" },
				{3,28746, nil, nil, "Option" },
				{4,25686, nil, nil, "Crafted-Hit" },
			},
		},
		{	--Neck
			name = "Neck",
			[NORMAL_DIFF] = {
				{1,29381, nil, nil, "BIS-HIT" },
				{2,28509, nil, nil, "BIS-Non HIT" },
				{3,28745, nil, nil, "Option" },
				{4,29119, nil, nil, "Option" },
				{5,31275, nil, nil, "BOE" },
			},
		},
		{	--Rings
			name = "Rings",
			[NORMAL_DIFF] = {
				{1,30834, nil, nil, "Never Un-equip" },
				{2,30738, nil, nil, "WorldBoss" },
				{3,28757, nil, nil, "Bis-Hit" },
				{4,28730, nil, nil, "Optional-Hit" },
				{5,29283, nil, nil, "Optional-NonHit" },
				{6,31920, nil, nil, "Option" },
				{7,28649, nil, nil, "Option" },				
			},
		},
		{	--Trinkets 
			name = "Trinkets",
			[NORMAL_DIFF] = {
				{1,29383, nil, nil, "BIS" },
				{2,28830, nil, nil, "BIS TRINKET #2" },
				{3,23206, nil, nil, "Undead Only & Demons" },
				{4,28288, nil, nil, "Best Non-DST" },
				{5,31856, nil, nil, "OPTIONAL" },
				{6,28034, nil, nil, "OPTIONAL UNTIL DST" },
				{7,22954, nil, nil, "Old Trinkets" },
				{8,23041, nil, nil, "Old Trinkets" },
				{9,19406, nil, nil, "Old Trinkets" },
				{10,28579, nil, nil, "PENDING TESTING" },
			},
		},
		{	--2H Wep
			name = "2-Handed Weapons",
			[NORMAL_DIFF] = {
				{1,28429, nil, nil, "BIS" },
				{2,30722, nil, nil, "WORLD BOSS" },
				{3,28441, nil, nil, "Optional-Crafting" },
				{4,28773, nil, nil, "Option" },
				{5,24550, nil, nil, "PVP" },
			},
		},
		{	--Librams
			name = "Librams",
			[NORMAL_DIFF] = {
				{1,27484, nil, nil, "BIS" },
				{2,22401, nil, nil, "Option" },
				{3,23203, nil, nil, "Optional Easy to Obtain" },
				{4,22402, nil, nil, "Cleansebot" },
			},
		},
		el_Gems,
		el_HeadShoulder,
		el_GearEnchants,
	},
}