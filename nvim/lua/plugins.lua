local function get_setup(name)
    return string.format('require("setup/%s")', name)
end

return require('packer').startup(function(use)
    use { 'wbthomason/packer.nvim' }
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use { 'neovim/nvim-lspconfig', config = get_setup("lspconfig") }

    -- completion
    use { 'hrsh7th/cmp-nvim-lsp' }
    use { 'hrsh7th/cmp-buffer' }
    use { 'hrsh7th/cmp-path' }
    use { 'saadparwaiz1/cmp_luasnip' }
    use { 'hrsh7th/nvim-cmp', config = get_setup("cmp") }

    -- snippets
    use { 'L3MON4D3/luasnip', config = get_setup("luasnip") }
    use { 'rafamadriz/friendly-snippets' }

    -- theme
    use { 'ellisonleao/gruvbox.nvim', config = get_setup("gruvbox") }

    -- underline text
    use { 'yamatsum/nvim-cursorline', config = get_setup("cursorline") }

    -- colours (for hex)
    use { 'norcalli/nvim-colorizer.lua', config = get_setup("colorizer") }

    -- start page
    use {
        'goolord/alpha-nvim',
        requires = { 'kyazdani42/nvim-web-devicons' },
        config = get_setup("alpha")
    }

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true },
        config = get_setup("lualine")
    }

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
end)
