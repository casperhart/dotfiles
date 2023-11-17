vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("i", "<leader>w", vim.cmd.w)
vim.api.nvim_set_keymap("i", "<leader>w", "<esc>:w<cr>", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>w", "<esc>:w<cr>", {noremap = true})
