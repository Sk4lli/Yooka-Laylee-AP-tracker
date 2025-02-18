-- Reptile Rush and Sonar Shield Logic
function reptile_rush()
    return has("reptile_roll") and has("reptile_rush")
end

function sonar_shield()
   return has("reptile_roll") and has("sonar_shield")
end

-- Damaging Ability Logic
function damaging_ability()
    return reptile_rush()
    or sonar_shield()
    or has("tail_twirl")
    or has("buddy_slam")
    or has("sonar_splosion")
end
-- SHipwreck Creek
function postTropics()
   return TropicsDestination() and (has("flappy_flight") or has("reptile_roll"))
end


-- Tropcis Logic
function locate_knight()
    return (has("reptile_roll") or has("flappy_flight"))
    and (has("glide") or has("flappy_flight") (has("slurp_shot") and expanded_tropics() ))
end

function tropics_energy()
   return has("flappy_flight") or ((has("glide") or has("lizard_leap")) and (has("sonar_splosion") or has("sonar_shot")))
end
-- Glacier logic
function glacier_entrance()
    return has("glide") or has("lizard_leap") or has("flappy_flight")
end
function glacier_energy()
    return glacier_entrance()
    and (has("slurp_state") or has("glacier_mollycool"))
end

function glacier_ghosts()
    return glacier_entrance()
    and has("tail_twirl")
    and has("slurp_state")
    and has("sonar_shot")
    and has("sonar_splosion")
    and (has("reptile_roll") or has("flappy_flight"))
end

function glacier_quills()
    return ExpandedGlacierDestination()
    and has("slurp_state")
    and has("buddy_slam")
    and has("reptile_roll")
    and has("slurp_shot")
    and has ("sonar_shot")
    and glacier_entrance()
    and (has("flappy_flight") or (has(camo_cloak) and reptile_rush() and (has("lizard_leap") or sonar_shield())))
end

function glacier_mollycool()
    return glacier_entrance()
    and has("slurp_shot") and (has("reptile_roll") or has("flappy_flight"))
end

function gloomy_gem()
    return glacier_entrance() and (has("flappy_flight") or (has("reptiel_roll") and has("glide") and has("slurp_state")))
end
-- Icymetric Palace Entry Logic
function icymetric_upper_access()
    return has("flappy_flight")
    or has("slurp_state") and (has("tail_twirl") or has("glide"))
end

function icymetric_lower_access()   
    return reptile_rush() and has("buddy_slam") and has("sonar_shot")
end

function icymetric_boss_access()
    return (icymetric_lower_access() or icymetric_upper_access) and (has("buddy_slam") or has("slurp_shot"))
end

--Icymetric Palace Pagie Logic
function icymetric_frozen_pagie()
    return icymetric_boss_access() and (has("glide") or has("flappy_flight") or has("lizard_leap"))
end

function icymetric_brreeze_block()
    return icymetric_boss_access() and (has("glide") or has("flappy_flight") or has("lizard_leap"))
end

function icymetric_pipes()
    return icymetric_boss_access() and has("slurp_state") and (has("glide") or has("flappy_flight") or has("lizard_leap"))
end

function icymetric_dark_room()
    return 
    (has("glide") or has("flappy_flight") or has("lizard_leap")) 
    and (icymetric_lower_access() or icymetric_upper_access())
    and (has("sonar_splosion") or (has("sonar_shot") and (has("reptile_roll") or has("tail_twirl") or has("buddy_slam"))))
    and has("slurp_shot")
end

function icymetric_sonar_statues()
    return (has("glide") or has("flappy_flight") or has("lizard_leap")) and has("buddy_slam") and has("sonar_shot")
end

function icymetric_camo_cloak()
    return
    (has("glide") or has("flappy_flight") or has("lizard_leap"))
    and (icymetric_upper_access() or icymetric_lower_access())
    and (reptile_rush() or has("tail_twirl") or has("buddy_slam") or has("sonar_splosion"))
    and (has("flappy_flight") or has("glide") or sonar_shield())
    and has("slurp_shot")
    and has("slurp_state")
    and has("camo_cloak")
end

function icymetric_burnies_room()
   return (has("glide") or has("flappy_flight") or has("lizard_leap"))
   and (icymetric_boss_access() 
   or (has("slurp_shot") and has("buddy_slam") and has("flappy_flight")  
   and (icymetric_upper_access() or icymetric_lower_access()) and (has("tail_twirl") or reptile_rush() or has("sonar_splosion"))))
end

function icymetric_spike_wall()
   return
   (icymetric_lower_access() or (icymetric_upper_access() and has("reptile_roll")))
   and (has("flappy_flight") or has("lizard_leap"))
