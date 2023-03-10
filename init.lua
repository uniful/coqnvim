local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- lazy.nvim基础设置
local settings = {
    dev = {
        path = "~/.local/share/nvim/local-plugin",
    },
    install = {
        missing = true,
        colorscheme = { "onedark" },
    },
    ui = {
        icons = {
            lazy = "鈴",
        }
    },
    checker = {
        enabled = true,
        concurrency = 10,
        notify = true,
        frequency = 7200,
    },
    performance = {
        rtp = {
            disabled_plugins = {},
        }
    }
}

require("core.keymaps")
require("core.options")
require("lazy").setup("plugins",settings)
