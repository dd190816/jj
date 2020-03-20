set hlsearch "高亮度反白
set backspace=2 "可随时用退格键删除
set autoindent "自动缩排
set ruler "可显示最后一行的状态
set showmode "左下角那一行的状态
set nu "可以在每一行的最前面显示行号
set bg=dark "显示不同的底色色调
syntax on "进行语法检验，颜色显示
syntax enable
set guifont=YaHei\ Consolas\ Hybrid\ 11.5
set cursorline"在光标所在行下加上线段
set wrap
set showcmd
set wildmenu
set nocompatible
set ignorecase
set smartcase
set scrolloff=4
let mapleader=" "
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set encoding=utf-8
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>
map R :source $MYVIMRC<CR>
call plug#begin('~/.vim/plugged')
Plug 'connorholyday/vim-snazzy'
Plug 'SirVer/ultisnips'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/:erdtree-git-plugin'
Plug 'majutsushi/tagbar', { 'on': 'TagbarOpenAutoClose' }
Plug 'w0rp/ale'
Plug 'mbbill/undotree/'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'itchyny/vim-cursorword'
Plug 'rhysd/conflict-marker.vim'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'gisphm/vim-gitignore', { 'for': ['gitignore', 'vim-plug'] }
Plug 'elzr/vim-json'
Plug 'hail2u/vim-css3-syntax'
Plug 'spf13/PIV', { 'for' :['php', 'vim-plug'] }
Plug 'gko/vim-coloresque', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
Plug 'pangloss/vim-javascript', { 'for' :['javascript', 'vim-plug'] }
Plug 'mattn/emmet-vim'
Plug 'vim-scripts/indentpython.vim'
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
Plug 'vimwiki/vimwiki'
Plug 'kshenoy/vim-signature'
Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/goyo.vim' " distraction free writing mode
Plug 'tpope/vim-surround' " type ysks' to wrap the word with '' or type cs'` to change 'word' to `word`
Plug 'godlygeek/tabular' " type ;Tabularize /= to align the =
Plug 'gcmt/wildfire.vim' " in Visual mode, type i' to select all text in '', or type i) i] i} ip
Plug 'scrooloose/nerdcommenter' " in <space>cc to comment a line
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'kana/vim-textobj-user'
Plug 'fadein/vim-FIGlet'
call plug#end()
colorscheme snazzy
let g:UltiSnipsSnippetDirectories=["mysnippets"]

" UltiSnips 的 tab 键与 YCM 冲突，重新设定
let g:UltiSnipsExpandTrigger="<leader><tab>"
let g:UltiSnipsJumpForwardTrigger="<leader><tab>"
let g:UltiSnipsJumpBackwardTrigger="<leader><s-tab>" 

map tt :NERDTreeToggle<CR>
let NERDTreeMapOpenExpl = ""
let NERDTreeMapUpdir = ""
let NERDTreeMapUpdirKeepOpen = "l"
let NERDTreeMapOpenSplit = ""
let NERDTreeOpenVSplit = ""
let NERDTreeMapActivateNode = "i"
let NERDTreeMapOpenInTab = "o"
let NERDTreeMapPreview = ""
let NERDTreeMapCloseDir = "n"
let NERDTreeMapChangeRoot = "y"
let b:ale_linters = ['pylint']
let b:ale_fixers = ['autopep8', 'yapf']
map <silent> T :TagbarOpenAutoClose<CR>
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }
let g:python_highlight_all = 1
 let g:python_slow_sync = 0
 let g:indent_guides_guide_size = 1
 let g:indent_guides_start_level = 2
 let g:indent_guides_enable_on_vim_startup = 1
 let g:indent_guides_color_change_percent = 1
 silent! unmap <LEADER>ig
 autocmd WinEnter * silent! unmap <LEADER>ig
map <LEADER>gy :Goyo<CR>
let g:SignatureMap = {
        \ 'Leader'             :  "m",
        \ 'PlaceNextMark'      :  "m,",
        \ 'ToggleMarkAtLine'   :  "m.",
        \ 'PurgeMarksAtLine'   :  "dm-",
        \ 'DeleteMark'         :  "dm",
        \ 'PurgeMarks'         :  "dm/",
        \ 'PurgeMarkers'       :  "dm?",
        \ 'GotoNextLineAlpha'  :  "m<LEADER>",
        \ 'GotoPrevLineAlpha'  :  "",
        \ 'GotoNextSpotAlpha'  :  "m<LEADER>",
        \ 'GotoPrevSpotAlpha'  :  "",
        \ 'GotoNextLineByPos'  :  "",
        \ 'GotoPrevLineByPos'  :  "",
        \ 'GotoNextSpotByPos'  :  "mn",
        \ 'GotoPrevSpotByPos'  :  "mp",
        \ 'GotoNextMarker'     :  "",
        \ 'GotoPrevMarker'     :  "",
        \ 'GotoNextMarkerAny'  :  "",
        \ 'GotoPrevMarkerAny'  :  "",
        \ 'ListLocalMarks'     :  "m/",
        \ 'ListLocalMarkers'   :  "m?"
        \ }
let g:undotree_DiffAutoOpen = 0
map L :UndotreeToggle<CR>

