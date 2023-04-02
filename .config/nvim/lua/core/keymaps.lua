-- keymaps
vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>") -- jk to esc insert mode

keymap.set("n", "<leader>nh", ":nohl<CR>") -- clear highligt

keymap.set("n", "x", '"_x') -- delete by dont copy to clipboaed

keymap.set("n", "<leader>+", "<C-a>") -- incremanet number
keymap.set("n", "<leader>-", "<C-x>") -- decrement number

--quit
keymap.set("n", "<leader>qq", ":q!<CR>") -- save file

-- file
keymap.set("n", "<leader>fs", ":w<CR>") -- save file
keymap.set("n", "<leader>fe", ":RnvimrToggle<CR>") -- save file

-- split
keymap.set("n", "<leader>wv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>wh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>we", "<C-w>=") -- split window equal width
keymap.set("n", "<leader>wc", ":close<CR>") -- close current split window

-- window resize
keymap.set("n", "<C-S-h>", "<C-w><C-<>") -- decrease current window width
keymap.set("n", "<C-S-l>", "<C-w><C->>") -- increase current window width
keymap.set("n", "<C-S-j>", "<C-w><C-->") -- decrease current window height
keymap.set("n", "<C-S-k>", "<C-w><C-+>") -- increase current window height

-- window maximizer
keymap.set("n", "<leader>wm", ":MaximizerToggle<CR>") -- toggles window max and restore size

-- nvim tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggles nvim tree

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- telescope find file
keymap.set("n", "<leader>bb", ":<cmd>Telescope buffers<CR>") -- telescope find buffers
keymap.set("n", "<leader>hh", ":<cmd>Telescope help_tags<CR>") -- telescope help tags

-- mason
keymap.set("n", "<leader>ms", ":Mason<CR>") -- toggles window max and restore size

-- packer
keymap.set("n", "<leader>pi", ":PackerInstall<CR>") -- installs new plugin
keymap.set("n", "<leader>ps", ":PackerSync<CR>") -- Shows packer status
keymap.set("n", "<leader>pu", ":PackerUpdate<CR>") -- update packer plugin

-- lazygit
keymap.set("n", "<leader>gg", ":LazyGit<CR>") -- installs new plugin

-- search
keymap.set("n", "<leader>hw", ":HopWord<CR>") -- Hop to a word
keymap.set("n", "<leader>hl", ":HopLine<CR>") -- Hop to a line
