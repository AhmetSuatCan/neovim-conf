require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {"lua_ls","ts_ls"}
 })

local on_attach = function(_,_)
vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())

--Lua 
require("lspconfig").lua_ls.setup {
    on_attach = on_attach,
    capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
    },
  },
}

--TypeScript 
require("lspconfig").ts_ls.setup {
    on_attach = on_attach,
    capabilities = capabilities,
}


--JavaScript(eslint)
require("lspconfig").eslint.setup {

    on_attach = on_attach,
    capabilities = capabilities,
}

--Tailwind
require("lspconfig").tailwindcss.setup {

    on_attach = on_attach,
    capabilities = capabilities,
}


--HTML
require("lspconfig").html.setup {

    on_attach = on_attach,
    capabilities = capabilities,
}

require("lspconfig").kotlin_language_server.setup {
    on_attach = on_attach,
    capabilities = capabilities,
}

require('lspconfig').jdtls.setup({

    on_attach = on_attach,
    capabilities = capabilities,

})

require('lspconfig').pylsp.setup({

    on_attach = on_attach,
    capabilities = capabilities,

})


require('lspconfig').gopls.setup({

    on_attach = on_attach,
    capabilities = capabilities,

})

require("mason-null-ls").setup({
  ensure_installed = { "black" }
})

local null_ls = require("null-ls")

null_ls.setup({
  sources = {
    null_ls.builtins.formatting.black,
  },
})



