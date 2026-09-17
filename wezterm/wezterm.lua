local wezterm = require('wezterm')

local config = {
  font_size = 13,
  color_scheme = 'Catppuccin Mocha',
  use_fancy_tab_bar = false,
  adjust_window_size_when_changing_font_size = false,
  enable_scroll_bar = true,
  default_prog = { 'powershell.exe', '-NoLogo' },
  scrollback_lines = 10000,
}

config.keys = {
  { key = 'l', mods = 'ALT', action = wezterm.action.ShowLauncher },
}

wezterm.on('gui-startup', function (cmd)
  local _, _, window = wezterm.mux.spawn_window(cmd or {})
  window:gui_window():maximize()
end)

return config
