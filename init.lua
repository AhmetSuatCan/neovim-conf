pcall(vim.cmd, "language en_US.UTF-8")

-- Bootstrap lazy.nvim (auto-installs on first run)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.uv.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Load core settings and keymaps first (before plugins)
require("keymaps")

-- Load plugins
require("lazy").setup("plugins", {
  install = { colorscheme = { "kanagawa" } },
  checker = { enabled = false },
})

-- Set the theme
vim.cmd("colorscheme kanagawa")
