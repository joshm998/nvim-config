vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)


vim.keymap.set("n", "<leader>sv", ":vsplit<CR>", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>sh", ":hsplit<CR>", { desc = "Split window horizontally" })
vim.keymap.set("n", "<leader>x", "<C-w>w", { desc = "Next tab" })
vim.keymap.set("n", "<leader>z", "<C-w>W", { desc = "Previous tab" })

