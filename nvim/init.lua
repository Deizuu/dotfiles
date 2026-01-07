require('enabled_lsps')
require('opts')
require('lazy_config')

local k = vim.keymap


k.set('n', '<leader>w', ':write<CR>')
k.set('n', '<leader>q', ':quit<CR>')
k.set('n', '<leader>do', ':lua vim.diagnostic.open_float()<CR>')

-- Disabling arrow keys
k.set('', '<Up>', '<Nop>', { noremap = true })
k.set('', '<Right>', '<Nop>', { noremap = true })
k.set('', '<Down>', '<Nop>', { noremap = true })
k.set('', '<Left>', '<Nop>', { noremap = true })

-- Sets background as transparent and sets comments as gray, bold and italic
vim.api.nvim_set_hl(0, 'Normal', { fg = 'NONE', bg = 'NONE', bold = false })
vim.api.nvim_set_hl(0, 'Comment', { fg = '#909090', bg = 'NONE', italic = true, bold = true })
