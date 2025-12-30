--- Sprite related variables and functions.
...

--- The x position, in pixels, of the sprite when it is the child of another sprite. By default 0.
x = 0

--- The y position, in pixels, of the sprite when it is the child of another sprite. By default 0.
y = 0

--- The horizontal scale of the sprite when it is the child of another sprite. By default 1.
scaleX = 1.0

--- The vertical scale of the sprite when it is the child of another sprite. By default 1.
scaleY = 1.0

--- The vertical scale of the sprite when it is the child of another sprite. By default 1.
scaleY = 1.0

--- The rotation of the sprite, in degrees, when it is the child of another sprite. By default 0.
rotation = 0

--- The alpha of the sprite, represented by a number in the range of 0 - 1. An alpha of 0 means the sprite is completely transparent; 1 means fully visible. By default 1.
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

--- The blend mode of the sprite. Use @{Globals.BlendMode} enum values. By default @{Globals.BlendMode.NORMAL}.
--- @see Globals.BlendMode
blendMode = "normal"

--- Whether or not the sprite was destroyed. Calling @{destroy} sets this to true. Read-only.
destroyed = false

--- The number of children the sprite has. By default 0. Read-only.
--- @see addChild
--- @see removeChild
numChildren = 0

--- Returns the bounds of the sprite as a [Rectangle](https://docs.ruffle.rs/en_US/FlashPlatform/reference/actionscript/3/flash/geom/Rectangle.html), relative to itself.
--- @treturn Rectangle The bounds of the sprite
function getBounds()
end

--- Returns the bounds of the sprite as a [Rectangle](https://docs.ruffle.rs/en_US/FlashPlatform/reference/actionscript/3/flash/geom/Rectangle.html), relative to itself, excluding any strokes on shapes.
--- @treturn Rectangle The bounds of the sprite
function getRect()
end

--- Starts a solid fill with the given ARGB values. Subsequent draw operations will rely on this fill until the fill is ended.
--- You must call endFill() to ensure all draw operations take effect.
--- @tparam int color The ARGB value of the fill. By default `0xFFFFFFFF`. The simplest way to provide this value is with the `0xAARRGGBB` hex format, where AA is the hex value from 0 - 255 for the alpha, RR for red, GG for green, and BB for blue.
--- @see endFill
--- @usage someSprite.beginFill(0xFF0000FF) -- Draw everything with a solid, fully opaque blue.
---- someSprite.drawEllipse(0, 0, 100, 200)
---- someSprite.endFill()
---- someLayer.drawSprite(someSprite)
function beginFill(color)
end

--- Starts a gradient fill with the given ARGB values and ratios. Subsequent draw operations will rely on this fill until the fill is ended.
--- You must call endFill() to ensure all draw operations take effect.
--- 
--- To fully understand the parameters detailed below, please refer to Adobe's gradient fill and gradient box documentations: 
--- 
--- <https://docs.ruffle.rs/en_US/FlashPlatform/reference/actionscript/3/flash/display/Graphics.html#beginGradientFill()>
--- 
--- <https://docs.ruffle.rs/en_US/FlashPlatform/reference/actionscript/3/flash/geom/Matrix.html#createGradientBox()>
--- @param colors An AS3 array of the ARGB values of the fill. The simplest way to provide these values is with the `0xAARRGGBB` hex format, where AA is the hex value from 0 - 255 for the alpha, RR for red, GG for green, and BB for blue.
--- @param ratios An AS3 array of the color distribution ratios; valid values are 0-255. These values define the percentages of the width where the respective color is sampled at 100%. The value 0 represents the left position in the gradient box, and 255 represents the right position in the gradient box. Each value must be greater than the last.
--- @param vars An AS3 object containing any optional parameters for the gradient fill. Valid options are:
---- 
---- * !type: (***string***) The type of gradient fill. Use @{Globals.GradientType} enum values. By default @{Globals.GradientType.LINEAR}.
---- 
---- * !width: (***number***) The width of the gradient box. By default 127.
---- 
---- * !height: (***number***) The height of the gradient box. By default 127.
---- 
---- * !x: (***number***) The distance, in pixels, to translate the gradient box values to the right along the x-axis. This value is offset by half of the width parameter. By default 0.
---- 
---- * !y: (***number***) The distance, in pixels, to translate the gradient box values down along the y-axis. This value is offset by half of the height parameter. By default 0.
---- 
---- * !rotation: (***number***) The amount to rotate the gradient box values, in degrees.
---- 
---- * !focalPointRatio: (***number***) A multiplier that controls the location of the focal point of the gradient. 0 means that the focal point is in the center. 1 means that the focal point is at one border of the gradient circle. -1 means that the focal point is at the other border of the gradient circle. A value less than -1 or greater than 1 is clamped to -1 or 1
---- 
---- * !spreadMethod: (***string***) Which spread method to use. Use @{Globals.GradientSpreadMethod} enum values. By default @{Globals.GradientSpreadMethod.PAD}.
---- 
---- * !interpolationMethod: (***string***) Which color space interpolation method to use. Use @{Globals.ColorInterpolationMethod} enum values. By default @{Globals.ColorInterpolationMethod.RGB}.
---- 
--- @see endFill
--- @see Globals.GradientType
--- @see Globals.GradientSpreadMethod
--- @see Globals.ColorInterpolationMethod
--- @usage local colors = toarray{0xFF0000FF, 0xFFFFFFFF} -- The gradient will be blue on the left and white on the right
---- local ratios = toarray{0.3 * 255, 1 * 255} -- The gradient will be fully blue up to 30% of the way through the fill, then transition from blue to white across the remaining 70%
---- someSprite.beginGradientFill(colors, ratios, toobject{type = GradientType.LINEAR, width = 100, height = 200}) -- The width and height of the gradient box will now match that of our next draw call.
---- someSprite.drawRect(0, 0, 100, 200)
---- someSprite.endFill()
---- someLayer.drawSprite(someSprite)
function beginGradientFill(colors, ratios, vars)
end

--- Starts a bitmap fill with the given stamp. Subsequent draw operations will rely on this fill until the fill is ended.
--- You must call endFill() to ensure all draw operations take effect.
--- 
--- To fully understand the parameters detailed below, please refer to Adobe's bitmap fill and matrix box documentations: 
--- 
--- <https://docs.ruffle.rs/en_US/FlashPlatform/reference/actionscript/3/flash/display/Graphics.html#beginBitmapFill()>
---
--- <https://docs.ruffle.rs/en_US/FlashPlatform/reference/actionscript/3/flash/geom/Matrix.html#createBox()>
--- 
--- @tparam stamp stamp A stamp that will be used for the fill.
--- @tparam boolean repeats Whether the fill repeats the bitmap or not.
--- @tparam boolean smooth Whether smoothing is applied for stamp upscaling/rotation.
--- @param vars An AS3 object containing any optional parameters for the bitmap fill. Valid options are:
----
---- * !x: (***number***) The distance, in pixels, to translate the stamp fill to the right along the x-axis. By default 0.
---- 
---- * !y: (***number***) The distance, in pixels, to translate the stamp fill down along the y-axis. By default 0.
---- 
---- * !scaleX: (***number***) The factor to scale by horizontally. By default 1.
---- 
---- * !scaleY: (***number***) The factor to scale by vertically. By default 1.
---- 
---- * !rotation: (***number***) The amount to rotate the stamp fill, in degrees. By default 0.
----
--- @see endFill
--- @usage someSprite.beginBitmapFill(someStamp,true,true,toobject{
----     x = 5, y = 5,
----     scaleX = 3, scaleY = 3,
----     rotation = 45
---- })
---- someSprite.drawRect(0,0,255,255)
---- someSprite.endFill()
---- someLayer.drawSprite(someSprite)
function beginBitmapFill(stamp, repeats, smooth, vars)
end

--- Ends the current fill and applies any pending draw operations to the sprite.
function endFill()
end

--- Specifies a line style used for subsequent draw operations, such as @{lineTo} and @{drawCircle}.
--- 
--- To fully understand the parameters detailed below, please refer to Adobe's line style documentation:
--- 
--- <https://docs.ruffle.rs/en_US/FlashPlatform/reference/actionscript/3/flash/display/Graphics.html#lineStyle()>
--- @tparam int color The ARGB value of the line style. By default `0xFFFFFFFF`. The simplest way to provide this value is with the `0xAARRGGBB` hex format, where AA is the hex value from 0 - 255 for the alpha, RR for red, GG for green, and BB for blue.
--- @tparam int thickness The thickness, in pixels, of the line style.
--- @param vars An AS3 object containing any optional parameters for the line style. Valid options are:
---- 
---- * !pixelHinting: (***bool***) Whether or not draw operations should be hinted to full pixels. This works to reduce the blurriness of anti-aliasing by keeping line widths and curves aligned closer to exact pixel amounts.
---- 
---- * !scaleMode: (***string***) The scale mode of the line style. Use @{Globals.LineScaleMode} enum values. By default @{Globals.LineScaleMode.NORMAL}.
---- 
---- * !caps: (***string***) The type of caps at the end of lines drawn with this line style. Use @{Globals.CapsStyle} enum values. By default @{Globals.CapsStyle.ROUND}.
---- 
---- * !joints: (***string***) The type of joint appearance at the angles formed by lines drawn with this line style. Use @{Globals.JointStyle} enum values. By default @{Globals.JointStyle.ROUND}. When using @{Globals.JointStyle.MITER}, the length of miters is limited by the `miterLimit` parameter.
---- 
---- * !miterLimit: (***int***) The maximum length, in pixels, of mitered joints used for the angles formed by lines drawn with this line style. By default 3. This value is clamped between 1 and 255.
--- @see Globals.CapsStyle
--- @see Globals.JointStyle
--- @usage someSprite.lineStyle(0xFFFF0000, 5) -- Draw a solid red line with a thickness of 5 pixels
---- someSprite.lineTo(000, 100) -- Draw the line from (0, 0) to (0, 100)
---- someSprite.lineStyle(0xFF000000, 1) -- Draw a solid black line with a thickness of 1 pixel
---- someSprite.lineTo(000, 000) -- Draw the line from (0, 100) to (0, 0)
function lineStyle(color, thickness, vars)
end

--- Specifies a gradient coloring for the line stroke used for subsequent draw operations, such as @{lineTo} and @{drawCircle}.
--- @{lineStyle} must be called beforehand, with the desired line thickness and parameters.
--- 
--- To fully understand the parameters detailed below, please refer to Adobe's gradient line style and gradient box documentations: 
--- 
--- <https://docs.ruffle.rs/en_US/FlashPlatform/reference/actionscript/3/flash/display/Graphics.html#beginGradientFill()>
--- 
--- <https://docs.ruffle.rs/en_US/FlashPlatform/reference/actionscript/3/flash/geom/Matrix.html#createGradientBox()>
--- @param colors An AS3 array of the ARGB values of the fill. The simplest way to provide these values is with the `0xAARRGGBB` hex format, where AA is the hex value from 0 - 255 for the alpha, RR for red, GG for green, and BB for blue.
--- @param ratios An AS3 array of the color distribution ratios; valid values are 0-255. These values define the percentages of the width where the respective color is sampled at 100%. The value 0 represents the left position in the gradient box, and 255 represents the right position in the gradient box. Each value must be greater than the last.
--- @param vars An AS3 object containing any optional parameters for the gradient fill. Valid options are:
---- 
---- * !type: (***string***) The type of gradient fill. Use @{Globals.GradientType} enum values. By default @{Globals.GradientType.LINEAR}.
---- 
---- * !width: (***number***) The width of the gradient box. By default 127.
---- 
---- * !height: (***number***) The height of the gradient box. By default 127.
---- 
---- * !x: (***number***) The distance, in pixels, to translate the gradient box values to the right along the x-axis. This value is offset by half of the width parameter. By default 0.
---- 
---- * !y: (***number***) The distance, in pixels, to translate the gradient box values down along the y-axis. This value is offset by half of the height parameter. By default 0.
---- 
---- * !rotation: (***number***) The amount to rotate the gradient box values, in degrees.
---- 
---- * !focalPointRatio: (***number***) A multiplier that controls the location of the focal point of the gradient. 0 means that the focal point is in the center. 1 means that the focal point is at one border of the gradient circle. -1 means that the focal point is at the other border of the gradient circle. A value less than -1 or greater than 1 is clamped to -1 or 1
---- 
---- * !spreadMethod: (***string***) Which spread method to use. Use @{Globals.GradientSpreadMethod} enum values. By default @{Globals.GradientSpreadMethod.PAD}.
---- 
---- * !interpolationMethod: (***string***) Which color space interpolation method to use. Use @{Globals.ColorInterpolationMethod} enum values. By default @{Globals.ColorInterpolationMethod.RGB}.
---- 
--- @see endFill
--- @see Globals.GradientType
--- @see Globals.GradientSpreadMethod
--- @see Globals.ColorInterpolationMethod
--- @usage local colors = toarray{0xFF0000FF, 0xFFFFFFFF} -- The gradient will be blue on the left and white on the right
---- local ratios = toarray{0.3 * 255, 1 * 255} -- The gradient will be fully blue up to 30% of the way through the fill, then transition from blue to white across the remaining 70%
---- someSprite.lineStyle(0,24)
---- someSprite.gradientLineStyle(colors, ratios, toobject{width = 100, height = 200, spreadMethod = GradientSpreadMethod.PAD}) -- The width and height of the gradient box will now match that of our next draw call.
---- someSprite.drawRect(0, 0, 100, 200)
---- someSprite.endFill()
---- someLayer.drawSprite(someSprite)
function gradientLineStyle(colors, ratios, vars)
end


--- Specifies a bitmap coloring for the line stroke used for subsequent draw operations, such as @{lineTo} and @{drawCircle}.
--- @{lineStyle} must be called beforehand, with the desired line thickness and parameters.
--- 
--- To fully understand the parameters detailed below, please refer to Adobe's bitmap line style and matrix box documentations: 
--- 
--- <https://docs.ruffle.rs/en_US/FlashPlatform/reference/actionscript/3/flash/display/Graphics.html#lineBitmapStyle()>
---
--- <https://docs.ruffle.rs/en_US/FlashPlatform/reference/actionscript/3/flash/geom/Matrix.html#createBox()>
--- 
--- @tparam stamp stamp A stamp that will be used for the line style.
--- @tparam boolean repeats Whether the line style repeats the stamp or not.
--- @tparam boolean smooth Whether smoothing is applied for stamp upscaling/rotation.
--- @param vars An AS3 object containing any optional parameters for the bitmap line style. Valid options are:
----
---- * !x: (***number***) The distance, in pixels, to translate the stamp fill to the right along the x-axis. By default 0.
---- 
---- * !y: (***number***) The distance, in pixels, to translate the stamp fill down along the y-axis. By default 0.
---- 
---- * !scaleX: (***number***) The factor to scale by horizontally. By default 1.
---- 
---- * !scaleY: (***number***) The factor to scale by vertically. By default 1.
---- 
---- * !rotation: (***number***) The amount to rotate the stamp fill, in degrees. By default 0.
----
--- @see endFill
--- @usage
---- someSprite.lineStyle(0,24)
---- someSprite.beginBitmapFill(someStamp,true,true,toobject{
----     x = 5, y = 5,
----     scaleX = 3, scaleY = 3,
----     rotation = 45
---- })
---- someSprite.drawRect(0,0,255,255)
---- someSprite.endFill()
---- someLayer.drawSprite(someSprite)
function bitmapLineStyle(stamp, repeats, smooth, vars)
end

--- Sets the current drawing position used by @{lineTo}, @{curveTo}, and @{cubicCurveTo} to the given coordinates.
--- @tparam number x The x-coordinate of the new drawing position.
--- @tparam number y The y-coordinate of the new drawing position.
--- @usage someSprite.lineTo(000, 100) -- Draw a line from (0, 0) to (0, 100)
---- someSprite.moveTo(000, 000) -- Move back to (0, 0); otherwise, the next line's starting point would be (0, 100) instead of (0, 0)
---- someSprite.lineTo(100, 000) -- Draw the line from (0, 0) to (100, 0)
function moveTo(x, y)
end

--- Draws a line (using the current line style) from the current drawing position to the given end position, and sets the drawing position to the end position.
--- @tparam number x The x-coordinate of the end position for the line to be drawn to.
--- @tparam number y The y-coordinate of the end position for the line to be drawn to.
--- @see moveTo
--- @see lineStyle
--- @usage someSprite.lineTo(000, 100) -- Draw a line from (0, 0) to (0, 100)
----someSprite.lineTo(100, 000) -- Draw the line from (0, 100) to (100, 0)
function lineTo(x, y)
end

--- Draws a quadratic Bezier curve (using the current line style) from the current drawing position to the given end position, and sets the drawing position to the end position.
--- @tparam number controlX The x-coordinate of the control point, which determines the shape of the curvature.
--- @tparam number controlY The y-coordinate of the control point, which determines the shape of the curvature.
--- @tparam number anchorX The x-coordinate of the end position for the curve to be drawn to.
--- @tparam number anchorY The y-coordinate of the end position for the curve to be drawn to.
--- @see moveTo
--- @see lineStyle
--- @usage someSprite.curveTo(-50, 50, -100, 0) -- Draw a curve from (0, 0) to (-100, 0), using a control point (-50, 50) to create a rightward curvature
function curveTo(controlX, controlY, anchorX, anchorY)
end

--- Draws a cubic Bezier curve (using the current line style) from the current drawing position to the given end position, and sets the drawing position to the end position.
--- @tparam number controlX1 The x-coordinate of the first control point. The control points determine the shape of the curvature.
--- @tparam number controlY1 The y-coordinate of the first control point. The control points determine the shape of the curvature.
--- @tparam number controlX2 The x-coordinate of the second control point. The control points determine the shape of the curvature.
--- @tparam number controlY2 The y-coordinate of the second control point. The control points determine the shape of the curvature.
--- @tparam number anchorX The x-coordinate of the end position for the curve to be drawn to.
--- @tparam number anchorY The y-coordinate of the end position for the curve to be drawn to.
--- @see moveTo
--- @see lineStyle
--- @usage someSprite.cubicCurveTo(-50, 50, -100, -50, -150, 0) -- Draw a curve from (0, 0) to (-150, 0), using the control points (-50, 50) and (-100, -50) to create an S-like curve
function cubicCurveTo(controlX1, controlY1, controlX2, controlY2, anchorX, anchorY)
end

--- Draws a path based on a given command string.
---
--- Can provide a significant performance boost over individual moveTo/lineTo/curveTo/cubicCurveTo calls.
---
--- This method behaves slightly differently from individual @{moveTo}/@{lineTo}/@{curveTo}/@{cubicCurveTo} calls, see Adobe's documentation.
---
--- <https://docs.ruffle.rs/en_US/FlashPlatform/reference/actionscript/3/flash/display/Graphics.html#drawPath()>
--- @tparam string commands A string containing all of the commands for the path, e.g "M 100 100 L 250.5 -130.221 L 300 300 L 100 100". A command string can be built with the GraphicsPathCommand helper.
--- @tparam string winding A string defining the winding for the path. Use @{Globals.GraphicsPathWinding} enum values. By default @{Globals.GraphicsPathWinding.EVEN_ODD}.
--- @see GraphicsPathCommand
--- @see Globals.GraphicsPathWinding
--- @usage local path = GraphicsPathCommand.new().moveTo(100,100).lineTo(250.5,-130.221).lineTo(300,300).lineTo(100,100).toString()
---- someSprite.drawPath(path, GraphicsPathWinding.NON_ZERO)
function drawPath(commands, winding)
end

--- Draws a circle using the current fill and line style.
--- @tparam number x The x-coordinate of the circle's center point.
--- @tparam number y The y-coordinate of the circle's center point.
--- @tparam number radius The radius, in pixels, of the circle.
--- @see beginFill
--- @see beginGradientFill
--- @see lineStyle
function drawCircle(x, y, radius)
end

--- Draws an ellipse using the current fill and line style.
--- @tparam number x The x-coordinate of the ellipse's center point.
--- @tparam number y The y-coordinate of the ellipse's center point.
--- @tparam number width The width, in pixels, of the ellipse.
--- @tparam number height The height, in pixels, of the ellipse.
--- @see beginFill
--- @see beginGradientFill
--- @see lineStyle
function drawEllipse(x, y, width, height)
end

--- Draws a rectangle using the current fill and line style.
--- @tparam number x The x-coordinate of the rectangle's top left point.
--- @tparam number y The y-coordinate of the rectangle's top left point.
--- @tparam number width The width, in pixels, of the rectangle.
--- @tparam number height The height, in pixels, of the rectangle.
--- @see beginFill
--- @see beginGradientFill
--- @see lineStyle
function drawRect(x, y, width, height)
end

--- Draws a rounded rectangle using the current fill and line style.
--- @tparam number x The x-coordinate of the rectangle's top left point.
--- @tparam number y The y-coordinate of the rectangle's top left point.
--- @tparam number width The width, in pixels, of the rectangle.
--- @tparam number height The height, in pixels, of the rectangle.
--- @tparam number ellipseWidth The width, in pixels, of the ellipse used to draw the rounded corners.
--- @tparam number ellipseHeight The height, in pixels, of the ellipse used to draw the rounded corners. If none is provided, `ellipseWidth` is used.
--- @see beginFill
--- @see beginGradientFill
--- @see lineStyle
function drawRoundRect(x, y, width, height, ellipseWidth, ellipseHeight)
end

--- Adds a new text field into the sprite's child list.
--- 
--- To fully understand the parameters detailed below, please refer to Adobe's text field and text format documentations: 
--- 
--- <https://docs.ruffle.rs/en_US/FlashPlatform/reference/actionscript/3/flash/text/TextField.html>
--- 
--- <https://docs.ruffle.rs/en_US/FlashPlatform/reference/actionscript/3/flash/text/TextFormat.html>
--- @tparam string text The text to be drawn by the text field.
--- @tparam number x The x-coordinate of the text field's top left point. By default 0.
--- @tparam number y The y-coordinate of the text field's top left point. By default 0.
--- @tparam int color The ARGB value of the text field. By default `0xFFFFFFFF`. The simplest way to provide this value is with the `0xAARRGGBB` hex format, where AA is the hex value from 0 - 255 for the alpha, RR for red, GG for green, and BB for blue.
--- @tparam int size The size, in pixels, of the text field. By default 14.
--- @param vars An AS3 object containing any optional parameters for the gradient fill. Valid options are:
---- 
---- * !align: (***string***) The alignment of the text field. Use @{Globals.TextFormatAlign} enum values. By default @{Globals.TextFormatAlign.LEFT}.
---- 
---- * !bold: (***bool***) Whether or not the text should be emboldened. By default false.
---- 
---- * !italic: (***bool***) Whether or not the text should be italicized. By default false.
---- 
---- * !underline: (***bool***) Whether or not the text should be underlined. By default false.
---- 
---- * !rotation: (***number***) The amount to rotate the text field, in degrees. By default 0.
---- 
---- * !width: (***number***) The width of the text field. If none is provided, it will be calculated based on the text contents.
---- 
---- * !height: (***number***) The height of the text field. If none is provided, it will be calculated based on the text contents.
---- 
---- * !wordWrap: (***bool***) Whether or not the text should be word wrapped within the text field's size. By default false.
---- 
--- @see Globals.TextFormatAlign
--- @usage someSprite.addText(string.rep("Hello, world! ", 30), 0, 0, 0xFFFFAA00, 14, toobject{bold = true, wordWrap = true, width = 150, align = TextFormatAlign.CENTER}) -- Creates orange text at (0, 0), word-wrapping with a width of 150 pixels.
function addText(text, x, y, color, size, vars)
end

--- Adds a sprite or stamp to the sprite's child list. Anytime the sprite is rendered, its children will also be rendered with the same transformations.
--- @tparam sprite/stamp child The sprite or stamp to be parented.
--- @tparam int index The index position to add the child into. By default the end of the list.
function addChild(child, index)
end

--- Removes a sprite or stamp from the sprite's child list.
--- @tparam sprite/stamp child The child sprite or stamp to be removed.
function removeChild(child)
end

--- Creates a copy of the sprite with identical contents.
--- @tparam boolean recursive Whether or not the contents of the sprite's children are copied to the clone.
--- @treturn sprite Returns the clone of the sprite
function clone(recursive)
end

--- Destroys the sprite, making it unable to be drawn to, parented to, or rendered from.
function destroy()
end

--- Clears the sprite, emptying its contents without destroying the sprite.
function clear()
end
