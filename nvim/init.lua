-- SHORTCUTS

-- Vim tables
local _G = vim.g
local _O = vim.o
local env = vim.env


-- OPTIONS

-- Improved expirience B)
_O.compatible = false

-- Line numbers
_O.number = true
_O.relativenumber = true
_O.cursorline = true
_O.cursorlineopt = "number"

-- Whitespace visibility
_O.listchars = "space:·,nbsp:_,tab:——→,extends:→,precedes:←" -- set whitespace characters
_O.list = true -- show whitespace characters

-- Appearance
_O.termguicolors = true -- use gui colors in terminal
_O.guicursor = "n-c-sm:block,i-ci-ve:ver25,v-r-cr-o:hor20" -- cursor shapes

-- Search
_O.hlsearch = true -- highlight search petterns
_O.incsearch = true -- automatically search while typing
_O.ignorecase = true -- ignore case
_O.smartcase = true -- only ignore lower case

-- Indentation
-- _O.expandtab = true -- type space instead of tabulations
_O.shiftround = true -- align indentations
_O.autoindent = true -- indent automatically
_O.smarttab = true -- tab works better in some places
_O.tabstop = 4 -- tabulation size
_O.shiftwidth = 4 -- indentation size

-- Langmap
_O.langmap = "ЁФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯБЮЖЭХЪ;"..
             "~ABCDEFGHIJKLMNOPQRSTUVWXYZ\\<\\>\\:\\\"\\{\\},"..
             "ёфисвуапршолдьтщзйкыегмцчнябюжэхъ;"..
             "`abcdefghijklmnopqrstuvwxyz\\,\\.\\;\\\'\\[\\]"
             -- make russian layout work in some cases

-- Misc
_O.linebreak = true -- break lines by words
_O.mouse = "a" -- enable mouse
_O.encoding = "utf-8" -- save files in utf-8 by default
_O.fileformat = "unix" -- use the normal one by default
_O.scrolloff = 7 -- scroll extra 7 lines around the cursor
_O.sidescrolloff = 15 -- scroll extra 15 columns around the cursor
_O.wildmode = "longest,list,full" -- use completion
_O.wildmenu = true -- use completion
_O.swapfile = false -- don't create swap files, they're weird
_O.history = 1000 -- longer cmd history

vim.api.nvim_create_user_command("MyConfig",
	function() vim.cmd "e ~/.config/nvim" end, {})

vim.cmd [[au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif]]


-- KEYMAPS

local map = vim.api.nvim_set_keymap
local noresi = {noremap = true,  silent = true}

_G.mapleader = " "
_O.timeout = true
_O.timeoutlen = 2000

map("", "<leader><leader>", "<Nop>", noresi)

map("n", "<Esc>", ":nohl<CR>", noresi)

map("n", "<leader>`w", ":set wrap!<CR>:set wrap?<CR>", noresi)
map("n", "<leader>`l", ":set list!<CR>:set list?<CR>", noresi)
map("n", "<leader>`e", ":set expandtab!<CR>:set expandtab?<CR>", noresi)

map("n", "<leader>w", "<C-w>", noresi)
map("n", "<leader>j", 'mz"yyy"yP`z', noresi)

map("n", "<C-y>", '"+y', noresi)
map("n", "<C-y><C-y>", '"+yy', noresi)
map("v", "<C-y>", '"+y', noresi)
map("", "<C-p>", '"+p', noresi)

map("v", "<leader>/", '"zy/<C-r>z<Enter>', noresi);
map("v", "<leader>?", '"zy?<C-r>z<Enter>', noresi);

map("i", "<S-Tab>", "<C-v><Tab>", noresi)
map("i", "<C-Space>", "\xA0", noresi)

-- PLUGINS

require("plugins_setup")
