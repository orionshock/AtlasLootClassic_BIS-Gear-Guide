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

local _FileRole = "Protection"
local _FileClass = "Paladin"
local _FilePrefix = _FileRole.." - ".._FileClass

local el_Gems = {	--Extra List : Gems
	name = "Gems",
	ExtraList = true,
	TableType = PROF_ITTYPE,
	[NORMAL_DIFF] = {
		{ 01, "INV_MISC_DESECRATED_PLATEHELM", nil, "Meta Gem" },
		{ 02, 32866 }, { 17, 32765 },
        { 04, "INV_MISC_GEM_01", nil, "Primary"},
		{ 05, 31092 },
		
	}
}

local el_HeadShoulder = {	--Extra List: Shoulder Items
	name = "Head Glyph & Shoulder Inscription",
	ExtraList = true,
	TableType = NORMAL_ITTYPE,
	[NORMAL_DIFF] = {
		{1, "INV_MISC_DESECRATED_PLATEHELM", nil, "Head Glyph"},
		{2, 29186, nil, nil, "for Survival"},{17, 29191, nil, nil, "for Threat Generation"},
		{4, "INV_MISC_DESECRATED_PLATESHOULDER", nil, "Shoulder Inscription"},
		{5, 28889 },	{20, 35729},
		{6, 23549, nil, nil, "Optional, hard-to-get"}
	}
}

local el_GearEnchants = {
	name = "Gear Enchants",
	ExtraList = true,
	TableType = PROF_ITTYPE,
	[NORMAL_DIFF] = {
		{ 01 , "INV_MISC_CAPE_20", [4] = "Back" },	{16, "INV_MISC_DESECRATED_PLATECHEST", [4] = "Chest" },
		{ 02 , 25086 },	{17, 27957 },
						{18, 46594}, 
		{ 04 , "INV_MISC_DESECRATED_PLATEBRACER", [4] = "Wrist" },
		{ 05 , 27914 },	{20, 27906},
		{ 06 , 27917 },	{21, 0 },
		{ 08 , "INV_MISC_DESECRATED_PLATEGLOVES", [4] = "Hands" },
		{ 09 , 33997 },	{24, 44970 },
		{ 11 , "INV_MISC_DESECRATED_PLATEPANTS", [4] = "Legs" },
		{ 12 , 31432 },	{27, 35557 },
		{ 14 , "INV_MISC_DESECRATED_PLATEBOOTS", [4] = "Feet" },
		{ 15 , 27950 },	{30, 34008 },
	},
}

local el_offEnchants = {
	name = "Ring/Wep/Sheild Enchants",
	ExtraList = true,
	TableType = PROF_ITTYPE,
	[NORMAL_DIFF] = {
		{ 1, "INV_JEWELRY_RING_23", nil, "Ring Enchant" },
		{ 2, 27926 },
		{ 4, "INV_SWORD_65", nil, "1-Handed Weapons"},
		{ 5, 34010 },
		{ 7, "INV_SHIELD_30", nil, "Shields" }, 
		{ 8, 27945 },
	},
}

