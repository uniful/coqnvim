vim.g.mapleader = ';'

local kopts = {noremap = true, silent = true}

local function mapkey(mode, lhs, rhs)
    vim.api.nvim_set_keymap(mode, lhs, rhs, kopts)
end

local function mapcmd(key, cmd)
    vim.api.nvim_set_keymap('n', key, ':'..cmd..'<cr>', kopts)
end

local function maplua(key, txt)
    vim.api.nvim_set_keymap('n', key, ':lua '..txt..'<cr>', kopts)
end

local function mapnorm(key,txt)
    vim.api.nvim_set_keymap('n',key,''..txt..'<cr>',kopts)
end

local function maptext(key,txt)
    vim.api.nvim_set_keymap('n',key,':'..txt..'',kopts)
end

-------------------------按键映射(keymap)按照字母表排序--------------------------

-- A
-- auto-save
-- 关闭或启用自动保存功能
mapcmd("<leader>at", "ASToggle")

-- B: 
-- bufferline
-- 关闭当前 buffer，由 bufdelete 插件所提供的方法
mapcmd("<C-q>", "Bdelete!")
-- 切换上一个缓冲区
mapcmd("<A-p>", "BufferLineCyclePrev")
-- 切换下一个缓冲区
mapcmd("<A-r>", "BufferLineCycleNext")
-- 关闭左侧缓冲区
mapcmd("<leader>bl", "BufferLineCloseLeft")
-- 关闭右侧缓冲区
mapcmd("<leader>br", "BufferLineCloseRight")

-- C
-- 快捷命令
mapkey('n', '<leader>ce', ':e<space>')
mapcmd('<leader>cw', 'w')
mapcmd('<leader>cW', 'wa')
mapcmd('<leader>cE', 'e!')
mapcmd('<leader>cq', 'q')
mapcmd('<leader>cQ', 'q!')
mapcmd('<leader>cx', 'x')
-- 健康检查
mapcmd("<leader>ch","checkhealth")

-- coq
mapcmd("<leader>cd", "COQdeps")
mapcmd("<leader>cn", "COQnow")


-- D
-- dap
-- 开启调试或到下一个断点处
maplua("<F5>", "require'dap'.continue()")
-- 单步进入执行（会进入函数内部，有回溯阶段）
maplua("<F6>", "require'dap'.step_into()")
-- 单步跳过执行（不进入函数内部，无回溯阶段）
maplua("<F7>", "require'dap'.step_over()")
-- 步出当前函数
maplua("<F8>", "require'dap'.step_out()")
-- 重启调试
maplua("<F9>", "require'dap'.run_last()")
-- 退出调试（关闭调试，关闭 repl，关闭 ui，清除内联文本）
maplua("<F10>","require'dap'.close()")
maplua("<F11>","require'dap.repl'.close()")
maplua("<F12>","require'dapui'.close()")
mapcmd("<leader>dr","DapVirtualTextForceRefresh")
-- 打断点
maplua("<leader>db", "require'dap'.toggle_breakpoint()")
maplua("<leader>di", "require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: ')")
maplua("<leader>dm", "require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: ')")
maplua("<leader>do", "require'dap'.repl.open()")
-- 显示或隐藏调试界面
maplua("<leader>du", "require'dapui'.toggle()")

-- E

-- F


-- G
-- lspconfig
maplua('<leader>gd', 'vim.lsp.buf.definition()')
maplua('<leader>gD', 'vim.lsp.buf.declaration()')
maplua('<leader>gi', 'vim.lsp.buf.implementation()')
maplua('<leader>gn', 'vim.diagnostic.goto_next()')
maplua('<leader>gp', 'vim.diagnostic.goto_prev()')
maplua('<leader>gr', 'vim.lsp.buf.references()')
maplua('<leader>gt', 'vim.lsp.buf.type_definition()')

