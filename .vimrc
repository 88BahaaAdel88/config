"default stuff
set autoindent
set smartindent
set cindent
" set termguicolors
colorscheme gruvbox
filetype on
set nocompatible
set nu
set background=dark
syntax on
set cursorline
set cursorcolumn
set showcmd
set noshowmode
set relativenumber
set cursorlineopt=number
let mapleader = " " " space as leader key
set splitbelow
set splitright
"set mouse=a
highlight LineNr ctermfg=grey ctermbg=black
set completeopt+=noinsert
set completeopt+=menuone
set numberwidth=5


"Vundle Plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'octol/vim-cpp-enhanced-highlight'
call vundle#end()
filetype plugin indent on

"vim syntax highlighting
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_concepts_highlight = 1
let g:cpp_experimental_template_highlight = 1

"airline
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
let g:mucomplete#enable_auto_at_startup = 1

"vim plugins
call plug#begin()
Plug 'lifepillar/vim-mucomplete'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/syntastic'
Plug 'tomasiser/vim-code-dark'
Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'
Plug 'szw/vim-maximizer'
Plug 'kassio/neoterm'
Plug 'tpope/vim-commentary'
Plug 'sbdchd/neoformat'
Plug 'christoomey/vim-tmux-navigator'
Plug 'rhysd/vim-clang-format'
Plug 'kana/vim-operator-user'
Plug 'vim-indent/vim-indent'
call plug#end()
"colorscheme codedark


"custom mapping
nnoremap i k
nnoremap j h
nnoremap k j
nnoremap l l
"noremap a i



"lightline
let g:lightline = {
\ 'colorscheme': 'wombat',
\ 'active': {
\   'left': [ [ 'mode', 'paste' ],
\             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
\ },
\ 'component_function': {
\   'gitbranch': 'gitbranch#name'
\ },
\ 'colorsheme': 'codedark',
\ }

"vim/maximizer
nnoremap <leader>m :MaximizerToggle!<CR>

" kassio/neoterm
let g:neoterm_default_mod = 'vertical'
let g:neoterm_size = 60
let g:neoterm_autoinsert = 1
nnoremap <c-q> :Ttoggle<CR>
inoremap <c-q> <Esc>:Ttoggle<CR>
tnoremap <c-q> <c-\><c-n>:Ttoggle<CR>

" sbdchd/neoformat
nnoremap <leader>F :Neoformat prettier<CR>

"Clang Formatter
let g:clang_format#code_style = 'chromium'

"netrw
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

nnoremap <Tab> :call OpenNetRW()<CR>
let g:netrw_buffer=0

function OpenNetRW()
    Vexplore
    let g:netrw_buffer=bufnr("%")
    nnoremap <Tab> :call CloseNetRW()<CR>
endfunction

function CloseNetRW()
    exe "bd".g:netrw_buffer
    let g:netrw_buffer=0
    nnoremap <Tab> :call OpenNetRW()<CR>
endfunction

