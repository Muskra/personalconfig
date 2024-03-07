return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use { 
        'olivercederborg/poimandres.nvim',
        config = function()
        require('poimandres').setup {
            bold_vert_split = false, -- use bold vertical separators
            dim_nc_background = false, -- dim 'non-current' window backgrounds
            disable_background = false, -- disable background
            disable_float_background = false, -- disable background for floats
            disable_italics = false, -- disable italics
        }
        end
    }
    use {
        'nvim-treesitter/nvim-treesitter',
        --[[ Usr this at the first installation
        run = function()
            local ts_update = require('nvim-treesitter.install').update({with_sync = true})
            ts_update()
        end,]]
        -- instead you can use this
        run = ':TSUpdate'
    }
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
        }
    }
    use {'ziglang/zig.vim'}
end)
