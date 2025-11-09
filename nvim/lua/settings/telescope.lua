local k = vim.keymap
local builtin = require('telescope.builtin')

k.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
k.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
k.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
k.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
