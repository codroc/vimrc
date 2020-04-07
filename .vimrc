call plug#begin()
Plug 'preservim/nerdtree'
Plug 'https://gitee.com/mirrors/youcompleteme.git'
call plug#end()

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

" ###################################################################YouCompleteMe Configuration
let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/youcompleteme/.ycm_extra_conf.py'
let g:ycm_python_binary_path = '/usr/bin/python3'
set completeopt=longest,menu
" 语法补全
let g:ycm_seed_identifiers_with_syntax = 1  
" 在注释输入中也能补全
let g:ycm_complete_in_comments = 1
" 停止显示补全列表(防止列表影响视野)， 可以按<C-Space>重新弹出
" let g:ycm_key_invoke_completion = ['<C-Space>']
" 从第二个字母开始匹配
let g:ycm_min_num_of_chars_for_completion = 2
" 回车选中当前匹配项
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
" 离开插入模式后自动关闭预览窗口
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
" 上下左右键
"inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
"inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
"inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
"inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"
" 跳转到定义出
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
" 设置在下面几种格式的文件上屏蔽ycm
 let g:ycm_filetype_blacklist = {
       \ 'tagbar' : 1,
             \ 'nerdtree' : 1,
                   \}
" (关闭)开启标签
let g:ycm_collect_identifiers_from_tags_files = 0
" 预览窗口向下移动
let g:ycm_key_list_select_completion = ['<TAB>', '<Down>']
" 预览窗口向上移动
let g:ycm_key_list_previous_completion = ['<S-TAB>','<C-k>']
" 手动关闭自动补全窗口
let g:ycm_key_list_stop_completion = ['<C-y>']
" 关闭左边一列标记
let g:ycm_show_diagnostics_ui = 0
