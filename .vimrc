"=================================编码===================================="
set encoding        =utf-8 
set termencoding    =utf-8 
set fileencoding    =utf-8 
set fileencodings   =utf-8,ucs-bom,cp936,chinese,latin-1
lang messages zh_CN.UTF-8   " 解决consle输出乱码

if has("win32")
    " 此处规定Vundle的路径  
    set rtp+=$VIM/vimfiles/bundle/vundle/  
    call vundle#rc('$VIM/vimfiles/bundle/')  
    set guifont=IosevkaCC:h16:cANSI
    "set guifont=Consolas:h16:b:cANSI
    set guifontwide=YouYuan:h14:cGB2312,Microsoft_Yahei:h16:cGB2312
    "解决菜单乱码   
    source $VIMRUNTIME/delmenu.vim   
    source $VIMRUNTIME/menu.vim  
    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
else "在Linux下：
    " 此处规定Vundle的路径  
    set rtp+=~/.vim/bundle/vundle/  
    call vundle#rc()
    "字体
    set guifont=IosevkaCC\ 18
    set guifontwide=YouYuan\ 16
    " 查看方法输入:Man api_name gvim 乱码
    "source $VIMRUNTIME/ftplugin/man.vim
    " 映射之后就可以少按一下 Shift 键。
    "cmap man Man
    " 在普通模式下按下 K （大写）即可启动 man 查看光标下的函数。
    "nmap K :Man <cword><CR>
    "linux下解决菜单乱码
    "cd /usr/share/vim/vim72/lang
    "sudo ln -s menu_zh_cn.utf-8.vim menu_zh_cn.utf8.vim
endif
"=================================编码===================================="

"=================================系统===================================="
"鼠标的行为是Windows风格 -会影响块模式
"source $VIMRUNTIME/mswin.vim
"behave mswin 
"鼠标的行为是X Window风格
"behave xterm
"设置按下鼠标右键之后像vim一样弹出菜单
"set mousemodel=popup

set keywordprg=sdcv         "按K键查找光标处单词的帮助，默认是man
"set ambiwidth=double        "等宽

"关闭了vi兼容模式，并允许进行文件类型检测
set nocp
set nocompatible

"let $VIMRUNTIME="~/.vim/"  
"set runtimepath=~/.vim/
source $VIMRUNTIME/vimrc_example.vim

"在normal模式下使用系统剪贴板(例如用y复制时)
set clipboard+=unnamed
"鼠标右键 y复制中键粘贴
set mouse=a
"自动切换目录
set autochdir
"显示行号
set nu!
"显示标尺
set ruler
"自动折行
set nowrap
"set wrap

"按完整单词折行
set nolinebreak
"set linebreak
"行宽（输入时自动插入换行符）
set textwidth=1024
autocmd FileType * setlocal textwidth=1024 formatoptions+=t
"set textwidth=0
"set linespace=6

"Tab为8
set tabstop     =4   "ts是tabstop的缩写
set softtabstop =4
set shiftwidth  =4
set expandtab
"对于已保存的文件，可以使用下面的方法进行空格和TAB的替换：

"TAB替换为空格：
":set ts=4
":set expandtab
":%retab!
"
"空格替换为TAB：
":set ts=4
":set noexpandtab
":%retab!
"
"加!是用于处理非空白字符之后的TAB，即所有的TAB，若不加!，则只处理行首的TAB。

"设置搜索时忽略大小写
set ic               

"自动对齐
set autoindent
"智能对齐
set smartindent
"设置匹配模式，类似当输入一个左括号时会匹配相应的那个右括号
set noshowmatch

"不产生临时文件
set noundofile
set noswapfile
set nobackup 
set nowritebackup 

"vim隐藏工具栏和菜单栏,以及动态切换
set guioptions-=m
set guioptions-=T
map <silent> <F2> :if &guioptions =~# 'T' <Bar>
            \set guioptions-=T <Bar>
            \set guioptions-=m <bar>
            \else <Bar>
            \set guioptions+=T <Bar>
            \set guioptions+=m <Bar>
            \endif<CR>

"在右下脚显示当前命令 注：要在set nocp之后
set showcmd
"水平滚动
set guioptions+=b
set lines=28 columns=84

