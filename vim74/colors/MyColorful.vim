"olorful256.vim修改而来，自用，该版本适合Cygwin下的vim使用
" Vim color file:  MyColorful256.vim
" Last Change: 2013 05 29
" License: public domain
" Maintainer:: zjdd520
" for a 256 color capable terminal
" You must set t_Co=256 before calling this colorscheme 
" Color numbers (0-255) see:
" http://www.calmar.ws/vim/256-xterm-24bit-rgb-color-chart.html 
" Added gui colors
set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name = "MyColorful"
 "普通
 highlight Normal       cterm=none    ctermfg=7 ctermbg=16  gui=none    guifg=#eeeeec guibg=#000000
 "特殊
 highlight Special      cterm=none    ctermfg=5 ctermbg=16  gui=none    guifg=#20b2aa guibg=#000000
 "注释
 highlight Comment      cterm=none    ctermfg=8 ctermbg=16  gui=none    guifg=#4e5656 guibg=#000000
 "常量
 highlight Constant     cterm=none    ctermfg=9 ctermbg=16  gui=none    guifg=#f85757 guibg=#000000
 "行号
 highlight LineNr       cterm=none    ctermfg=6 ctermbg=16  gui=none    guifg=#4e5656 guibg=#000000
 "数字
 highlight Number       cterm=none    ctermfg=1 ctermbg=16  gui=none    guifg=#cc0000 guibg=#000000
"属性
 highlight PreProc      cterm=none    ctermfg=5 ctermbg=16  gui=none    guifg=#ff00ff guibg=#000000
"声明，return if while 等关键字'
 highlight Statement    cterm=none    ctermfg=3 ctermbg=16  gui=none    guifg=#c4a000 guibg=#000000
 "类型，int double char 等基本类型
 highlight Type         cterm=none    ctermfg=2 ctermbg=16  gui=none    guifg=#4f9e05 guibg=#000000 
 "错误提示
 highlight Error        cterm=none    ctermfg=1 ctermbg=16  gui=none    guifg=#ff0000 guibg=#000000
 "标识符
 highlight Identifier   cterm=none    ctermfg=9 ctermbg=16  gui=none    guifg=#ff5fff guibg=#000000
 "特殊值
 highlight SpecialKey   cterm=none    ctermfg=6 ctermbg=16  gui=none    guifg=#00cccc guibg=#000000
 "非文本
 highlight NonText      cterm=none    ctermfg=4 ctermbg=16  gui=none    guifg=#4e5656 guibg=#000000
 "目录
 highlight Directory    cterm=none    ctermfg=2 ctermbg=16  gui=none    guifg=#00af00 guibg=#000000
 "错误信息
 highlight ErrorMsg     cterm=none    ctermfg=1 ctermbg=16  gui=none    guifg=#ff0000 guibg=#000000
"追加信息
 highlight MoreMsg      cterm=none    ctermfg=2 ctermbg=16  gui=none    guifg=#00af00 guibg=#000000
 "标题
 highlight Title        cterm=none    ctermfg=4 ctermbg=16  gui=none    guifg=#ff00af guibg=#000000
"警告信息
 highlight WarningMsg   cterm=none    ctermfg=9 ctermbg=16  gui=none    guifg=#ff0000 guibg=#000000
 "异常删除
 highlight DiffDelete   cterm=none    ctermfg=13 ctermbg=16 gui=none    guifg=#ff5fff guibg=#000000
 "搜索结果
 highlight Search       cterm=none    ctermfg=16 ctermbg=2  gui=none    guifg=#ffffff guibg=#df0000
 "可视选中
 highlight Visual       cterm=none    ctermfg=16 ctermbg=15 gui=none    guifg=#000000 guibg=#00ffff
 "光标
 highlight Cursor       cterm=none    ctermfg=16 ctermbg=6  gui=none    guifg=#000000 guibg=#00ced1
 "状态栏
 highlight StatusLine   cterm=reverse ctermfg=7  ctermbg=16 gui=none		guifg=#000000 guibg=#cccccc
 "问题
 highlight Question     cterm=none    ctermfg=16 ctermbg=3  gui=none    guifg=#000000 guibg=#ffff00
 "代办事项
 highlight Todo         cterm=none    ctermfg=5  ctermbg=3  gui=none    guifg=#df0000 guibg=#dfdf00