end

function icymetric_acid_path()
    return
    (has("glide") or has("flappy_flight") or has("lizard_leap"))
    and (has("flappy_flight") or (has("slurp_shot") and has("slurp_state") and (has("glide") or sonar_shield()) and (icymetric_upper_access() or icymetric_lower_access())))
end

function glacier_rextro_pagies()
    return (has("glide") or has("flappy_flight") or has("lizard_leap"))
    and (icymetric_lower_access() or (icymetric_upper_access() and has("reptile_roll")))
    and (has("tail_twirl") or has("glide") or has("flappy_flight"))
    and has("glacier_play_coin")
end

function icymetric_help_tubbz()
    return  (has("glide") or has("flappy_flight") or has("lizard_leap"))
    and ((icymetric_lower_access() and icymetric_boss_access()) or (has("sonar_shot") and has("buddy_slam") and has("flappy_flight") and has("slurp_shot")))
    and has("buddy_bubble")
end


-- Icymetric Health Booster and Play Coin Logic
function icymetric_health_booster()
    return  (has("glide") or has("flappy_flight") or has("lizard_leap"))
    and ((icymetric_boss_access() and (has("glide") or has("lizard_leap"))) or (has("flappy_flight") and (icymetric_upper_access() or icymetric_lower_access())))
end

function icymetric_play_coin()
    return
    (has("glide") or has("flappy_flight") or has("lizard_leap"))
    and (icymetric_lower_access() or (icymetric_upper_access() and has("reptile_roll")))    
end
-- Marsh Logic
function marsh_entrance()
    return has("buddy_bubble") or has("lizard_leap") or has("flappy_flight")
end

function marsh_ghosts()
    return marsh_entrance()
    and has("lizard_lash")
    and has("buddy_slam")
    and has("sonar_shot")
    and has("slurp_shot")
    and (has("flappy_flight") or has("lizard_leap"))
end

function marsh_quills()
    return marsh_entrance()
    and reptile_rush()
    and has("buddy_slam")
    and has("lizard_lash")
    and (has("flappy_flight") or (has("lizard_leap") and (has("tail_twirl") or has("glide"))))
end
function cage_match()
    return marsh_entrance()
    and (has("tail_twirl") or reptile_rush() or has("buddy_slam") or has("sonar_splosion"))
    and (has("flappy_flight") or (has("lizard_leap") and (has("glide") or has("tail_twirl"))))
end
-- Cashino Logic
function cashino_entrance()
    return has("flappy_flight") or has("camo_cloak")
end

function cashino_ghosts()
    return cashino_entrance() and has("sonar_shot") and has("slurp_shot") and has("tail_twirl") and reptile_rush()
    and (has("flappy_flight") or has("cashino_mollycool"))
    and (has("flappy_flight") or ((has("glide") or has("tail_twirl")) and (has("sonar_splosion") and has("lizard_leap") and (has("glide") or has("tail_twirl")))))
end

function cashino_quills()
    return cashino_entrance() and ((has("lizard_leap") and has("glide")) or has("flappy_flight"))
    and has("lizard_lash")
    and has("buddy_slam")
    and has("sonar_splosion")
    and reptile_rush()
    and has("camo_cloak")
    and has("cashino_mollycool")
end

-- Galleon Logic
function galaxy_entrance()
    energy_count = 0
    energy_count = entry_count + Tracker:ProviderCountForCode("energy_booster")
    return has("flappy_flight") or has("glide") or energy_count >= 5
end
function galleon_ghosts()
    return galaxy_entrance() and reptile_rush()
    and has("flappy_flight")
    and has("tail_twirl")
    and has("buddy_slam")
    and has("sonar_shot")
    and has("slurp_shot")
    and has("galaxy_mollycool")
end
function galleon_quills()
    return galleon_ghosts()
    and sonar_shield()
    and has("camo_cloak")
    and has("sonar_splosion")
end
function galleon_knights()
    return galaxy_entrance() and reptile_rush()
    and has("flappy_flight")
    and has("tail_twirl")
    and has("buddy_slam")
    and has("slurp_shot")
    and has("camo_cloak")
    and has("sonar_shot")
    and has("sonar_splosion")
end
function galaxy_piece()
    pagie_count = 0
    pagie_count = pagie_count + Tracker:ProviderCountForCode("pagie")
    return galaxy_entrance()
    and has("buddy_bubble")
    and has("flappy_flight")
    and has("galaxy_mollycool")
    and (has("sonar_shot") or has("sonar_splosion"))
    and expanded_galleon()
    and pagie_count >= 75
end