return {
    'akinsho/toggleterm.nvim', 
    version = "*",
config = function()
    require("toggleterm").setup {
            direction = "horizontal",  -- This makes the terminal open at the bottom of the screen
                  size = 20,  
      -- Use floating by default, but we’ll override with vertical where needed
      float_opts = {
        border = "curved",
        winblend = 0,
        highlights = {
          border = "Normal",
          background = "Normal", -- Matches your colorscheme
        },
      },
     shading_ratio = 0
    }

    -- Map <Esc> in terminal mode to exit to normal mode
    vim.api.nvim_set_keymap("t", "<Esc>", [[<C-\><C-n>]], { noremap = true, silent = true })

    -- Keymap to toggle vertical terminal (use a custom size and direction)
    vim.keymap.set("n", "<leader>tt", function()
      require("toggleterm.terminal").Terminal
        :new({  })
        :toggle()
    end, { desc = "Toggle vertical terminal" })
    end,
}
