require("luasnip.loaders.from_vscode").lazy_load()
 -- Define key mappings for expanding and jumping in snippets
vim.api.nvim_set_keymap('i', '<Tab>', "v:lua.require('luasnip').expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>'", { expr = true, noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<S-Tab>', "<cmd>lua require('luasnip').jump(-1)<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('s', '<Tab>', "<cmd>lua require('luasnip').jump(1)<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('s', '<S-Tab>', "<cmd>lua require('luasnip').jump(-1)<CR>", { noremap = true, silent = true })

-- Define key mappings for changing choices in choiceNodes
vim.api.nvim_set_keymap('i', '<C-E>', "luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'", { expr = true, noremap = true, silent = true })
vim.api.nvim_set_keymap('s', '<C-E>', "luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'", { expr = true, noremap = true, silent = true })



