call plug#begin('~/.vim/plugged')

Plug 'https://github.com/terryma/vim-multiple-cursors'
Plug 'https://gitlab.com/code-stats/code-stats-vim.git'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/scrooloose/nerdtree.git'

call plug#end()

" REQUIRED: set your API key
let g:codestats_api_key = 'SFMyNTY.WVdwcGRHVnQjI05qa3pOZz09.jPCI4fqoL69XUb12IWzjGjgonA-mMzZGOWf46DTNzqU'

" Optional: configure vim-airline to display status
let g:airline_section_x = airline#section#create_right(['tagbar', 'filetype', '%{CodeStatsXp()}'])

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

map <C-d> :NERDTreeToggle<CR>

