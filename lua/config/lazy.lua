-- lua/config/lazy.lua

-- Step 1: Base plugin container
local plugins = {
  -- Your base plugins
  { "nvim-tree/nvim-tree.lua", dependencies = "nvim-tree/nvim-web-devicons" },
  { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } },
  { "folke/tokyonight.nvim", priority = 1000 },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  { "nvimdev/dashboard-nvim", event = "VimEnter", dependencies = "nvim-tree/nvim-web-devicons" },
  { "akinsho/bufferline.nvim", version = "*", dependencies = "nvim-tree/nvim-web-devicons" },
  { "folke/which-key.nvim", event = "VeryLazy" },
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  { "nvim-tree/nvim-tree.lua", dependencies = "nvim-tree/nvim-web-devicons" },
}

-- Step 2: Dynamically load extra plugins from lua/extra_plugins
local extra_dir = vim.fn.stdpath("config") .. "/lua/extra_plugins"

for _, file in ipairs(vim.fn.readdir(extra_dir)) do
  if file:match("%.lua$") then
    local ok, mod = pcall(require, "extra_plugins." .. file:gsub("%.lua$", ""))
    if ok then
      if type(mod[1]) == "table" then
        vim.list_extend(plugins, mod)
      else
        table.insert(plugins, mod)
      end
    end
  end
end

-- Step 3: Setup lazy with merged plugins
require("lazy").setup(plugins)