"折叠
 highlight Folded       cterm=none    ctermfg=15 ctermbg=8  gui=none    guifg=#000000 guibg=#00ffff
 "模式信息
 highlight ModeMsg      cterm=none    ctermfg=10 ctermbg=16 gui=none    guifg=#00ff00 guibg=#000000
 "可视NOS
 highlight VisualNOS    cterm=none    ctermfg=16 ctermbg=2  gui=none    guifg=#000000 guibg=#008000
 "附加菜单
 highlight WildMenu     cterm=none    ctermfg=16 ctermbg=7  gui=none    guifg=#000000 guibg=#ffff00
"折叠选中
 highlight FoldColumn   cterm=none    ctermfg=8  ctermbg=15 gui=none    guifg=#ffffff guibg=#5f5f00
"状态标识
 highlight SignColumn   cterm=none    ctermfg=16 ctermbg=10 gui=none    guifg=#000000 guibg=#008800
"查询结果
 highlight DiffText     cterm=none    ctermfg=16 ctermbg=2  gui=none    guifg=#000000 guibg=#00af00
 "附加状态栏
 highlight StatusLineNC cterm=reverse ctermfg=7  ctermbg=16 gui=none		guifg=#000000 guibg=#cccccc
"垂直分割条
 highlight VertSplit    cterm=reverse ctermfg=11 ctermbg=15 gui=none		guifg=#000000 guibg=#f7f808
"muti_user
 highlight User1        cterm=none    ctermbg=4  ctermfg=15  gui=none    guibg=#cccccc guifg=#000000
 highlight User2        cterm=none    ctermbg=4  ctermfg=2   gui=none    guibg=#cccccc guifg=#000000
 highlight User3        cterm=none    ctermbg=4  ctermfg=2   gui=none    guibg=#cccccc guifg=#000000
 highlight User4        cterm=none    ctermbg=4  ctermfg=6   gui=none    guibg=#cccccc guifg=#000000
 highlight User5        cterm=none    ctermbg=4  ctermfg=2   gui=none    guibg=#cccccc guifg=#000000
 highlight User6        cterm=none    ctermbg=4  ctermfg=2   gui=none    guibg=#cccccc guifg=#000000
 highlight User7        cterm=none    ctermbg=4  ctermfg=2   gui=none    guibg=#cccccc guifg=#000000
 highlight User8        cterm=none    ctermbg=4  ctermfg=2   gui=none    guibg=#cccccc guifg=#000000
 highlight User9        cterm=none    ctermbg=4  ctermfg=2   gui=none    guibg=#cccccc guifg=#000000
" for groups introduced in version 7
if v:version >= 700
   highlight Pmenu       cterm=none ctermfg=16 ctermbg=13 gui=none guifg=#000000 guibg=#cc00ff
   highlight PmenuSel    cterm=none ctermfg=16 ctermbg=7  gui=none guifg=#000000 guibg=#dddddd
   highlight tablinesel  cterm=none ctermfg=15 ctermbg=3  gui=none guifg=#ffffff guibg=#5f5f00
   highlight tabline     cterm=none ctermfg=7  ctermbg=3  gui=none guifg=#c0c0c0 guibg=#5f5f00
   highlight tablinefill cterm=none ctermfg=11 ctermbg=3  gui=none guifg=#5f5f00 guibg=#5f5f00
endif
"for taglist plugin
if exists('loaded_taglist')
	highlight TagListTagName  cterm=none ctermfg=16  ctermbg=2  gui=none guifg=#000000 guibg=#008700
	highlight TagListTagScope cterm=none ctermfg=16  ctermbg=2  gui=none guifg=#000000 guibg=#008700
	highlight TagListTitle    cterm=none ctermfg=5   ctermbg=16 gui=none guifg=#ff00af guibg=#000000
	highlight TagListComment  cterm=none ctermfg=16  ctermbg=2  gui=none guifg=#000000 guibg=#008700
	highlight TagListFileName cterm=none ctermfg=15  ctermbg=5  gui=none guifg=#ffffff guibg=#870087
endif
