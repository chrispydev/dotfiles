local function map(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map('n', 'x', '"_x')

-- Increment/decrement
map('n', '+', '<C-a>')
map('n', '-', '<C-x>')

-- Delete a word backwards
map('n', 'dw', 'vb"_d')

-- Select all
map('n', '<C-a>', 'gg<S-v>G')

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- New tab
map('n', 'te', ':tabedit')
-- Split window
map('n', 'ss', ':split<Return><C-w>w')
map('n', 'sv', ':vsplit<Return><C-w>w')
-- Move window
map('n', '<Space>', '<C-w>w')
map('', 'sh', '<C-w>h')
map('', 'sk', '<C-w>k')
map('', 'sj', '<C-w>j')
map('', 'sl', '<C-w>l')

-- Resize window
map('n', '<C-w><left>', '<C-w><')
map('n', '<C-w><right>', '<C-w>>')
map('n', '<C-w><up>', '<C-w>+')
map('n', '<C-w><down>', '<C-w>-')


-- Line Moving
map('n', 'A-down', ':m .+1<CR>==')
map('n', 'A-up', ':m .-2<CR>==')
map('i', 'A-down', '<Esc>:m .+1<CR>==gi')
map('i', 'A-up', '<Esc>:m .-2<CR>==gi')
map('v', '<A-down>', ":m '>+1<CR>gv=gv")
map('v', '<A-up>', ":m '<-2<CR>gv=gv")

-- Flutter
map('n', 'fo', ':CocCommand flutter.outline')
map('n', 'fd', ':CocCommand flutter.devices')
map('n', 'fr', ':CocCommand flutter.dev.hotReload')
map('n', 'frt', ':CocCommand flutter.dev.hotReStart')
map('n', 'fq', ':CocCommand flutter.dev.quit')
