function o.bind(keys, description, dispatcher, options)
	local opts = options or {}

	if description then
		opts.description = description
	end

	if type(dispatcher) == "string" then
		dispatcher = hl.dsp.exec_cmd(dispatcher)
	end

	hl.bind(keys, dispatcher, opts)
end
