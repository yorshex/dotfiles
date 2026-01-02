-- SHORTCUTS

-- Vim tables
local opt = vim.o
local env = vim.env


-- OPTIONS

opt.compatible = false

-- Line numbers
opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.cursorlineopt = "number"

-- Whitespace visibility
opt.listchars = "space:·,nbsp:_,tab:——→,extends:→,precedes:←" -- set whitespace characters
opt.list = true -- show whitespace characters

-- Appearance
opt.termguicolors = true -- use gui colors in terminal
opt.guicursor = "n-c-sm:block,i-ci-ve:ver25,v-r-cr-o:hor20" -- cursor shapes

-- Search
opt.hlsearch = true -- highlight search petterns
opt.incsearch = true -- automatically search while typing
opt.ignorecase = true -- ignore case
opt.smartcase = true -- only ignore if uppercase character aren't present

-- Indentation
-- opt.expandtab = true -- type space instead of tabulations
opt.shiftround = true -- align indentations
opt.autoindent = true -- indent automatically
opt.smarttab = true -- tab works better in some places
opt.tabstop = 8 -- tabulation size
opt.shiftwidth = 8 -- indentation size

-- Langmap
opt.langmap = "ЁФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯБЮЖЭХЪ;"..
             "~ABCDEFGHIJKLMNOPQRSTUVWXYZ\\<\\>\\:\\\"\\{\\},"..
             "ёфисвуапршолдьтщзйкыегмцчнябюжэхъ;"..
             "`abcdefghijklmnopqrstuvwxyz\\,\\.\\;\\\'\\[\\]"
             -- make russian layout work in some cases

-- Misc
opt.linebreak = true -- break lines by words
opt.mouse = "a" -- enable mouse
opt.encoding = "utf-8" -- save files in utf-8 by default
opt.fileformat = "unix" -- use the normal one by default
opt.scrolloff = 7 -- scroll extra 7 lines around the cursor
opt.sidescrolloff = 15 -- scroll extra 15 columns around the cursor
opt.wildmode = "longest,list,full" -- use completion
opt.wildmenu = true -- use completion
opt.swapfile = false -- don't create swap files, they're weird
opt.history = 1000 -- longer cmd history

vim.api.nvim_create_user_command("MyConfig",
	function() vim.cmd "e ~/.config/nvim" end, {})

vim.cmd [[au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif]]

vim.cmd [[au BufRead,BufNewFile *.tal set filetype=uxntal]]


-- KEYMAPS

local map = vim.api.nvim_set_keymap
local noresi = {noremap = true,  silent = true}

vim.g.mapleader = " "
opt.timeout = true
opt.timeoutlen = 2000

map("", "<leader><leader>", "<Nop>", noresi)

map("n", "<Esc>", ":nohl<CR>", noresi)

map("n", "<leader>`w", ":set wrap!<CR>:set wrap?<CR>", noresi)
map("n", "<leader>`l", ":set list!<CR>:set list?<CR>", noresi)
map("n", "<leader>`e", ":set expandtab!<CR>:set expandtab?<CR>", noresi)

map("n", "<C-j>", 'mz"yyy"yP`z', noresi)

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
