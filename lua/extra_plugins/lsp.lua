return {
  -- Mason: Installs LSP servers
  { "williamboman/mason.nvim", build = ":MasonUpdate", config = true },

  -- Bridge Mason with lspconfig
  { "williamboman/mason-lspconfig.nvim", config = true },

  -- Core LSP config
  { "neovim/nvim-lspconfig" },

  -- Autocompletion engine
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/cmp-buffer" },
  { "hrsh7th/cmp-path" },
  { "hrsh7th/cmp-cmdline" },

  -- Snippet engine
  { "L3MON4D3/LuaSnip" },
  { "saadparwaiz1/cmp_luasnip" },
}
