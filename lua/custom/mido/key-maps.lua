local function map(mode, lhs, rhs)
  vim.keymap.set(mode, lhs, rhs, { silent = true })
end

map('i', 'jk', '<Esc>')

-- Resize Windows
map('n', '<C-Left>', '<C-w><')
map('n', '<C-Right>', '<C-w>>')
map('n', '<C-Up>', '<C-w>+')
map('n', '<C-Down>', '<C-w>-')
map('n', '<C-d>', '<C-d>zz')
map('n', '<C-u>', '<C-u>zz')

