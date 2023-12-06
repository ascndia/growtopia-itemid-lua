# Mapper Object
## Attributes
| Type | Name | Description|
|:-----|:----:|:-----------|
| Map<String, String> | `blockMap` | Map containing key value pairs of blocks and its id |
| Map<String, String> | `seedMap` | Map containing key value pairs of seed and its id |

### Example usage
Bellow is illustration of how to get id of chandellier and chandellier seed which is preconfigured by default see documentation, if you want to add your own block and seed, read this
```lua
local mapper = require('mapper')

local block_id = mapper.blockMap['chand']

--- do some operation with block_id
```

## Methods
### getBlockId
`getBlockId(string key)`
return block id ( string ) if exist and throw an error if no such block were found.
a simplified interface based on [blockMap](#attributes)

**Example**
```lua
local mapper = require('mapper')

local block_id = mapper.getBlockId('chand')
```

### getSeedId
`getSeedId(string key)`
return seed id ( string ) if exist and throw an error if no such block were found.
a simplified interface based on [seedMap](#attributes)

**Example**
```lua
local mapper = require('mapper')

local seed_id = mapper.getSeedId('chand')
```

### getItemId
`getItemId(string key, optional string type)`
return block or seed id ( string ) if exist and throw an error if no such block or seed were found.
by default type is set to `block` but you can also set it to `seed` or `hybrid` 
a simplified interface based on both [blockMap](#attributes) and [seedMap](#attributes)

**Example**
```lua
local mapper = require('mapper')

local block_id = mapper.getItemId('chand') -- type is by default set to block. so it will return block id for corresponding input
local seed_id = mapper.getItemId('chand','seed') -- type is set to seed. so it will return seed id for corresponding input
```
when using `hybrid` type, there is certain rule where all keys of both `blockMap` and `seedMap` must be unique to ensure uniqueness and smooth functionality.
to handle this we used a mechanism to first search the `blockMap` and secondly the `seedMap`

**Example**
```lua
local mapper = require('mapper')

-- bad usage

local block_id = mapper.getItemId('chand','hybrid') -- this will always return block id
local seed_id = mapper.getItemId('chand','hybrid') -- this will likely return block id instead of seed id which may cause problem

--- good usage

local block_id = mapper.getItemId('chandb','hybrid') -- this will always return block id
local seed_id = mapper.getItemId('chands','hybrid') -- this will likely return seed id
```
to explore more about `hybrid` type read this
