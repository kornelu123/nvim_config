-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.1',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}
  use({'rafamadriz/neon'})
  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
  use('mhinz/vim-signify', {tag = 'legacy'})
  use('nvim-lua/plenary.nvim')
  use('ThePrimeagen/harpoon')
  use('Xuyuanp/yanil')
  use('neovim/nvim-lsp')
  use({
    'ray-x/navigator.lua',
    requires = {
        { 'ray-x/guihua.lua', run = 'cd lua/fzy && make' },
        { 'neovim/nvim-lspconfig' },
    },
})
  use({'VonHeikemen/lsp-zero.nvim',
  requires = {
    {'neovim/nvim-lspconfig'},
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-buffer'},
    {'hrsh7th/cmp-path'},
    {'saadparwaiz1/cmp_luasnip'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/cmp-nvim-lua'},
    {'L3MON4D3/LuaSnip'},
    {'rafamadriz/friendly-snippets'},
  }
})
  use {
    'numToStr/Navigator.nvim',
    config = function()
        require('Navigator').setup()
    end
}
  use('nvim-tree/nvim-tree.lua')
end)