-- gitsigns
mapcmd('<leader>gg', 'Gitsigns stage_buffer')
mapcmd('<leader>gu', 'Gitsigns undo_stage_hunk')
mapcmd('<leader>gb', 'Gitsigns reset_buffer')
mapcmd('<leader>gh', 'Gitsigns preview_hunk')
mapcmd('<leader>gc', 'Gitsigns toggle_current_line_blame')
mapcmd('<leader>gf', 'Gitsigns diffthis')
mapcmd('<leader>ge', 'Gitsigns toggle_deleted')
maplua('<leader>gl', 'require"gitsigns".blame_line{full=true}')
maplua('<leader>gs', 'require"gitsigns".diffthis("~")')


-- H
-- hop
-- 搜索并跳转到单词
mapcmd("<leader>hw", "HopWord")
-- 搜索并跳转到行
mapcmd("<leader>hl", "HopLine")
-- 搜索并跳转到字符
mapcmd("<leader>hc", "HopChar1")
mapcmd("<leader>hd", "HopChar2")
-- 提示每行的第一个非空白字符
mapcmd("<leader>ht", "HopLineStart")
-- 如果某条线短于光标列位置，则其行尾将用作跳转目标。
mapcmd("<leader>hv", "HopVertical")
-- 默认的 Neovim 搜索与提示混合在一起
mapcmd("<leader>hp", "HopPattern")

-- hlslens
-- 切换 nvim-hlslens 启用/禁用
mapcmd("<Leader>hst", "HlSearchLensToggle")
-- 启用 nvim-hlslens
mapcmd("<leader>hse", "HlSearchLensEnable")
-- 禁用 nvim-hlslens
mapcmd("<leader>hsd", "HlSearchLensDisable")
-- 关闭搜索词高亮显示
mapcmd("<leader>hn", "noh")

-- I
-- vim-illuminate
-- Globally pause vim-illuminate.
mapcmd("<leader>ip","IlluminatePause")
--Globally resume vim-illuminate.
mapcmd("<leader>ir","IlluminateResume")
--Globally toggle the pause/resume for vim-illuminate.
mapcmd("<leader>ig","IlluminateToggle")
--Buffer-local pause of vim-illuminate.
mapcmd("<leader>if","IlluminatePauseBuf")
--Buffer-local resume of vim-illuminate.
mapcmd("<leader>iu","IlluminateResumeBuf")
--Buffer-local toggle of the pause/resume for vim-illuminate.
mapcmd("<leader>it","IlluminateToggleBuf")


-- J

-- K

-- L

-- lspconfig
maplua('<leader>la', 'vim.lsp.buf.code_action()')
maplua('<leader>le', 'vim.diagnostic.open_float()')
maplua('<leader>lf', 'vim.lsp.buf.formatting()')
maplua('<leader>lh', 'vim.lsp.buf.signature_help()')
maplua('<leader>lk', 'vim.lsp.buf.hover()')
maplua('<leader>ln', 'vim.lsp.buf.rename()')
maplua('<leader>lq', 'vim.diagnostic.setloclist()')

-- Lspconfig
-- 信息查看
mapcmd("<leader>li", "LspInfo")
mapcmd("<leader>ls", "LspStart")
mapcmd("<leader>lt", "LspStop")
mapcmd("<leader>lr", "LspRestart")

