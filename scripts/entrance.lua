--Tribalstack Tome Entry logic:
function hivory_towers_entry()
    return damaging_ability()
end
function tribalstack_tome_moves()
    return (has("tail_twirl") and has("reptile_roll"))
    or (has("tail_twirl") and has("flappy_flight"))
    or reptile_rush()
    or (has("buddy_slam") and has("reptile_roll"))
    or (has("buddy_slam") and has("flappy_flight"))
    or (has("sonar_splosion") and has("reptile_roll"))
    or (has("sonar_splosion") and has("flappy_flight"))
    or sonar_shield()
end
 
function tribalstack_entry()
     entry_count = 0
     entry_count = entry_count + Tracker:ProviderCountForCode("pagie")
     if entry_count >= 1 and tribalstack_tome_moves() then
         return true
     else 
     return false
     end
end

-- Expanded Tribalstack
function expanded_tropics()
    return tribalstack_tome_moves()
end

-- Glacier Entrance Logic
function glacier_moves()
    return tribalstack_tome_moves() and has("buddy_slam") and
    (has("glide") or has("flappy_flight"))
end

function glacier_entry()
    entry_count = 0
    entry_count = entry_count + Tracker:ProviderCountForCode("pagie")
    if entry_count >= 7 and glacier_moves() then
        return true
    else
        return false
    end
end

function expanded_glacier()
    return glacier_moves()
end

-- Moodymaze Marsh Entrance
function marsh_moves()
    return glacier_moves() and has("slurp_shot") and has("buddy_bubble")
end

function marsh_entry()
    entry_count = 0
    entry_count = entry_count + Tracker:ProviderCountForCode("pagie")
    if entry_count >= 19 and marsh_moves() then
        return true
    else
        return false
    end
end

function expanded_marsh()
    return marsh_moves()
end

-- Capital Cashino Entrance
function cashino_moves()
    return marsh_moves() and has("camo_cloak") and (has("flappy_flight") or has("lizard_lash"))
end

function cashino_entry()
    entry_count = 0
    entry_count = entry_count + Tracker:ProviderCountForCode("pagie")
    if entry_count >= 37 and cashino_moves() then
        return true
    else
        return false
    end
end

function expanded_cashino()
    return cashino_moves()
end
-- Galleon Galaxy Entrance
function galleon_moves()
    return cashino_moves() and has("flappy_flight")
end

function galleon_entry()
    entry_count = 0
    entry_count = entry_count + Tracker:ProviderCountForCode("pagie")
    if entry_count >= 60 and galleon_moves() then
        return true
    else
        return false
    end
end

function expanded_galleon()
    return galleon_moves()
end


--Entrance Randomization
-- Destination Logic
function TropicsDestination()
    for stage, _ in pairs(EntranceTable["name"]) do
        if Tracker:FindObjectForCode("er_tropics_dest").CurrentStage == 1 then
            return tribalstack_entry()
        elseif Tracker:FindObjectForCode("er_glacier_dest").CurrentStage == 1 then
            return glacier_entry()
        elseif Tracker:FindObjectForCode("er_marsh_dest").CurrentStage == 1 then
            return marsh_entry()
        elseif Tracker:FindObjectForCode("er_cashino_dest").CurrentStage == 1 then
            return cashino_entry()
        elseif Tracker:FindObjectForCode("er_galleon_dest").CurrentStage == 1 then
            return galleon_entry()
        end
    end
end

function GlacierDestination()
    for stage, _ in pairs(EntranceTable["name"]) do
        if Tracker:FindObjectForCode("er_tropics_dest").CurrentStage == 2 then
            return tribalstack_entry()
        elseif Tracker:FindObjectForCode("er_glacier_dest").CurrentStage == 2 then
            return glacier_entry()
        elseif Tracker:FindObjectForCode("er_marsh_dest").CurrentStage == 2 then
            return marsh_entry()
        elseif Tracker:FindObjectForCode("er_cashino_dest").CurrentStage == 2 then
            return cashino_entry()
        elseif Tracker:FindObjectForCode("er_galleon_dest").CurrentStage == 2 then
            return galleon_entry()
        end
    end
end

function MarshDestination()
    for stage, _ in pairs(EntranceTable["name"]) do
        if Tracker:FindObjectForCode("er_tropics_dest").CurrentStage == 3 then
            return tribalstack_entry()
        elseif Tracker:FindObjectForCode("er_glacier_dest").CurrentStage == 3 then
            return glacier_entry()
        elseif Tracker:FindObjectForCode("er_marsh_dest").CurrentStage == 3 then
            return marsh_entry()
        elseif Tracker:FindObjectForCode("er_cashino_dest").CurrentStage == 3 then
            return cashino_entry()
        elseif Tracker:FindObjectForCode("er_galleon_dest").CurrentStage == 3 then
            return galleon_entry()
        end
    end
end

