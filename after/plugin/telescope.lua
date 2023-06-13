local builtin = require('telescope.builtin')
require("telescope").load_extension "file_browser"

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
vim.keymap.set("n", "<C-k>", builtin.live_grep, {})
vim.api.nvim_set_keymap(
    "n",
    "<space>fb",
    ":Telescope file_browser path=%:p:h select_buffer=true<CR>",
    { noremap = true }
)
