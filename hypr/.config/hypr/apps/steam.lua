a.window("steam", { float = true, idle_inhibit = "fullscreen" })
a.window({ class = "steam", title = "Steam" }, { center = true, size = { 1600, 900 } })
a.window("steam.*", { tag = "-default-opacity", opacity = "1 1" })
a.window({ class = "steam", title = "Friends List" }, { size = { 460, 800 } })
