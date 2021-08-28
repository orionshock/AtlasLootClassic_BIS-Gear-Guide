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

data[ _FilePrefix ] = {
	name = _FilePrefix,
	ContentType = roleType_DPS,
	LoadDifficulty = LOAD_DIFF,
	TableType = NORMAL_ITTYPE,
	gameVersion = 2,
	items = {
		{
			name = "Improved Faerie Fire Gear Set",
			[NORMAL_DIFF] = {
                { 01, 32087 },	{16, 27985 },
                { 02, 29381 },	{17, 30257 },	
                { 03, 33173 },	{18, 25686 },
                { 04, 24259 },	{19, 30834 },
                { 05, 23522 },	{20, 29177 },
                { 06, 28646 },	{21, 28034 },
                { 07, 30341 },	{22, 29383 },
                { 09, 28429 },
                { 11, 27484 },
			}
		},
        {
			name = "Non  Improved Faerie Fire",
			[NORMAL_DIFF] = {
                { 01, 32087 },	{16, 27985 },
                { 02, 29119 },	{17, 30257 },	
                { 03, 33173 },	{18, 28176 },
                { 04, 24259 },	{19, 30834 },
                { 05, 23522 },	{20, 29177 },
                { 06, 28646 },	{21, 28034 },
                { 07, 30341 },	{22, 29383 },
                { 09, 28429 },
                { 11, 27484 },
			}
		},
		{	--Head Slot
			name = "Head",
			[NORMAL_DIFF] = {
                {1,28182, nil, nil, "BIS - Meta Gem" }, 
                {2,31105, nil, nil, "BIS - No Meta Gem" }, 
                {3,28224, nil, nil, "Option" }, 
                {4,27408, nil, nil, "Option" }, 
			}
		},
		{	--Shoulders
			name = "Shoulders",
			[NORMAL_DIFF] = {
                {1,27771, nil, nil, "Doomplate Setup BIS" }, 
                {2,27797, nil, nil, "Wastewalker Setup BIS" }, 
                {3,27434, nil, nil, "Option" }, 
                {4,28865, "INV_BANNERPVP_01", nil, nil, "PVP" }, {19, 28713, "INV_BANNERPVP_02", nil, nil, "PVP" }
			},
		},
		{	--Back
			name = "Back",
			[NORMAL_DIFF] = {
                {1,24259, nil, nil, "BIS-Crafted" }, 
                {2,27878, nil, nil, "BIS for Hit" }, 
                {3,27892, nil, nil, "Optional - Hit" }, 
                {4,28249, nil, nil, "Option" }, 
			},
		},
		{	--Chest
			name = "Chest",
			[NORMAL_DIFF] = {
                {1,29515, nil, nil, "BIS-Crafted - Leatherworking" }, 
                {2,29525, nil, nil, "Optional-Crafted - Leatherworking" }, 
                {3,28403, nil, nil, "BIS-NonCrafted" }, 
                {4,24396, nil, nil, "Option" }, 
                {5,31548, nil, nil, "Option" }, 
			},
		},
		{	--Wrist
			name = "Wrist",
			[NORMAL_DIFF] = {
                {1,23537, nil, nil, "BIS" }, 
                {2,28646, nil, nil, "Optional-PVP" }, 
                {3,29517, nil, nil, "Optional-Crafted" }, 
                {4,27918, nil, nil, "Option" }, 
			},

		},
		{	--Hands
			name = "Hands",
			[NORMAL_DIFF] = {
                {1,30341, nil, nil, "BIS" }, 
                {2,18823, nil, nil, "Option" }, 
                {3,29509, nil, nil, "Optional-Crafted" }, 
			},
		},
		{	--Waist
			name = "Waist",
			[NORMAL_DIFF] = {
                {1,29247, nil, nil, "BIS-Hit" }, 
                {2,27755, nil, nil, "BIS-NoHit" }, 
                {3,27760, nil, nil, "Option" }, 
                {4,29516, nil, nil, "Optional-Crafted - Leatherworking" }, 
                {5,27985, nil, nil, "Non-heroic" }, 
			},
		},
		{	--Legs
			name = "Legs",
			[NORMAL_DIFF] = {
                {1,30257, nil, nil, "BIS" }, 
                {2,31544, nil, nil, "BIS-Hit Option" }, 
                {3,30533, nil, nil, "Seriously Don't use this" },
			},
		},
		{	--Feet
			name = "Feet",
			[NORMAL_DIFF] = {
                {1,25686, nil, nil, "BIS-Hit" }, 
                {2,28176, nil, nil, "BIS-Non Hit" }, 
                {3,27867, nil, nil, "Option" }, 
                {4,28318, nil, nil, "Option" }, 
			},
		},
		{	--Neck
			name = "Neck",
			[NORMAL_DIFF] = {
                {1,29381, nil, nil, "BIS-HIT" }, 
                {2,29119, nil, nil, "BIS-Non HIT" }, 
                {3,31275, nil, nil, "BOE" }, 
                {4,31695, nil, nil, "Easy to acquire" },
			},
		},
		{	--Rings
			name = "Rings",
			[NORMAL_DIFF] = {
                {1,30834, nil, nil, "Never Un-equip" }, 
                {2,29177, nil, nil, "BIS-NonHit" }, 
                {3,31920, nil, nil, "Bis-Hit" }, 
                {4,30365, nil, nil, "Easy Hit" }, 
                {5,23038, nil, nil, "CLASSIC ITEM" }, 
                {6,31380, nil, nil, "Easy non-hit" }, 
			},
		},
		{	--Trinkets 
			name = "Trinkets",
			[NORMAL_DIFF] = {
                {1,29383, nil, nil, "BIS" }, 
                {2,28034, nil, nil, "2nd Trinket" }, 
                {3,31856, nil, nil, "OPTIONAL 2nd trinket" }, 
                {4,22954, nil, nil, "Old Trinkets" }, 
                {5,23041, nil, nil, "Old Trinkets" }, 
                {6,19406, nil, nil, "Old Trinkets" }, 
                {7,23206, nil, nil, "Undead Only & Demons" }, 
                {8,29776, nil, nil, "Option" }, 
			},
		},
		{	--2H Wep
			name = "2-Handed Weapons",
			[NORMAL_DIFF] = {
                {1,28429, nil, nil, "BIS" }, 
                {2,28441, nil, nil, "Second BIS" }, 
                {3,29356, nil, nil, "Option" }, 
                {4,31322, nil, nil, "Option" }, 
                {5,23541, nil, nil, "Option" }, 
                {6,22798, nil, nil, "Old Weapon" }, 
                {7,27986, nil, nil, "Option" }, 
			},
		},
		{	--Librams
			name = "Ranged",
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