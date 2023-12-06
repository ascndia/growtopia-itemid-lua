local module = {}

-- Define block to id map

module.blockMap = {
    lgrid = "5666",
    ftank = "3004",
    chand = "340",
    pinball = "526",
    htb = "324",
    pepper = "4570"
}

-- Define seed to id map

module.seedMap = {
    lgrid = "5667",
    ftank = "3005",
    chand = "341",
    pinball = "527",
    htb = "325",
    pepper = "4571"
}

-- Define function to retrieve block id

function module.getBlockId(str)
    local id = module.blockMap[str]
    if not id then
        error('invalid block input see documentation ')
    end
    return id
end

-- Define function to retrieve seed id

function module.getSeedId(str)
    local id = module.seedMap[str]
    if not id then
        error('invalid block input')
    end
    return id
end

-- Define function to retrieve both block and seed id

function module.getItemId(str)
    local id = module.blockMap[str]
    if not id then
        id = module.blockSeed[str]
        if not id then
            error('invalids input')
        end
    end
    return id
end

return module