" 设置代码折叠
set foldenable
"如果发现文件类型为c或cpp，就启用折叠功能
"autocmd FileType c,cpp setl fdm=syntax | setl fen
"set foldmethod=syntax

set fdm=syntax          "用语法高亮来定义折叠
"set fdm=manual          "手工定义折叠
"set fdm=indent          "更多的缩进表示更高级别的折叠
"set fdm=expr            "用表达式来定义折叠
"set fdm=diff            "对没有更改的文本进行折叠
"set fdm=marker          "对文中的标志折叠

"缩进 
"autocmd FileType c,cpp set shiftwidth=3 | set expandtab 
"c,cpp缩进
"set cindent

"合并系统剪切板 xsel
set clipboard=unnamed,unnamedplus

set cursorline
"hi CursorLine  cterm=NONE   ctermbg=darkred ctermfg=white
"hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white
"插入模式时是红色
"au InsertLeave * hi Cursor gui=red
"离开插入模式时是绿色
"au InsertEnter * hi Cursor gui=green
"光标不闪烁
"set gcr=a:block-blinkon0
highlight Cursor guifg=#1faed0 guibg=white

"屏蔽系统输入法
"set imactivatekey=C-space
filetype on
filetype plugin on
filetype indent on
"=================================系统===================================="
"
"================================Vundle==================================="
set nocompatible              " be iMproved, required
filetype off                  " required
" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
" original repos on github<br>Bundle 'mattn/zencoding-vim'  
"Bundle 'drmingdrmer/xptemplate'  

" vim-scripts repos  
Bundle 'scrooloose/nerdtree'  
Bundle 'minibufexpl.vim'
"Bundle 'winmanager' 
Bundle 'taglist.vim'
Bundle 'c.vim'
Bundle 'momota/cisco.vim'
Bundle 'snipMate'
Bundle 'majutsushi/tagbar'

"代码补全 按照级别排序
"clang_complete 包含代码补全和跳转
Bundle 'rip-rip/clang_complete'
"Bundle 'AutoComplPop'
"omni利用ctags支持结构体补全
"Bundle 'OmniCppComplete' 
"Bundle 'kanwar-saad/gtagsomnicomplete'

"上下文补全
Bundle 'NeoComplCache'  
Bundle 'osyo-manga/neocomplcache-clang_complete'
"neocomplete需要lua
"Bundle 'Shougo/neocomplete.vim'

"文件搜索
Bundle 'kien/ctrlp.vim'

"Bundle 'itchyny/lightline.vim'
Bundle 'vim-airline/vim-airline'
Bundle 'vim-airline/vim-airline-themes'
Bundle 'rakr/vim-two-firewatch'
Bundle 'tyrannicaltoucan/vim-quantum'
Bundle 'tyrannicaltoucan/vim-deep-space'
Bundle 'MarcWeber/vim-addon-background-cmd'
"theme
Bundle 'lifepillar/vim-wwdc17-theme'
Bundle 'NLKNguyen/papercolor-theme'
Bundle 'playroom'
Bundle 'saturn.vim'
Bundle 'atelierbram/Base2Tone-vim'
Bundle 'rakr/vim-one'
Bundle 'trevordmiller/nova-vim'
Bundle 'joshdick/onedark.vim'
"Bundle 'vimim/vimim'

call vundle#end()	            " required!
filetype plugin indent on       " required!
"bundle分为三类：https://github.com/vim-scripts
"1.在Github vim-scripts 用户下的repos,只需要写出repos名称
"2.在Github其他用户下的repos, 需要写出"用户名/repos名"
"3.不在Github上的插件，需要写出git全路径
"
" Brief help  -- 此处后面都是vundle的使用命令
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
"================================Vundle==================================="


"==============================主题和样式================================="
"--------------------------"
"语法高亮
"colorscheme desert
syntax enable
syntax on
"--------------------------"
set background=light        " for the light version
let g:two_firewatch_italics=1
if expand("%:e") ==? "cisco" 
    set background=dark
    colorscheme two-firewatch
    set linespace=2
endif

