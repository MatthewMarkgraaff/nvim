for _, source in ipairs {
  "astronvim.bootstrap",
  "astronvim.options",
  "astronvim.lazy",
  "astronvim.autocmds",
  "astronvim.mappings",
} do
  local status_ok, fault = pcall(require, source)
  if not status_ok then vim.api.nvim_err_writeln("Failed to load " .. source .. "\n\n" .. fault) end
end

if astronvim.default_colorscheme then
  if not pcall(vim.cmd.colorscheme, astronvim.default_colorscheme) then
    require("astronvim.utils").notify(
      "Error setting up colorscheme: " .. astronvim.default_colorscheme,
      vim.log.levels.ERROR
    )
  end
end

vim.api.nvim_set_keymap('n', '<C-n>', ':Neotree toggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-p>', ':Telescope find_files<CR>', { noremap = true, silent = true })

vim.cmd('set expandtab')
vim.cmd('set tabstop=2')
vim.cmd('set shiftwidth=2')
vim.cmd('set autochdir')

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

require("astronvim.utils").conditional_func(astronvim.user_opts("polish", nil, false), true)
