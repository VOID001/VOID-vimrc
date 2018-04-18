" set runtimepath^=~/.vim runtimepath+=~/.vim/after
set runtimepath+=~/.config/nvim
let &packpath = &runtimepath
" source ~/.vimrc

call plug#begin('~/.config/nvim/plugged')
Plug 'vim-airline/vim-airline' "Airline plugin enabled
Plug 'vim-airline/vim-airline-themes' "Airline theme plugin enabled
Plug 'scrooloose/syntastic' "Syntax Plugin enabled
Plug 'scrooloose/nerdtree' "File Tree Support
Plug 'tpope/vim-fugitive' "Git plugin
Plug 'Shougo/vimproc' " Vimshell dependencies
Plug 'Shougo/vimshell.vim' "Using shell in vim
Plug 'jiangmiao/auto-pairs' "Insert or delete brackets, parens, quotes in pair
Plug 'vim-scripts/taglist.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/goyo.vim'          "Zen mode Edit Plugin
Plug 'godoctor/godoctor.vim'      "go doctor refactor
Plug 'fatih/vim-go'
Plug 'wikitopian/hardmode'
Plug 'wakatime/vim-wakatime'
Plug 'Shougo/denite.nvim'

" CQuery plugins
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

" (Optional) Multi-entry selection UI.
Plug 'junegunn/fzf'
Plug 'roxma/nvim-completion-manager'
" (Completion plugin option 2)
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"
call plug#end()


" NERD TREE Keymap
noremap <leader><leader> :NERDTreeToggle<CR>                                                                                             
" noremap <C-]>] <Esc>:YcmCompleter GoToDefinitionElseDeclaration<CR>                                                                      
map <C-n> <Esc>:tabnew<CR>
map <C-x> <Esc>:tabclose<CR>
map <C-l> <Esc>gt
map <C-h> <Esc>gT
map <F8> <Esc>:TlistToggle<CR>

"auto-pairs Configurations
let g:AutoPairs = { '{':'}' }
let g:AutoPairsMultilineClose = 0

"Airline Configurations
set noshowmode
set encoding=utf8

"set fillchars+=stl:\ ,stlnc:\
set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme = 'cool'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#whitespace#enabled=1
let g:ycm_show_diagnostics_ui = 1
syntax on
set showcmd

"taglist Configuration
let Tlist_Sort_Type = "name"    " 按照名称排序  
let Tlist_Use_Right_Window = 1  " 在右侧显示窗口  
let Tlist_Compart_Format = 1    " 压缩方式  
let Tlist_Exist_OnlyWindow = 1  " 如果只有一个buffer，kill窗口也kill掉buffer  
let Tlist_File_Fold_Auto_Close = 0  " 不要关闭其他文件的tags  
let Tlist_Enable_Fold_Column = 0    " 不要显示折叠树  

"Vim-go Configuration
let g:go_bin_path = "/home/void001/GOPATH/bin"
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" CtrlP Configuration


" CQuery Configuration
" Required for operations modifying multiple buffers like rename.
set hidden

let g:LanguageClient_serverCommands = {
    \ 'cpp': ['ccls', '--log-file=/tmp/cq.log'],
    \ 'c': ['ccls', '--log-file=/tmp/cq.log'],
    \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
    \ 'javascript': ['javascript-typescript-stdio'],
    \ 'javascript.jsx': ['javascript-typescript-stdio'],
    \ } 

let g:LanguageClient_loadSettings = 1 " Use an absolute configuration path if you want system-wide settings 
let g:LanguageClient_settingsPath = '/home/void001/.config/nvim/settings.json'
set formatexpr=LanguageClient_textDocument_rangeFormatting()

nnoremap <silent> gh :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
nnoremap <C-]>] :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> gr :call LanguageClient_textDocument_references()<CR>
nnoremap <silent> gs :call LanguageClient_textDocument_documentSymbol()<CR>
nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

"======================================BASIC CONFIGURATION================================================
set rnu
autocmd InsertEnter * :set nu
autocmd InsertLeave * :set rnu
syntax on
set incsearch "Use increment search
set hlsearch "Use highlight search
set autoread "Autoread file when modified
set tabstop=4 
set softtabstop=4
set shiftwidth=4
set autoindent
set smartindent
set backspace=2
set mouse=a	"Enable Mouse

"Set encoding
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936
set fileencoding=utf-8
set nobackup            "Do not create .swp file for each file opened
set noswapfile          "Do not create swp file
set expandtab

tnoremap <Esc> <C-\><C-n>
tnoremap <expr> <C-R> '<C-\><C-N>"'.nr2char(getchar()).'pi'
tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
inoremap <A-h> <C-\><C-N><C-w>h
inoremap <A-j> <C-\><C-N><C-w>j
inoremap <A-k> <C-\><C-N><C-w>k
inoremap <A-l> <C-\><C-N><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

"======================================PLUGIN KEYMAP CONFIGURATION================================================
"map <leader>n :NERDTreeToggle<CR>
noremap <leader><leader> :NERDTreeToggle<CR>
" noremap <C-]>] <Esc>:YcmCompleter GoToDefinitionElseDeclaration<CR>
map <C-n> <Esc>:tabnew<CR>
map <C-x> <Esc>:tabclose<CR>
map <C-l> <Esc>gt
map <C-h> <Esc>gT
map <F8> <Esc>:TlistToggle<CR>

func! OpenTermInNewTab()
    :tabnew
    :terminal
endfunc

nnoremap <C-t>t :call OpenTermInNewTab()<CR>
