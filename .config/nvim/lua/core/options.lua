
local opt = vim.opt

-- font
vim.o.guifont = "Comic Mono:h10"

-- basic settings
-- line numbers
opt.relativenumber = false
opt.number = true

-- tabs & indentation 
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- line warpping 
opt.wrap = false 

-- search settings 
opt.ignorecase = true 
opt.smartcase = true

-- appearance 
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace 
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- split
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")
