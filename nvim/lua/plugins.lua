local use = require("packer").use

require("packer").startup(function()
  use {
    "wbthomason/packer.nvim"
    -- packer, go update youself!
  }


  -- Editing

  use {
    "mg979/vim-visual-multi",
    -- multicursor
    branch = "master"
  }

  use {
    "terrortylor/nvim-comment",
    -- -- toggle comments
    config = function() require("nvim_comment").setup() end
  }

  use {
    "kylechui/nvim-surround",
    -- "to" "work" (with) [surrounding] {stuff}
    config = function() require("nvim-surround").setup() end
  }


  -- Environment

  use {
    "nvim-neo-tree/neo-tree.nvim",
    -- file manager within nvim
    branch = "v3.x",
    requires = { 
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window
    },
    config = function() require("plugin_configs/neo-tree") end
  }

  use {
    "toppair/peek.nvim",
    -- markdown preview
    run = "deno task --quiet build:fast",
    config = function() require("plugin_configs/peek") end
  }


  -- Appearance

  use {
    "navarasu/onedark.nvim",
    -- color scheme
    config = function() require("plugin_configs/onedark") end
  }

  use {
    "nvim-lualine/lualine.nvim",
    -- customizable status line
    requires = {"kyazdani42/nvim-web-devicons", opt = true},
    config = function() require("plugin_configs/lualine") end
  }

  use {
    "nvim-treesitter/nvim-treesitter",
    -- "advanced" syntax highlighting
    run = function() require("nvim-treesitter.install").update { with_sync=true } end,
    config = function() require("plugin_configs/nvim-treesitter") end
  }

  use {
    "ap/vim-css-color"
    -- color hightlighting #00ff00
  }
end)
