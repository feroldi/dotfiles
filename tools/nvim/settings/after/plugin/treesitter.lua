for _, group in ipairs(vim.fn.getcompletion("@lsp", "highlight")) do
  vim.api.nvim_set_hl(0, group, {})
end

require("nvim-treesitter.configs").setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = { "typst" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = false,

  highlight = {
    enable = false,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}

-- Start treesitter only for specific file types.
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "typst" },
  callback = function()
    vim.treesitter.start()
  end,
})
