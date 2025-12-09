local wezterm = require("wezterm")
local config = {}
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- require("multiplexing").setup(config)
-- require("launch").setup(config)

config.font = wezterm.font("JetBrainsMono Nerd Font")
-- config.font = wezterm.font("RobotoMono Nerd Font")
-- config.font = wezterm.font("FiraCode Nerd Font")
-- config.font = wezterm.font("Iosevka Nerd Font")
-- config.font = wezterm.font("Terminess Nerd Font")
-- config.font = wezterm.font("BlexMono Nerd Font")
-- config.font = wezterm.font("CaskaydiaCove Nerd Font")
-- config.color_scheme = "Adventure"
-- config.color_scheme = "Gruvbox dark, hard (base16)"
-- config.color_scheme = "MaterialOcean"
-- config.color_scheme = "Solarized Dark - Patched"
-- config.color_scheme = "Tokyo Night Storm"

config.colors = {}
-- config.colors.background = "#111111"
config.colors.background = "black"

config.window_background_opacity = 0.9
config.window_decorations = "RESIZE"
config.font_size = 17.5

config.window_background_opacity = 0.95
config.macos_window_background_blur = 50

-- Tab bar
config.enable_tab_bar = false

-- config.window_background_opacity = 0.99
--config.window_background_image = "/Users/tomek/Documents/Wallpapers/simple.jpg"
config.window_background_image_hsb = {
  -- Darken the background image by reducing it to 1/3rd
  brightness = 0.1,

  -- You can adjust the hue by scaling its value.
  -- a multiplier of 1.0 leaves the value unchanged.
  -- hue = 0.5,

  -- You can adjust the saturation also.
  saturation = 0.5,
}

return config
