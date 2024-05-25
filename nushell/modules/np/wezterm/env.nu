$env.CONFIG_ENTRY = '~/.wezterm.lua'
$env.CONFIG_PATH = '~/.wezterma/'

let $wezterm = {
  config-path: $env.CONFIG_PATH,
  config-entry: $env.CONFIG_ENTRY,
  module-path: $"($nu.default-config-dir)/modules/modules/np/wezterm",
  }

