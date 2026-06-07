--- Vector layer related variables and functions.
...

--- The depth of the art layer. By default 1.
depth = 1

--- The layerNum of the art layer (equivalent to the ">" icon in Level Editor). By default 1.
--- Greater layerNum layers are drawn above lesser layerNum layers, regardless of layer depth. layerNums of 2 or greater draw above blocks. 3 or greater draws above players, hats, projectiles, and other visual effects.
layerNum = 1

--- The alpha of the art layer, represented by a number in the range of 0 - 1. An alpha of 0 means the layer is completely transparent; 1 means fully visible. By default 1.
alpha = 1

--- The blend mode of the art layer. Use @{utils.BlendMode|BlendMode} enum values. By default `BlendMode.NORMAL`.
--- Not all blend modes are guaranteed to have any effect when used by art layers
--- @see utils.BlendMode
blendMode = "normal"


--- The number of children. Read-only.
numChildren = 0

--- Whether or not the art layer was destroyed. Calling `destroy` sets this to true. Read-only.
destroyed = false

--- A number value that is multiplied with the red color channel when drawn. By default 1.
redMultiplier = 1

--- A number value that is multiplied with the green color channel when drawn. By default 1.
greenMultiplier = 1

--- A number value that is multiplied with the blue color channel when drawn. By default 1.
blueMultiplier = 1

--- Sets red, green, and blue multipliers based on a hexadecimal RGB value (e.g. 0xFF0000). Write-only.
colorMultiplier = 0xFFFFFF

--- Adds a display object to the layer's child list. This allows it to appear on screen.
--- @tparam sprite/stamp/textfield child The display object to be parented.
--- @tparam int index The index position to add the child into. By default the end of the list.
function addChild(child, index)
end

--- Removes a display object from the layer's child list.
--- @tparam sprite/stamp/textfield child The child display object to be removed.
function removeChild(child)
end

--- Destroys the art layer, removing it from the level. Once destroyed, no operations on the layer will function.
function destroy()
end

--- Clears the art layer, emptying its contents without destroying the layer.
function clear()
end
