filetype off                  " required
set encoding=utf-8
set nu
set splitbelow
set splitright
set clipboard=unnamed
set clipboard=unnamedplus
set mouse=n
set ttymouse=xterm2

"" PLUGINS
set runtimepath^=~/.vim/bundle/ctrlp.vim "http://ctrlpvim.github.io/ctrlp.vim/#installation

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'preservim/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


"" KEYBINDINGS
let mapleader=" "

"split navigations keybinding
nnoremap <leader>j <C-W><C-J>
nnoremap <leader>k <C-W><C-K>
nnoremap <leader>l <C-W><C-L>
nnoremap <leader>h <C-W><C-H>
nnoremap <leader>f za
nnoremap <leader>b :buffers<CR>:buffer<Space>
nnoremap <leader>u <C-R>
"enter to create new line in normal mode
nmap <Enter> o<ESC>
nmap <S-Enter> O<ESC>
map <leader>n :NERDTreeToggle<CR>


"" FOR PYTHON
" PEP 8 style indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |
" Make Python Code Highlight
let python_highlight_all=1
syntax on
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

"" FOR HTML CSS JS
" HTML CSS JS spacing
au BufNewFile,BufRead *.js,*.html,*.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
:set number relativenumber

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END


" Enable folding
set foldmethod=indent
set foldlevel=99
