local g = vim.g
local opt = vim.opt
local HOME = os.getenv("HOME")
-- local autocmd = vim.api.nvim_create_autocmd

opt.colorcolumn = "79,99"
opt.fileformat = "unix"
opt.fileformats = "unix,dos,mac"
opt.wildignore = "wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__,.DS_Store"

g.copilot_assume_mapped = true
g.tmux_navigator_save_on_switch = 2
g.vimwiki_list = {
  {
    path = HOME .. "/Documents/vimwiki",
    syntax = "markdown",
    ext = ".md",
    links_space_char = "_",
  },
}
--- 自动处理fcitx5输入法 如果不使用fcitx5可以注释掉
--- 逻辑: 如果离开插入模式关闭输入法, 如果回到插入模式输入法且之前是打开的，就重新打开
vim.cmd("autocmd InsertLeave * :silent let fcitx5state=system('fcitx5-remote')[0] | silent !fcitx5-remote -c")
vim.cmd("autocmd InsertEnter * :silent if fcitx5state == 2 | call system('fcitx5-remote -o') | endif")
