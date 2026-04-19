vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<C-n>", vim.cmd.tabn)
vim.keymap.set("n", "<C-p>", vim.cmd.tabp)

-- Lazy
vim.keymap.set("n", "<leader>ls", "<cmd>Lazy sync<cr>", { desc = "Lazy sync" })
