require("dashboard").setup({
  theme = "doom",
  config = {
    header = {
      "",
      "",
      "",
      "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗",
      "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║",
      "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║",
      "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║",
      "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║",
      "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝",
      "        ⚙️  Bilau's Distro ╰(*°▽°*)╯",
      "",
      "",
    },
    center = {
      { icon = "󰈞  ", desc = "Find File", action = "Telescope find_files", key = "f" },
      { icon = "  ", desc = "Recent Files", action = "Telescope oldfiles", key = "r" },
      { icon = "  ", desc = "File Explorer", action = "NvimTreeToggle", key = "e" },
      { icon = "󰍉  ", desc = "Find Word", action = "Telescope live_grep", key = "g" },
      { icon = "  ", desc = "Quit", action = "qa", key = "q" },
    },
    footer = { "Welcome Lord Ninja 🙇" },
  }
})

