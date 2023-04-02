-- neovim config in lua
-- imports start

require("plugins-setup")

require("core.options")
require("core.keymaps")
require("core.colorscheme")

-- imports end

-- plugins start
require("plugins.comment")
require("plugins.nvim-tree")
require("plugins.lualine")
require("plugins.telescope")
require("plugins.nvim-cmp")
require("plugins.autopairs")
require("plugins.treesitter")
require("plugins.gitsigns")
require("plugins.todo-comments")
require("plugins.hop")
require("plugins.transparent")

-- lsp
require("plugins.lsp.mason")
require("plugins.lsp.lspsaga")
require("plugins.lsp.lsp-config")
require("plugins.lsp.null-ls")
-- plugins end
