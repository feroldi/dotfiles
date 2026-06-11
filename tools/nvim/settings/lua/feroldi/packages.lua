local gh = function(repo) return 'https://github.com/' .. repo end

vim.pack.add({
  gh('nvim-lua/plenary.nvim'),
  gh('nvim-telescope/telescope.nvim'),
  gh('nvim-treesitter/nvim-treesitter'),
  gh('mbbill/undotree'),
  gh('tpope/vim-fugitive'),
  gh('saghen/blink.lib'),
  gh('saghen/blink.cmp'),
  gh('neovim/nvim-lspconfig')
})
