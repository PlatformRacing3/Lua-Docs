--- Helper functions and variables
...

--- The Projectile class.
--- @see projectile
--- @see instanceof
--- @see block.onBreak
Projectile = nil

--- The Player class.
--- @see remoteplayer
--- @see instanceof
--- @see game.getPlayer
Player = nil

--- The LocalPlayer class.
--- All instances of this class also belong to Player class.
--- @see player
--- @see instanceof
LocalPlayer = nil

--- Converts game value to Lua. This allows the modification of given value.
--- @param value The value to convert.
--- @return Lua type of the value.
--- @usage player.speed = tolua(player.speed) + 10
function tolua(value)
end

--- Converts game object / game array to Lua. This allows iteration over its fields.
--- 
--- The Lua table is a copy of the original game data. Therefore, modifications made to the Lua table will not affect the original object / array.
--- @param value The value to convert.
--- @treturn table Lua table representing the value.
--- @usage local players = totable(game.getAllPlayers())
---- for i, v in pairs(players) do
----     v.setmetadata("index", i)
---- end
function totable(value)
end

--- Converts Lua value to game object. This allows the usage of options in more complex functions.
--- @param value The value to convert.
--- @return The game object.
--- @usage givelaser(toobject{ammo=5,reload=4})
function toobject(value)
end

--- Converts Lua value to game array.
--- @param value The value to convert.
--- @return The game array.
function toarray(value)
end

--- Converts an array of positions (tables with an x value and a y value) into a vararg.
--- @param value The value to convert.
--- @return The vararg.
--- @usage block.bulkteleportto(false, true, tovararg({{x = 0, y = -7}, {x = 0, y = -8}, {x = 1, y = -8}, {x = 1, y = -7}}))
--- @see block.bulkteleportto
function tovararg(value)
end

--- Checks if an object is an instance of a class.
--- @param object The object. tolua must be used for this parameter
--- @param class The class.
--- @treturn boolean Returns whether the object is an instance of the class.
--- @see Projectile
--- @see Player
--- @usage isProjectile = tolua(instanceof(tolua(event.reason), Projectile))
function instanceof(object, class)
end

