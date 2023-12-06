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
a simplified interface for accessing [blockMap](#attributes)
