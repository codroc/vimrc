syntax on
" UI Config 界面设置
set number
set encoding=utf-8
set showcmd		" show the last cmd in bottom bar
set cursorline	" highlight current line
set wildmenu	" autocomplete for command menu 注意：是命令栏的自动补齐，而不是代码自动补齐
set showmatch	" highlight matching [{()}]

" Whitespace 空格键设置
set tabstop=4
set softtabstop=4
set shiftwidth=2
set expandtab		" 注释：将<TAB>s全变成空格
filetype indent on	" 根据文件类型自动缩进
set autoindent

" searching 搜索设置
set hlsearch	" highlight matchs
set ignorecase	" ignore up and low case
set showmatch
set incsearch	" search as characters are entered 就是开启搜索模式时，每打一个字母就跟着高亮搜索

" Folding
set foldenable
    
let mapleader="," " leader is comma
" map table 自己改的键
" normal mode map
nnoremap <leader><space> :nohlsearch<CR>			" no highlight search 取消搜索高亮
nnoremap <leader>ev :vsp $MYVIMRC<CR>	" edit ~/.vimrc
nnoremap <leader>sv :source $MYVIMRC<CR> " source ~/.vimrc
nnoremap B ^		" beginning of line
nnoremap E $		" ending of line
nnoremap gV `[V`]	" highlight last inserted text

" insert mode map
inoremap jk <esc>


