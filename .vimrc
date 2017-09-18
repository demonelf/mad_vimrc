"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"疯狂十六进制配置文件
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"==============================编码================================="
set encoding        =utf-8 
set termencoding    =utf-8 
set fileencoding    =utf-8 
set fileencodings   =utf-8,ucs-bom,cp936,chinese,latin-1
lang messages zh_CN.UTF-8   " 解决consle输出乱码

if has("win32")
    " 此处规定Vundle的路径  
    set rtp+=$VIM/vimfiles/bundle/vundle/  
    call vundle#rc('$VIM/vimfiles/bundle/')  
    "set guifont=Fira_Mono:h15:cANSI
    set guifont=InputMono:h16:cANSI
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
    set guifont=InputMono\ 15
    set guifontwide=YouYuan\ 14
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
"==============================编码================================="

"==============================Vundle================================="
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
Bundle 'winmanager' 
Bundle 'taglist.vim'
Bundle 'c.vim'
Bundle 'momota/cisco.vim'
Bundle 'snipMate'

"结构体补全 按照级别排序
"Bundle 'AutoComplPop'
"omni利用ctags支持结构体补全
Bundle 'OmniCppComplete' 
Bundle 'kanwar-saad/gtagsomnicomplete'
Bundle 'NeoComplCache'
"neocomplete需要lua
"Bundle 'Shougo/neocomplete.vim'
"Bundle 'Rip-Rip/clang_complete'

Bundle 'kien/ctrlp.vim'
"Bundle 'itchyny/lightline.vim'
Bundle 'vim-airline/vim-airline'
Bundle 'vim-airline/vim-airline-themes'
Bundle 'rakr/vim-two-firewatch'
Bundle 'tyrannicaltoucan/vim-quantum'
Bundle 'tyrannicaltoucan/vim-deep-space'
Bundle 'MarcWeber/vim-addon-background-cmd'
"theme
Bundle 'NLKNguyen/papercolor-theme'
Bundle 'playroom'
Bundle 'saturn.vim'
Bundle 'joshdick/onedark.vim'
Bundle 'atelierbram/Base2Tone-vim'
Bundle 'rakr/vim-one'
Bundle 'roosta/vim-srcery'

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
"==============================Vundle================================="

"==============================系统================================="
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

"-----------------------光标样式-----------------------------
"显示坐标
"sorline cursorcolumn 
"set gcr=a:block-blinkon0
" 设置代码折叠
set foldenable
"如果发现文件类型为c或cpp，就启用折叠功能
"autocmd FileType c,cpp setl fdm=syntax | setl fen
"set foldmethod=syntax

"set fdm=manual          "手工定义折叠
"set fdm=indent          "更多的缩进表示更高级别的折叠
"set fdm=expr            "用表达式来定义折叠
set fdm=syntax          "用语法高亮来定义折叠
"set fdm=diff            "对没有更改的文本进行折叠
"set fdm=marker          "对文中的标志折叠

"缩进 
"autocmd FileType c,cpp set shiftwidth=3 | set expandtab 
"c,cpp缩进
"set cindent

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


"==============================系统================================="


"==============================主题和样式================================="

"--------------------------"
"语法高亮
"colorscheme desert
syntax enable
syntax on
"--------------------------"
"设置主题 http://www.vi-improved.org/color_sampler_pack/
"if has('gui_running')
"    set background=light
"else
"    set background=dark
"endif
set t_Co=256
"set background=dark
"set background=light
"colorscheme saturn
"colorscheme onedark

"let g:quantum_black = 1
"colorscheme quantum

"colorscheme saturn

"colorscheme molokai
"let g:molokai_original = 1
"let g:rehash256 = 1

"colorscheme solarized
"rscheme material-theme
"colorscheme soda
"colorscheme Tomorrow
colorscheme hemisu

if (has("termguicolors"))
    set termguicolors
endif
let g:solarized_termcolors=256
set background=light        " for the light version
let g:one_allow_italics = 1 " I love italic for comments
":hi Folded guibg=light guifg=grey40 ctermfg=grey ctermbg=darkgrey
":hi FoldColumn guibg=black guifg=grey20 ctermfg=4 ctermbg=7

"let g:deepspace_italics = 1
let solarized_underline = 0
"文件信息栏七彩主题
"colorscheme statusline
let g:two_firewatch_italics=1

if expand("%:e") ==? "cisco" 
    set background=dark
    colorscheme two-firewatch
    set linespace=2
endif

"--------------------------------------------------------------------------
"vim-airline
"--------------------------------------------------------------------------
let g:airline_theme="solarized" 
"这个是安装字体后 必须设置此项" 
let g:airline_powerline_fonts = 1  

