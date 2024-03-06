return {
    {
        "folke/trouble.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            local map = require('helpers.keys').map
            require("trouble").setup({
                icons = true
            })
            map('n', '<leader>tt', function()
                require("trouble").toggle()
            end)
            map('n', '<leader>tn', function()
                require('trouble').next({ skip_groups = true, jump = true })
            end)
            map('n', '<leader>tp', function()
                require('trouble').previous({ skip_groups = true, jump = true })
            end)
        end,
        opts = {}
    }
}
