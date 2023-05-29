vim.api.nvim_set_keymap('n', '<localleader>c', '<Cmd>update<CR><Cmd>VimtexCompileSS<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<localleader>v', '<plug>(vimtex-view)', {})
vim.g.vimtex_view_method = 'skim'
vim.g.vimtex_general_viewer = 'skim'

