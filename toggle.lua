local config = import("micro/config")
local micro = import("micro")

function init()
    config.MakeCommand("toggle", toggle, config.OptionComplete)
    config.MakeCommand("togglelocal", toggleLocal, config.OptionComplete)
end

function toggle(bufpane, args)
    local setting = args[1]
    local currentState = config.GetGlobalOption(setting)
    if type(currentState) == "boolean" then
        config.SetGlobalOptionNative(setting, not currentState)
    else
        micro.InfoBar():Error(string.format("Invalid setting '%s'", setting))
    end
end

function toggleLocal(bufpane, args)
    local setting = args[1]
    local currentState = bufpane.Buf.Settings[setting]
    if type(currentState) == "boolean" then
        bufpane.Buf:SetOptionNative(setting, not currentState)
    else
        micro.InfoBar():Error(string.format("Invalid setting '%s'", setting))
    end
end
