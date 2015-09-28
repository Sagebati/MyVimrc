set nocompatible

filetype on
set number
set smartindent
set autoindent
set ruler
syntax on
map <C-n> :NERDTreeToggle<CR>
map <F8> :TagbarToggle<CR>
set rtp+=~/.vim/bundle/Vundle.vim
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1 
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:EasyMotion_do_mapping = 0 " Disable default mappings


"php complete option
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
set completeopt=longest,menuone
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"

"Easy motion config
" Bi-directional find motion
" Jump to anywhere you want with minimal keystrokes, with just one key
" binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-s)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-s2)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)"
"ctrlp options
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_buffer = '<c-b>'
"vim airline options
let g:airline#extensions#tabline#enabled = 1


"php.vim options
let php_sql_query = 1
let php_folding = 1
let phtml_sql_query = 1
let php_sync_method = 'x'

call vundle#begin()
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'gmarik/Vundle.vim'
Plugin 'mattn/emmet-vim'
Plugin 'spf13/PIV'
Plugin 'ervandew/supertab'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'joonty/vdebug'
Plugin 'tomtom/tlib_vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'othree/html5.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'honza/vim-snippets'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'StanAngeloff/php.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'garbas/vim-snipmate'
Plugin 'scrooloose/nerdcommenter'
call vundle#end()
filetype plugin indent on

