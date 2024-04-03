-- SHORTCUTS

-- Vim tables
local _G = vim.g
local _O = vim.o
local env = vim.env

-- Keymapping
local map = vim.api.nvim_set_keymap
local noresi = {noremap = true,  silent = true}


-- OPTIONS

-- Improved expirience B)
_O.compatible = false

-- Line numbers
_O.number = true
_O.relativenumber = true
_O.cursorline = true
_O.cursorlineopt = "number"

-- Search
_O.hlsearch = true -- highlight search petterns
_O.incsearch = true -- automatically search while typing
_O.ignorecase = true -- ignore case
_O.smartcase = true -- only ignore lower case

-- Indenting
-- _O.expandtab = true -- type space instead of tabulations
_O.shiftround = true -- align indentations
_O.autoindent = true -- indent automatically
_O.smarttab = true -- tab works better in some places
_O.tabstop = 4 -- tabulation size
_O.shiftwidth = 4 -- indentation size

-- Whitespace visibility
_O.listchars = "space:·,nbsp:_,tab:——→,extends:→,precedes:←" -- set whitespace characters
_O.list = true -- show whitespace characters

-- Font
-- font_size = 0
-- function set_font_option()
-- 	vim._O.guifont = "IosevkaTerm NF:h" .. font_size
-- end
-- function set_default_font_size()
-- 	font_size = 14
-- 	set_font_option()
-- end
-- function increase_font_size()
-- 	font_size = font_size + 1
-- 	if font_size > 36 then font_size = 36 end
-- 	set_font_option()
-- end
-- function decrease_font_size()
-- 	font_size = font_size - 1
-- 	if font_size < 9 then font_size = 9 end
-- 	set_font_option()
-- end
--
-- set_default_font_size()

-- Misc
_O.showmode = false -- do not show the mode in the output line
_O.mouse = "a" -- support mouse
_O.wrap = true -- don't wrap long lines
_O.encoding = "utf-8" -- save files in utf-8 by default
_O.fileformat = "unix" -- use the normal one by default
_O.scrolloff = 7 -- scroll extra 7 lines
_O.sidescrolloff = 19 -- scroll extra 19 columns
_O.wildmenu = true -- use completion
_O.swapfile = false -- don"t create swap files
_O.history = 1000 -- longer cmd history
_O.termguicolors = true -- use gui colors in terminal
_O.guicursor = "n-c-sm:block,i-ci-ve:ver25,v-r-cr-o:hor20"

vim.api.nvim_create_user_command("MyConfig", function() vim.cmd "e ~/.config/nvim" end, {})


-- KEYMAPS

_G.mapleader = " "
_O.timeout = true
_O.timeoutlen = 2000

map("", "<leader><leader>", "<Nop>", noresi)

map("n", "<Esc>", ":nohl<CR>", noresi)

map("n", "<leader>`w", ":set wrap!<CR>:set wrap?<CR>", noresi)
map("n", "<leader>`l", ":set list!<CR>:set list?<CR>", noresi)
map("n", "<leader>`e", ":set expandtab!<CR>:set expandtab?<CR>", noresi)

map("n", "<leader>w", "<C-w>", noresi)

map("", "<C-y>", '"+y', noresi)
map("", "<C-p>", '"+p', noresi)
map("", "<C-S-p>", '"+P', noresi)

map("i", "<M-h>", "<Left>", noresi)
map("i", "<M-j>", "<Down>", noresi)
map("i", "<M-k>", "<Up>", noresi)
map("i", "<M-l>", "<Right>", noresi)

map("i", "<S-Tab>", "<C-v><Tab>", noresi)
map("i", "<C-Space>", "\xA0", noresi)

map("n", "<Enter>", "o<Esc>", noresi)
map("n", "<S-Enter>", "O<Esc>", noresi)

-- map("n", "<C-0>", ":lua set_default_font_size()<cr>", noresi)
-- map("n", "<C-->", ":lua decrease_font_size()<cr>", noresi)
-- map("n", "<C-=>", ":lua increase_font_size()<cr>", noresi)


require("plugins")
