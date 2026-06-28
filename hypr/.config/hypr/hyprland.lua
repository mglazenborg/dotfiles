package.path = os.getenv("HOME") .. "/.config/?.lua;" .. os.getenv("PATH") .. "/?.lua;" .. package.path

require("hypr.helpers")

require("hypr.monitors")
require("hypr.looknfeel")
require("hypr.windows")
require("hypr.autostart")

--require("hypr.bindings.applications")
--require("hypr.bindings.tiling")
a.require_all("bindings", "bindings")
