return {
{
        "neovim/nvim-lspconfig",
        config = function()
            require'lspconfig'.powershell_es.setup{
                -- PowerShell LSP specific configuration goes here
                -- Update the bundle_path to your PowerShellEditorServices path
                bundle_path = 'C:/path/to/PowerShellEditorServices',
                -- Additional LSP server configurations can be added here
            }
        end
    },
}
