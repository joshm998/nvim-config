if vim.g.neovide then
  vim.g.neovide_transparency = 0.9
  vim.g.neovide_window_blurred = true
  vim.g.neovide_no_idle = false
  vim.g.neovide_fullscreen = false
  vim.g.neovide_remember_window_size = true
  vim.g.neovide_cursor_animation_length = 0.1
  vim.g.neovide_cursor_antialiasing = false
  vim.g.neovide_cursor_vfx_mode = ""

  -- mapping macOS shortcuts
  vim.g.neovide_input_use_logo = true
  vim.api.nvim_set_keymap('n', '<D-v>', '"+p<CR>', { noremap = true, silent = true })
  vim.api.nvim_set_keymap('i', '<D-v>', '<C-R>+', { noremap = true, silent = true })
  vim.api.nvim_set_keymap('t', '<D-v>', '<C-R>+', { noremap = true, silent = true })
  vim.api.nvim_set_keymap('v', '<D-c>', '"+y<CR>', { noremap = true, silent = true })
end
