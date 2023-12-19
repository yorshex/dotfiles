local palette = require("onedark.palette")

require("onedark").setup {
  style = "warmer",

  highlights = {
    Whitespace = {fg="$bg1"},

    Visual = {fg="$fg"},
    CursorLineNr = {fg="$yellow"},

    -- syntax hl
    ["@parameter"] = {fg="none", fmt="italic"},
    ["@preproc"] = {fg="$red"},
    Define = {fg="$red"}, -- why isn't it @preproc?
    ["@include"] = {fg="$red"}, -- why isn't it @preproc either?!
    ["@type"] = {fg="$yellow"},
    ["@type.builtin"] = {fg="$yellow"},
    ["@property"] = {fg="none"},
    ["@field"] = {fg="none"},
    ["@function"] = {fg="$blue"},
    ["@function.builtin"] = {fg="none"},
    ["@function.macro"] = {fg="none"},
    ["@operator"] = {fg="$light_grey"},
    ["@string.escape"] = {fg="$orange"},
  },

  code_style = {
    comments = "italic",
    keywords = "none",
    functions = "none",
    strings = "none",
    variables = "none",
  },
}

require("onedark").load()
