return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")

    mason.setup({})

    mason_lspconfig.setup({
      ensure_installed = {
        "lua_ls",
        "tsserver",
        "html",
        "cssls",
        "tailwindcss",
        "graphql",
        "pyright",
        "yamlls",
        "sqls",
        "prismals",
        "marksman",
        "ltex",
        "jsonls",
        "gopls",
        "emmet_ls",
        "dockerls",
        "docker_compose_language_service",
        "denols",
        "cmake",
        "clangd",
        "bashls",
        "ansiblels"
     },
      automatic_installation = true
    })
  end,
}