" 关闭状态显示空白符号计数
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#whitespace#symbol = '!'
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
" old vim-powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
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

"--------------------------------------------------------------------------------
" CVim :help csupport
"--------------------------------------------------------------------------------
let g:C_Comments		= "yes"         " 用C++的注释风格
let g:C_BraceOnNewLine	= "yes"         " '{'是否独自一行
let g:C_AuthorName		= "Demonelf"
let g:C_Project			= "F9"
let g:Cpp_Template_Function	= "c-function-description-demonelf"
let g:C_TypeOfH = "c"           " *.h文件的文件类型是C还是C++
"let g:C_LocalTemplateFile	= $RUNTIME"c-support/templates/Templates"
"let g:C_GlobalTemplateFile	= $VIMRUNTIME"//..//vimfiles/bundle/c.vim/c-support/templates"
"let g:C_GuiSnippetBrowser	= 'commandline'
"let g:C_GuiTemplateBrowser	= 'explorer'
"let g:C_CreateMenusDelayed	= 'yes'
"let g:C_LoadMenus		= 'no'
"============================补全==========================="

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"括号自动补全
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
":inoremap ( ()<ESC>i
":inoremap ) <c-r>=ClosePair(')')<CR>
":inoremap { {}<ESC>i
":inoremap } <c-r>=ClosePair('}')<CR>
":inoremap [ []<ESC>i
":inoremap ] <c-r>=ClosePair(']')<CR>
":inoremap < <><ESC>i
":inoremap > <c-r>=ClosePair('>')<CR>
"
"function ClosePair(char)
"if getline('.')[col('.') - 1] == a:char
"return "\<Right>"
"else
"return a:char
"endif

"-- omnicppcomplete setting --
highlight Pmenu    guibg=lightgrey  guifg=black
highlight PmenuSel guibg=darkgrey guifg=black

"autocmd FileType c set omnifunc=gtagsomnicomplete#Complete

"set omnifunc=syntaxcomplete#Complete
let OmniCpp_MayCompleteDot      = 1 " autocomplete with .
let OmniCpp_MayCompleteArrow    = 1 " autocomplete with ->
let OmniCpp_MayCompleteScope    = 0 " autocomplete with ::
let OmniCpp_SelectFirstItem     = 2 " select first item (but don't insert)
let OmniCpp_NamespaceSearch     = 2 " search namespaces in this and included files
let OmniCpp_ShowPrototypeInAbbr = 1 " show function prototype  in popup window
let OmniCpp_GlobalScopeSearch   = 1
let OmniCpp_DisplayMode=0 "类成员显示控制(是否显示全部公有(public)私有(private)保护(protected)成员)。 0 : 自动; 1 : 显示所有成员 
let OmniCpp_DefaultNamespaces=["std"]


" 自动关闭补全窗口
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"自动补全AutoComplPop 两个文件，一个是autoload目录下的acp.vim，另一个是plugin下的acp.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:AutoComplPop_Behavior = {
"\ 'c': [ {'command' : "\<C-x>\<C-o>",
"\ 'pattern' : ".",
"\ 'repeat' : 0}
"\ ]
"\}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"自动补全NeoComplCache 可代替AutoComplPop但配置复杂
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NeoComplCache_EnableAtStartup    = 1
let g:neocomplcache_enable_at_startup  = 1
let g:neocomplcache_enable_auto_select = 1 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"代码块的自动补全snipMate
"let g:snippets_dir = "/usr/share/vim/vimfiles/snippets/"
"let g:snippets_dir = "/home/demonelf/.vim/snippets"
if has("win32")
    let g:snippets_dir = "$VIMRUNTIME//..//vimfiles//bundle//snipMate//snippets"
endif

"============================补全==========================="


"============================快捷键=========================="
"保存
map <C-s> :w<CR>

"F4保存退出
map <F4> :wqa<CR>

