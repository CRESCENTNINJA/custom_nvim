require("nvim-tree").setup({
  view = {
    width = 35,
    side = "left",
    number = false,
    relativenumber = false,
  },
  renderer = {
    icons = {
      glyphs = {
        folder = {
          default = "",
          open = "",
        },
        git = {
          unstaged = "✗",
          staged = "✓",
        },
      },
    },
  },
  filters = {
    dotfiles = false,
  },
})
