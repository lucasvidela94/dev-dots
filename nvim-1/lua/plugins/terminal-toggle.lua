return {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
        require("toggleterm").setup {
            floating_window_opts = {
                border = 'curved',
                width = 124,
                height = 16,
                winblend = 3,
                zindex = 999,
            },
        }
    end,
}
