local map = vim.keymap.set
map("n", "<Space>e", ":NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
map("n", "<Space>ff", "<cmd>Telescope find_files<cr>", { desc = "Find files" })
map("n", "<Space>fg", "<cmd>Telescope live_grep<cr>", { desc = "Grep text" })

-- Buffer navigation
vim.keymap.set("n", "[b", ":bprevious<CR>", { desc = "Previous buffer" })
vim.keymap.set("n", "]b", ":bnext<CR>", { desc = "Next buffer" })

-- Close current buffer
vim.keymap.set("n", "<leader>x", ":bd<CR>", { desc = "Close buffer" })
-- Window navigation with Ctrl + h/j/k/l
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to down window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to up window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })
