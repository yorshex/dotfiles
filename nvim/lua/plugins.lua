-- bootstrap Lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
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

-- enumerate plugins for Lazy
require("lazy").setup
{
    -- Edit
    { "mg979/vim-visual-multi",
        -- multiple cursors
        event = "VeryLazy",
    },

    { "terrortylor/nvim-comment",
        -- -- comment toggle
        event = "VeryLazy",
        config = function() require("nvim_comment").setup() end
    },

    { "kylechui/nvim-surround",
        -- "to" 'work' (with) [surrounding] {stuff}
        event = "VeryLazy",
        version = "*",
        config = true
    },

    -- Environment
    { "nvim-neo-tree/neo-tree.nvim",
        -- a file manager within the editor
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "muniftanjim/nui.nvim",
        },
        config = function() require("plugin_configs/neo-tree") end
    },

    { "toppair/peek.nvim",
        -- markdown preview
        build = "deno task --quiet build:fast",
        lazy = true,
        ft = "markdown",
        config = function() require("plugin_configs/peek") end
    },

    {
        "kdheepak/lazygit.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        event = "VeryLazy",
        config = function() require("plugin_configs/lazygit") end
    },

    -- Appearance
    { "navarasu/onedark.nvim",
        -- highly customizable color theme
        config = function() require("plugin_configs/onedark") end
    },

    { "nvim-lualine/lualine.nvim",
        -- custom statusline at the bottom of every window
        dependencies = { "kyazdani42/nvim-web-devicons", optional = true },
        config = function() require("plugin_configs/lualine") end
    },

    { "nvim-treesitter/nvim-treesitter",
        -- advanced syntax highlighting
        event = "VeryLazy",
        build = function() require("nvim-treesitter.install").update { with_sync=true } end,
        config = function() require("plugin_configs/nvim-treesitter") end
    },
}
