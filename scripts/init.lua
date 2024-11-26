
ENABLE_DEBUG_LOG = true

-- get current variant
local variant = Tracker.ActiveVariantUID

IS_ITEMS_ONLY = variant:find("itemsonly")

-- Utility Script for helper functions etc.
ScriptHost:LoadScript("scripts/utils.lua")

-- Items
Tracker:AddItems("items/items.json")
Tracker:AddItems("items/tome_rando.json")

if not IS_ITEMS_ONLY then -- <--- use variant info to optimize loading
    -- Maps
    Tracker:AddMaps("maps/maps.json")
    -- Locations
    Tracker:AddLocations("locations/hivory_tower/hivory_tower.json")
    Tracker:AddLocations("locations/hivory_tower/shipwreck.json")
    Tracker:AddLocations("locations/tomes/tribalstack_tropics.json")
    Tracker:AddLocations("locations/tomes/glitterglaze_glacier.json")
    Tracker:AddLocations("locations/tomes/moodymaze_marsh.json")
    Tracker:AddLocations("locations/tomes/galleon_galaxy.json")
    Tracker:AddLocations("locations/tomes/capital_cashino.json")
    Tracker:AddLocations("locations/cashino_tokens.json")

end

-- Layout
Tracker:AddLayouts("layouts/items.json")
Tracker:AddLayouts("layouts/entrances.json")
Tracker:AddLayouts("layouts/tracker.json")
Tracker:AddLayouts("layouts/broadcast.json")

-- AutoTracking for Poptracker
ScriptHost:LoadScript("scripts/autotracking.lua")


-- Logic
ScriptHost:LoadScript("scripts/areas.lua")
ScriptHost:LoadScript("scripts/entrance.lua")
ScriptHost:LoadScript("scripts/logic.lua")

ScriptHost:LoadScript("scripts/token.lua")