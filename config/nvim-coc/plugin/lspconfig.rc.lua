local lsp_flags = {
    -- This is the default in Nvim 0.7+
    debounce_text_changes = 150,
}

require('lspconfig')['pyright'].setup {
    flags = lsp_flags,
}

require('lspconfig')['tsserver'].setup {
    flags = lsp_flags,
}

require('lspconfig')['jdtls'].setup {
    flags = lsp_flags,
}

require('lspconfig')['rust_analyzer'].setup {
    flags = lsp_flags,
}

require('lspconfig')['svelte'].setup {
    flags = lsp_flags,
}

require('lspconfig')['cssls'].setup {
    flags = lsp_flags,
}
