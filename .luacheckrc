-- vim: ft=lua tw=80

stds.nvim = {
    read_globals = {"jit"}
}
std = "lua51+nvim"

self = false
cache = true

read_globals = {
    "vim"
}

globals = {
    "vim.g","vim.o","vim.w","vim.b","vim.go","vim.bo","vim.wo","vim.go","vim.opt"
}
