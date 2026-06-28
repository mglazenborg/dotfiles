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
