--Cashino Token location Logic
function entry_requirements()
    return has("flappy_flight") or has("camo_cloak")
end

function roulette_passage()
    return has("flappy_flight")
    or (has("camo_cloak") and has("glide") and has("sonar_shot") and has("buddy_slam"))
    or (has("camo_cloak") and has("glide") and has("sonar_splosion"))
    or (has("camo_cloak") and has("glide") and has("lizard_leap"))
    or (has("camo_cloak") and has("tail_twirl") and has("sonar_shot") and has("buddy_slam"))
    or (has("camo_cloak") and has("tail_twirl") and has("sonar_splosion"))
    or (has("camo_cloak") and has("tail_twirl") and has("lizard_leap"))
    or (has("camo_cloak") and has("cashino_mollycool"))
end

function transformation()
    return entry_requirements() and has("cashino_mollycool")
end

function kartos_slot()
    return roulette_passage() and has("buddy_slam") and has("lizard_lash")
end

function slots()
    return entry_requirements() and has("buddy_slam") and has("lizard_lash")
end

function security_room()
    return has("camo_cloak")
end

function memory()
    return entry_requirements() and has("buddy_slam")
end

function flagpole()
    return has("flappy_flight")
    or transformation()
end

function maintenance_room_1()
    return entry_requirements() and (has("sonar_splosion") or has("sonar_shot"))
end

function maintenance_room_2()
    return maintenance_room_1() and (has("buddy_slam" or has("flappy_flight") or has("lizard_leap")))
end

function end_roulette_passage()
    return has("sonar_splosion") and 
    (
        has("flappy_flight")
        or (has("tail_twirl") and has("camo_cloak"))
        or (has("glide") and has("camo_cloak"))
        or transformation())
    
end

function above_fountain()
    return has("flappy_flight") 
    or (has("camo_cloak") and has("buddy_bubble") and has("tail_twirl"))
    or (has("camo_cloak") and has("buddy_bubble") and has("sonar_splosion"))
    or transformation()
end

function hoop_challenge()
    return transformation()
    or has("flappy_flight")
    or (has("camo_cloak") and has("glide"))
end

function obtain_card()
    return entry_requirements() and reptile_rush()
end



function expanded_rush()
    return entry_requirements() and reptile_rush() and ExpandedCashinoDestination()
end

function expanded_lash()
    return entry_requirements() and has("lizard_lash") and ExpandedCashinoDestination()
end

function shooting_gallery()
    return has("slurp_shot") and ExpandedCashinoDestination()
end

function wager_laser()
    return entry_requirements() and ExpandedCashinoDestination()
    and has("camo_cloak")
end
function safe_room() 
    return has("camo_cloak") and ExpandedCashinoDestination()
end
--Token Adding
function token_adding()
    tokens = 0
    if entry_requirements() then
        tokens = tokens + 17
    end
    if roulette_passage() then
        tokens = tokens + 5
    end
    if transformation() then
        tokens = tokens + 64
    end
    if kartos_slot() then
        tokens = tokens + 5
    end
    if slots() then
        tokens = tokens + 17
    end
    if security_room() then
        tokens = tokens + 5
    end
    if memory() then
        tokens = tokens + 5
    end
    if flagpole() then
        tokens = tokens + 1
    end
    if maintenance_room_1() then
        tokens = tokens + 1
    end
    if maintenance_room_2() then
        tokens = tokens + 6
    end
    if end_roulette_passage() then
        tokens = tokens + 1
    end
    if above_fountain() then
        tokens = tokens + 3
    end
    if hoop_challenge() then
        tokens = tokens + 5
    end
    if obtain_card() then
        tokens = tokens + 10
    end
    if expanded_rush() then
        tokens = tokens + 16
    end
    if expanded_lash() then
        tokens = tokens + 12
    end
    if shooting_gallery() then
        tokens = tokens + 7
    end
    if wager_laser() then
        tokens = tokens + 5
    end
    if safe_room() then
        tokens = tokens + 5
    end
end


-- Pagie for Tokens requirements
function token_pagie_1_logic()
   token_adding()
    if tokens >= 10 then
        return true
    end
end
function token_pagie_2_logic()
   token_adding()
    if tokens >= 20 then
        return true
        end
end
function token_pagie_3_logic()
    token_adding()
     if tokens >= 30 then
         return true
         end
end
function token_pagie_4_logic()
    token_adding()
     if tokens >= 40 then
         return true
         end
end
function token_pagie_5_logic()
    token_adding()
     if tokens >= 50 then
         return true
         end
end
function token_pagie_6_logic()
    token_adding()
     if tokens >= 60 then
         return true
         end
end
function token_pagie_7_logic()
    token_adding()
     if tokens >= 70 then
         return true
         end
end
function token_pagie_8_logic()
    token_adding()
     if tokens >= 80 then
         return true
         end
end
function token_pagie_9_logic()
    token_adding()
     if tokens >= 90 then
         return true
         end
end
function token_pagie_10_logic()
    token_adding()
     if tokens >= 100 then
         return true
         end
end
function token_pagie_11_logic()
    token_adding()
     if tokens >= 110 then
         return true
         end
end
function token_pagie_12_logic()
    token_adding()
     if tokens >= 120 then
         return true
         end
end
function token_pagie_13_logic()
    token_adding()
     if tokens >= 130 then
         return true
         end
end
function token_pagie_14_logic()
    token_adding()
     if tokens >= 140 then
         return true
         end
end
function token_pagie_15_logic()
    token_adding()
     if tokens >= 150 then
         return true
         end
end
function token_pagie_16_logic()
    token_adding()
     if tokens >= 160 then
         return true
         end
end
function token_pagie_17_logic()
    token_adding()
     if tokens >= 170 then
         return true
         end
end
function token_pagie_18_logic()
    token_adding()
     if tokens >= 180 then
         return true
         end
end
function token_pagie_19_logic()
    token_adding()
     if tokens >= 190 then
         return true
         end
end