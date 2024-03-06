return
{
    {
        'nvim-telescope/telescope.nvim',
        branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            local map = require('helpers.keys').map
            local builtin = require('telescope.builtin')

            map('n', '<leader>pf', builtin.find_files, 'Find project files')
            map('n', '<C-p>', builtin.git_files, 'Find git files')
            map('n', '<leader>pws', function()
                local word = vim.fn.expand("<cword>")
                builtin.grep_string({ search = word })
            end)
            map('n', '<leader>pWs', function()
                local word = vim.fn.expand("<cWORD>")
                builtin.grep_string({ search = word })
            end)
            map('n', '<leader>ps', function()
                builtin.grep_string({ serach = vim.fn.input('Grep > ') });
            end, 'Project Search')
        end,
    },
}
