-- 自动缩进策略
vim.opt.filetype        = "plugin"
-- 开启语法高亮
vim.opt.syntax          = "enable"
-- 防止包裹
vim.opt.wrap            = false
-- 默认新窗口在右和下
vim.opt.splitright      = true
vim.opt.splitbelow      = true
-- 行号显示 绝对行号和相对行号
vim.opt.number          = true
vim.opt.relativenumber  = true
-- 显示标尺
vim.opt.ruler           = true
-- 无操作时候交换文件写入磁盘等待的时间
vim.opt.updatetime      = 100
-- 高亮当前文本行
vim.o.cursorline      = true
-- 等待按键时长的时间
vim.o.timeoutlen        = 500
-- 外部修改时自动加载
vim.opt.autowrite       = true
vim.opt.autoread        = true
-- 退出时提示确认
vim.opt.confirm         = true
-- 编码设置和检测
vim.g.encoding          = "UTF-8"
vim.o.fileencodings     = "utf-8,gbk,gb2312,gb18030,utf-16,ucs-bom"
-- 显示左侧图标指示列
vim.wo.signcolumn       = "yes"
-- 搜索设置
vim.opt.ignorecase      = true
vim.opt.smartcase       = true
vim.opt.incsearch       = true
vim.opt.hlsearch        = true
-- 拼写建议
vim.opt.spell           = true
vim.opt.spelllang       = { 'en_us' }
-- 鼠标支持
vim.opt.mouse           = "a"
-- 启用系统剪切板
vim.opt.clipboard       = "unnamedplus"
-- 缓存文件设置
vim.opt.backup          = false
vim.opt.writebackup     = false
vim.opt.swapfile        = false
-- 显示特殊字符
vim.opt.list            = true
-- 空格占用以.显示
vim.opt.listchars       = "space:·,tab:··,eol:↴"
-- complete plus
vim.o.wildmenu          = true
-- 终端24位色彩支持
vim.opt.termguicolors   = true
if (vim.fn.has('termguicolors') == 1) then
    vim.opt.termguicolors = true
end
-- 设置缩进
vim.opt.autoindent      = true
vim.opt.tabstop         = 4
vim.opt.shiftwidth      = 4
vim.opt.softtabstop     = 4
vim.opt.expandtab       = true
vim.opt.shiftround      = true
-- 插入括号时短暂跳转到另一半括号
vim.o.showmatch         = true
-- 自动补全不自动选中
vim.g.completeopt       = "menu,menuone,noselect,noinsert"
-- 光标在行首尾时<Left><Right>可以跳到下一行
vim.o.whichwrap         = "<,>,[,]"
-- 补全最多显示16行
vim.o.pumheight         = 16
-- 使用增强状态栏插件后不再需要 vim 的模式提示
vim.o.showmode          = false
-- redrawtime
vim.opt.redrawtime      = 10000
-- 语言
vim.o.langmenu          = "zh_CN.UTF-8"
-- 开启folding
vim.wo.foldmethod       = "expr"
vim.wo.foldexpr         = "nvim_treesitter#foldexpr()"
vim.wo.foldlevel        = 99
vim.o.foldcolumn        = '1' -- '0' is not bad
vim.o.foldlevelstart    = 99
vim.o.foldenable        = true
-----------某些插件需要定义全局变量-----------
--switch
vim.g.switch_custom_definitions = push_words

-- disable some useless standard plugins to save startup time
-- these features have been better covered by plugins
vim.g.loaded_matchparen        = 1
vim.g.loaded_matchit           = 1
vim.g.loaded_logiPat           = 1
vim.g.loaded_rrhelper          = 1
vim.g.loaded_tarPlugin         = 1
vim.g.loaded_gzip              = 1
vim.g.loaded_zipPlugin         = 1
vim.g.loaded_2html_plugin      = 1
vim.g.loaded_shada_plugin      = 1
vim.g.loaded_spellfile_plugin  = 1
vim.g.loaded_netrw             = 1
vim.g.loaded_netrwPlugin       = 1
vim.g.loaded_tutor_mode_plugin = 1
vim.g.loaded_remote_plugins    = 1
vim.g.markdown_fenced_languages={
    "ts=typescript"
}
