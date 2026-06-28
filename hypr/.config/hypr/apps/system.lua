a.window({ tag = "floating-window" }, { float = true, center = true, size = { 875, 600 } })

a.window("(dev.accessdenied.bluetui|dev.accessdenied.impala|dev.accessdenied.wiremix)", { tag = "+floating-window" })
a.window({
	class = "(xdg-desktop-portal-gtk|sublime_text|DesktopEditors|org.gnome.Nautilus)",
	title = "^(Open.*Files?|Open [F|f]older.*|Save.*Files?|Save.*As|Save|All Files|.*wants to [open|save].*|[C|c]hoose.*)",
}, { tag = "+floating-window" })
a.window("org.gnome.Calculator", { float = true })
