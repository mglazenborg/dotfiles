-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
-- List current monitors and resolutions possible: hyprctl monitors all

local gdk_scale = 2
local monitor_scale = "auto"

hl.env("GDK_SCALE", tostring(gdk_scale))
hl.monitor({ output = "", mode = "preferred", position = "auto", scale = monitor_scale })
