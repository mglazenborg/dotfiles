hl.on("hyprland.start", function()
	hl.exec_cmd("uwsm-app -- waybar")
	hl.exec_cmd("uwsm-app -- swaybg -i ~/Pictures/Wallpapers/current -m fill")
end)
