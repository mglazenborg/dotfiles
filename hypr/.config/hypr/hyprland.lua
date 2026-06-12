package.path = os.getenv("HOME") .. "/.config/?.lua;" .. "/?.lua;" .. package.path

require("hypr.helpers")

require("hypr.monitors")
require("hypr.autostart")

require("hypr.bindings")
require("hypr.bindings.tiling")
