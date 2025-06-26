-- config/lsp.lua

-- Set diagnostic signs like NvChad
local signs = { Error = "", Warn = "", Hint = "", Info = "" }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

-- Enable virtual text diagnostics
vim.diagnostic.config({
  virtual_text = {
    prefix = "●",  -- Symbol before the message
    spacing = 4,
  },
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})

-- Show diagnostics on hover
vim.o.updatetime = 250
vim.cmd [[
  autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
]]
