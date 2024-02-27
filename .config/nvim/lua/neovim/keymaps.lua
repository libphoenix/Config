vim.keymap.set("i", "jk", "<ESC>")             -- jk to esc insert mode
vim.keymap.set("i", "kj", "<ESC>")             -- kj to esc insert mode

vim.keymap.set("n", "<leader>nh", ":nohl<CR>") -- clear highligt

vim.keymap.set("n", "<leader>+", "<C-a>")      -- incremanet number
vim.keymap.set("n", "<leader>-", "<C-x>")      -- decrement number

--quit
vim.keymap.set("n", "<leader>q", ":q!<CR>") -- quit vim
vim.keymap.set("n", "<leader>w", ":w<CR>")  -- save file

--Split Buffer-------
vim.keymap.set('n', '<leader>p', vim.cmd.vsplit)
vim.keymap.set('n', '<leader>l', vim.cmd.split)

--Function for defining keymaps
local define_keymap = function(mode, key, action)
	vim.keymap.set(mode, key, function()
		vim.cmd(action)
	end)
end

--buffer-----------
define_keymap("n", "<leader>b", "Telescope buffers") -- telescope find buffers

--git-------
define_keymap("n", "<leader>g", "LazyGit") -- installs new plugin

--hop-------------
define_keymap("n", "<leader>hw", "HopWord") -- Hop to a word
define_keymap("n", "<leader>hl", "HopLine") -- Hop to a line

--Neotree------------
define_keymap('n', '<leader>e', 'Neotree toggle')
define_keymap('n', '<leader>a', 'Neotree focus')


--Movecursor---------
define_keymap('n', '<C-h>', 'SmartCursorMoveLeft')
define_keymap('n', '<C-l>', 'SmartCursorMoveRight')
define_keymap('n', '<C-k>', 'SmartCursorMoveUp')
define_keymap('n', '<C-j>', 'SmartCursorMoveDown')

--Telescope----------
define_keymap('n', '<leader>f', "Telescope find_files")
define_keymap('n', '<leader>s', "Telescope live_grep")

--Terminal-----------
define_keymap('n', '<leader>t', 'terminal')
vim.keymap.set("t", "<ESC><ESC>", "<C-\\><C-n>") -- normal mode from terminal mode

--todo-----------------
define_keymap("n", "<leader>ts", "TodoTelescope") -- Todo telescope

--Move between tabs------
define_keymap('n', '<leader>1', "BufferGoto 1")
define_keymap('n', '<leader>2', "BufferGoto 2")
define_keymap('n', '<leader>3', "BufferGoto 3")
define_keymap('n', '<leader>4', "BufferGoto 4")
define_keymap('n', '<leader>5', "BufferGoto 5")
define_keymap('n', '<leader>6', "BufferGoto 6")
define_keymap('n', '<leader>7', "BufferGoto 7")
define_keymap('n', '<leader>8', "BufferGoto 8")

--mason -------------
define_keymap('n', '<leader>m', "Mason")
