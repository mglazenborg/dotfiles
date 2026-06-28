-- https://wiki.hypr.land/Configuring/Basics/Variables/#input
hl.config({
	input = {
		kb_layout = "us",
		kb_variant = "",
		kb_model = "",
		kb_options = "compose:caps",
		kb_rules = "",
		follow_mouse = 1,
		sensitivity = 0,

		touchpad = {
			-- Use natural (inverse) scrolling.
			natural_scroll = false,

			-- Use two-finger clicks for right-click instead of lower-right corner.
			clickfinger_behavior = true,

			-- Control the speed of your scrolling.
			scroll_factor = 0.4,
		},
	},

	misc = {
		key_press_enables_dpms = true,
		mouse_move_enables_dpms = true,
	},
})

-- Scroll nicely in the terminal.
a.window("(Alacritty|kitty|foot)", { scroll_touchpad = 1.5 })
a.window("com.mitchellh.ghostty", { scroll_touchpad = 0.2 })
