--- Stamp related variables and functions.
...

--- The width, in pixels, of the stamp. By default 64. Read-only.
width = 1

--- The height, in pixels, of the stamp. By default 64. Read-only.
height = 1

--- Controls whether or not the bitmap is smoothed when scaled or rotated.
--- <https://airsdk.dev/reference/actionscript/3.0/flash/display/Bitmap.html#Bitmap()>
smoothing = false

--- The x position, in pixels, of the stamp when it is the child of a sprite. By default 0.
x = 0

--- The y position, in pixels, of the stamp when it is the child of a sprite. By default 0.
y = 0

--- The horizontal scale of the stamp when it is the child of a sprite. By default 1.
scaleX = 1.0

--- The vertical scale of the stamp when it is the child of a sprite. By default 1.
scaleY = 1.0

--- The vertical scale of the stamp when it is the child of a sprite. By default 1.
scaleY = 1.0

--- The rotation of the stamp, in degrees, when it is the child of a sprite. By default 0.
rotation = 0

--- The alpha of the stamp, represented by a number in the range of 0 - 1. An alpha of 0 means the stamp is completely transparent; 1 means fully visible. By default 1.
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

--- The blend mode of the stamp. Use @{utils.BlendMode|BlendMode} enum values. By default `BlendMode.NORMAL`.
--- @see utils.BlendMode
blendMode = "normal"

--- Whether or not the stamp was destroyed. Calling `destroy` sets this to true. Read-only.
destroyed = false

