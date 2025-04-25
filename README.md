For World of Warcraft (Retail). Not tested in Classic.

This simple addon checks to see whether the Blizzard Addon Profiler is
enabled at first login. If it is, it declares a console variable that
controls this function. It then sets that variable to 0 (off).

This change will persist through character switches/logouts, but will
be reset to the default setting when the client quits.

You can confirm for yourself whether the profiler is disabled with the
chat window command /dump C_AddOnProfiler.IsEnabled() -- "false" means it's
turned off. That's what you want to see.

That's all this does. Really.

However, as of 2025-04-25, I've been made aware that this addon can no longer function.
(Please see https://us.forums.blizzard.com/en/wow/t/addon-profiler-forced-on-now/2096273/20).

Therefore, it will no longer be updated. Thank you to everyone who found it useful!
