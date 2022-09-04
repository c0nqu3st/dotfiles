local opt = vim.opt

opt.termguicolors = true
opt.encoding = 'utf-8' -- set default enconding to UTF-8
opt.syntax = 'on'
opt.completeopt = {'menu', 'menuone', 'noselect'} -- for cmp completion

opt.background = 'dark'
vim.cmd('colorscheme carbonfox')

opt.swapfile = false
opt.backup = false
opt.writebackup = false

opt.number = true -- show line numbers
opt.relativenumber = true
opt.numberwidth = 4

opt.scrolloff = 8 -- lines of context
opt.cursorline = true
--opt.cursorcolumn = true
opt.showmode = false
opt.wrap = true
opt.ruler = true
opt.list = true -- show some invisible characters

opt.tabstop = 4 -- tab size
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true -- use spaces instead of tabs

opt.smartindent = true -- automatically insert indents

opt.clipboard = 'unnamedplus'
opt.hlsearch = true -- highlight found searches
opt.incsearch = true -- ctrl+g, crtl+t down/up
opt.ignorecase = true -- ignore search case
opt.smartcase = true -- don't ignore case with capitals