--- Returns the bounds of the stamp as a [Rectangle](https://airsdk.dev/reference/actionscript/3.0/flash/geom/Rectangle.html), relative to itself.
--- @treturn Rectangle The bounds of the stamp
function getBounds()
end

--- Returns the bounds of the stamp as a [Rectangle](https://airsdk.dev/reference/actionscript/3.0/flash/geom/Rectangle.html), relative to itself, excluding any strokes on shapes.
--- @treturn Rectangle The bounds of the stamp
function getRect()
end

--- Renders a given stamp to the stamp using a given translation, scaling, and rotation.
--- @tparam stamp stamp The sprite to render to the stamp.
--- @tparam number x By how many pixels along the x-axis to move the stamp when rendering to the stamp. By default 0.
--- @tparam number y By how many pixels along the y-axis to move the stamp when rendering to the stamp. By default 0.
--- @tparam number scaleX By how much to scale the stamp along the x-axis when rendering to the stamp. By default 1.
--- @tparam number scaleY By how much to scale the stamp along the y-axis when rendering to the stamp. By default 1.
--- @tparam number rotation By how many degrees to rotate the stamp when rendering to the stamp. By default 0
function drawStamp(stamp, x, y, scaleX, scaleY, rotation)
end

--- Renders a given sprite to the stamp using a given translation, scaling, and rotation.
--- @tparam sprite sprite The sprite to render to the stamp.
--- @tparam number x By how many pixels along the x-axis to move the sprite when rendering to the stamp. By default 0.
--- @tparam number y By how many pixels along the y-axis to move the sprite when rendering to the stamp. By default 0.
--- @tparam number scaleX By how much to scale the sprite along the x-axis when rendering to the stamp. By default 1.
--- @tparam number scaleY By how much to scale the sprite along the y-axis when rendering to the stamp. By default 1.
--- @tparam number rotation By how many degrees to rotate the sprite when rendering to the stamp. By default 0.
--- @see sprite
function drawSprite(sprite, x, y, scaleX, scaleY, rotation)
end

--- Renders a given text field to the stamp using a given translation, scaling, and rotation.
--- @tparam textfield textfield The text field to render to the stamp.
--- @tparam number x By how many pixels along the x-axis to move the text field when rendering to the stamp. By default 0.
--- @tparam number y By how many pixels along the y-axis to move the text field when rendering to the stamp. By default 0.
--- @tparam number scaleX By how much to scale the text field along the x-axis when rendering to the stamp. By default 1.
--- @tparam number scaleY By how much to scale the text field along the y-axis when rendering to the stamp. By default 1.
--- @tparam number rotation By how many degrees to rotate the text field when rendering to the stamp. By default 0.
--- @see textfield
function drawTextField(textfield, x, y, scaleX, scaleY, rotation)
end

--- Renders a given display object to the stamp using a given translation, scaling, and rotation. A display object can be a sprite, stamp, or text field.
--- @tparam stamp/sprite/textfield The display object to render to the stamp.
--- @tparam number x By how many pixels along the x-axis to move the display object when rendering to the stamp. By default 0.
--- @tparam number y By how many pixels along the y-axis to move the display object when rendering to the stamp. By default 0.
--- @tparam number scaleX By how much to scale the display object along the x-axis when rendering to the stamp. By default 1.
--- @tparam number scaleY By how much to scale the display object along the y-axis when rendering to the stamp. By default 1.
--- @tparam number rotation By how many degrees to rotate the display object when rendering to the stamp. By default 0.
function drawDisplayObject(drawable, x, y, scaleX, scaleY, rotation)
end

--- Sets the ARGB value (alpha and color) of the pixel at the given coordinate.
--- @tparam int x The x-coordinate of the pixel.
--- @tparam int y The y-coordinate of the pixel.
--- @tparam int color The ARGB value of the pixel. The simplest way to calculate this is with the 0xAARRGGBB hex format, where AA is the hex value from 0 - 255 for the alpha, RR for red, GG for green, and BB for blue.
--- @usage someStamp.setPixel(10, 10, 0xFF00FF00) -- Sets the pixel at (10, 10) to fully opaque green.
function setPixel(x, y, color)
end

--- Sets the ARGB value (alpha and color) of the pixels within the given rectangle.
--- @tparam int x The x-coordinate of the top left corner of the rectangle.
--- @tparam int y The y-coordinate of the top left corner of the rectangle.
--- @tparam int width The width of the rectangle.
--- @tparam int height The height of the rectangle.
--- @tparam int color The ARGB value of the pixel. The simplest way to calculate this is with the 0xAARRGGBB hex format, where AA is the hex value from 0 - 255 for the alpha, RR for red, GG for green, and BB for blue.
--- @usage someStamp.setPixel(10, 10, 0xFF00FF00) -- Sets the pixel at (10, 10) to fully opaque green.
function setRect(x, y, width, height, color)
end

--- Sets the ARGB values (alpha and color) of the pixels within the given rectangle, based on a string input.
--- @tparam string hexARGB A string containing ARGB data for each pixel in the hexadecimal format (e.g "FF808080FF000000" for the first pixel to be gray and the second pixel to be black)
--- @tparam int x The x-coordinate of the top left corner of the rectangle. 0 by default.
--- @tparam int y The y-coordinate of the top left corner of the rectangle. 0 by default.
--- @tparam int width The width of the rectangle. Stamp width by default.
--- @tparam int height The height of the rectangle. Stamp height by default.
--- @usage local strBuff = {}
---- local i = 1
---- for x = 0, 63 do
----     for y = 0, 63 do
----         strBuff[i] = string.format("%.8x",0xFF000000 + math.random(0xFFFFFF)) -- Generate a random color for the pixel, and format it as a hex string.
----         i = i + 1
----     end
---- end
---- someStamp.setPixels(table.concat(strBuff),0,0,64,64) -- Set each pixel to a be a fully opaque random color
function setPixels(hexARGB, x, y, width, height)
end

--- Fills the stamp with randomly generated noise
--- @tparam int randomSeed The seed to use for random numbers.
--- @tparam int low The lowest value to generate for each channel.
--- @tparam int high The highest value to generate for each channel.
--- @tparam int channelOptions An integer indication for which color channels to put noise in.
--- @tparam boolean grayScale Whether the noise is grayscale or not. False by default.
--- @usage someStamp.noise(512356,0x00,0xFF,7,false) -- Generates randomly colored noise
function noise(randomSeed, low, high, channelOptions, grayScale)
end

--- Fills the stamp with randomly generated perlin noise.
--- <https://airsdk.dev/reference/actionscript/3.0/flash/display/BitmapData.html#perlinNoise()>
--- @tparam int baseX Frequency to use in the X direction.
--- @tparam int baseY Frequency to use in the Y direction.
--- @tparam int numOctaves Number of octaves to use for fractal noise. Higher numbers create greater detail, at the cost of more processing time.
--- @tparam int randomSeed The seed to use for random numbers.
--- @tparam boolean stitch If true, the method attempts to smooth the transition edges of the image to create seamless textures for tiling as a bitmap fill. Does not work with offsets.
--- @tparam boolean fractalNoise If true, generates fractal noise, otherwise generates turbulence. An image with turbulence has visible discontinuities in the gradient that can make it better approximate sharper visual effects.
--- @tparam int channelOptions An integer indication for which color channels to put noise in.
--- @tparam boolean grayScale Whether the noise is grayscale or not. False by default.
--- @param offsetsArray An AS3 array of numbers to use as the offsets, formatted as {x1, y1, x2, y2, ..., xn, yn}
--- @usage someStamp.perlinNoise(120,120,3,math.random(0x7FFFFFFF),false,true,7,true,toarray{12,12,32,-12,-16,16}) -- Generates grayscale perlin noise.
function perlinNoise(...)
end

--- Scrolls the contents of the stamp.
--- @tparam int x How much to scroll in the x direction.
--- @tparam int y How much to scroll in the y direction.
function scroll(x, y)
end

--- Performs a flood fill operation starting at an (x,y) coordinate, filling with a given color.
--- @tparam int x How much to scroll in the x direction.
--- @tparam int y How much to scroll in the y direction.
--- @tparam int color The ARGB value for the color to fill with.
function floodFill(x, y, color)
end

--- Creates a copy of the stamp with identical contents.
--- @treturn stamp Returns the clone of the stamp
function clone()
end

--- Destroys the stamp, making it unable to be drawn to or rendered from.
function destroy()
end

--- Clears the stamp, emptying its contents without destroying the stamp.
function clear()
end