-- lspsaga
-- Show buffer diagnostic
mapcmd("<leader>lgb", "Lspsaga show_buf_diagnostics")
-- Code action
mapcmd("<leader>lgc", "Lspsaga code_action")
-- Show cursor diagnostic
-- also like show_line_diagnostics  support pass ++unfocus
mapcmd("<leader>lgd", "Lspsaga show_cursor_diagnostics")
-- Rename
mapcmd("<leader>lgr", "Lspsaga rename")
-- Peek Definition
mapcmd("<leader>lgf", "Lspsaga peek_definition")
-- Go to Definition
mapcmd("<leader>lgg", "Lspsaga goto_definition")
-- Hover Doc
mapcmd("<leader>lgh", "Lspsaga hover_doc")
mapcmd("<leader>lgk", "Lspsaga hover_doc ++keep")
-- Show line diagnostics you can pass argument ++unfocus to make
-- show_line_diagnostics float window unfocus
mapcmd("<leader>lgl", "Lspsaga show_line_diagnostics")
-- Toggle Outline
mapcmd("<leader>lgo", "Lspsaga outline")
-- Callhierarchy
mapcmd("<Leader>lgi", "Lspsaga incoming_calls")
mapcmd("<Leader>lgt", "Lspsaga outgoing_calls")
-- Float terminal
mapcmd("<leader>lgm", "Lspsaga term_toggle")
-- Lsp finder find the symbol definition implement reference
mapcmd("<leader>lgn", "Lspsaga lsp_finder")
-- Diagnostic jump can use `<c-o>` to jump back
mapcmd("[e", "Lspsaga diagnostic_jump_prev")
mapcmd("]e", "Lspsaga diagnostic_jump_next")
-- Diagnostic jump with filter like Only jump to error
vim.keymap.set("n", "[E", function()
  require("lspsaga.diagnostic").goto_prev({ severity = vim.diagnostic.severity.ERROR })
end)
vim.keymap.set("n", "]E", function()
  require("lspsaga.diagnostic").goto_next({ severity = vim.diagnostic.severity.ERROR })
end)


-- M


-- N
-- 文件浏览树(neo-tree)
--打开文件浏览树。
mapcmd("<leader>nf", "Neotree")
--关闭文件浏览树
mapcmd("<leader>nc", "Neotree close")
--打开文件浏览树，显示您打开的缓冲区
mapcmd("<leader>nb", "Neotree buffers")
--打开或关闭树。采用可选的路径参数
mapcmd("<leader>nt", "Neotree toggle")

-- lsp代码诊断
mapcmd("<leader>nl", "NullLsLog")
mapcmd("<leader>ni", "NullLsInfo")


-- O


-- P


-- Q


-- R


-- S
-- spectre
-- 只替换当前文件
mapnorm("<leader>sf", "viw:lua require('spectre').open_file_search()")
-- 全项目替换
maplua("<leader>sp", "require('spectre').open()")
-- 全项目中搜索当前单词
maplua("<leader>sv", "require('spectre').open_visual({select_word=true})")

-- 替换一切
mapnorm("<leader>sa","vnew:lua require('spectre.actions').run_replace()")
-- 显示差异
mapnorm("<leader>sc","vnew:lua require('spectre').change_view()")
-- 删除选中
mapnorm("<leader>sd","vnew:lua require('spectre').toggle_line()")
-- 切换搜索隐藏
mapnorm("<leader>se","vnew:lua require('spectre').change_options('hidden')")
-- 前往文件
mapnorm("<leader>sg","vnew:lua require('spectre.actions').select_entry()")
-- 切换忽略大小写
mapnorm("<leader>si","vnew:lua require('spectre').change_options('ignore-case')")
-- 查看菜单（忽略大小写、忽略隐藏文件）
mapnorm("<leader>sm","lua require('spectre').show_options()")
-- 输入替换vim命令
mapnorm("<leader>sn","vnew:lua require('spectre.actions').replace_cmd()")
-- vim写入文件时更新更改
mapnorm("<leader>su","vnew:lua require('spectre').toggle_live_update()")

-- switch :快速取单词反意
mapcmd("<leader>sh", "Switch")

-- search
mapkey('n', '<leader>ss', '/')
mapkey('n', '<leader>sw', '/\\<lt>\\><left><left>')


-- T
-- ToggleTerm
-- 退出终端插入模式
mapkey("t", "<Esc>", "<C-\\><C-n>")
-- 打开终端
mapcmd("<leader>ta", "ToggleTerm")

-- 查找 TODO 标签
mapcmd("<leader>td", "TodoTelescope theme=dropdown")

