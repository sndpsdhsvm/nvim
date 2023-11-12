-- auto install lazy if not installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",     -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "

require('lazy').setup({
  {
    --theme
    'navarasu/onedark.nvim',
    --file explorer
    'nvim-tree/nvim-tree.lua',
    --vs-code like icons
    'nvim-tree/nvim-web-devicons',
    --statusline
    'nvim-lualine/lualine.nvim',
    -- Colorizer
    'norcalli/nvim-colorizer.lua',
    -- Completion
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip',
    'rafamadriz/friendly-snippets',
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',
    -- Treesitter
    'nvim-treesitter/nvim-treesitter',
    -- intend-blankline
    'lukas-reineke/indent-blankline.nvim',
    -- telescope
    {
      'nvim-telescope/telescope.nvim',
      tag = '0.1.4',
      -- or                        , branch = '0.1.x',
      dependencies = { 'nvim-lua/plenary.nvim' }
    },
    --auto pairs
    {
      'windwp/nvim-autopairs',
      event = "InsertEnter",
      opts = {}       -- this is equalent to setup({}) function
    },
    -- conform
    {
      'stevearc/conform.nvim',
      opts = {},
    }
  }
})
