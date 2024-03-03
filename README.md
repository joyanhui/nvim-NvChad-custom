
因为分散管理不方便所以合并到  LeiDotFile 的 [NvChad-custom](https://github.com/joyanhui/LeiDotFile/tree/main/nvim/NvChad-custom) 



# NvChad-custom
自定义neovim配置,基于 [NvChad](https://github.com/NvChad/NvChad) 和  [elulcao](https://github.com/elulcao/NvChad-custom)
<details>
<summary>查看演示图</summary>
<img src="assets/demo.gif" alt="demo - main.go" />
</details>

支持 html  js typescript golang rust python lua 等语言的lsp   
支持 copilot  代码提示   
## 修改点
- 增加插入模式自动判断fctix5输入法的开关，离开插入模式自动关闭输入法
## todo list:
- 快捷键的的整理

## Pre-requisites
必须开代理，线路要良好的，否则安装插件会很慢甚至一直失败。   
如果插件安装失败，可以ctrl+z 关闭后重新打开，也可以在对应的插件位置用i键重新安装。
### Neovim - debian12 
```bash
sudo apt install ripgrep #可选
sudo wget -c https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage -O /opt/nvim.appimage
sudo chmod +x  /opt/nvim.appimage
# echo "alias nvim='/opt/nvim.appimage'" >> ~/.zshrc #or ~/.bashrc 自己配置一下
```
### 字体 nerd fonts
```
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/JetBrainsMono.zip
unzip JetBrainsMono.zip
sudo mkdir  /usr/share/fonts/nerd 
sudo cp ./*.ttf /usr/share/fonts/nerd/
fc-cache -f
```
### 可选的neovide(neovimUI)
https://github.com/neovide/neovide/releases

## 安装NvChad 和 NvChad-custom
### NvChad
一个比较通用的neovim配置，基于 lazy.nvim 的插件管理
```bash
rm -rf ~/.cache/nvim ~/.local/share/nvim/ ~/.config/nvim  ~/.config/nvim-NvChad-custom
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1

```
## 启用自定义配置  NvChad-custom
基于elulcao的配置，增加了一些自定义的配置，使用ln 软链接到nvim的配置目录
```bash
git clone https://github.com/joyanhui/nvim-NvChad-custom.git ~/.config/nvim-NvChad-custom  --depth 1
ln -sf ~/.config/nvim-NvChad-custom/lua/custom $HOME/.config/nvim/lua/
nvim
```


## 插件清单
### NvChad自带的
- Git: gitsigns.nvim.
- 注释: Comment.nvim.
- 文件树: nvim-tree.lua.
- 启动页: alpha-nvim.
- 重命名: renamer.nvim.
- 包管理器: packer.nvim..
- Lsp 配置: nvim-lspconfig.
- 自动完成: nvim-cmp.
- 模糊搜索: telescope.nvim.
- 代码片段:LuaSnip.
- Terminal: toggleterm.nvim.
- 自动补全括号: nvim-autopairs.
- 提供格式化、诊断: null-ls.nvim.
- 管理 tabs、buffers: bufferline.nvim.
### NvChad-custom 配置的
copilot 代码提示 

## UI 插件

主题: nvim-base16.lua.
图标:nvim-web-devicons.
缩进线: indent-blankline.nvim.
状态栏: feline.nvim.
Todo 高亮: todo-comments.nvim.
语法高亮: nvim-treesitter.
颜色高亮:nvim-colorizer.