let g:wwdc17_frame_color = 10
let g:wwdc17_transp_bg = 1
colorscheme wwdc17
"colorscheme pencil
"colorscheme onedark
"colorscheme statusline
"--------------------------------------------------------------------------
"vim-airline
"--------------------------------------------------------------------------
let g:airline_theme="pencil" 
"这个是安装字体后 必须设置此项" 
let g:airline_powerline_fonts = 1  

" 关闭状态显示空白符号计数
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#whitespace#symbol = '!'
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
" old vim-powerline symbols
let g:airline_left_sep           = ''
let g:airline_left_alt_sep       = ''
let g:airline_right_sep          = ''
let g:airline_right_alt_sep      = ''
let g:airline_symbols.branch     = ''
let g:airline_symbols.readonly   = ''
let g:airline_symbols.linenr     = ''
let g:airline_symbols.paste      = 'ρ'
let g:airline_symbols.paste      = 'Þ'
let g:airline_symbols.whitespace = 'Ξ'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"注释颜色
"hi Comment ctermfg=1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"颜色主要有这三种属性：
"term 
"cterm					//设置为bold 则会很亮
"ctermfg				//设置从1~8 种基本颜色
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"==============================主题和样式================================="

"==============================代码注释==================================="
"--------------------------------------------------------------------------------
" CVim :help csupport
"--------------------------------------------------------------------------------
let g:C_Comments		    = "yes"         " 用C++的注释风格
let g:C_BraceOnNewLine	    = "yes"         " '{'是否独自一行
let g:C_AuthorName		    = "Demonelf"
let g:C_Project			    = "F9"
let g:Cpp_Template_Function	= "c-function-description-demonelf"
let g:C_TypeOfH             = "c"           " *.h文件的文件类型是C还是C++
"let g:C_LocalTemplateFile	= $RUNTIME"c-support/templates/Templates"
"let g:C_GlobalTemplateFile	= $VIMRUNTIME"//..//vimfiles/bundle/c.vim/c-support/templates"
"let g:C_GuiSnippetBrowser	= 'commandline'
"let g:C_GuiTemplateBrowser	= 'explorer'
"let g:C_CreateMenusDelayed	= 'yes'
"let g:C_LoadMenus		    = 'no'

"代码块的自动补全snipMate
"let g:snippets_dir = "/usr/share/vim/vimfiles/snippets/"
"let g:snippets_dir = "/home/demonelf/.vim/snippets"
if has("win32")
    let g:snippets_dir = "$VIMRUNTIME//..//vimfiles//bundle//snipMate//snippets"
endif
"==============================代码注释==================================="
"
"==============================代码补全==================================="

"clang complete
"不显示预览
set completeopt=longest
" path to directory where library can be found
"let g:clang_library_path='/usr/lib/llvm/5/lib64'
" or path directly to the library file
let g:clang_use_library = 1
let g:clang_library_path='/usr/lib/llvm/5/lib64/libclang.so'
"自动选择第一个匹配项但不插入到代码中
let g:clang_auto_select         = 1
"在->. ., ::后自动补全
let g:clang_complete_auto       = 1
"发现错误之后打开QuickFix窗口
let g:clang_complete_copen      = 1
"高亮警告和错误
let g:clang_hl_errors           = 1
"插入第一个补全后关闭预览窗口
let g:clang_close_preview       = 1
"开启对C++11的编译支持
let g:clang_user_options        = 'std=c++11'
"补全预处理指令，宏和常数，默认为0，不补全
let g:clang_complete_macros     = 1
"补全代码模式，比如循环等，默认为0，不补全
let g:clang_complete_patterns   = 1

"<C-]>跳转到声明
"let g:clang_jumpto_declaration_key = "<C-]>"
"<C-t>回跳
"let g:clang_jumpto_back_key     = "<C-t>"
"避免和ctrl+],ctrl+t原有的功能冲突
let g:clang_jumpto_back_key         ="<a-t>"
let g:clang_jumpto_declaration_key  ="<a-d>"

"<C-w>]在预览窗口中打开声明
let g:clang_jumpto_declaration_in_preview_key = "<C-w>]"
"使用UltiSnips进行代码片段补全
let g:clang_snippets            = 1
"let g:clang_snippets_engine     = 'ultisnips'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"自动补全NeoComplCache 可代替AutoComplPop但配置复杂
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NeoComplCache_EnableAtStartup    = 1
let g:neocomplcache_enable_at_startup  = 1
let g:neocomplcache_enable_auto_select = 1 

