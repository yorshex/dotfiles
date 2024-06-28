local config = function()
	require("onedark").setup {
		style = "dark",

		highlights = {
			Whitespace = {fg="$bg1"},

			Visual = {fg="$fg"},
			CursorLineNr = {fg="$yellow"},

			-- syntax hl
			-- ["@parameter"] = {fg="none", fmt="italic"},
			-- ["@preproc"] = {fg="$red"},
			-- ["@define"] = {fg="$red"}, -- why isn't it @preproc?
			-- ["@include"] = {fg="$red"}, -- why isn't it @preproc either?!
			["@type"] = {fg="$yellow"},
			["@type.builtin"] = {fg="$yellow"},
			-- ["@property"] = {fg="none"},
			["@field"] = {fg="none"},
			["@function"] = {fg="$blue"},
			["@function.builtin"] = {fg="none"},
			["@function.macro"] = {fg="none"},
			["@operator"] = {fg="$light_grey"},
			-- ["@string.escape"] = {fg="$orange"},

			-- get off, lsp
			-- ["@lsp.type.comment"] = {fg="none",bg="none",format="none"},
			["@lsp.type.enum"] = {fg="none",bg="none",format="none"},
			["@lsp.type.enumMember"] = {fg="none",bg="none",format="none"},
			["@lsp.type.interface"] = {fg="none",bg="none",format="none"},
			["@lsp.type.typeParameter"] = {fg="none",bg="none",format="none"},
			["@lsp.type.keyword"] = {fg="none",bg="none",format="none"},
			["@lsp.type.namespace"] = {fg="none",bg="none",format="none"},
			["@lsp.type.parameter"] = {fg="none",bg="none",format="none"},
			["@lsp.type.property"] = {fg="none",bg="none",format="none"},
			["@lsp.type.variable"] = {fg="none",bg="none",format="none"},
			["@lsp.type.macro"] = {fg="none",bg="none",format="none"},
			["@lsp.type.method"] = {fg="none",bg="none",format="none"},
			["@lsp.type.number"] = {fg="none",bg="none",format="none"},
			["@lsp.type.generic"] = {fg="none",bg="none",format="none"},
			["@lsp.type.builtinType"] = {fg="none",bg="none",format="none"},
			["@lsp.typemod.method.defaultLibrary"] = {fg="none",bg="none",format="none"},
			["@lsp.typemod.function.defaultLibrary"] = {fg="none",bg="none",format="none"},
			["@lsp.typemod.operator.injected"] = {fg="none",bg="none",format="none"},
			["@lsp.typemod.string.injected"] = {fg="none",bg="none",format="none"},
			["@lsp.typemod.variable.defaultLibrary"] = {fg="none",bg="none",format="none"},
			["@lsp.typemod.variable.injected"] = {fg="none",bg="none",format="none"},
			["@lsp.typemod.variable.static"] = {fg="none",bg="none",format="none"},
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
end

return {
	"navarasu/onedark.nvim",
	-- highly customizable color theme
	config = config
}
