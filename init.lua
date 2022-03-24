vim.g.mapleader = ' '
require('plugins')
if not vim.g.vscode then

    -- set tab width
    local tab_width = 4
    local set = vim.opt
    set.tabstop = tab_width
    set.softtabstop = tab_width
    set.shiftwidth = tab_width
    vim.o.relativenumber = true
    -- map `jk` to <Esc>
    vim.api.nvim_set_keymap('i', 'jk', '<Esc>', { noremap = true, silent = true })

else

    vim.api.nvim_set_keymap('x', 'gc', '<Plug>VSCodeCommentary', {})
    vim.api.nvim_set_keymap('n', 'gc', '<Plug>VSCodeCommentary', {})
    vim.api.nvim_set_keymap('o', 'gc', '<Plug>VSCodeCommentary', {})
    vim.api.nvim_set_keymap('n', 'gcc', '<Plug>VSCodeCommentaryLine', {})

    vim.api.nvim_set_keymap('n', '<leader>r', '<Cmd>call VSCodeNotify("editor.toggleFold")<CR>', {}) 

    vim.api.nvim_set_keymap('n', '<leader>c', '<Cmd>call VSCodeNotify("addCursorsAtSearchResults")<CR>' ,{})
end

---------------EasyMotion----------------

vim.g.Easymotion_do_mapping = 0

-- map b, s motion
vim.api.nvim_set_keymap('n', '<Leader>b', '<Plug>(easymotion-s2)', {})
vim.api.nvim_set_keymap('n', 's', '<Plug>(easymotion-s)', {})
vim.api.nvim_set_keymap('o', 's', '<Plug>(easymotion-s)', {})


-- map j, k motion
vim.api.nvim_set_keymap('', '<Leader>j', '<Plug>(easymotion-j)', {})
vim.api.nvim_set_keymap('', '<Leader>k', '<Plug>(easymotion-k)', {})


vim.api.nvim_set_keymap('', 'f', '<Plug>(easymotion-sl)', {})



--------------Custom---------------

vim.api.nvim_set_keymap('n', 'gb', '2g;', {})


