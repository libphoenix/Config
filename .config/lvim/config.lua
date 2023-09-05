--[[
 THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT
 `lvim` is the global options object
]]
-- vim options
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.relativenumber = false


-- general
lvim.log.level = "info"
lvim.format_on_save = {
  enabled = true,
  pattern = "*.lua",
  timeout = 1000,
}
-- to disable icons and use a minimalist setup, uncomment the following
lvim.use_icons = true

-- keymappings <https://www.lunarvim.org/docs/configuration/keybindings>
lvim.leader = "space"
-- add your own keymapping
--
lvim.keys.normal_mode["ss"] = "<cmd>HopAnywhere<cr>"
lvim.keys.normal_mode["sl"] = "<cmd>HopAnywhereCurrentLine<cr>"

lvim.keys.normal_mode["<C-h>"] = "<cmd>TablineBufferPrevious<cr>"
lvim.keys.normal_mode["<C-l>"] = "<cmd>TablineBufferNext<cr>"

-- clear highlight

lvim.builtin.which_key.mappings["c"] = { "<cmd>noh<cr>", "clear highlight" }
-- buffers
lvim.builtin.which_key.mappings["b"] = {
  name = "buffers",
  b = { "<cmd>Telescope buffers previewer=false<cr>", "Find buffers" },
  c = { "<cmd>bd<cr>", "close current buffer" },
}

-- hop
lvim.builtin.which_key.mappings["j"] = {
  name = "jump",
  a = { "<cmd>HopAnywhere<cr>", "Jump anywhere" },
  l = { "<cmd>HopAnywhereCurrentLine<cr>", "Jump in line" },
}

-- git
lvim.builtin.which_key.mappings["g"] = {
  name = "git",
  s = { "<cmd>LazyGit<cr>", "Git status" },
}

-- -- Use which-key to add extra bindings with the leader-key prefix
-- lvim.builtin.which_key.mappings["W"] = { "<cmd>noautocmd w<cr>", "Save without formatting" }
-- lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }

-- remove keybindings
lvim.builtin.which_key.mappings["f"] = {
  name = "files",
  f = {
    function()
      require("lvim.core.telescope.custom-finders").find_project_files { previewer = false }
    end,
    "Find File",
  },
  s = { "<cmd>w<cr>", "save file" },
  S = { "<cmd>wa<cr>", "save all files" }
}


lvim.builtin.which_key.mappings["w"] = {
  name = "window",
  y = { "<cmd>vsplit<cr>", "split vertically" },
  x = { "<cmd>split<cr>", "horizontal vertically" },
  c = { "<cmd>close<cr>", "close split" },
  h = { "<C-w><C-h>", "Move to left window" },
  j = { "<C-w><C-j>", "Move to down window" },
  k = { "<C-w><C-k>", "Move to up window" },
  l = { "<C-w><C-l>", "Move to right window" },
  m = { "<cmd>only<cr>", "maximize current window" },
}

-- -- Change theme settings
lvim.colorscheme = "lunar"

lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false
lvim.builtin.bufferline.active = false
lvim.builtin.lualine.options = {
  component_separators = { left = '', right = '' },
  section_separators = { left = '', right = '' },
}

-- Automatically install missing parsers when entering buffer
lvim.builtin.treesitter.auto_install = true

lvim.builtin.treesitter.ignore_install = {}

-- -- always installed on startup, useful for parsers without a strict filetype
-- lvim.builtin.treesitter.ensure_installed = { "comment", "markdown_inline", "regex" }

-- -- generic LSP settings <https://www.lunarvim.org/docs/languages#lsp-support>

-- --- disable automatic installation of servers
-- lvim.lsp.installer.setup.automatic_installation = false

-- ---configure a server manually. IMPORTANT: Requires `:LvimCacheReset` to take effect
-- ---see the full default list `:lua =lvim.lsp.automatic_configuration.skipped_servers`
-- vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "pyright" })
-- local opts = {} -- check the lspconfig documentation for a list of all possible options
-- require("lvim.lsp.manager").setup("pyright", opts)

-- ---remove a server from the skipped list, e.g. eslint, or emmet_ls. IMPORTANT: Requires `:LvimCacheReset` to take effect
-- ---`:LvimInfo` lists which server(s) are skipped for the current filetype
-- lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
--   return server ~= "emmet_ls"
-- end, lvim.lsp.automatic_configuration.skipped_servers)

-- -- you can set a custom on_attach function that will be used for all the language servers
-- -- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end

-- -- linters and formatters <https://www.lunarvim.org/docs/languages#lintingformatting>
-- local formatters = require "lvim.lsp.null-ls.formatters"
-- formatters.setup {
--   { command = "stylua" },
--   {
--     command = "prettier",
--     extra_args = { "--print-width", "100" },
--     filetypes = { "typescript", "typescriptreact" },
--   },
-- }
-- local linters = require "lvim.lsp.null-ls.linters"
-- linters.setup {
--   { command = "flake8", filetypes = { "python" } },
--   {
--     command = "shellcheck",
--     args = { "--severity", "warning" },
--   },
-- }

-- -- Additional Plugins <https://www.lunarvim.org/docs/plugins#user-plugins>
lvim.plugins = {
  {
    'kdheepak/tabline.nvim',
    config = function()
      require 'tabline'.setup {
        -- Defaults configuration options
        enable = true,
        options = {
          -- If lualine is installed tabline will use separators configured in lualine by default.
          -- These options can be used to override those settings.
          section_separators = { '', '' },
          component_separators = { '', '' },
          max_bufferline_percent = 66, -- set to nil by default, and it uses vim.o.columns * 2/3
          show_tabs_always = false,    -- this shows tabs only when there are more than one tab or if the first tab is named
          show_devicons = true,        -- this shows devicons in buffer section
          show_bufnr = false,          -- this appends [bufnr] to buffer section,
          show_filename_only = false,  -- shows base filename only instead of relative path in filename
          modified_icon = "+ ",        -- change the default modified icon
          modified_italic = false,     -- set to true by default; this determines whether the filename turns italic if modified
          show_tabs_only = false,      -- this shows only tabs instead of tabs + buffers
        }
      }
      vim.cmd [[
      set guioptions-=e " Use showtabline in gui vim
      set sessionoptions+=tabpages,globals " store tabpages and globals in session
    ]]
    end,
  },
  {
    'jdhao/better-escape.vim',
  },
  {
    'phaazon/hop.nvim',
    config = function()
      require 'hop'.setup { keys = 'asdfjklqwertyuiopghzxcvbnm' }
    end
  },
  {
    'kdheepak/lazygit.nvim'
  },
  {
    'Mofiqul/dracula.nvim'
  }
}

-- -- Autocommands (`:help autocmd`) <https://neovim.io/doc/user/autocmd.html>
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "zsh",
--   callback = function()
--     -- let treesitter use bash highlight for zsh files as well
--     require("nvim-treesitter.highlight").attach(0, "bash")
--   end,
-- })
