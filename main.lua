--- @sync entry

local get_cwd = ya.sync(function(st)
	if not st.initial_cwd then
		st.initial_cwd = tostring(cx.active.current.cwd)
	end
	return st.initial_cwd
end)

local function entry()
	ya.emit("cd", { get_cwd() })
end

return { entry = entry }
