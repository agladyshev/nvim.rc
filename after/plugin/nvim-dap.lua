local dap = require('dap')

dap.adapters.lldb = {
    type = 'executable',
    command = '/usr/bin/lldb-vscode', -- adjust as needed, must be absolute path
    name = 'lldb'
}

vim.keymap.set("n", "<leader>db", ":DapToggleBreakpoint<CR>", { noremap = true })
vim.keymap.set("n", "<leader>dc", ":DapContinue<CR>", { noremap = true })
vim.keymap.set("n", "<leader>duc",
    function()
        local widgets = require('dap.ui.widgets');
        local sidebar = widgets.sidebar(widgets.scopes);
        sidebar.open();
    end)
