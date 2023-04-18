
vim.cmd("packadd packer.nvim")

local packer = require 'packer'

return packer.startup(function(use)
    use 'wbthomason/packer.nvim'

    -- UI utilities
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'

    -- nvim-notify
    use {
        'rcarriga/nvim-notify',
        config = function()
            require "plugins/notify"
            vim.notify = require "notify"
        end
    }

    -- W3m browser
    use 'yuratomo/w3m.vim'

    -- Devicons
    use 'kyazdani42/nvim-web-devicons'

    -- WebAPI
    use 'mattn/webapi-vim'

    -- Theme utils
    use 'rktjmp/lush.nvim'

    -- Themes
    use 'morhetz/gruvbox'
    use 'sainnhe/gruvbox-material'
    use 'ayu-theme/ayu-vim'
    use {'dracula/vim', as = 'dracula'}
    use 'tomasiser/vim-code-dark'
    use 'shaunsingh/moonlight.nvim'
    use 'rebelot/kanagawa.nvim'
    use 'kdheepak/monochrome.nvim'
    use 'kvrohit/mellow.nvim'
    use 'mcchrish/zenbones.nvim'

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

    -- lspkind
    use 'onsails/lspkind.nvim'

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

    -- Neodim
    --use {
        --'zbirenbaum/neodim',
        --config = function()
            --require 'plugins/neodim'
        --end
    --}

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

    -- lsp_lines
    use {
        'https://git.sr.ht/~whynothugo/lsp_lines.nvim',
        config = function()
            require "plugins/lsp_lines"
        end
    }

    -- Nvim navic (Context info in winbar)
    use {
        'SmiteshP/nvim-navic',
        config = function()
            require "plugins/navic"
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

    use 'nvim-treesitter/playground'

    -- Persisted Session Manager
    use {
        'olimorris/persisted.nvim',
        config = function()
            require "plugins/persisted"
        end
    }

    -- Scratch runner
    use {
        'm-demare/attempt.nvim',
        requires = 'nvim-lua/plenary.nvim',
        config = function()
            require 'plugins/attempt'
        end
    }

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim',
        config = function()
            local telescope = require "telescope"
            telescope.load_extension("persisted")
            telescope.load_extension("attempt")
            telescope.load_extension("notify")
        end
    }

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
            require "dbg/rust"
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

    -- DAPInstall
    use 'xbc5/DAPInstall.nvim'

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
    --use {
        --'dstein64/nvim-scrollview',
        --config = function()
            --require "plugins/scrollview"
        --end
    --}

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
        'Pocco81/auto-save.nvim',
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

    -- Glow.nvim (Markdown preview)
    use 'ellisonleao/glow.nvim'

    -- Better escape
    use {
        'max397574/better-escape.nvim',
        config = function()
            require("better_escape").setup {
                mapping = {"jk", "kj"},
            }
        end
    }

    -- Fidget.nvim
    use {
        'j-hui/fidget.nvim',
        config = function()
            require 'plugins/fidget'
        end
    }

    -- Overseer (Task Runner)
    use {
        'stevearc/overseer.nvim',
        config = function()
            require 'plugins/overseer'
        end
    }

    -- Dressing (better ui)
    use {
        'stevearc/dressing.nvim',
        config = function()
            require 'plugins/dressing'
        end
    }

    -- Lightbulb (indicate code actions)
    use {
        'kosayoda/nvim-lightbulb',
        config = function()
            require 'plugins/lightbulb'
        end
    }
end)
