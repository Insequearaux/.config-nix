require("catppuccin").setup({
    flavour = "auto", -- latte, frappe, macchiato, mocha
    transparent_background = true, -- enables transparent background
    show_end_of_buffer = false, -- disable filling end of buffer in blank lines
    -- ... other options
})

vim.cmd("colorscheme catppuccin")
--vim.cmd("colorscheme " .. vim.g.boot_colorscheme)

