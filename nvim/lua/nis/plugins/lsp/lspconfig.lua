return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
  },
  config = function()
    local lspconfig = require("lspconfig")
    local cmp_nvim_lsp = require("cmp_nvim_lsp")

    local keymap = vim.keymap
    local options = { noremap = true, silent = true }

    local on_attach = function(client, bufnr)
      opts.buffer = bufnr

      keymap.set("n", "<leader>gR", "<cmd>Telescope lsp_references<CR>", options)
      keymap.set("n", "<leader>gD", vim.lsp.buf.declaration, options)
      keymap.set("n", "<leader>gd", "<cmd>Telescope lsp_definitions<CR>", options)
      keymap.set("n", "<leader>gi", "<cmd>Telescope lsp_implementations<CR>", options)
      keymap.set("n", "+", "<cmd>Telescope lsp_type_definitions<CR>", options)
      keymap.set("n", "<leader>gK", vim.lsp.buf.hover, options)
      keymap.set("n", "<leader>rs", "<cmd>LspRestart<CR>", options)
    end

    local capabilities = cmp_nvim_lsp.default_capabilities()
    
    lspconfig.lua_lsp.setup({
      on_attach = on_attach,
      capabilities = capabilities,
    })

    lspconfig.tsserver.setup({
      on_attach = on_attach,
      capabilities = capabilities,
    })

    lspconfig.html.setup({
      on_attach = on_attach,
      cspabilities = capabilities,
    })

    lspconfig.cssls.setup({
      on_attach = on_attach,
      capabilities = capabilities,
    })

    lspconfig.tailwindcss.setup({
      on_attach = on_attach,
      capabilities = capabilities,
    })

    lspconfig.graphql.setup({
      on_attach = on_attach,
      capabilities = capabilities,
    })

    lspconfig.pyright.setup({
      on_attach = on_attach,
      capabilities = capabilities,
    })

    lspconfig.yamlls.setup({
      on_attach = on_attach,
      capabilities = capabilities,
    })

    lspconfig.prismals.setup({
      on_attach = on_attach,
      capabilities = capabilities,
    })

    lspconfig.marksman.setup({
      on_attach = on_attach,
      capabilities = capabilities,
    })

    lspconfig.ltex.setup({
      on_attach = on_attach,
      capabilities = capabilities,
    })

    lspconfig.jsonls.setup({
      on_attach = on_attach,
      capabilities = capabilities,
    })

    lspconfig.gopls.setup({
      on_attach = on_attach,
      capabilities = capabilities,
    })

    lspconfig.emmet_ls.setup({
      on_attach = on_attach,
      capabilities = capabilities,
    })

    lspconfig.dockerls.setup({
      on_attach = on_attach,
      capabilities = capabilities,
    })

    lspconfig.docker_compose.setup({
      on_attach = on_attach,
      capabilities = capabilities,
    })

    lspconfig.denols.setup({
      on_attach = on_attach,
      capabilities = capabilities,
    })

    lspconfig.cmake.setup({
      on_attach = on_attach,
      capabilities = capabilities,
    })

    lspconfig.clangd.setup({
      on_attach = on_attach,
      capabilities = capabilities,
    })

    lspconfig.bashls.setup({
      on_attach = on_attach,
      capabilities = capabilities,
    })

    lspconfig.ansiblels.setup({
      on_attach = on_attach,
      capabilities = capabilities,
    })
  end,
}
