a = a or {}

function a.bind(keys, description, dispatcher, options)
	local opts = options or {}

	if description then
		opts.description = description
	end

	if type(dispatcher) == "string" then
		dispatcher = hl.dsp.exec_cmd(dispatcher)
	end

	hl.bind(keys, dispatcher, opts)
end

function a.window(match, rules)
	rules.match = rules.match or {}

	if type(match) == "string" then
		rules.match.class = match
	else
		for key, value in pairs(match) do
			rules.match[key] = value
		end
	end

	hl.window_rule(rules)
end

function a.require_all(dir, module_prefix, options)
	local handle = io.popen(
		"find "
			.. "'"
			.. dir:gsub("'", "'\\''")
			.. "'"
			.. " -maxdepth 1 -type f -name '*.lua' -printf '%f\\n' 2>/dev/null | sort"
	)
	if handle then
		for filename in handle:lines() do
			local module = filename:gsub("%.lua$", "")
			if module_prefix then
				module = module_prefix .. "." .. module
			end

			if options and options.reload then
				package.loaded[module] = nil
			end

			require(module)
		end
		handle:close()
	end
end
