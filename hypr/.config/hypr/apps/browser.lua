-- Browser tags and styling.
a.window("([fF]irefox|zen|librewolf)", { tag = "+firefox-based-browser" })
a.window({ tag = "firefox-based-browser" }, { tag = "-default-opacity", opacity = "1.0 0.97" })

-- Set opacity to 1 for video sites.
a.window({ tag = "firefox-based-browser", title = ".*(YouTube|Twitch).*" }, { opacity = "1.0 1.0" })
