-- SHORTCUTS

-- Vim tables
local g = vim.g
local o = vim.o
local env = vim.env

-- Keymapping
local map = vim.api.nvim_set_keymap
local noresi = {noremap = true,  silent = true}


-- OPTIONS

-- Improved expirience B)
o.compatible = false

-- Line numbers
o.number = true
o.relativenumber = true
o.cursorline = true
o.cursorlineopt = "number"

-- Search
o.hlsearch = true -- highlight search petterns
o.incsearch = true -- automatically search while typing
o.ignorecase = true -- ignore case
o.smartcase = true -- only ignore lower case

-- Indenting
o.expandtab = true -- type space instead of tabulations
o.shiftround = true -- align indentations
o.autoindent = true -- indent automatically
o.smarttab = true -- tab works better in some places
o.tabstop = 4 -- tabulation size
o.shiftwidth = 4 -- indentation size

-- Whitespace visibility
o.listchars = "space:·,nbsp:_,tab:――→,extends:→,precedes:←" -- set whitespace characters
o.list = true -- show whitespace characters

-- Font
font_size = 0
function set_font_option()
    vim.o.guifont = "IosevkaTerm NF:h" .. font_size
end
function set_default_font_size()
    font_size = 14
    set_font_option()
end
function increase_font_size()
    font_size = font_size + 1
    if font_size > 36 then font_size = 36 end
    set_font_option()
end
function decrease_font_size()
    font_size = font_size - 1
    if font_size < 9 then font_size = 9 end
    set_font_option()
end

set_default_font_size()

-- Misc
o.showmode = false -- do not show the mode in the output line
o.mouse = "a" -- support mouse
o.wrap = true -- don't wrap long lines
o.encoding = "utf-8" -- save files in utf-8 by default
o.scrolloff = 7 -- scroll extra 7 lines
o.sidescrolloff = 19 -- scroll extra 19 columns
o.wildmenu = true -- use completion
o.swapfile = false -- don"t create swap files
o.history = 1000 -- longer cmd history
o.termguicolors = true -- use gui colors in terminal
o.guicursor = "n-c-sm:block-Cursor,v:block-vCursor,ci-ve:ver25-Cursor,i:ver25-iCursor,r-cr-o:hor20-Cursor"

vim.api.nvim_create_user_command("MyConfig", function() vim.cmd "e ~/.config/nvim" end, {})


-- KEYMAPS

g.mapleader = " "
o.timeout = true
o.timeoutlen = 2000

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
