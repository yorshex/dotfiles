local palette = require("onedark.palette")

require("onedark").setup {
  style = "warmer",

  colors = {
    fg = palette.warm.fg,
  },

  highlights = {
    Whitespace = {fg="$bg1"},
    Search = {bg="$bg3", fg="none"},
    MatchParen = {bg = "$bg3"},

    Cursor = {bg="$yellow", fg="$bg_d", fmt="none"},
    iCursor = {bg="$fg", fg="$bg_d", fmt="none"},
    vCursor = {bg="$light_grey", fg="$bg_d", fmt="none"},
    CursorLineNr = {fg="$yellow"},

    -- syntax hl
    ["@parameter"] = {fg="none", fmt="italic"},
    ["@preproc"] = {fg="$red"},
    Define = {fg="$red"}, -- why isn't it @preproc?
    ["@include"] = {fg="$red"}, -- why isn"t it @preproc either?!
    ["@type"] = {fg="$yellow"},
    ["@type.builtin"] = {fg="$yellow"},
    ["@property"] = {fg="none"},
    ["@field"] = {fg="none"},
    ["@function"] = {fg="$blue"},
    ["@function.macro"] = {fg="none"},
    ["@operator"] = {fg="$light_grey"},
    ["@string.escape"] = {fg="none", bg="$bg_d"},
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
