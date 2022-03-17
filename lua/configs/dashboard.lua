local M = {}

function M.config()
  local g = vim.g
  local fn = vim.fn

  local plugins_count = fn.len(vim.fn.globpath(fn.stdpath "data" .. "/site/pack/packer/start", "*", 0, 1))

  g.dashboard_disable_statusline = 1
  g.dashboard_default_executive = "telescope"
  g.dashboard_custom_header = {
    " ",
    " ",
    " ",
    " ",
    " ",
    " █████  ███████ ████████ ██████   ██████",
    "██   ██ ██         ██    ██   ██ ██    ██",
    "███████ ███████    ██    ██████  ██    ██",
    "██   ██      ██    ██    ██   ██ ██    ██",
    "██   ██ ███████    ██    ██   ██  ██████",
    " ",
    "         ██    ██ ██ ███    ███",
    "         ██    ██ ██ ████  ████",
    "         ██    ██ ██ ██ ████ ██",
    "          ██  ██  ██ ██  ██  ██",
    "           ████   ██ ██      ██",
    " ",
    " ",
    " ",
  }

  g.dashboard_custom_section = {
    a = { description = { "   New File                  SPC f n" }, command = "DashboardNewFile" },
    b = { description = { "   Find File                 SPC f f" }, command = "Telescope find_files" },
    c = { description = { "   Find Word                 SPC f w" }, command = "Telescope live_grep" },
    d = { description = { "   Projects                  SPC f p" }, command = "Telescope projects" },
    e = { description = { "   Configuration             SPC f c" }, command = "e ~/.config/nvim/init.lua" },
  }

  g.dashboard_custom_footer = {
    " ",
    " AstroVim loaded " .. plugins_count .. " plugins ",
  }
end

return M