"高亮
map <S-F8> m`#``

"设置winmanager的宽度，默认为25 
let g:winManagerWidth        = 24
let g:NERDTree_title         = "[NERDTree]"
let g:winManagerWindowLayout = "NERDTree|TagList"
"let g:winManagerWindowLayout = "TagList"
function! NERDTree_Start()    
    exec 'NERDTree'    
endfunction    

function! NERDTree_IsValid()    
    return 1    
endfunction   
nmap <silent> <F12> :WMToggle<cr>

"这个版本的Winmanager好像有个小bug，你在打开Winmanager界面时，
"会同时打开一个空的文件。这会影响后续使用，
"所以我们要在打开Winmanager时关掉这个空文件。
"在~/.vim/plugin目录下的winmanager.vim文件中找到以下函数定义
"并在第5行下添加第6行的内容：
"     function! <SID>ToggleWindowsManager()
"        if IsWinManagerVisible()
"           call s:CloseWindowsManager()
"        else
"           call s:StartWindowsManager()
"           exe 'q'
"        end
"     endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"cscope实现Source Insight功能
"source cscope_maps.Vim

nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>


" :Tlist              调用TagList/TagBar
let Tlist_Show_One_File             =1  " 只显示当前文件的tags
let Tlist_Exit_OnlyWindow           =1  " 如果Taglist窗口是最后一个窗口则退出Vim
let Tlist_Use_Right_Window          =1  " 在左侧窗口中显示
let Tlist_File_Fold_Auto_Close      =1  " 自动折叠
let Tlist_GainFocus_On_ToggleOpen   =0  " 打开taglist窗口时，如果希望输入焦点在taglist窗口中
let Tlist_Process_File_Always       =1	" 始终解析文件中的tag，不管taglist窗口有没有打开
let Tlist_Inc_Winwidth              =0	" 不扩大窗口
let Tlist_WinWidth                  =24

"TreeToggle
"map <F12> :NERDTreeToggle<CR>
"imap <F12> <ESC>:NERDTreeToggle<CR>
"map <C-F12> :TlistToggle<CR>
"map <F12> :NERDTreeToggle<CR>
"map <C-F12> :WMToggle<CR>

let NERDTreeWinPos='left'
let NERDTreeIgnore = ['cscope.files','GPATH','GRTAGS','GTAGS','tags','.*\.o$','.*\.ko$','.*\.gz$']
let NERDTreeWinSize= 26

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
"hi MBENormal                 guifg=#F5F5F5   guibg=#4271ae
"hi MBEChanged                guifg=#eeeeee   guibg=#4271ae
"hi MBEVisibleNormal          guifg=#F5F5F5   guibg=#3e999f
"hi MBEVisibleChanged         guifg=#eeeeee   guibg=#3e999f
hi MBEVisibleNormal          guifg=#F5F5F5   guibg=#7fb80e
hi MBEVisibleChanged         guifg=#eeeeee   guibg=#7fb80e
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

"--------------------------tags---------------------------"
"或者这个vim-addon-background-cmd 又或者装这个AutoTag插件，要求Vim6，且编译时要支持python。
if has("win32")
    function! UPDATE_TAGS()
        let _f_ = expand("%:p")
        exec 'silent !start /min ctags --append=yes --sort=yes --excmd=pattern -f ' . '' . g:ProjDir . '' . '\tags --c++-kinds=+p --fields=+iaS --extra=+q ' . '' . _f_ . ''
        exec 'silent !start /min global --single-update ' . '' . _f_ . ''
        unlet _f_
    endfunction
else
    function! UPDATE_TAGS()
        let _f_ = expand("%:p")
        exec 'silent !ctags -R --append=no -n -f ' . '' . g:ProjDir . '' . '/tags --c++-kinds=+p --fields=+iaS --extra=+q ' . '' . _f_ . ''
        exec 'silent !cd ' . '' . g:ProjDir . '' . '&&gtags --single-update ' . '' . _f_ . ''
        unlet _f_
    endfunction
endif

"set tags+=tags			"当前目录下
"set tags+=$HOME/ctags		"F11叠加的tag
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
            exec "silent !ctags -a -n -R -I --c++-kinds=+p --fields=+iaS --extra=+q --tag-relative=yes -L gtags.files"
            exec "silent !gtags"
            cscope reset
            set nocscopeverbose
            exe "cs add GTAGS " . g:ProjDir
            set cscopeverbose
        endif
    endif

    if $CSCOPE_DB  != ""
        cs add $CSCOPE_DB
    endif
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
            exec "silent !gtags -f cscope.files"
            exec "silent !ctags -a -n -R -I --c++-kinds=+p --fields=+iaS --extra=+q --language-force=C++ --tag-relative=yes -L cscope.files"
            cscope reset
            set nocscopeverbose
            exe "cs add GTAGS " . g:ProjDir
            set cscopeverbose
        endif
        if $CSCOPE_DB  != ""
            cs add $CSCOPE_DB
        endif
    endif
endif
"递归当前根目录
set autochdir
set tags+=tags;

filetype on
filetype plugin on
filetype indent on
"============================快捷键=========================="

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"疯狂十六进制配置文件 2015-5-10
"最新配置请在官方网站下载:www.madhex.com
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
