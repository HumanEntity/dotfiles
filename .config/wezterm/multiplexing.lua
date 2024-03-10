local w = require("wezterm")

local M = {}

function M.setup(config)
	config.leader = { key = "a", mods = "CTRL", timeout_milliseconds = 2000 }
	config.keys = {
		{
			key = "Enter",
			mods = "ALT",
			action = w.action.DisableDefaultAssignment,
		},
		-- splitting
		{
			mods = "LEADER",
			key = "h",
			action = w.action.SplitVertical({ domain = "CurrentPaneDomain" }),
		},
		{
			mods = "LEADER",
			key = "v",
			action = w.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
		},
		-- Zooming
		{
			mods = "LEADER",
			key = "z",
			action = w.action.TogglePaneZoomState,
		},
		-- Rotating
		{
			mods = "LEADER",
			key = "Space",
			action = w.action.RotatePanes("Clockwise"),
		},
		-- Swapping
		{
			mods = "LEADER",
			key = "0",
			action = w.action.PaneSelect({
				mode = "SwapWithActive",
			}),
		},
		-- Copy mode
		{
			key = "Enter",
			mods = "LEADER",
			action = w.action.ActivateCopyMode,
		},
		-- Launchers
		{
			key = "e",
			mods = "LEADER",
			action = w.action.ShowLauncherArgs({ flags = "LAUNCH_MENU_ITEMS" }),
		},
		-- Tabs (Windows in tmux)
		{
			key = "c",
			mods = "LEADER",
			action = w.action.SpawnTab("CurrentPaneDomain"),
		},
		{
			key = "n",
			mods = "LEADER",
			action = w.action.ActivateTabRelative(1),
		},
		{
			key = "p",
			mods = "LEADER",
			action = w.action.ActivateTabRelative(-1),
		},
	}
end

return M
