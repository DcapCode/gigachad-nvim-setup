local map = require("helpers.keys").map
require("helpers.keys").set_leader(" ")
map('i', 'jk', "<esc>", "Blazing fast way out of insert mode")
map('n', '<leader>pv', vim.cmd.Ex, "Bring up the explorer")

-- Move higlighted text
map('v', 'J', ":m '>+1<CR>gv=gv", 'Move highlighted text up')
map('v', 'L', ":m '<-2<CR>gv=gv", 'Move highlighted text down')

-- Appending the line above to current line but let cursor stay in place
map('n', 'J', 'mzJ`z', 'Append below line to current line')
-- Jumping half page keeps the cursor in the middle
map('n', '<C-d>', '<C-d>zz', 'Jumping half page up')
map('n','<C-u>', '<C-u>zz', 'Jumping half page down')
-- Keeping search terms in the middle
map('n', 'n', 'nzzzv')
map('n', 'N', 'Nzzzv')
-- IMPORTANT! When copying and pasting keep the paste in the paste register
map('x', '<leader>p', "\"_dP", 'Keep paste registry after pasting')
-- Put copy into +registry to allow pasting outside nvim
map('n', '<leader>y', "\"+y")
map('v', '<leader>y', "\"+y")
map('n', '<leader>Y', "\"+Y")
-- Deleting to void registry
map('n', '<leader>d', "\"_d")
map('v', '<leader>d', "\"_d")
-- Swap project
map('n', '<C-f>', '<cmd>silent !tmux neww tmux-sessionizer<CR>', 'Swap project')
map('n', '<leader>f', function() vim.lsp.buf.format() end)
-- Quick list navigation
map('n', '<C-k>', '<cmd>cnext<CR>zz')
map('n', '<C-j>', '<cmd>cprev<CR>zz')
map('n', '<leader>k', '<cmd>lnext<CR>zz')
map('n', '<leader>j', '<cmd>lprev<CR>zz')
-- Replacing the current word we are at
map('n', '<leader>s', ':%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left>', 'Replace the current word')
-- Make file executable
map('n', '<leader>x', '<cmd>!chmod +x %<CR>', {silent = true})
-- Move with shift-arrows
map('n', '<S-Up>', '<C-w><S-k>', 'Move window up')
map('n', '<S-Down>', '<C-w><C-j>', 'Move window down')
map('n', '<S-Left>', '<C-w><S-h>', 'Move window to the left')
map('n', '<S-Right>', '<C-w><S-l>', "Move window to the right")
-- Resize with ctrl-arrows
map('n', '<C-Up>', ':resize +2<CR>')
map('n', '<C-Down>', ':resize -2<CR>')
map('n', '<C-Left>', ':vertical resize +2')
map('n', '<C-Right>', ':vertical resize -2')

-- Deleting buffers
local buffers = require("helpers.buffers")
map('n', '<leader>db', buffers.delete_this, 'Current buffer')
map('n', '<leader>do', buffers.delete_others, 'Other buffers')
map('n', '<leader>da', buffers.delete_all, 'All buffers')
-- Navigate buffers
map('n', '<S-1>', ':bnext<CR>', 'Next buffer')
map('n', '<S-h>', ':bprevious<CR>', 'Previous buffer')
