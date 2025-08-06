vim.lsp.config("rust_analyzer", {
    capabilities = {
        textDocument = {
            completion = {
                completionItem = {
                    additionalTextEdits = true,
                }
            }
        }
    }
})

vim.lsp.enable({"rust_analyzer"})

vim.diagnostic.config({ virtual_text = true })

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(event)
      vim.keymap.set("i", "<C-space>", "<C-x><C-o>")

      vim.keymap.set("i", "<CR>", function()
          return vim.fn.pumvisible() == 1 and "<C-y>" or "<CR>"
      end, { expr = true, noremap = true })

      vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end)
      vim.keymap.set("n", "<leader>fo", function() vim.lsp.buf.format({async = true}) end)
  end,
})


vim.o.completeopt = "fuzzy,menu,menuone,noinsert,noselect"
