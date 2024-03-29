"关闭兼容模式
set nocompatible
"模仿快捷键如：ctrl+A
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin
"字体设置
set guifont=新宋体:h20:cGB2312
"gvim内部编码
set encoding=utf-8
"当前文件编码
set fileencoding=utf-8
"gvim 支持编码的文件
set fileencodings=utf-8,gbk,gb2312,cp936
"解决consle乱码输出
language messages zh_CN.utf-8
set termencoding=cp936
"禁用交换文件
setlocal noswapfile
"解决菜单乱码
source $vimruntime/delmenu.vim
source $vimruntime/menu.vim
"设置终端编码为gvim内部编码encoding
let &termencoding=&encoding
"防止特殊字符无法显示
set ambiwidth=double
"缩进尺寸为4个空格
set sw=4 
"tab宽度为4个字符
set ts=4
"编辑时将所有tab替换为空格
set et
"按一次 backspace删除4个空格
set smarttab
"不生成备份文件
set nobackup
"开启行号标记
set number
"关闭工具栏
set guioptions-=T
"关闭右侧滚动条
set guioptions-=r
"开启自动缩进
set autoindent
"调用管理插件pathogen
syntax on
call pathogen#runtime_append_all_bundles() 
"不与vi兼容
set nocp 
filetype plugin indent on
set tags=tags;
set autochdir
colo macvim
""""""""""""""""""""""""""""""""
 " Platform
function! MySys()
  if has("win16") || has("win32") || has("win64") || has("win95")
    return "windows"
let PYTHON_BIN_PATH = 'c:/python27/python.exe' " ensure the path right
  elseif has("unix")
    return "linux"
  endif
endfunction

if MySys() == "windows"
  set termencoding=chinese
  set fileencoding=chinese
elseif MySys() == "linux"
  let &termencoding=&encoding
  set fileencodings=utf-8,gbk,ucs-bom,cp936
endif

"防止特殊符号无法正常显示。
if exists("&ambiwidth")
    set ambiwidth=double
endif

"***************************************************************
  let Tlist_Show_One_File=1    "只显示当前文件的tags
  let Tlist_WinWidth=22   "设置taglist宽度

    let Tlist_Show_One_File=0 
    let Tlist_Exit_OnlyWindow=1   
    let Tlist_Auto_Open=1 
  map <silent> <F3> :TlistToggle<CR>

"***************************************************************
let g:winManagerWindowLayout='FileExplorer|taglist'
let g:AutoOpenWinManager = 1 
let g:winManagerWidth = 18
nmap <silent><F8> :WMToggle<cr>
 
"****************************************************************

"自动补全插件neocompletecache
let g:NeoComplCache_DisableAutoComplete = 1
let g:neocomplcache_enable_at_startup = 1
"******************************************************************
set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction
"""""""""""""""""""""""""""""""""""
let VIMPRESS=[{'username':'admin', 
               \'password':'dong1990819', 
               \'blog_url':'http://www.skystill.com/' 
               \}, 
               \{'username':'user', 
               \'blog_url':'http://your-second-blog.com/' 
               \}]
