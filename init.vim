" __     __                  _            _     
" \ \   / /_ _ ___ _   _  __| | _____   _( )___ 
"  \ \ / / _` / __| | | |/ _` |/ _ \ \ / /// __|
"   \ V / (_| \__ \ |_| | (_| |  __/\ V /  \__ \
"    \_/ \__,_|___/\__,_|\__,_|\___| \_/   |___/
"                                               
"  _   _         __     ___              ____             __ _       
" | \ | | ___  __\ \   / (_)_ __ ___    / ___|___  _ __  / _(_) __ _ 
" |  \| |/ _ \/ _ \ \ / /| | '_ ` _ \  | |   / _ \| '_ \| |_| |/ _` |
" | |\  |  __/ (_) \ V / | | | | | | | | |__| (_) | | | |  _| | (_| |
" |_| \_|\___|\___/ \_/  |_|_| |_| |_|  \____\___/|_| |_|_| |_|\__, |
"                                                              |___/ 

set showmatch 	" show matching
set mouse=v	" middle-click paste with 
set hlsearch	" highlight search
set incsearch	" incremental search
set tabstop=2	" number of columns occupied by a tab
set softtabstop=2	" see multiple spaces as tabstops so <BS> does the right thing
set expandtab	" converts tabs to white space
set shiftwidth=2	" width for autoindents
set autoindent	" indent a new line the same amount as the line just typed
set relativenumber	" set relative line numbers for easier vim motions
set number  " Set line number
syntax on	" syntax highlighting
set clipboard=unnamedplus	" using system clipboard
filetype plugin on
set cursorline	" highlight current cursorline
" set cc=80

" Install the below to use vim plugins 
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin("~/.vim/plugged")
    " Plugin Section
    Plug 'dracula/vim'
    Plug 'ryanoasis/vim-devicons'
    Plug 'preservim/nerdtree'
    Plug 'preservim/nerdcommenter'
    Plug 'elvessousa/sobrio'
    Plug 'vim-airline/vim-airline'
call plug#end()

" To install plugins type :PlugInstall

nmap <F6> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

set t_Co=256  " Set terminal to true color works with iTerm2

" Code to get a better status bar below
let g:airline_theme='sobrio'
let g:airline_powerline_fonts=1
let g:airline#extentions#tabline#enabled=1
" Disable math tex conceal feature
let g:tex_conceal = ''
let g:vim_markdown_math = 1

" Markdown
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_conceal = 0
let g:vim_markdown_fenced_languages = ['tsx=typescriptreact']
