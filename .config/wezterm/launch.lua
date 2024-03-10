local wez = require("wezterm")

local M = {}

function M.setup(config)
	local shell = {
		label = "Shell (Fish)",
		args = { "fish", "-l" },
	}

	config.launch_menu = {
		shell,
	}
end

return M
