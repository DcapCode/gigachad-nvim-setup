return
{
    {
        'tpope/vim-fugitive',
        config = function()
            local map = require('helpers.keys').map
            map('n', '<leader>gs', vim.cmd.Git)

            local DcapedCode_Fugitive = vim.api.nvim_create_augroup('dcapedcode_fugitive', {})
            local autocmd = vim.api.nvim_create_autocmd

            autocmd("BufWinEnter", {
                group = DcapedCode_Fugitive,
                pattern = '*',
                callback = function()
                    if vim.bo.ft ~= "fugitive" then
                        return
                    end
                    local bufnr = vim.api.nvim_get_current_buf()
                    local opts = { buffer = bufnr, remap = false }
                    map('n', '<leader>p', function()
                        vim.cmd.Git('push')
                    end, opts)

                    -- rebase always
                    map('n', '<leader>P', function()
                        vim.cmd.Git({ 'pull', '--rebase' })
                    end, opts)

                    -- NOTE: It allows me to easily set the branch i am pushing and any tracking
                    -- needed if i did not set the branch up correctly
                    map('n', '<leader>t', ':Git push -u origin ', opts)
                end
            })
            map('n', 'gu', '<cmd>diffget //2<CR>')
            map('n', 'gh', '<cmd>diffget //3<CR>')
        end
    }
}