data[ _FilePrefix ] = {
	name = _FilePrefix,
	ContentType = roleType_Tank,
	LoadDifficulty = LOAD_DIFF,
	TableType = NORMAL_ITTYPE,
	gameVersion = 2,
	items ={
		{
			name = "Fresh 70 Starter Set - Quest/Reputation Rewards Only",
			[NORMAL_DIFF] ={
				{ 01, 28180 },	{16, 31460 },
				{ 02, 29173 },	{17, 29184 },	
				{ 03, 29316 },	{18, 29325 },
				{ 04, 29777 },	{19, 29323 },
				{ 05, 30296 },	{20, 31078 },
				{ 06, 30225 },	{21, 28042 },
				{ 07, 29959 },	{22, 30300 },
				{ 09, 29185 },
				{ 10, 31200 },
				{ 11, 29388 },
			}
		},
		{
			name = "Pre-Raid Tanking Build - (No Heroics)",
			[NORMAL_DIFF] = {
				{ 01, 28180 },	{16, 31460 },
				{ 02, 29173 },	{17, 29184 },	
				{ 03, 27739 },	{18, 29325 },
				{ 04, 27804 },	{19, 29323 },
				{ 05, 28262 },	{20, 28407 },
				{ 06, 28167 },	{21, 27529 },
				{ 07, 29134 },	{22, 27891 },
				{ 09, 30832 },
				{ 10, 28316 },
				{ 11, 29388 },
			}
		},
		{
			name = "Pre-Raid Tanking Build w/ Heroics - High SP",
			[NORMAL_DIFF] = {
				{ 01, 32083 },	{16, 29253 },
				{ 02, 27871 },	{17, 29184 },	
				{ 03, 27739 },	{18, 29254 },
				{ 04, 27804 },	{19, 29172 },
				{ 05, 28262 },	{20, 28407 },
				{ 06, 29463 },	{21, 23836 },
				{ 07, 23517 },	{22, 27529 },
				{ 09, 30832 },
				{ 10, 29176 },
				{ 11, 29388 },
			}
		},
		{
			name = "Head",
			[NORMAL_DIFF] = {
				{ 01, 32083, nil, nil, "Best - Survival" },
				{ 02, 23536, nil, nil, "Best - Threat" },
				{ 03, 23535, nil, nil, "Viable - Crit Reduction" },
				{ 04, 28285, nil, nil, "Viable" },
				{ 05, 28180, nil, nil, "Viable - Easy to Obtain" },
				{ 06, 23519, nil, nil, "Viable" },
				{ 07, 27520, nil, nil, "Viable" },
				{ 08, 30016, nil, nil, "Viable" },
			},
		},
		{
			name = "Shoulders",
			[NORMAL_DIFF] = {
				{ 01, 27739, nil, nil, "Best" },
				{ 02, 27847, nil, nil, "Viable" },
				{ 03, 32073, nil, nil, "Viable" },
				{ 04, 30381, nil, nil, "Viable - Easy to Obtain" },
				{ 05, 29316, nil, nil, "Optional - Easy to Obtain" },
				{ 06, 24463, nil, nil, "Option" },
			},
		},
		{
			name = "Back",
			[NORMAL_DIFF] = {
				{ 01, 27804, nil, nil, "Best" },
				{ 02, 24253, nil, nil, "Viable" },
				{ 03, 29385, nil, nil, "Viable" },
				{ 04, 27988, nil, nil, "Viable" },
				{ 05, 24379, nil, nil, "Viable" },
				{ 06, 29777, nil, nil, "Viable - Easy to Obtain" },
			},
		},
		{
			name = "Chest",
			[NORMAL_DIFF] = {
				{ 01, 28203, nil, nil, "Best" },
				{ 02, 28262, nil, nil, "Viable" },
				{ 03, 29127, nil, nil, "Viable" },
				{ 04, 23507, nil, nil, "Option" },
				{ 05, 25819, nil, nil, "Option" },
				{ 06, 30270, nil, nil, "Option" },
				{ 07, 30296, nil, nil, "Optional - Easy to Obtain" },
				{ 08, 29337, nil, nil, "Option" },
			},
		},
		{
			name = "Wrist",
			[NORMAL_DIFF] = {
				{ 01, 29252, nil, nil, "Best - Overall" },
				{ 02, 23538, nil, nil, "Viable - High Stamina" },
				{ 03, 29463, nil, nil, "Best - Avoidance" },
				{ 04, 28167, nil, nil, "Viable - High Stamina" },
				{ 05, 27459, nil, nil, "Viable" },
				{ 06, 30400, nil, nil, "Viable - Easy to Obtain" },
				{ 07, 30225, nil, nil, "Viable - Easy to Obtain" },
			},
		},
		{
			name = "Hands",
			[NORMAL_DIFF] = {
				{ 01, 32072, nil, nil, "Best" },
				{ 02, 23532, nil, nil, "Viable" },
				{ 03, 27535, nil, nil, "Viable" },
				{ 04, 23517, nil, nil, "Viable" },
				{ 05, 25788, nil, nil, "Viable" },
				{ 06, 28390, nil, nil, "Viable" },
				{ 07, 29134, nil, nil, "Viable" },
				{ 08, 29959, nil, nil, "Viable - Easy to Obtain" },
			},
		},
		{
			name = "Waist",
			[NORMAL_DIFF] = {
				{ 01, 29253, nil, nil, "Best" },
				{ 02, 27672, nil, nil, "Viable" },
				{ 03, 29238, nil, nil, "Viable" },
				{ 04, 31460, nil, nil, "Viable - Easy to Obtain" },
				{ 05, 30371, nil, nil, "Viable" },
				{ 06, 30330, nil, nil, "Option" },
				{ 07, 30380, nil, nil, "Option" },
			},
		},
		{
			name = "Legs",
			[NORMAL_DIFF] = {
				{ 01, 29184, nil, nil, "Best" },
				{ 02, 23518, nil, nil, "Viable" },
				{ 03, 27527, nil, nil, "Viable" },
				{ 04, 29783, nil, nil, "Viable" },
				{ 05, 27839, nil, nil, "Viable" },
				{ 06, 29774, nil, nil, "Option" },
			},
		},
		{
			name = "Feet",
			[NORMAL_DIFF] = {
				{ 01, 29254, nil, nil, "Best" },
				{ 02, 29239, nil, nil, "Viable" },
				{ 03, 27813, nil, nil, "Viable" },
				{ 04, 32866, nil, nil, "Viable" },
				{ 05, 29325, nil, nil, "Viable - Easy to Obtain" },
				{ 06, 30334, nil, nil, "Viable" },
				{ 07, 30386, nil, nil, "Viable" },
				{ 08, 28318, nil, nil, "Option" },
			},
		},
		{
			name = "Neck",
			[NORMAL_DIFF] = {
				{ 01, 29173, nil, nil, "Best" },
				{ 02, 27871, nil, nil, "Viable" },
				{ 03, 27792, nil, nil, "Viable" },
				{ 04, 29386, nil, nil, "Viable" },
				{ 05, 30378, nil, nil, "Viable" },
				{ 06, 31696, nil, nil, "Viable" },
				{ 07, 27792, nil, nil, "Viable" },
				{ 08, 29336, nil, nil, "Viable" },
				{ 09, 28321, nil, nil, "Viable" },
				{ 10, 25809, "INV_BANNERPVP_01", nil, "Horde Option" },{ 25, 25803, "INV_BANNERPVP_02", nil, "Alliance Option" },
				{ 11, 24121, nil, nil, "Option" },
			},
		},
		{
			name = "Rings",
			[NORMAL_DIFF] = {
				{ 01, 31319, nil, nil, "Best" },
				{ 02, 28407, nil, nil, "Best" },
				{ 03, 30006, nil, nil, "Viable" },
				{ 04, 27822, nil, nil, "Viable" },
				{ 05, 28211, nil, nil, "Viable" },
				{ 06, 29384, nil, nil, "Viable" },
				{ 07, 31078, nil, nil, "Viable" },
				{ 08, 27436, nil, nil, "Viable" },
				{ 09, 24088, nil, nil, "Viable" },
				{ 10, 31924, nil, nil, "Viable" },
				{ 11, 29323, nil, nil, "Viable" },
				{ 12, 28265, nil, nil, "Viable" },
			},
		},
		{
			name = "Trinkets",
			[NORMAL_DIFF] = {
				{ 01, 27529, nil, nil, "Best - Uncrushability" },
				{ 02, 27891, nil, nil, "Best - Defense + Mitigation" },
				{ 03, 32534, nil, nil, "Best - Defense + HP" },
				{ 04, 30300, nil, nil, "Viable - Defense" },
				{ 05, 19431, nil, nil, "Viable - Defense" },
				{ 06, 24125, nil, nil, "Viable - Avoidance Utility - JC Only" },
				{ 07, 28042, nil, nil, "Viable - Defense + HP" },
				{ 08, 23040, nil, nil, "Viable - Mitigation" },
				{ 09, 29387, nil, nil, "Viable - Mitigation" },
			},
		},
		{
			name = "Stamina Trinkets",
			[NORMAL_DIFF] = {
				{ 01, 31858, nil, nil, "Best - Stamina" },
				{ 02, 31859, nil, nil, "Viable" },
				{ 03, 23836, nil, nil, "Viable - Pull Utility" },
				{ 04, 23835, nil, nil, "Viable - Crowd Control" },
				{ 05, 32864, nil, nil, "Viable" },
				{ 06, 27770, nil, nil, "Viable" },
				{ 07, 24126, nil, nil, "Viable - Threat - JC Only" },
				{ 08, 13503, nil, nil, "Viable - Alchemists Only" },
			},
		},
		{
			name = "Threat Generation Trinkets",
			[NORMAL_DIFF] = {
				{ 01, 29370, nil, nil, "Best - Threat" },
				{ 02, 24126, nil, nil, "Viable - JC Only" },
				{ 03, 23046, nil, nil, "Viable" },
				{ 04, 19379, nil, nil, "Viable" },
				{ 05, 23207, nil, nil, "Viable - Demons/Undead Only" },
				{ 06, 18820, nil, nil, "Viable - Threat" },
				{ 07, 19950, nil, nil, "Viable" },
			},
		},
		{
			name = "1-Handed Weapons",
			[NORMAL_DIFF] = {
				{ 01, 29153, "INV_BANNERPVP_02", nil, "Alliance Best" },	{16, 29155, "INV_BANNERPVP_01", nil, "Horde Best" },
				{ 02, 30832, nil, nil, "Viable" },
				{ 03, 29156, "INV_BANNERPVP_02", nil, "Alliance Viable - SoB" },	{18, 29165, "INV_BANNERPVP_01", nil, "Horde Viable - SoB" },
				{ 04, 31336, nil, nil, "Viable" },
				{ 05, 32660, nil, nil, "Viable" },
				{ 06, 29185, nil, nil, "Viable" },
				{ 07, 27899, nil, nil, "Viable" },
				{ 08, 27905, nil, nil, "Viable" },
				{ 09, 22988, nil, nil, "Option" },
				{ 10, 22807, nil, nil, "Option" },
				{ 11, 19360, nil, nil, "Option" },
				{ 12, 21622, nil, nil, "Option" },
				{ 13, 24361, nil, nil, "Option" },
				{ 14, 24384, nil, nil, "Option" },
			},
		},
		{
			name = "Librams",
			[NORMAL_DIFF] = {
				{ 01, 29388, nil, nil, "Best" },
				{ 02, 27917, nil, nil, "Viable - Threat" },
				{ 03, 22401, nil, nil, "Option" },
			},
		},
		{
			name = "Shields",
			[NORMAL_DIFF] = {
				{ 01, 29176, nil, nil, "Best" },
				{ 02, 29266, nil, nil, "Viable" },
				{ 03, 32082, nil, nil, "Viable - Black Temple" },
				{ 04, 32652, nil, nil, "Viable" },
				{ 05, 28316, nil, nil, "Option" },
				{ 06, 27449, nil, nil, "Option" },
				{ 07, 27887, nil, nil, "Option" },
				{ 08, 28166, nil, nil, "Option" },
				{ 09, 31200, nil, nil, "Option" },
				{ 10, 23043, nil, nil, "Option" },
				{ 11, 21269, nil, nil, "Option" },
			},
		},
		el_Gems,
		el_HeadShoulder,
		el_GearEnchants,
		el_offEnchants,
	}
}
