--- BlockTypes library for easier use of block types.
...

--- Impervious block type. ("impervious")
IMPERVIOUS = "impervious"

--- Weak block type. ("weak")
WEAK = "weak"

--- Active block type. ("active")
ACTIVE = "active"

--- Start block type. ("start")
START = "start"

--- Inactive block type. ("inactive")
INACTIVE = "inactive"

--- Change block type. ("change")
CHANGE = "change"

--- Move block type. ("move")
MOVE = "move"

--- Water block type. ("water")
WATER = "water"

--- Reactor block type. ("reactor")
REACTOR = "reactor"

--- Generator block type. ("generator")
GENERATOR = "generator"

--- Inactive lua block type. ("lua inactive")
INACTIVE_LUA = "lua inactive"

--- Water lua block type. ("lua water")
WATER_LUA = "lua water"


--- Checks if a block type string is of an active block type.
--- @param type The block type string
--- @treturn boolean Returns whether the block type string is of an active block type.
--- @usage isActive = BlockTypes.isActive(block.type)
function isActive(type)
end

--- Checks if a block type string is of an inactive block type.
--- @param type The block type string
--- @treturn boolean Returns whether the block type string is of an inactive block type.
--- @usage isInactive = BlockTypes.isInactive(block.type)
function isInactive(type)
end

--- Checks if a block type string is of a water block type.
--- @param type The block type string
--- @treturn boolean Returns whether the block type string is of a water block type.
--- @usage isWater = BlockTypes.isWater(block.type)
function isWater(type)
end