function CashinoDestination()
    for stage, _ in pairs(EntranceTable["name"]) do
        if Tracker:FindObjectForCode("er_tropics_dest").CurrentStage == 4 then
            return tribalstack_entry()
        elseif Tracker:FindObjectForCode("er_glacier_dest").CurrentStage == 4 then
            return glacier_entry()
        elseif Tracker:FindObjectForCode("er_marsh_dest").CurrentStage == 4 then
            return marsh_entry()
        elseif Tracker:FindObjectForCode("er_cashino_dest").CurrentStage == 4 then
            return cashino_entry()
        elseif Tracker:FindObjectForCode("er_galleon_dest").CurrentStage == 4 then
            return galleon_entry()
        end
    end
end

function GalleonDestination()
    for stage, _ in pairs(EntranceTable["name"]) do
        if Tracker:FindObjectForCode("er_tropics_dest").CurrentStage == 5 then
            return tribalstack_entry()
        elseif Tracker:FindObjectForCode("er_glacier_dest").CurrentStage == 5 then
            return glacier_entry()
        elseif Tracker:FindObjectForCode("er_marsh_dest").CurrentStage == 5 then
            return marsh_entry()
        elseif Tracker:FindObjectForCode("er_cashino_dest").CurrentStage == 5 then
            return cashino_entry()
        elseif Tracker:FindObjectForCode("er_galleon_dest").CurrentStage == 5 then
            return galleon_entry()
        end
    end
end

--Expanded Destination Logic
function ExpandedTropicsDestination()
   if has("tropics_ex") then
        for stage, _ in pairs(EntranceTable["name"]) do
            if Tracker:FindObjectForCode("er_tropics_dest").CurrentStage == 1 then
                return expanded_tropics()
            elseif Tracker:FindObjectForCode("er_glacier_dest").CurrentStage == 1 then
                return expanded_glacier()
            elseif Tracker:FindObjectForCode("er_marsh_dest").CurrentStage == 1 then
                return expanded_marsh()
            elseif Tracker:FindObjectForCode("er_cashino_dest").CurrentStage == 1 then
                return expanded_cashino()
            elseif Tracker:FindObjectForCode("er_galleon_dest").CurrentStage == 1 then
                return expanded_galleon()
            end
        end
    end
end

function ExpandedGlacierDestination()
    if has("glacier_ex") then
        for stage, _ in pairs(EntranceTable["name"]) do
            if Tracker:FindObjectForCode("er_tropics_dest").CurrentStage == 2 then
                return expanded_tropics()
            elseif Tracker:FindObjectForCode("er_glacier_dest").CurrentStage == 2 then
                return expanded_glacier()
            elseif Tracker:FindObjectForCode("er_marsh_dest").CurrentStage == 2 then
                return expanded_marsh()
            elseif Tracker:FindObjectForCode("er_cashino_dest").CurrentStage == 2 then
                return expanded_cashino()
            elseif Tracker:FindObjectForCode("er_galleon_dest").CurrentStage == 2 then
                return expanded_galleon()
            end
        end   
    end   
end

function ExpandedMarshDestination()
    if has("marsh_ex") then
        for stage, _ in pairs(EntranceTable["name"]) do
            if Tracker:FindObjectForCode("er_tropics_dest").CurrentStage == 3 then
                return expanded_tropics()
            elseif Tracker:FindObjectForCode("er_glacier_dest").CurrentStage == 3 then
                return expanded_glacier()
            elseif Tracker:FindObjectForCode("er_marsh_dest").CurrentStage == 3 then
                return expanded_marsh()
            elseif Tracker:FindObjectForCode("er_cashino_dest").CurrentStage == 3 then
                return expanded_cashino()
            elseif Tracker:FindObjectForCode("er_galleon_dest").CurrentStage == 3 then
                return expanded_galleon()
            end
        end  
    end  
end

function ExpandedCashinoDestination()
    if has("cashino_ex") then
        for stage, _ in pairs(EntranceTable["name"]) do
            if Tracker:FindObjectForCode("er_tropics_dest").CurrentStage == 4 then
                return expanded_tropics()
            elseif Tracker:FindObjectForCode("er_glacier_dest").CurrentStage == 4 then
                return expanded_glacier()
            elseif Tracker:FindObjectForCode("er_marsh_dest").CurrentStage == 4 then
                return expanded_marsh()
            elseif Tracker:FindObjectForCode("er_cashino_dest").CurrentStage == 4 then
                return expanded_cashino()
            elseif Tracker:FindObjectForCode("er_galleon_dest").CurrentStage == 4 then
                return expanded_galleon()
            end
        end   
    end 
end

function ExpandedGalleonDestination()
    if has("galleon_ex") then
     for stage, _ in pairs(EntranceTable["name"]) do
        if Tracker:FindObjectForCode("er_tropics_dest").CurrentStage == 5 then
            return expanded_tropics()
        elseif Tracker:FindObjectForCode("er_glacier_dest").CurrentStage == 5 then
            return expanded_glacier()
        elseif Tracker:FindObjectForCode("er_marsh_dest").CurrentStage == 5 then
            return expanded_marsh()
        elseif Tracker:FindObjectForCode("er_cashino_dest").CurrentStage == 5 then
            return expanded_cashino()
        elseif Tracker:FindObjectForCode("er_galleon_dest").CurrentStage == 5 then
            return expanded_galleon()
        end
        end    
    end
end
