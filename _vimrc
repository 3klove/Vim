"�رռ���ģʽ
set nocompatible
"ģ�¿�ݼ��磺ctrl+A
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin
"��������
set guifont=������:h20:cGB2312
"gvim�ڲ�����
set encoding=utf-8
"��ǰ�ļ�����
set fileencoding=utf-8
"gvim ֧�ֱ�����ļ�
set fileencodings=utf-8,gbk,gb2312,cp936
"���consle�������
language messages zh_CN.utf-8
set termencoding=cp936
"���ý����ļ�
setlocal noswapfile
"����˵�����
source $vimruntime/delmenu.vim
source $vimruntime/menu.vim
"�����ն˱���Ϊgvim�ڲ�����encoding
let &termencoding=&encoding
"��ֹ�����ַ��޷���ʾ
set ambiwidth=double
"�����ߴ�Ϊ4���ո�
set sw=4 
"tab����Ϊ4���ַ�
set ts=4
"�༭ʱ������tab�滻Ϊ�ո�
set et
"��һ�� backspaceɾ��4���ո�
set smarttab
"�����ɱ����ļ�
set nobackup
"�����кű��
set number
"�رչ�����
set guioptions-=T
"�ر��Ҳ������
set guioptions-=r
"�����Զ�����
set autoindent
"���ù������pathogen
syntax on
call pathogen#runtime_append_all_bundles() 
"����vi����
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

"��ֹ��������޷�������ʾ��
if exists("&ambiwidth")
    set ambiwidth=double
endif

"***************************************************************
  let Tlist_Show_One_File=1    "ֻ��ʾ��ǰ�ļ���tags
  let Tlist_WinWidth=22   "����taglist����

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

"�Զ���ȫ���neocompletecache
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