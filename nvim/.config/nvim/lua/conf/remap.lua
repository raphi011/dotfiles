vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- move selected lines in visual mode up & down
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z") -- append line below to current line and key cursor in position
vim.keymap.set("n", "C-d>", "<C-d>zz")
vim.keymap.set("n", "C-u>", "<C-u>zz") -- scroll up & down but keep cursor in the middle of the screen
vim.keymap.set("n", "n", "nzzzv") -- keep cursor in the middle of the screen when jumping to next search result 
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", "\"_dP") -- keep copied value in register when pasting 

vim.keymap.set("n", "<leader>y", "\"+y") -- yank / copy into system clipboard
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>d", "\"_d") -- delete into system clipboard
vim.keymap.set("v", "<leader>d", "\"_d")

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")
