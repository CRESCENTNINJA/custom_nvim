return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  opts = {
    indent = { char = "│" },
    scope = { enabled = true },
    exclude = {
      filetypes = { "dashboard", "lazy", "NvimTree", "alpha" },
      buftypes = { "terminal", "nofile" },
    },
  },
}
