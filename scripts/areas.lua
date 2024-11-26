EntranceTable = {}

function EntranceTable:GetAreaStage(entrance)
    return EntranceTable["stage"][entrance]
end

EntranceTable["name"]= {

    ["TT"] = "Tribalstack Tropics",
    ["GGG"] = "Glitterglaze Glacier",
    ["MM"] = "Moodymaze Marsh",
    ["CC"] = "Capital Cashino",
    ["GG"] = "Galleon Galaxy"
}
EntranceTable["stage"] = {
    -- ID -> Acryonym
    [0] = "unknowm",
    [1] = "TT",
    [2] = "GGG",
    [3] = "MM",
    [4] = "CC",
    [5] = "GG",

    -- Acryonym -> ID
    ["unknowm"] = 0,
    ["TT"] = 1,
    ["GGG"] = 2,
    ["MM"] = 3,
    ["CC"] = 4,
    ["GG"] = 5

}
