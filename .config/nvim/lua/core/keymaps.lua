-- keymaps
vim.g.mapleader = " "

local keymap = vim.keymap

-- treesitter
keymap.set("n", "<C-c>", ":foldclose<CR>") -- jk to esc insert mode
keymap.set("n", "<C-o>", ":foldopen<CR>") -- jk to esc insert mode

keymap.set("i", "jk", "<ESC>") -- jk to esc insert mode
keymap.set("i", "kj", "<ESC>") -- kj to esc insert mode

keymap.set("n", "<leader>nh", ":nohl<CR>") -- clear highligt

keymap.set("n", "x", '"_x') -- delete by dont copy to clipboaed

keymap.set("n", "<leader>+", "<C-a>") -- incremanet number
keymap.set("n", "<leader>-", "<C-x>") -- decrement number

--quit
keymap.set("n", "<leader>qq", ":q!<CR>") -- save file

-- file
keymap.set("n", "<leader>fs", ":w<CR>") -- save file
keymap.set("n", "<leader>fe", ":RnvimrToggle<CR>") -- save file

-- buffers
keymap.set("n", "<C-b>", ":TablineBufferPrevious<CR>") -- move buffer previous
keymap.set("n", "<C-n>", ":TablineBufferNext<CR>") -- move buffer next
keymap.set("n", "<leader>bc", ":bd<CR>") -- move buffer next
keymap.set("n", "<leader>bn", ":TablineTabNew<CR>") -- move buffer previous

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
keymap.set("n", "<leader>ss", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type

-- telescope git commands
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]

-- mason
keymap.set("n", "<leader>ms", ":Mason<CR>") -- toggles window max and restore size

-- packer
keymap.set("n", "<leader>pi", ":PackerInstall<CR>") -- installs new plugin
keymap.set("n", "<leader>ps", ":PackerSync<CR>") -- Shows packer status
keymap.set("n", "<leader>pu", ":PackerUpdate<CR>") -- update packer plugin

-- lazygit
keymap.set("n", "<leader>gg", ":LazyGit<CR>") -- installs new plugin

-- search
keymap.set("n", "s", ":HopWord<CR>") -- Hop to a word
keymap.set("n", "<S-s>", ":HopLine<CR>") -- Hop to a line

-- terminal commands
keymap.set("t", "<ESC><ESC>", "<C-\\><C-n><CMD>:FTermClose<CR>") -- Toggle Fterm in terminal mode
keymap.set("n", "<leader>tt", ":FTermOpen<CR>") -- Toggle Fterm in normal mode
keymap.set("n", "<leader>tx", ":FTermExit<CR>") -- Close Fterm