-- telescope
mapcmd('<leader>tsw', "Telescope find_files")
mapcmd('<leader>tsg', "Telescope live_grep")
mapcmd('<leader>tsb', "Telescope buffers")
mapcmd('<leader>tsh', "Telescope help_tags")
mapcmd('<leader>tso', "Telescope oldfiles")
mapcmd('<leader>tsm', "Telescope marks")
-- 显示弹窗历史记录
maplua('<leader>tsn', "Telescope notify")
-- projects
mapcmd("<leader>tsp", "Telescope projects")
-- telescope file_browser
mapcmd("<leader>tse", "Telescope file_browser")
-- telescope frecency
maplua("<leader>tsr", "Telescope frecency")

-- twilight
mapcmd("<leader>twl", "Twilight")
mapcmd("<leader>twe", "TwilightEnable")
mapcmd("<leader>twd", "TwilightDisable")

-- U


-- V

-- W
-- window
mapkey('n', '<leader>wh', '<c-w>h')
mapkey('n', '<leader>wj', '<c-w>j')
mapkey('n', '<leader>wk', '<c-w>k')
mapkey('n', '<leader>wl', '<c-w>l')
mapkey('n', '<leader>w1', '<c-w>o')
mapkey("n", "<leader>wv", "<c-w>v") -- 水平新增窗口
mapkey("n", "<leader>ws", "<c-w>s") -- 垂直新增窗口
mapcmd('<leader>wx', 'x')
mapcmd('<leader>w2', 'sp')
mapcmd('<leader>w3', 'vs')
-- window resize
mapkey('n', '<m-9>', '<c-w><')
mapkey('n', '<m-0>', '<c-w>>')
mapkey('n', '<m-->', '<c-w>-')
mapkey('n', '<m-=>', '<c-w>+')
mapkey('n', '<m-r>', 'resize<space>')
mapkey('n', '<m-t>', 'vertical resize<space>')
--单行或多行移动
mapkey("v", "J", ":m '>+1<CR>gv=gv")
mapkey("v", "K", ":m '<-2<CR>gv=gv")
-- w: lspconfig
maplua('<leader>wa', 'vim.lsp.buf.add_workspace_folder()')
maplua('<leader>wr', 'vim.lsp.buf.remove_workspace_folder()')
maplua('<leader>wl', 'print(vim.inspect(vim.lsp.buf.list_workspace_folders()))')

-- X
-- Trouble
mapcmd("<leader>xt", "TroubleToggle")
mapcmd("<leader>xw", "TroubleToggle workspace_diagnostics")
mapcmd("<leader>xd", "TroubleToggle document_diagnostics")
mapcmd("<leader>xq", "TroubleToggle quickfix")
mapcmd("<leader>xl", "TroubleToggle loclist")
mapcmd("<leader>xr", "TroubleToggle lsp_references")

-- Y

-- Z
-- zem-mode
mapcmd("<leader>zm", "ZenMode")

-- Other keybinds

vim.api.nvim_set_keymap('n', 'n',
    [[<Cmd>execute('normal! ' . v:count1 . 'n')<CR><Cmd>lua require('hlslens').start()<CR>]],
    kopts)
vim.api.nvim_set_keymap('n', 'N',
    [[<Cmd>execute('normal! ' . v:count1 . 'N')<CR><Cmd>lua require('hlslens').start()<CR>]],
    kopts)
vim.api.nvim_set_keymap('n', '*', [[*<Cmd>lua require('hlslens').start()<CR>]], kopts)
vim.api.nvim_set_keymap('n', '#', [[#<Cmd>lua require('hlslens').start()<CR>]], kopts)
vim.api.nvim_set_keymap('n', 'g*', [[g*<Cmd>lua require('hlslens').start()<CR>]], kopts)
vim.api.nvim_set_keymap('n', 'g#', [[g#<Cmd>lua require('hlslens').start()<CR>]], kopts)