--- List of keycodes.
-- @table keys
keys = {
	NONE = 0, -- No key pressed.
	CANCEL = 3, -- The CANCEL key. (3)
	BACK = 8, -- The BACKSPACE key. (8)
	TAB = 9, -- The TAB key. (9)
	LINEFEED = 10, -- The LINEFEED key. (10)
	CLEAR = 12, -- The CLEAR key. (12)
	RETURN = 13, -- The RETURN key. (13)
	FUNCTION = 14, -- The FUNCTION key. (14)
	COMMAND = 15, -- The COMMAND key. (15)
	SHIFT = 16, -- The SHIFTKEY key. (16)
	CONTROL = 17, -- The CONTROLKEY key. (17)
	MENU = 18, -- The ALT key. (18)
	PAUSE = 19, -- The PAUSE key. (19)
	CAPSLOCK = 20, -- The CAPS LOCK key. (20)
	NUMPAD = 21, -- The NUMPAD key. (21)
	ESCAPE = 27, -- The ESC key. (27)
	SPACE = 32, -- The SPACEBAR key. (32)
	PAGEUP = 33, -- The PAGE UP key. (33)
	PAGEDOWN = 34, -- The PAGE DOWN key. (34)
	END = 35, -- The END key. (35)
	HOME = 36, -- The HOME key. (36)
	LEFT = 37, -- The LEFT ARROW key. (37)
	UP = 38, -- The UP ARROW key. (38)
	RIGHT = 39, -- The RIGHT ARROW key. (39)
	DOWN = 40, -- The DOWN ARROW key. (40)
	SELECT = 41, -- The SELECT key. (41)
	PRINT = 42, -- The PRINT key. (42)
	EXECUTE = 43, -- The EXECUTE key. (43)
	PRINTSCREEN = 44, -- The PRINT SCREEN key. (44)
	INSERT = 45, -- The INS key. (45)
	DELETE = 46, -- The DEL key. (46)
	HELP = 47, -- The HELP key. (47)
	D0 = 48, -- The 0 key. (48)
	D1 = 49, -- The 1 key. (49)
	D2 = 50, -- The 2 key. (50)
	D3 = 51, -- The 3 key. (51)
	D4 = 52, -- The 4 key. (52)
	D5 = 53, -- The 5 key. (53)
	D6 = 54, -- The 6 key. (54)
	D7 = 55, -- The 7 key. (55)
	D8 = 56, -- The 8 key. (56)
	D9 = 57, -- The 9 key. (57)
	A = 65, -- The A key. (65)
	B = 66, -- The B key. (66)
	C = 67, -- The C key. (67)
	D = 68, -- The D key. (68)
	E = 69, -- The E key. (69)
	F = 70, -- The F key. (70)
	G = 71, -- The G key. (71)
	H = 72, -- The H key. (72)
	I = 73, -- The I key. (73)
	J = 74, -- The J key. (74)
	K = 75, -- The K key. (75)
	L = 76, -- The L key. (76)
	M = 77, -- The M key. (77)
	N = 78, -- The N key. (78)
	O = 79, -- The O key. (79)
	P = 80, -- The P key. (80)
	Q = 81, -- The Q key. (81)
	R = 82, -- The R key. (82)
	S = 83, -- The S key. (83)
	T = 84, -- The T key. (84)
	U = 85, -- The U key. (85)
	V = 86, -- The V key. (86)
	W = 87, -- The W key. (87)
	X = 88, -- The X key. (88)
	Y = 89, -- The Y key. (89)
	Z = 90, -- The Z key. (90)
	NUMPAD0 = 96, -- The 0 key on the numeric keypad. (96)
	NUMPAD1 = 97, -- The 1 key on the numeric keypad. (97)
	NUMPAD2 = 98, -- The 2 key on the numeric keypad. (98)
	NUMPAD3 = 99, -- The 3 key on the numeric keypad. (99)
	NUMPAD4 = 100, -- The 4 key on the numeric keypad. (100)
	NUMPAD5 = 101, -- The 5 key on the numeric keypad. (101)
	NUMPAD6 = 102, -- The 6 key on the numeric keypad. (102)
	NUMPAD7 = 103, -- The 7 key on the numeric keypad. (103)
	NUMPAD8 = 104, -- The 8 key on the numeric keypad. (104)
	NUMPAD9 = 105, -- The 9 key on the numeric keypad. (105)
	NUMPADMULTIPLY = 106, -- The multiply key on the numeric keypad. (106)
	NUMPADADD = 107, -- The add key on the numeric keypad. (107)
	NUMPADENTER = 108, -- The enter key on the numeric keypad. (108)
	NUMPADSUBTRACT = 109, -- The subtract key on the numeric keypad. (109)
	NUMPADPERIOD = 110, -- The period key on the numeric keypad. (110)
	NUMPADSLASH = 111, -- The slash key on the numeric keypad. (111)
	F1 = 112, -- The F1 key. (112)
	F2 = 113, -- The F2 key. (113)
	F3 = 114, -- The F3 key. (114)
	F4 = 115, -- The F4 key. (115)
	F5 = 116, -- The F5 key. (116)
	F6 = 117, -- The F6 key. (117)
	F7 = 118, -- The F7 key. (118)
	F8 = 119, -- The F8 key. (119)
	F9 = 120, -- The F9 key. (120)
	F10 = 121, -- The F10 key. (121)
	F11 = 122, -- The F11 key. (122)
	F12 = 123, -- The F12 key. (123)
	F13 = 124, -- The F13 key. (124)
	F14 = 125, -- The F14 key. (125)
	F15 = 126, -- The F15 key. (126)
	F16 = 127, -- The F16 key. (127)
	F17 = 128, -- The F17 key. (128)
	F18 = 129, -- The F18 key. (129)
	F19 = 130, -- The F19 key. (130)
	F20 = 131, -- The F20 key. (131)
	F21 = 132, -- The F21 key. (132)
	F22 = 133, -- The F22 key. (133)
	F23 = 134, -- The F23 key. (134)
	F24 = 135, -- The F24 key. (135)
	NUMLOCK = 144, -- The NUM LOCK key. (144)
	SCROLL = 145, -- The SCROLL LOCK key. (145)
	LSHIFTKEY = 160, -- The left SHIFT key. (160)
	RSHIFTKEY = 161, -- The right SHIFT key. (161)
	LCONTROLKEY = 162, -- The left CTRL key. (162)
	RCONTROLKEY = 163, -- The right CTRL key. (163)
	LMENU = 164, -- The left ALT key. (164)
	RMENU = 165, -- The right ALT key. (165)
	SEMICOLON = 186, -- The semicolon key. (186)
	EQUAL = 187, -- The equals key. (187)
	COMMA = 188, -- The comma key. (188)
	MINUS = 189, -- The minus key. (189)
	PERIOD = 190, -- The period key. (190)
	SLASH = 191, -- The slash key. (191)
	BACKQUOTE = 192, -- The backquote key. (192)
	LEFTBRACKET = 219, -- The left bracket key. (219)
	BACKSLASH = 220, -- The backslash key. (220)
	RIGHTBRACKET = 221, -- The right bracket key. (221)
	QUOTE = 222, -- The quote key (222)

	NEXT = 34, -- [DEPRECATED] Legacy equivalent of the PAGE DOWN key. (34)
	SEPARATOR = 108, -- [DEPRECATED] Legacy equivalent of the NUMPAD ENTER key. (108)
	DECIMAL = 110, -- [DEPRECATED] Legacy equivalent of NUMPAD PERIOD key. (110)
	DIVIDE = 111 -- [DEPRECATED] Legacy equivalent of NUMPAD SLASH key. (111)
}

