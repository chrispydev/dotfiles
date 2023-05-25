local keymap = vim.keymap

keymap.set('n', 'x', '"_x')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- New tab
keymap.set('n', 'te', ':tabedit')
-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')
-- Move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')


-- Line Moving
keymap.set('n', 'A-down', ':m .+1<CR>==')
keymap.set('n', 'A-up', ':m .-2<CR>==')
keymap.set('i', 'A-down', '<Esc>:m .+1<CR>==gi')
keymap.set('i', 'A-up', '<Esc>:m .-2<CR>==gi')
keymap.set('v', '<A-down>', ":m '>+1<CR>gv=gv")
keymap.set('v', '<A-up>', ":m '<-2<CR>gv=gv")


-- Flutter
keymap.set('n', 'fd', ':FlutterDevices')
keymap.set('n', 'ft', ':FlutterOutlineToggle')
keymap.set('n', 'fq', ':FlutterQuit')
keymap.set('n', 'fr', ':FlutterRun')
keymap.set('n', 'frs', ':FlutterRestart')

-- Terminal
keymap.set("n", "<leader>th", "<CMD>ToggleTerm size=10 direction=horizontal<CR>")
keymap.set("n", "<leader>tv", "<CMD>ToggleTerm size=80 direction=vertical<CR>")
