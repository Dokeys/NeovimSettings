-- Set <Leader> key to space
vim.g.mapleader = " "

-- define common options
local opts = {
    noremap = true,      -- non-recursive
    silent = true,       -- do not show message
}

-- Terminal shortcuts in terminal.lua file

-- Shortcut: Open Netrw in the directory of the current file
-- vim.keymap.set('n', '<Leader>dd', ':Lexplore %:p:h<CR>', opts)
vim.keymap.set('n', '<Leader>dd', function()
	vim.g.netrw_winsize = -30  -- 30% of screen width
	vim.g.netrw_banner = 0 -- Remove the upper text banner
	vim.cmd.Lexplore()
	
end)

-- Shortcut: Open Netrw in the current working directory
vim.keymap.set('n', '<Leader>da', ':Lexplore<CR>', opts)

-----------------
-- Normal mode --
-----------------

-- Hint: see `:h vim.map.set()`
-- Better window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', opts)
vim.keymap.set('n', '<C-j>', '<C-w>j', opts)
vim.keymap.set('n', '<C-k>', '<C-w>k', opts)
vim.keymap.set('n', '<C-l>', '<C-w>l', opts)

-- Resize with arrows
-- delta: 2 lines
vim.keymap.set('n', '<C-Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<C-Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-----------------
-- Visual mode --
-----------------

-- Hint: start visual mode with the same area as the previous area and the same mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)


-----------------
-- Insert mode --
-----------------
---
-- Use jj to exit insert mode
vim.api.nvim_set_keymap('i', 'jj', '<Esc>', { noremap = true, silent = true })


-- Keymaps to insert emojis
vim.api.nvim_set_keymap('i', '°pass', '✅', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '°fail', '❌', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '°smile', '😊', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '°ohm', 'Ω', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '°bulb', '💡', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '°key', '🔑', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '°paper', '📄', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '°zoom', '🔍', { noremap = true, silent = true })
