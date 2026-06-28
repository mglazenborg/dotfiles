-- Define terminal tag to style them uniformly.
a.window("(Alacritty|kitty|com.mitchellh.ghostty|foot)", { tag = "+terminal" })
a.window({ tag = "terminal" }, { tag = "-default-opacity", opacity = "0.97 0.9" })
