local mapper = {}

-- Define block to id map

mapper.blockMap = {
    lgrid = "5666",
    ftank = "3004",
    chand = "340",
    pinball = "526",
    htb = "324",
    pepper = "4570"
}

-- Define seed to id map

mapper.seedMap = {
    lgrid = "5667",
    ftank = "3005",
    chand = "341",
    pinball = "527",
    htb = "325",
    pepper = "4571"
}

-- Define function to retrieve block id

function mapper.getBlockId(str)
    local id = mapper.blockMap[str]
    if not id then
        error('invalid block input see documentation ')
    end
    return id
end

-- Define function to retrieve seed id

function mapper.getSeedId(str)
    local id = mapper.seedMap[str]
    if not id then
        error('invalid block input')
    end
    return id
end

-- Define function to retrieve both block and seed id

function mapper.getItemId(str, type)

    local id

    if not type or type ~= "string" then
        type = "block"
    end
    if type == "block" then 
        id = mapper.blockMap[str]
        if not id then
            error('invalid input|code = block')
        end
    elseif type == "seed" then
        id = mapper.seedMap[str]
        if not id then
            error('invalid input|code = seed')
        end
    elseif type == "hybrid" then
        id = mapper.blockMap[str]
        if not id then
            id = mapper.seedMap[str]
            if not id then
                error('invalids input|code = hybrid')
            end
        end
    end
    return id
end

return mapper