--- GraphicsPathWinding enum.
--- Defines the winding rule for path drawing.
--- @see sprite.drawPath
-- @table GraphicsPathWinding
GraphicsPathWinding = {
	EVEN_ODD = "evenOdd", -- Even-odd winding rule. ("evenOdd")
	NON_ZERO = "nonZero" -- Non-zero winding rule. ("nonZero")
}

--- GradientType enum.
--- Defines the type of gradient fill.
--- @see sprite.beginGradientFill
--- @see sprite.gradientLineStyle
-- @table GradientType
GradientType = {
	LINEAR = "linear", -- Linear gradient fill. ("linear")
	RADIAL = "radial" -- Radial gradient fill. ("radial")
}

--- GradientSpreadMethod enum.
--- Defines the spread method for gradient fills.
--- @see sprite.beginGradientFill
--- @see sprite.gradientLineStyle
-- @table GradientSpreadMethod
GradientSpreadMethod = {
	PAD = "pad", -- Pad spread method. ("pad")
	REFLECT = "reflect", -- Reflect spread method. ("reflect")
	REPEAT = "repeat" -- Repeat spread method. ("repeat")
}

--- TextFormatAlign enum.
--- Defines the alignment of text within a text field.
--- @see textfield.align
--- @see sprite.addText
-- @table TextFormatAlign
TextFormatAlign = {
	CENTER = "center", -- Centers the text within the text field. ("center")
	END = "end", -- Aligns the text to the ending edge of the text field, as determined by the text language. Usually the same as RIGHT. ("end")
	JUSTIFY = "justify", -- Justifies the text within the text field. The spacing between words is adjusted line-by-line to ensure each line is the same length. ("justify")
	LEFT = "left", -- Aligns the text to the left edge of the text field. ("left")
	RIGHT = "right", -- Aligns the text to the right edge of the text field. ("right")
	START = "start" -- Aligns the text to the starting edge of the text field, as determined by the text language. Usually the same as LEFT. ("start")
}

