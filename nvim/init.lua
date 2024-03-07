vim.cmd([[
    set tabstop=4 shiftwidth=4 expandtab
    colorscheme poimandres
    hi Normal guibg=NONE ctermbg=NONE
    hi EndOfBuffer guibg=NONE ctermbg=NONE
    set number
]])
vim.wo.signcolumn="number"

require('plugins')
local lsp_zero = require('lsp-zero')
lsp_zero.on_attach(function(client, bufnr)
    lsp_zero.default_keymaps({buffer = bufnr})
end)
require'lspconfig'.gopls.setup{}
require'lspconfig'.zls.setup{}
require'lspconfig'.clangd.setup{}
