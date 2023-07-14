local config = {
    colorscheme = "rose-pine"
}

vim.api.nvim_set_keymap('n', '<C-n>', ':Neotree toggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-p>', ':Telescope find_files<CR>', { noremap = true, silent = true })

-- Filetype-specific Settings
vim.cmd('autocmd FileType javascript setlocal shiftwidth=2 tabstop=2')
vim.cmd('autocmd FileType javascriptreact setlocal shiftwidth=2 tabstop=2')
vim.cmd('autocmd FileType go setlocal shiftwidth=4 tabstop=4')

-- Keybindings
vim.cmd('inoremap jk <esc>')
vim.cmd('inoremap kj <esc>')

-- Wildmenu
vim.cmd('set wildmenu')

-- Swap File
vim.cmd('set noswapfile')

vim.opt.guicursor = ""

vim.opt.nu = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

return config
