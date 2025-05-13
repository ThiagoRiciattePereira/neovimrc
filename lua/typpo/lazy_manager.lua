local lazy = require('lazy')

local plugins = {

    {
        'windwp/nvim-autopairs'
    },

    { 
        "ellisonleao/gruvbox.nvim", priority = 1000 , config = true, opts = ...
    },

    {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        -- or                              , branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },

    {
        'nvim-treesitter/nvim-treesitter',    
        build = ':TSUpdate',
    },

    {
        'neovim/nvim-lspconfig',
        dependencies = {
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-cmdline',
            'hrsh7th/nvim-cmp',
        },
    },

    {
        'L3MON4D3/LuaSnip',
        dependencies = {
            'rafamadriz/friendly-snippets',
            'saadparwaiz1/cmp_luasnip'
        },
    },

    {
        'mason-org/mason.nvim',
        dependencies = {
            'mason-org/mason-lspconfig.nvim'
        }
    },

    {
        'folke/neodev.nvim'
    },

    {
        'j-hui/fidget.nvim'
    },

    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },

    {
        'goolord/alpha-nvim',
        dependencies = {
            'nvim-tree/nvim-web-devicons'
        }
    },

    {
        'ThePrimeagen/harpoon'
    },

    {
        'tpope/vim-fugitive'
    },

    {
        'mbbill/undotree'
    },

    {
        'akinsho/toggleterm.nvim', version = "*", config = true
    },

    {
        'stevearc/oil.nvim',
        ---@module 'oil'
        ---@type oil.SetupOpts
        opts = {},
        dependencies = {
            "echasnovski/mini.icons",  
        },
        lazy = false,
    },

}

lazy.setup(plugins)
