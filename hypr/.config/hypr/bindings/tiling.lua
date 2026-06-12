for workspace = 1, 10 do
	local key = "code:" .. tostring(workspace + 9)
	o.bind("SUPER + " .. key, "Switch to workspace " .. workspace, hl.dsp.focus({ workspace = tostring(workspace) }))
	o.bind(
		"SUPER + SHIFT + " .. key,
		"Move window to workspace " .. workspace,
		hl.dsp.window.move({ workspace = tostring(workspace) })
	)
	o.bind(
		"SUPER + SHIFT + ALT + " .. key,
		"Move window silently to workspace " .. workspace,
		hl.dsp.window.move({ workspace = tostring(workspace), follow = false })
	)
end
