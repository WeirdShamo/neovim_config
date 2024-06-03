--  Plugins
--  Lazy bootstrap (install)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Import Lazy
require("lazy").setup({
    "vim-airline/vim-airline",
    "vim-airline/vim-airline-themes",
    {"neoclide/coc.nvim", branch="release"},
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
    "m4xshen/autoclose.nvim",
    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
    { "ellisonleao/gruvbox.nvim", priority = 1000 , config = true, opts = ...}
 })

-- Set leader key
vim.cmd("let mapleader = \" \"")


-- enable color themes
vim.cmd("set t_Co=256")
-- Vim colorscheme
vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])
-- enable true colors support
-- vim.cmd("set termguicolors")
vim.cmd("hi Normal guibg=NONE ctermbg=NONE")


-- Plugin settings 
-- vim airline
--vim.cmd("let g:airline_theme='simple'")
-- Buffers
vim.cmd("map <leader>n :bnext<cr>")
vim.cmd("map <leader>p :bprevious<cr>")
vim.cmd("map <leader>d :bdelete<cr>")
-- Telescope
vim.cmd("nnoremap <leader>ff <cmd>Telescope find_files<cr>")
vim.cmd("nnoremap <leader>fg <cmd>Telescope live_grep<cr>")
vim.cmd("nnoremap <leader>fb <cmd>Telescope buffers<cr>")
vim.cmd("nnoremap <leader>fh <cmd>Telescope help_tags<cr>")
-- CONFIG BASE
-- enable mouse support
vim.cmd("set mouse=a")

-- set cursor as block
vim.cmd("set guicursor=n-v-c:block-Cursor")

-- enable syntax
vim.cmd("syntax on")

-- enable line numbers
vim.cmd("set number")
vim.cmd("set relativenumber")

-- highlight current line
vim.cmd("set cursorline") 
vim.cmd(":highlight Cursorline cterm=bold ctermbg=black")

-- enable highlight search pattern
vim.cmd("set hlsearch")

-- enable smartcase search sensitivity
vim.cmd("set ignorecase")
vim.cmd("set smartcase")

-- Indentation using spaces 
-- tabstop:	width of tab character
-- softtabstop:	fine tunes the amount of whitespace to be added
-- shiftwidth:	determines the amount of whitespace to add in normal mode
-- expandtab:	when on use space instead of tab
-- textwidth:	text wrap width
-- autoindent:	autoindent in new line
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set textwidth=79")
vim.cmd("set expandtab")
vim.cmd("set autoindent")

-- show the matching part of pairs [] {} and () "
vim.cmd("set showmatch")

-- remove trailing whitespace from Python and Fortran files "
vim.cmd("autocmd BufWritePre *.odin :%s/\\s\\+$//e")
vim.cmd("autocmd BufWritePre *.py :%s/\\s\\+$//e")
vim.cmd("autocmd BufWritePre *.f90 :%s/\\s\\+$//e")
vim.cmd("autocmd BufWritePre *.f95 :%s/\\s\\+$//e")
vim.cmd("autocmd BufWritePre *.for :%s/\\s\\+$//e")


