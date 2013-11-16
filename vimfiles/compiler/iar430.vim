" Vim compiler file
" Filename:         iar430.vim
" Compiler:         icc430 and xlink of IAR Tools
" Maintainer:       flying
" Last Change:      2012 02 04

if exists("current_compiler")
  finish
endif

let current_compiler = "iar430"

if exists(":CompilerSet") != 2                " older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

let s:cpo_save = &cpo
set cpo-=C

CompilerSet errorformat=%A\ \ %p^,
                        \%C\"%f\"\\\,%l\ \ %tarning[Pe%n]:\ %m,
                        \%C%*[\ ]%m,
                        \%Z,
                        \%A\ \ %p^,
                        \%C\"%f\"\\\,%l\ \ %trror[Pe%n]:\ %m,
                        \%C%*[\ ]%m,
                        \%Z,
                        \%-G\\s%#,
                        \%-G\ %.%#,
                        \%-GErrors:\ %.%#,
                        \%-GWarnings:\ %.%#,
                        \%-GError[e%.%#

" 指定默认的调用程序
" 参数说明：    -f Makefile.mak     使用此文件为makefile
"               CurrentFile=去掉扩展名的当前文件名  用来编译当前的文件
" 约定：        在输入make命令时，使用 f=? 来决定执行的动作，如：编译还是链接
"               编译链接的参数为：f=c   compile,将此c文件和包含的h文件编译为目标文件
"                                 f=l   link,将这个项目的所有目标文件链接为执行文件
"                                 f=h   hex,将执行文件转换格式，如*.hex格式等
"                                 f=a   将上面的命令全部执行
CompilerSet makeprg=make\ -i\ -s\ -f\ Makefile.mak\ CurrentFile=%<

let &cpo = s:cpo_save
unlet s:cpo_save

