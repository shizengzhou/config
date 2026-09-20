local wezterm = require('wezterm')

local config = {
  font_size = 13,
  color_scheme = 'Catppuccin Mocha',
  use_fancy_tab_bar = false,
  hide_tab_bar_if_only_one_tab = true,
  tab_bar_at_bottom = true,
  adjust_window_size_when_changing_font_size = false,
  window_background_opacity = 0.95,
  enable_scroll_bar = true,
  default_prog = { 'powershell.exe', '-NoLogo' },
  scrollback_lines = 10000,
}

wezterm.on('gui-startup', function (cmd)
  local _, _, window = wezterm.mux.spawn_window(cmd or {})
  window:gui_window():maximize()
end)

return config
