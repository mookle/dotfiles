local wezterm = require 'wezterm'

local function is_inside_vim(pane)
  local tty = pane:get_tty_name()
  if tty == nil then return false end

  local success, stdout, stderr = wezterm.run_child_process
    { 'sh', '-c',
      'ps -o state= -o comm= -t' .. wezterm.shell_quote_arg(tty) .. ' | ' ..
      'grep -iqE \'^[^TXZ ]+ +(\\S+\\/)?g?(view|l?n?vim?x?)(diff)?$\'' }

  return success
end

local function is_outside_vim(pane) return not is_inside_vim(pane) end

local function bind_if(cond, key, mods, action)
  local function callback (win, pane)
    if cond(pane) then
      win:perform_action(action, pane)
    else
      win:perform_action(wezterm.action.SendKey({key=key, mods=mods}), pane)
    end
  end

  return {key=key, mods=mods, action=wezterm.action_callback(callback)}
end

local config = {}

config.font = wezterm.font 'JetBrains Mono'
config.font_size = 10.7
config.line_height = 1.2

config.color_scheme = 'kanagawabones'

config.enable_tab_bar = true
config.use_fancy_tab_bar = false
config.colors = {
    tab_bar = {
        active_tab = {
            bg_color = '#434343',
            fg_color = '#999999',
        }
    }
}

config.window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
}

config.leader = { key = ',', mods = 'CTRL', timeout_milliseconds = 1000 }
config.keys = {
    {
        key = 'm',
        mods = 'LEADER',
        action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' }
    },
    {
        key = 'u',
        mods = 'LEADER',
        action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' }
    },
    bind_if(is_outside_vim, 'h', 'CTRL', wezterm.action.ActivatePaneDirection('Left')),
    bind_if(is_outside_vim, 'j', 'CTRL', wezterm.action.ActivatePaneDirection('Down')),
    bind_if(is_outside_vim, 'k', 'CTRL', wezterm.action.ActivatePaneDirection('Up')),
    bind_if(is_outside_vim, 'l', 'CTRL', wezterm.action.ActivatePaneDirection('Right')),
}

return config
