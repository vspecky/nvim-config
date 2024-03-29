
vim.cmd("packadd packer.nvim")

local packer = require 'packer'

return packer.startup(function(use)
    use 'wbthomason/packer.nvim'

    -- UI utilities
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'

    -- W3m browser
    use 'yuratomo/w3m.vim'

    -- Devicons
    use 'kyazdani42/nvim-web-devicons'

    -- WebAPI
    use 'mattn/webapi-vim'

    -- Original gruvbox theme
    use 'morhetz/gruvbox'

    -- Gruvbox material theme
    use 'sainnhe/gruvbox-material'

    -- Ayu theme
    use 'ayu-theme/ayu-vim'

    -- Dracula theme
    use {'dracula/vim', as = 'dracula'}

    -- Codedark theme
    use 'tomasiser/vim-code-dark'

    -- NERDCommenter for Commenting
    use 'preservim/nerdcommenter'

    -- Better latex support
	use 'vim-latex/vim-latex'

    -- Root directory = git directory
    use 'airblade/vim-rooter'

    -- Database Interface
    use 'tpope/vim-dadbod'

    -- Database Interface UI
    use 'kristijanhusak/vim-dadbod-ui'

    -- Use nerd fonts
    use 'lambdalisue/nerdfont.vim'

    -- Vimwiki
    use 'vimwiki/vimwiki'

    -- Transparent Neovim
    --use {
        --'xiyaowong/nvim-transparent',
        --config = function()
            --require "plugins/transparent"
        --end
    --}

    -- Pydocstring support
    use {
        'heavenshell/vim-pydocstring',
        run = "make install",
        ft = "python",
        config = function()
            vim.g.pydocstring_doq_path = vim.fn.exepath("doq")
            vim.g.pydocstring_formatter = "numpy"
        end
    }

    -- nvim-cmp sources
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/nvim-cmp'

    -- LSP Installer
    --use 'williamboman/nvim-lsp-installer'

    -- Mason.nvim
    use {
        'williamboman/mason.nvim',
        config = function()
            require "plugins/mason"
        end
    }

    -- Mason-lspconfig.nvim
    use {
        'williamboman/mason-lspconfig.nvim',
        config = function()
            require "plugins/mason_lspconfig"
        end
    }

    -- Highlight similar textobjects
    use 'RRethy/vim-illuminate'

    -- Aerial (LSP Objects listing)
    use {
        'stevearc/aerial.nvim',
        config = function()
            require "plugins/aerial"
        end
    }

    -- Formatter
    use {
        'mhartington/formatter.nvim',
        config = function()
            require "plugins/formatter"
        end
    }

    -- LSP signature help
    use {
        'ray-x/lsp_signature.nvim',
        config = function()
            require "plugins/lspsignature"
        end
    }

    -- Neovim LSP Configuration
    use {
        'neovim/nvim-lspconfig',
        requires = {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
            "stevearc/aerial.nvim",
            "RRethy/vim-illuminate"
        },
        config = function()
            require "plugins/lspconfig"
        end
    }

    -- LSP Colors
    use {
        'folke/lsp-colors.nvim',
        config = function()
            require "plugins/lspcolors"
        end
    }

    use {
        'nvim-treesitter/nvim-treesitter',
        config = function()
            require "plugins/treesitter"
        end
    }

    -- Telescope
    use 'nvim-telescope/telescope.nvim'

    -- Nvim GPS
    use 'SmiteshP/nvim-gps'

    -- WinBar
    --use {
        --'fgheng/winbar.nvim',
        --requires = {'SmiteshP/nvim-gps'},
        --config = function()
            --require "plugins/winbar"
        --end
    --}

    -- Lualine
    use {
        'hoob3rt/lualine.nvim',
        requires = {'SmiteshP/nvim-gps'},
        config = function()
            require "plugins/lualine"
        end
    }

    -- Bufferline
    use {
        'akinsho/bufferline.nvim',
        config = function()
            require "plugins/bufferline"
        end
    }

    -- Toggleterm
    use {
        'akinsho/toggleterm.nvim',
        config = function()
            require "plugins/toggleterm"
        end
    }

    -- Nvim Tree
    use {
        'kyazdani42/nvim-tree.lua',
        config = function()
            require('nvim-tree').setup{
                git = {
                    ignore = false
                }
            }
        end
    }

    -- Trouble (Diagnostic window)
    use {
        'folke/trouble.nvim',
        config = function()
            require "plugins/trouble"
        end
    }

    -- DAP (Debugger)
    use {
        'mfussenegger/nvim-dap',
        config = function()
            require "plugins/dap"
        end
    }

    -- DAP UI (Debugger UI)
    use {
        'rcarriga/nvim-dap-ui',
        requires = {
            "mfussenegger/nvim-dap"
        },
        config = function()
            require "plugins/dap-ui"
        end
    }

    -- LSP Symbols outline
    use {
        'simrat39/symbols-outline.nvim',
        setup = function()
            vim.g.symbols_outline = {
                highlight_hovered_item = false,
                relative_width = true,
                width = 25,
                show_numbers = true
            }
        end
    }

    -- Neovim Dashboard
    --use 'glepnir/dashboard-nvim'

    -- Indentation hints
    use {
        'lukas-reineke/indent-blankline.nvim',
        config = function()
            require "plugins/indent-blankline"
        end
    }

    -- Scrollbar
    use {
        'dstein64/nvim-scrollview',
        config = function()
            require "plugins/scrollview"
        end
    }

    -- Emacs Which-key
    use {
        'folke/which-key.nvim',
        config = function()
            require "plugins/which-key"
        end
    }

    -- Discord Presence
    -- use {
        -- 'andweeb/presence.nvim',
        -- config = function()
            -- require "plugins/presence"
        -- end
    -- }

    -- Rest Client
    use {
        'NTBBloodbath/rest.nvim',
        config = function()
            require "plugins/rest"
        end
    }

    -- Peek lines unobtrusively
    use {
        'nacro90/numb.nvim',
        config = function()
            require "plugins/numb"
        end
    }

    -- Scope context display
    --use {
        --'romgrk/nvim-treesitter-context',
        --config = function()
            --require "plugins/treesitter-context"
        --end
    --}

    -- Venn diagram tools
    use {
        'jbyuki/venn.nvim',
        config = function()
            require "plugins/venn"
        end
    }

    -- Autosave files
    use {
        'Pocco81/AutoSave.nvim',
        config = function()
            require "plugins/autosave"
        end
    }

    -- Autoformat files
    use {
        'lukas-reineke/lsp-format.nvim',
        config = function()
            require "plugins/format"
        end
    }

    -- Lightspeed navigation
    use {
        'ggandor/lightspeed.nvim',
        config = function()
            require "plugins/lightspeed"
        end
    }

    -- Spectre (Find and Replace)
    use {
        'windwp/nvim-spectre',
        config = function()
            require "plugins/spectre"
        end
    }

    -- Better JSON exploration
    use 'gennaro-tedesco/nvim-jqx'

    -- Preview definitions in floating window
    use {
        'rmagatti/goto-preview',
        config = function()
            require "plugins/goto-preview"
        end
    }

    -- Rainbow parentheses
    use {
        'p00f/nvim-ts-rainbow',
        config = function()
            require "plugins/ts-rainbow"
        end
    }

    -- Simple git functions
    use {
        'lewis6991/gitsigns.nvim',
        config = function()
            require "plugins/gitsigns"
        end
    }

    -- UI for Git Diff
    use {
        'sindrets/diffview.nvim',
        config = function()
            require "plugins/diffview"
        end
    }

    -- Display marks in Sign Column
    use {
        'chentoast/marks.nvim',
        config = function()
            require "plugins/marks"
        end
    }

    use {
        'is0n/fm-nvim',
        config = function()
            require 'plugins/fm'
        end
    }

    -- Purescript
    use 'purescript-contrib/purescript-vim'

    -- Rust tools
    use {
        'simrat39/rust-tools.nvim',
        config = function()
            require 'plugins/rusttools'
        end
    }

    -- Haskell indentation
    use 'itchyny/vim-haskell-indent'
end)
