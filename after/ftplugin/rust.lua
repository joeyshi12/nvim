local bufnr = vim.api.nvim_get_current_buf()

vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = bufnr, desc = "Go to definition" })
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { buffer = bufnr, desc = "Go to declaration" })
vim.keymap.set("n", "gr", vim.lsp.buf.references, { buffer = bufnr, desc = "Find references" })
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { buffer = bufnr, desc = "Go to implementation" })
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { buffer = bufnr, desc = "Rename symbol" })

vim.keymap.set("n", "K", function()
    vim.cmd.RustLsp({ "hover", "actions" })
end, { buffer = bufnr, silent = true, desc = "Rust hover actions" })

vim.keymap.set("n", "<leader>rf", function()
    vim.lsp.buf.format({ async = true })
end, { buffer = bufnr, desc = "Format buffer (rustfmt)" })

vim.keymap.set("n", "<leader>ri", function()
    vim.lsp.buf.code_action({
        context = { only = { "source.organizeImports" } },
        apply = true,
    })
end, { buffer = bufnr, desc = "Organize imports" })

vim.keymap.set("n", "<leader>rm", function()
    vim.cmd.RustLsp("expandMacro")
end, { buffer = bufnr, desc = "Expand macro" })

vim.keymap.set("n", "<leader>ra", function()
    vim.cmd.RustLsp("codeAction")
end, { buffer = bufnr, desc = "Rust code actions" })

vim.keymap.set("n", "<leader>rw", function()
    vim.cmd.RustLsp("workspaceSymbol")
end, { buffer = bufnr, desc = "Workspace symbols (rust-analyzer)" })
