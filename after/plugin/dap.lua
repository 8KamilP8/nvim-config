local dap = require('dap')
dap.adapters.coreclr = {
  type = 'executable',
  command = '/usr/local/bin/netcoredbg/netcoredbg',
  args = {'--interpreter=vscode'}
}

dap.configurations.cs = {
  {
    type = "coreclr",
    name = "launch - netcoredbg",
    request = "launch",
    program = function()
        return vim.fn.input('Path to dll', vim.fn.getcwd() .. '/bin/Debug/', 'file')
    end,
  },
}

vim.api.nvim_set_keymap('n', '<F5>', '<Cmd>lua require("dap").continue()<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<F6>', '<Cmd>lua require("dap").step_over()<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<F7>', '<Cmd>lua require("dap").step_into()<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<F8>', '<Cmd>lua require("dap").step_out()<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<Leader>b', '<Cmd>lua require("dap").toggle_breakpoint()<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<Leader>B', '<Cmd>lua require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: "))<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<Leader>lp', '<Cmd>lua require("dap").set_breakpoint(nil, nil, vim.fn.input("Log point message: "))<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<Leader>dr', '<Cmd>lua require("dap").repl.open()<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<Leader>dl', '<Cmd>lua require("dap").run_last()<CR>', { silent = true })


