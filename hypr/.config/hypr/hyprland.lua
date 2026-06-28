-- Learn how to configure Hyprland: https://wiki.hypr.land/Configuring/Start/

require("helpers")

-- Core configuration modules.
require("autostart")
require("envs")
require("input")
require("looknfeel")
require("monitors")
require("windows")

-- Load all keybinding definitions.
a.require_all(os.getenv("HOME") .. "/.config/hypr/bindings", "bindings")
