-- ----------------------------------------------------------------------------
-- AddOn namespace.
-- ----------------------------------------------------------------------------
local addonname, addonScope = ...
local AtlasLoot = _G.AtlasLoot
local AL = AtlasLoot.Locales
local ALIL = AtlasLoot.IngameLocales
local data = AtlasLoot.ItemDB:Add(addonname, 1)
local NORMAL_DIFF = data:AddDifficulty(AL["Normal"], "n", 1, nil, true)

local NORMAL_ITTYPE = data:AddItemTableType("Item", "Item")
local PROF_ITTYPE = data:AddItemTableType("Profession", "Item")
local roleType_Tank = data:AddContentType("Tank", { 0.78, 0.61, 0.43 })
local roleType_Heal = data:AddContentType("Healer", { 1.00, 1.00, 1.00})
local roleType_DPS = data:AddContentType("DPS", { 1.00, 0.96, 0.41 })

--stash all the locals in the AddonScope so each class can have it's own file for sanity sake
addonScope.AL = AL
addonScope.ALIL = ALIL
addonScope.data = data
addonScope.NORMAL_DIFF = NORMAL_DIFF
addonScope.ALLIANCE_DIFF = ALLIANCE_DIFF
addonScope.HORDE_DIFF = HORDE_DIFF
addonScope.LOAD_DIFF = LOAD_DIFF
addonScope.NORMAL_ITTYPE = NORMAL_ITTYPE
addonScope.PROF_ITTYPE = PROF_ITTYPE
addonScope.roleType_Tank = roleType_Tank
addonScope.roleType_Heal = roleType_Heal
addonScope.roleType_DPS  = roleType_DPS 