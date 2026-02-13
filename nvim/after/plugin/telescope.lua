local builtin = require('telescope.builtin')

-- Defer keymap setup until after Telescope is fully loaded
vim.schedule(function()
    vim.keymap.set('n', 'pf', builtin.find_files, {})
    vim.keymap.set('n', '<C-p>', builtin.git_files, {})
    vim.keymap.set('n', 'ps', function()
        builtin.grep_string({ search = vim.fn.input("Grep > ") })
    end)
end)
