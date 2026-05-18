--- @sync entry

local initial_cwd = os.getenv("PWD")

local function entry()
	if initial_cwd then
		ya.emit("cd", { initial_cwd })
	end
end

return { entry = entry }
