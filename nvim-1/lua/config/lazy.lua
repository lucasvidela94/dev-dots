local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    -- bootstrap lazy.nvim
    -- stylua: ignore
    vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable",
        lazypath })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

-- fix copy and paste in wsl
if vim.fn.has("wsl") == 1 then
    vim.g.clipboard = {
        name = "WslClipboard",
        copy = {
            ["+"] = "/mnt/c/Windows/System32/clip.exe",
            ["*"] = "/mnt/c/Windows/System32/clip.exe",
        },
        paste = {
            ["+"] =
            '/mnt/c/Windows/System32/WindowsPowerShell/v1.0/powershell.exe -c [Console]::Out.Write(%(Get-Clipboard -Raw).toString().replace("`r", ""))',
            ["*"] =
            '/mnt/c/Windows/System32/WindowsPowerShell/v1.0/powershell.exe -c [Console]::Out.Write(%(Get-Clipboard -Raw).toString().replace("`r", ""))',
        },
        cache_enabled = 0,
    }
end

require("lazy").setup({
    spec = {
        -- add LazyVim and import its plugins
        { "LazyVim/LazyVim",                                     import = "lazyvim.plugins" },

        -- Import your local color scheme
        {
            dir = "~/.config/nvim/yugem",
            lazy = false,
            priority = 1000,
            config = function()
                require("yugem").setup({})
            end,
        },

        -- Import any extras modules here
        { import = "lazyvim.plugins.extras.lang.json" },
        { import = "lazyvim.plugins.extras.lang.typescript" },
        { import = "lazyvim.plugins.extras.editor.harpoon2" },
        { import = "lazyvim.plugins.extras.coding.mini-surround" },
        { import = "lazyvim.plugins.extras.util.mini-hipatterns" },
        { import = "lazyvim.plugins.extras.dap.core" },

        -- Import/override with your plugins
        { import = "plugins" },
    },
    defaults = {
        lazy = false,
        version = false,          -- Always use the latest git commit
    },
    checker = { enabled = true }, -- Automatically check for plugin updates
    performance = {
        rtp = {
            -- Disable some rtp plugins
            disabled_plugins = {
                "gzip",
                "tarPlugin",
                "tohtml",
                "tutor",
                "zipPlugin",
            },
        },
    },
})

-- Aplica el esquema de colores después de que todos los plugins se carguen
vim.cmd("colorscheme yugem")