" neocomplcache-clang :help neocomplcache-faq 解决clang_complete和neocomplcache的冲突。
if !exists('g:neocomplcache_force_omni_patterns')
  let g:neocomplcache_force_omni_patterns = {}
endif
let g:neocomplcache_force_overwrite_completefunc = 1
let g:neocomplcache_force_omni_patterns.c =
      \ '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplcache_force_omni_patterns.cpp =
      \ '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
let g:neocomplcache_force_omni_patterns.objc =
      \ '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplcache_force_omni_patterns.objcpp =
      \ '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"==============================代码补全==================================="


"===============================快捷键===================================="
"保存
map <C-s> :w<CR>

"F4保存退出
map <F4> :wqa<CR>

"高亮
map <S-F8> m`#``

"tagbar 比tlist强大些
"设置tagbar使用的ctags的插件,必须要设置对    
map <F11> :TagbarToggle<CR>  
"let g:Tagbar_title                 = "[Tagbar]"
"let g:tagbar_vertical              = 30"  
let g:tagbar_updateonsave_maxlines  = 1	"文件保存时自动更新tagbar
let g:tagbar_ctags_bin              ='/usr/bin/ctags' 
let g:tagbar_compact                = 1	"隐藏最上方的帮助提示
let g:tagbar_width                  = 25 
let g:tagbar_left                   = 1  
let g:tagbar_sort                   = 0

"TreeToggle
map <F12> :NERDTreeToggle<CR>
imap <F12> <ESC>:NERDTreeToggle<CR>
let NERDTreeQuitOnOpen              = 1
let NERDTreeWinPos                  ='right'
let NERDTreeIgnore                  = ['cscope.files','GPATH','GRTAGS','GTAGS','tags','.*\.o$','.*\.ko$','.*\.gz$']
let NERDTreeWinSize                 = 26
let g:NERDTreeDirArrowExpandable    = '▌'
let g:NERDTreeDirArrowCollapsible   = 'Ξ'

"ctrlp 
let g:ctrlp_map                     = '<c-p>'
let g:ctrlp_cmd                     = 'CtrlP'
let g:ctrlp_working_path_mode       = 'ra'
let g:ctrlp_match_window_bottom     = 1
let g:ctrlp_max_height              = 30
let g:ctrlp_match_window_reversed   = 0
let g:ctrlp_mruf_max                = 500
let g:ctrlp_follow_symlinks         = 1
let g:ctrlp_clear_cache_on_exit     = 0

"miniBufExplorer
"操作： d 关闭当前文件
"当处于有改动的缓冲区 有miniBufExplorer上有+符号 则新打开文件时是上下分屏的
let g:miniBufExplMapWindowNav       = 1
let g:miniBufExplMapWindowNavVim    = 1		"按下Ctrl+h/j/k/l，可以切换到当前窗口的上下左右窗口
let g:miniBufExplMapWindowNavArrows = 0		"按下Ctrl+箭头，可以切换到当前窗口的上下左右窗口
let g:miniBufExplMapCTabSwitchBufs  = 1		"启用以下两个功能：Ctrl+tab移到下一个窗口
let g:miniBufExplModSelTarget       = 1		"不要在不可编辑内容的窗口（如TagList窗口）中打开选中的buffer
let g:miniBufExplorerMoreThanOne    = 1		"
let g:miniBufExplMaxSize            = 2		"窗口最大高度
" MiniBufExpl Colors
hi MBEVisibleNormal          guifg=#282C34   guibg=#4FB8CC
hi MBEVisibleChanged         guifg=#282C34   guibg=#4FB8CC
"允许在有未保存的修改时切换缓冲区，此时的修改由 vim 负责保存
"防止上下分屏
set hidden

"打开终端
if has("win32")
    map <silent> <F3> :silent !start<CR>
else
    map <silent> <F3> :silent !gnome-terminal &<CR>
endif

"用空格键来开关折叠
nnoremap <silent> <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>

"全屏显示
if has("win32")
    autocmd GUIEnter * simalt ~x
else
    autocmd GUIEnter * silent !wmctrl -r :ACTIVE: -b add,maximized_vert,maximized_horz
endif

function Maximize_Window()
    silent !wmctrl -r :ACTIVE: -b add,maximized_vert,maximized_horz
endfunction
"===============================快捷键===================================="

"===============================cscope===================================="
"cscope实现Source Insight功能 source cscope_maps.Vim
nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
"set cscopequickfix=c-,d-,e-,f-,g0,i-,s-,t-
"let g:GtagsCscope_Auto_Load = 1
"let g:GtagsCscope_Auto_Map = 1
"set cscopeprg   =cscope
"set csprg       =cscope
"原因是/etc/vimrc中已经将cscope.out读入，在plugin中也读了一遍，这样就有两遍
set nocscopeverbose
set cscopetag
set cscopeprg   =gtags-cscope
set csprg       =gtags-cscope
let g:GtagsCscope_Absolute_Path = 1
let g:ProjDir=getcwd()

"或者这个vim-addon-background-cmd 又或者装这个AutoTag插件，要求Vim6，且编译时要支持python。
if has("win32")
    if "makefile" ==? expand("%")
        autocmd BufWritePost *.cpp,*.cc,*.h,*.c call UPDATE_TAGS()
        if filereadable("GTAGS")
            cscope reset
            set nocscopeverbose
            exe "cs add GTAGS " . g:ProjDir
            set cscopeverbose
        else
            exec "silent !dir /s /b *.s *.S *.c *.h *.cc *.cpp *.hpp *.s > gtags.files"
            "exec "silent !ctags -a -n -R -I --c++-kinds=+p --fields=+iaS --extra=+q --tag-relative=yes -L gtags.files"
            exec "silent !gtags"
            cscope reset
            set nocscopeverbose
            exe "cs add GTAGS " . g:ProjDir
            set cscopeverbose
        endif
        if $CSCOPE_DB  != ""
            cs add $CSCOPE_DB
        endif
    endif

    function! UPDATE_TAGS()
        let _f_ = expand("%:p")
        "exec 'silent !start /min ctags --append=yes --sort=yes --excmd=pattern -f ' . '' . g:ProjDir . '' . '\tags --c++-kinds=+p --fields=+iaS --extra=+q ' . '' . _f_ . ''
        exec 'silent !start /min global --single-update ' . '' . _f_ . ''
        unlet _f_
    endfunction
else
    if "makefile" ==? expand("%")
        autocmd BufWritePost *.cpp,*.cc,*.h,*.c call UPDATE_TAGS()
        if filereadable("GTAGS")
            cscope reset
            set nocscopeverbose
            exe "cs add GTAGS " . g:ProjDir
            set cscopeverbose
        else
            exec "silent !find $PWD -type f > cscope.files"
            exec "silent !find $PWD -type d -name \"include\"> .clang_complete_tmp"
            exec "silent !sed 's/^/-I&/g' .clang_complete_tmp > .clang_complete && rm .clang_complete_tmp"
            "exec "silent !ctags -a -n -R -I --c++-kinds=+p --fields=+iaS --extra=+q --language-force=C++ --tag-relative=yes -L cscope.files"
            exec "silent !gtags -f cscope.files"
            cscope reset
            set nocscopeverbose
            exe "cs add GTAGS " . g:ProjDir
            set cscopeverbose
        endif
        if $CSCOPE_DB  != ""
            cs add $CSCOPE_DB
        endif
    endif

    function! UPDATE_TAGS()
        let _f_ = expand("%:p")
        "exec 'silent !ctags --append=yes --sort=yes --excmd=pattern -f ' . '' . g:ProjDir . '' . '/tags --c++-kinds=+p --fields=+iaS --extra=+q ' . '' . _f_ . ''
        exec 'silent !cd ' . '' . g:ProjDir . '' . '&&gtags --single-update ' . '' . _f_ . ''
        unlet _f_
    endfunction
endif
"递归当前根目录
set autochdir
set tags+=tags;
set tags+=~/.vim/tags/cpp_src/tags
"set tags+=~/.vim/tags/gl
"set tags+=~/.vim/tags/fl
"===============================cscope===================================="

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"疯狂十六进制配置文件 2018-3-26
"最新配置请在官方网站下载:www.madhex.com
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
