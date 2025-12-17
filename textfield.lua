--- Text field related variables and functions.
...

--- The x position, in pixels, of the text field when it is the child of a sprite. By default 0.
x = 0

--- The y position, in pixels, of the text field when it is the child of a sprite. By default 0.
y = 0

--- The horizontal scale of the text field when it is the child of a sprite. By default 1.
scaleX = 1.0

--- The vertical scale of the text field when it is the child of a sprite. By default 1.
scaleY = 1.0

--- The vertical scale of the text field when it is the child of a sprite. By default 1.
scaleY = 1.0

--- The rotation of the text field, in degrees, when it is the child of a sprite. By default 0.
rotation = 0

--- The alpha of the text field, represented by a number in the range of 0 - 1. An alpha of 0 means the text field is completely transparent; 1 means fully visible. By default 1.
alpha = 1

--- A number value that is multiplied with the red color channel when drawn. By default 1.
redMultiplier = 1

--- A number value that is multiplied with the green color channel when drawn. By default 1.
greenMultiplier = 1

--- A number value that is multiplied with the blue color channel when drawn. By default 1.
blueMultiplier = 1

--- Sets red, green, and blue multipliers based on a hexadecimal RGB value (e.g. 0xFF0000). Write-only.
colorMultiplier = 0xFFFFFF

--- A number value from -255 to 255 that is added to the alpha channel after it is multiplied by alpha. By default 0.
alphaOffset = 0

--- A number value from -255 to 255 that is added to the alpha channel after it is multiplied by redMultiplier. By default 0.
redOffset = 0

--- A number value from -255 to 255 that is added to the alpha channel after it is multiplied by greenMultiplier. By default 0.
greenOffset = 0

--- A number value from -255 to 255 that is added to the alpha channel after it is multiplied by blueMultiplier. By default 0.
blueOffset = 0

--- The blend mode of the text field. By default "normal".
--- Valid blend modes are defined here:
--- <https://airsdk.dev/reference/actionscript/3.0/flash/display/BlendMode.html>
blendMode = "normal"

--- Whether or not the text field was destroyed. Calling `destroy` sets this to true. Read-only.
destroyed = false

--- The text within the text field.
text = ""

--- Text field width in pixels. Setting this disables auto sizing if word wrap is also disabled.
width = 0

--- Text field height in pixels. Setting this disables auto sizing.
height = 0

--- Size of the text.
size = 14

--- RGB color of the text.
color = 0xFFFFFF

--- Text alignment mode
align = "left"

--- Whether the text automatically wraps around or not.
wordWrap = true

--- Whether the text is underlined or not. By default false.
underline = false

--- Text auto-sizing mode.
autoSize = "none"

--- Destroys the text field.
function destroy()
end

--- Returns the bounds of the text field as a Rectangle, relative to itself.
---
--- <https://airsdk.dev/reference/actionscript/3.0/flash/geom/Rectangle.html>
function getBounds()
end

--- Returns the bounds of the text field as a Rectangle, relative to itself, excluding any strokes on shapes.
---
--- <https://airsdk.dev/reference/actionscript/3.0/flash/geom/Rectangle.html>
function getRect()
end
