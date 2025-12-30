--- Timer related variables and functions
...

--- How many milliseconds have passed within the current interval.
elapsedMS = 0

--- How many intervals have been completed.
currentCount = 0

--- How many intervals will be completed. Set to -1 for infinite intervals.
maxCount = 0

--- How many milliseconds must pass to complete an interval.
interval = 0

--- A multiplier applied to the simulated elapsed time. By default 1.
--- (e.g. a multiplier of 2 makes an interval of 100 milliseconds take only 50 milliseconds to complete)
speed = 1

--- True if the timer has completed all of its intervals, false otherwise. Read-only. 
stopped = false

--- Whether the timer destroys itself upon completing all of its intervals. By default false.
persistent = false

--- Whether or not the timer was destroyed. Calling @{destroy} sets this to true. Read-only.
destroyed = false

--- Whether or not the timer uses simulated game time rather than real time / wall clock time.
--- This will be `true` if created by @{game.newTimer} or @{player.newTimer}, or `false` if created by @{game.newRealTimer} or @{player.newRealTimer}
usesGameTime = true

--- Resets the timer's interval count and length back to 0, and its speed back to 1.
function reset()
end

--- Destroys the timer, freezing its simulated time and disabling its listener.
function destroy()
end
