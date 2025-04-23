--[[ This simple addon checks to see whether the Blizzard Addon Profiler is
enabled at first login. If it is, it declares a console variable that
controls this function. It then sets that variable to 0 (off).

This change will persist through character switches/logouts, but will
be reset to the default setting when the client quits. That's where
this addon comes in; it'll re-disable the Profiler for you.

You can confirm for yourself whether the profiler is disabled with the
chat window command /dump C_AddOnProfiler.IsEnabled() -- "false" means it's
turned off. That's what you want to see.

That's all this does. Really. ]]

local f = CreateFrame("Frame")
f:SetScript("OnEvent",function(self,event,...)
    if C_AddOnProfiler.IsEnabled() then
      C_CVar.RegisterCVar('addonProfilerEnabled', '1')
      C_CVar.SetCVar('addonProfilerEnabled', '0')
    end
  end)
f:RegisterEvent("PLAYER_LOGIN")
