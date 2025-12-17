--- RNG functions
...

--- Functions the same as math.random(m, n), but using the RNG object's state.
--- When called without arguments, returns a uniform pseudo-random real number in the range [0,1).
--- When called with an integer number m, returns a uniform pseudo-random integer in the range [1, m].
--- When called with two integer numbers m and n, returns a uniform pseudo-random integer in the range [m, n].
--- @tparam int m (optional) The start of the number range, if n is also provided; else, the end of the number range (the start of which being 1)
--- @tparam int n (optional) The end of the number range
--- @treturn number A pseudo-random number based on the RNG object's state.
--- @usage RNG.random(12,24) -- returns an integer between 12 and 24, inclusive.
---- RNG.random(12) -- returns an integer between 1 and 12, inclusive.
---- RNG.random() -- returns a number in the range [0,1).
function random(m, n)
end

--- Functions the same as math.randomseed(seed), but affecting the RNG object's state.
--- Sets the pseudo-random generator's seed: equal seeds produce equal sequences of numbers.
--- @tparam int seed (optional) An optional number input to set the seed with. If none is given, a client-generated seed is used.
--- @usage RNG.randomseed(151260123)
function randomseed(seed)
end

--- Returns the RNG object's seed.
--- @treturn int The RNG object's seed.
function getseed()
end
