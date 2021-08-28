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
local _FilePrefix = _FileRole.." ".._FileClass

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

data[ _FilePrefix ] ={
	name = _FilePrefix,
	ContentType = roleType_Tank,
	LoadDifficulty = LOAD_DIFF,
	TableType = NORMAL_ITTYPE,
	gameVersion = 2,
	items = {
		{	--"Phase 1 Set - High HP"
			name = "Phase 1 Set - High HP",
			[NORMAL_DIFF] = {
				{ 1 , 29068 },
				{ 2 , 28516 },
				{ 3 , 29070 },
				{ 4 , 27804 },
				{ 5 , 29066 },
				{ 6 , 28502 },
				{ 7 , 28518 },
				{ 16 , 28566 },
				{ 17 , 28621 },
				{ 18 , 30641 },
				{ 19 , 29279 },
				{ 20 , 28675 },
				{ 21 , 23836 },
				{ 22 , 28528 },
				{ 10 , 28802 },
				{ 11 , 28825 },
				{ 12 , 29388 },
			}
		},
		{	--Head Slot
			name = "Head",
			[NORMAL_DIFF] = {
				{ 01, 29068, nil, nil, "Best - Overall" },
				{ 02, 32083, nil, nil, "Best - Avoidance" },
				{ 03, 28593, nil, nil, "Viable" },
				{ 04, 27704, nil, nil, "Viable - PvP Required" },
				{ 05, 23536, nil, nil, "Viable" },
				{ 06, 23535, nil, nil, "Viable" },
				{ 07, 28285, nil, nil, "Viable" },
				{ 08, 23519, nil, nil, "Viable" },
				{ 09, 28180, nil, nil, "Optional - Easy to obtain" },
				{ 10, 27520, nil, nil, "Option" },
			}
		},
		{	--Shoulders
			name = "Shoulders",
			[NORMAL_DIFF] = {
				{ 01 , 29070, [5] = "Best" },
				{ 02 , 28743, [5] = "Viable" },
				{ 03 , 27706, [5] = "Viable - PvP Required" },
				{ 04 , 27739, [5] = "Option" },
				{ 05 , 27847, [5] = "Option" },
				{ 06 , 32073, [5] = "Option" },
				{ 07 , 30381, [5] = "Option" },
			},
		},
		{	--Back
			name = "Back",
			[NORMAL_DIFF] = {
				{ 01 , 27804, [5] = "Best" },
				{ 02 , 28660, [5] = "Viable" },
				{ 03 , 24253, [5] = "Viable" },
				{ 04 , 29385, [5] = "Viable" },
				{ 05 , 27988, [5] = "Viable" },
				{ 06 , 24379, [5] = "Viable" },
				{ 07 , 29777, [5] = "Viable" },
			},
		},
		{
			name = "Chest",
			[NORMAL_DIFF] = {
				{ 01 , 29066, [5] = "Best - Overall" },
				{ 02 , 28597, [5] = "Best - Defensive" },
				{ 03 , 27702, [5] = "Viable - PvP Required" },
				{ 04 , 28203, [5] = "Best" },
				{ 05 , 28262, [5] = "Viable" },
				{ 06 , 29127, [5] = "Viable" },
				{ 07 , 23507, [5] = "Option" },
				{ 08 , 25819, [5] = "Option" },
			},
		},
		{
			name = "Wrist",
			[NORMAL_DIFF] = {
				{ 01, 29252, nil, nil, "Best - Overall" },
				{ 02, 23538, nil, nil, "Best - Survivability" },
				{ 03, 28502, nil, nil, "Viable" },
				{ 04, 29463, nil, nil, "Viable" },
				{ 05, 28167, nil, nil, "Option" },
				{ 06, 27459, nil, nil, "Option" },
				{ 07, 30400, nil, nil, "Option" },
			},

		},
		{
			name = "Hands",
			[NORMAL_DIFF] = {
				{ 01, 29067, nil, nil, "Best - Overall" },
				{ 02, 28518, nil, nil, "Best - Defensive" },
				{ 03, 30741, nil, nil, "Viable" },
				{ 04, 27703, nil, nil, "Viable - PvP Required" },
				{ 05, 32072, nil, nil, "Option" },
				{ 06, 23532, nil, nil, "Option" },
				{ 07, 27535, nil, nil, "Option" },
				{ 08, 23517, nil, nil, "Option" },
				{ 09, 25788, nil, nil, "Option" },
				{ 10, 28390, nil, nil, "Option" },
				{ 11, 29134, nil, nil, "Option" },
			},
		},
		{
			name = "Waist",
			[NORMAL_DIFF] = {
				{ 01, 29253, nil, nil, "Best - Overall" },
				{ 02, 28566, nil, nil, "Best - Survivability" },
				{ 03, 27672, nil, nil, "Viable" },
				{ 04, 31460, nil, nil, "Viable" },
				{ 05, 29238, nil, nil, "Option" },
				{ 06, 30371, nil, nil, "Option" },
				{ 07, 30330, nil, nil, "Option" },
			},
		},
		{
			name = "Legs",
			[NORMAL_DIFF] = {
				{ 01, 29069, nil, nil, "Best - Overall" },
				{ 02, 28621, nil, nil, "Best - Defensive" },
				{ 03, 27705, nil, nil, "Viable - PvP Required" },
				{ 04, 29184, nil, nil, "Viable" },
				{ 05, 27839, nil, nil, "Viable - D3" },
				{ 06, 23518, nil, nil, "Viable" },
				{ 07, 27527, nil, nil, "Viable" },
				{ 08, 29783, nil, nil, "Viable" },
				{ 09, 29774, nil, nil, "Option" },
			},
		},
		{
			name = "Feet",
			[NORMAL_DIFF] = {
				{ 01, 29254, nil, nil, "Best - Overall" },
				{ 02, 30641, nil, nil, "Best - Defensive" },
				{ 03, 28747, nil, nil, "Viable" },
				{ 04, 29239, nil, nil, "Viable" },
				{ 05, 27813, nil, nil, "Viable" },
				{ 06, 30334, nil, nil, "Viable" },
				{ 07, 32866, nil, nil, "Option" },
				{ 08, 29325, nil, nil, "Option" },
				{ 09, 30386, nil, nil, "Option" },
			},
		},
		{
			name = "Neck",
			[NORMAL_DIFF] = {
				{ 01, 28516, nil, nil, "Best - Defensive" },
				{ 02, 28245, 24030, nil, "Best - Threat (Requires PvP)" },
				{ 03, 28530, nil, nil, "Viable - Threat" },
				{ 04, 29386, nil, nil, "Best" },
				{ 05, 30378, nil, nil, "Viable" },
				{ 06, 31696, nil, nil, "Viable" },
				{ 07, 27792, nil, nil, "Viable" },
				{ 08, 29173, nil, nil, "Viable" },
				{ 09, 27871, nil, nil, "Viable" },
				{ 10, 29336, nil, nil, "Viable" },
				{ 11, 28321, nil, nil, "Viable" },
				{ 12, 25809, "INV_BANNERPVP_01", nil, "Horde Option" },	{27, 25803, "INV_BANNERPVP_02", nil, "Alliance Option" },
				{ 13, 24121, nil, nil, "Option" },
			},
		},
		{
			name = "Rings",
			[NORMAL_DIFF] = {
				{ 01, 29279, nil, nil, "Best - Defensive" },
				{ 02, 28793, nil, nil, "Best - Threat" },	{ 17, 28792, nil, nil, "Viable - Defensive" },
				{ 03, 28407, nil, nil, "Best - Defensive" },
				{ 04, 28675, nil, nil, "Viable - Defensive" },
				{ 05, 31319, nil, nil, "Viable - Defensive" },
				{ 06, 27822, nil, nil, "Viable - Defensive" },
				{ 07, 28211, nil, nil, "Viable - Defensive" },
				{ 08, 29384, nil, nil, "Viable - Defensive" },
				{ 09, 31078, nil, nil, "Viable - Defensive" },
				{ 10, 27436, nil, nil, "Viable - Defensive" },
				{ 11, 24088, nil, nil, "Viable - Defensive" },
				{ 12, 31924, nil, nil, "Viable - Defensive" },
				{ 13, 29323, nil, nil, "Viable - Defensive" },
				{ 14, 28265, nil, nil, "Viable - Defensive" },
			},
		},
		{
			name = "Trinkets",
			[NORMAL_DIFF] = {
				{ 01, 28528, nil, nil, "Best - Avoidance" },
				{ 02, 27529, nil, nil, "Best - Uncrushability" },
				{ 03, 27891, nil, nil, "Best - Defense + Mitigation" },
				{ 04, 32534, nil, nil, "Best - Defense + HP" },
				{ 05, 30300, nil, nil, "Viable - Defense" },
				{ 06, 19431, nil, nil, "Viable - Defense" },
				{ 07, 24125, nil, nil, "Viable - Avoid, Util - JC Only" },
				{ 08, 28042, nil, nil, "Viable - Defense + HP" },
				{ 09, 23040, nil, nil, "Viable - Mitigation" },
				{ 10, 29387, nil, nil, "Viable - Mitigation" },
			},
		},
		{
			name = "Stamina Trinkets",
			[NORMAL_DIFF] = {
				{ 01, 31858, nil, nil, "Best - Stamina" },
				{ 02, 31859, nil, nil, "Viable" },
				{ 03, 23836, nil, nil, "Viable + Pull Utility" },
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
				{ 01, 28989, nil, nil, "Best - Threat" },
				{ 02, 29370, nil, nil, "Viable" },
				{ 03, 24126, nil, nil, "Viable - JC Only" },
				{ 04, 23046, nil, nil, "Viable" },
				{ 05, 19379, nil, nil, "Viable" },
				{ 06, 23207, nil, nil, "Viable - Demons/Undead Only" },
				{ 07, 18820, nil, nil, "Viable - Threat" },
				{ 08, 19950, nil, nil, "Viable" },
			},
		},
		{
			name = "1-Handed Weapons",
			[NORMAL_DIFF] = {
				{ 01, 28802, nil, nil, "Best" },
				{ 02, 32450, nil, nil, "Best - PvP Required - Hard to Get" },
				{ 03, 28749, nil, nil, "Viable - Blood" },
				{ 04, 30832, nil, nil, "Best" },
				{ 05, 29153, "INV_BANNERPVP_02", nil, "Viable" }, { 20, 29165, "INV_BANNERPVP_01", nil, "Viable" },
				{ 06, 29156, "INV_BANNERPVP_02", nil, "Viable - Blood" }, { 21, 29155, "INV_BANNERPVP_01", nil, "Viable - Blood" },
				{ 07, 32660, nil, nil, "Viable" },
				{ 08, 29185, nil, nil, "Viable" },
				{ 09, 27899, nil, nil, "Viable" },
				{ 10, 27905, nil, nil, "Viable" },
				{ 11, 22988, nil, nil, "Option" },
				{ 12, 22807, nil, nil, "Option" },
				{ 13, 19360, nil, nil, "Option" },
				{ 14, 21622, nil, nil, "Option" },
				{ 15, 24361, nil, nil, "Option" },	{ 30, 24384, nil, nil, "Option" },
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
				{ 01, 28825, nil, nil, "Best" },
				{ 02, 28358, nil, nil, "Viable- PvP" },
				{ 03, 28606, nil, nil, "Viable" },
				{ 04, 29176, nil, nil, "Viable" },
				{ 05, 29266, nil, nil, "Viable" },
				{ 06, 32082, nil, nil, "Viable - Black Temple" },
				{ 07, 32652, nil, nil, "Viable" },
				{ 08, 28316, nil, nil, "Option" },
				{ 09, 27449, nil, nil, "Option" },
				{ 10, 27887, nil, nil, "Option" },
				{ 11, 23043, nil, nil, "Option" },
			},
		},
		el_Gems,
		el_HeadShoulder,
		el_GearEnchants,
		el_offEnchants,
	},
}