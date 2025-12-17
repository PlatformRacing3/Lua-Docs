--- RNG functions
...

--- Functions the same as math.random(...), but using the RNG object's state.
--- @param ... 0, 1, or 2 number inputs determining the range of the pseudo-random output.
--- @treturn number A pseudo-random number based on the RNG object's state.
--- @usage RNG.random(12,24) -- returns an integer between 12 and 24, inclusive.
---- RNG.random(12) -- returns an integer between 1 and 12, inclusive.
---- RNG.random() -- returns a number in the range [0,1).
function random(...)
end

--- Functions the same as math.randomseed(...), but affecting the RNG object's state.
--- @param ... An optional number input to set the seed with. If none is given, a client-generated seed is used.
--- @usage RNG.randomseed(151260123)
function randomseed(...)
end

--- Returns the RNG object's seed.
--- @treturn int The RNG object's seed.
function getseed()
end
