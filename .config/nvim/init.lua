-- neovim config in lua
-- imports start

require("pluginsSetup")

require("core.options")
require("core.keymaps")
require("core.colorscheme")

-- imports end

-- plugins start
require("plugins.comment")
require("plugins.nvimTree")
require("plugins.lualine")
require("plugins.telescope")
require("plugins.nvimCmp")
require("plugins.autopairs")
require("plugins.treesitter")
require("plugins.gitsigns")
require("plugins.todoComments")
require("plugins.hop")
require("plugins.transparent")
require("plugins.Fterm")
require("plugins.tabline")

-- lsp
require("plugins.lsp.mason")
require("plugins.lsp.lspsaga")
require("plugins.lsp.lspConfig")
require("plugins.lsp.nullLs")
-- plugins end