--- TextFieldAutoSize enum.
--- Defines the auto-sizing mode for text fields.
--- @see textfield.autoSize
-- @table TextFieldAutoSize
TextFieldAutoSize = {
	CENTER = "center", -- Specifies that the text is to be treated as center-justified text. Any resizing of a single line of a text field is equally distributed to both the right and left sides. ("center")
	LEFT = "left", -- Specifies that the text is to be treated as left-justified text, meaning that the left side of the text field remains fixed and any resizing of a single line is on the right side. ("left")
	NONE = "none", -- Specifies that no resizing is to occur. ("none")
	RIGHT = "right" --  Specifies that the text is to be treated as right-justified text, meaning that the right side of the text field remains fixed and any resizing of a single line is on the left side. ("right")
}

--- CapsStyle enum.
--- Defines the type of caps at the end of lines.
--- @see sprite.lineStyle
-- @table CapsStyle
CapsStyle = {
	NONE = "none", -- No caps at the end of lines. ("none")
	ROUND = "round", -- Round caps at the end of lines. ("round")
	SQUARE = "square" -- Square caps at the end of lines. ("square")
}

--- JointStyle enum.
--- Defines the type of joint appearance used at angles.
--- @see sprite.lineStyle
-- @table JointStyle
JointStyle = {
	BEVEL = "bevel", -- Beveled joints at the angles formed by lines. ("bevel")
	MITER = "miter", -- Mitered joints at the angles formed by lines. ("miter")
	ROUND = "round" -- Round joints at the angles formed by lines. ("round")
}

--- ColorInterpolationMethod enum.
--- Defines the color space interpolation method for gradients.
--- @see sprite.beginGradientFill
--- @see sprite.gradientLineStyle
-- @table ColorInterpolationMethod
ColorInterpolationMethod = {
	LINEAR_RGB = "linearRGB", -- Linear RGB color space interpolation. ("linearRGB")
	RGB = "rgb" -- RGB color space interpolation. ("rgb")
}

--- BlendMode enum.
--- Defines the blend mode for display objects.
--- @see sprite.blendMode
--- @see stamp.blendMode
--- @see textfield.blendMode
-- @table BlendMode
BlendMode = {
	ADD = "add", -- Adds the values of the constituent colors. ("add")
	ALPHA = "alpha", -- Applies the alpha value of each pixel to the background. ("alpha")
	DARKEN = "darken", -- Selects the darker of the constituent colors. ("darken")
	DIFFERENCE = "difference", -- Compares colors and subtracts the darker from the lighter. ("difference")
	ERASE = "erase", -- Erases the background based on the alpha value. ("erase")
	HARDLIGHT = "hardlight", -- Adjusts color based on the darkness of the display object. ("hardlight")
	INVERT = "invert", -- Inverts the background. ("invert")
	LAYER = "layer", -- Forces creation of a transparency group. ("layer")
	LIGHTEN = "lighten", -- Selects the lighter of the constituent colors. ("lighten")
	MULTIPLY = "multiply", -- Multiplies the values of the display object colors by the background colors. ("multiply")
	NORMAL = "normal", -- The display object appears in front of the background. ("normal")
	OVERLAY = "overlay", -- Adjusts color based on the darkness of the background. ("overlay")
	SCREEN = "screen", -- Multiplies the complement of the colors, resulting in a bleaching effect. ("screen")
	SHADER = "shader", -- Uses a shader to define the blend. ("shader")
	SUBTRACT = "subtract" -- Subtracts the display object colors from the background colors. ("subtract")
}


GraphicsPathCommand = {
}

--- Creates a GradientPathCommand helper, for use with drawPath.
--- @see GraphicsPathCommand
function GraphicsPathCommand.new()
end
