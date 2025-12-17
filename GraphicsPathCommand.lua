--- GraphicsPathCommand helper methods
...

--- Move the path cursor to a destination coordinate
--- @tparam number x The x coordinate to move to.
--- @tparam number y The y coordinate to move to.
function moveTo(x, y)
end

--- Draw a line from the path cursor to a destination coordinate, and move the path cursor with it.
--- @tparam number x The x coordinate to move to.
--- @tparam number y The y coordinate to move to.
function lineTo(x, y)
end

--- Draw a quadratic bezier curve from the path cursor to a destination coordinate, curving towards the control point, and move the path cursor with it.
--- @tparam number cx The x coordinate of the control point
--- @tparam number cy The y coordinate of the control point.
--- @tparam number x The x coordinate to move to.
--- @tparam number y The y coordinate to move to.
function curveTo(cx, cy, x, y)
end

--- Draw a cubic bezier curve from the path cursor to a destination coordinate, curving towards the control points, and move the path cursor with it.
--- @tparam number cx1 The x coordinate of the first control point
--- @tparam number cy1 The y coordinate of the first control point.
--- @tparam number cx2 The x coordinate of the second control point
--- @tparam number cy2 The y coordinate of the second control point.
--- @tparam number x The x coordinate to move to.
--- @tparam number y The y coordinate to move to.
function cubicCurveTo(cx1, cy1, cx2, cy2, x, y)
end

--- Returns a string suitable for use with the sprite drawPath() function.
--- @treturn string A command string, usable with the drawPath sprite function.
--- @see sprite
function toString()
end
