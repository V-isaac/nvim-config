return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "saghen/blink.cmp",
    },
    config = function()
      local capabilities = require('blink.cmp').get_lsp_capabilities()
      require("lspconfig").clangd.setup {
        capabilities = capabilities,
        cmd = { 'clangd', '--background-index', '--clang-tidy', '--log=verbose' },
        init_options = {
          fallbackFlags = { '-std=c++14', '-std=c11' }
        },
        root_markers = { '.h' },
        filetypes = { 'c', 'cpp' }
      }
    end,
    single_file_support = true
  }
}
