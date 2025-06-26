-- Leader key (must be set before anything else)
vim.g.mapleader = " "

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git", lazypath
  })
end
vim.opt.rtp:prepend(lazypath)


-- Load all config modules automatically
require("config.lazy")
require("utils").load("config")             -- loads lua/config/*.lua
require("utils").load("config/ts_and_lsp")  -- loads lua/config/ts_and_lsp/*.lua
require("utils").load("config/ui")          -- optional: for bufferline, dashboard, etc.
