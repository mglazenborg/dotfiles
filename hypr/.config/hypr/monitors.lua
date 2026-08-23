-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
-- List current monitors and resolutions possible: hyprctl monitors all

local gdk_scale = 1
local monitor_scale = "auto"

hl.env("GDK_SCALE", tostring(gdk_scale))
hl.monitor({ output = "", mode = "preferred", position = "auto", scale = monitor_scale })

for i = 1, 10 do
  hl.workspace_rule({
    workspace = tostring(i),
    monitor   = i <= 5 and "DP-2" or "DP-1",
    default   = i == 1 or i == 6,
  })
end
