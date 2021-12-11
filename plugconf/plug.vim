call plug#begin()
	Plug 'mattn/webapi-vim'
    Plug 'morhetz/gruvbox'
    Plug 'ayu-theme/ayu-vim'
    Plug 'dracula/vim', {'as':'dracula'}
    Plug 'tomasiser/vim-code-dark'
	Plug 'preservim/nerdcommenter'
	Plug 'vim-latex/vim-latex'
	" Plug 'justinmk/vim-sneak'
    Plug 'airblade/vim-rooter'
    Plug 'tpope/vim-dadbod'
    Plug 'kristijanhusak/vim-dadbod-ui'
    Plug 'lambdalisue/nerdfont.vim'
    Plug 'vimwiki/vimwiki'
    Plug 'heavenshell/vim-pydocstring', { 'do': 'make install', 'for': 'python' }
    Plug 'neovim/nvim-lspconfig'
    Plug 'glepnir/lspsaga.nvim'
    " Plug 'nvim-lua/completion-nvim'
    " Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
    " Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts' }
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-vsnip'
    Plug 'hrsh7th/vim-vsnip'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'hoob3rt/lualine.nvim'
    Plug 'akinsho/bufferline.nvim'
    Plug 'akinsho/toggleterm.nvim'
    Plug 'kabouzeid/nvim-lspinstall'
    Plug 'kyazdani42/nvim-tree.lua'
    Plug 'folke/trouble.nvim'
    Plug 'rafamadriz/neon'
    Plug 'mfussenegger/nvim-dap'
    Plug 'rcarriga/nvim-dap-ui'
    Plug 'simrat39/symbols-outline.nvim'
    Plug 'stevearc/aerial.nvim'
    Plug 'glepnir/dashboard-nvim'
    Plug 'lukas-reineke/indent-blankline.nvim'
    Plug 'dstein64/nvim-scrollview'
    Plug 'folke/which-key.nvim'
    Plug 'andweeb/presence.nvim'
    Plug 'NTBBloodbath/rest.nvim'
    Plug 'nacro90/numb.nvim'
    Plug 'romgrk/nvim-treesitter-context'
    " Plug 'sunjon/shade.nvim'
    " Plug 'folke/twilight.nvim'
    Plug 'jbyuki/venn.nvim'
    Plug 'SmiteshP/nvim-gps'
    Plug 'xiyaowong/nvim-cursorword'
    Plug 'Pocco81/AutoSave.nvim'
    Plug 'xiyaowong/nvim-transparent'
    Plug 'sainnhe/gruvbox-material'
    Plug 'lukas-reineke/format.nvim'
    Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
    Plug 'ggandor/lightspeed.nvim'
    " Plug 'tanvirtin/vgit.nvim'
    Plug 'windwp/nvim-spectre'
    Plug 'gennaro-tedesco/nvim-jqx'
    Plug 'rmagatti/goto-preview'
    Plug 'p00f/nvim-ts-rainbow'
    Plug 'lewis6991/gitsigns.nvim'
call plug#end()
