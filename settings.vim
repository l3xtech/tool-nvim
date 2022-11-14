" set leader key
let g:mapleader = "\<Space>"
let g:nvim_tree_auto_open = 1

syntax enable                           " Enables syntax highlighing
"set hidden                              " Required to keep multiple buffers open multiple buffers
"set nowrap                              " Display long lines as just one line
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler              			            " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set iskeyword+=-                      	" treat dash separated words as a word text object"
"set mouse=a                             " Enable your mouse
"set splitbelow                          " Horizontal splits will automatically be below
"set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
"set tabstop=4 softtabstop=4 expandtab shiftwidth=4
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set laststatus=0                        " Always display the status line
set number                              " Line numbers
set cursorline                          " Enable highlighting of the current line
set background=dark                     " tell vim what the background color looks like
set showtabline=2                       " Always show tabs
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set formatoptions-=cro                  " Stop newline continution of comments
"set clipboard+=unnamedplus
set relativenumber
set encoding=utf8

set completeopt=menuone,noselect


filetype plugin on

au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC

" You can't stop me
cmap w!! w !sudo tee %

let g:markdown_fenced_languages = [
      \ 'vim',
      \ 'help'
      \]

set history=10000
autocmd InsertEnter * set nocursorline
autocmd InsertLeave * set cursorline
set clipboard=unnamedplus
set tabstop=4 softtabstop=4 expandtab shiftwidth=4
map <C-n> :NERDTreeToggle<cr>
map <C-w> <ESC>:w<CR>
map <C-q> <ESC>:qa!<CR>
set pastetoggle=<F10>
inoremap www <ESC>:w<CR>
inoremap qqq <ESC>:wqa!<CR>
inoremap nnn <Esc>
inoremap ccc <ESC>:
inoremap vvv <ESC>v
inoremap ppp <F10><C-r>+<F10>
vnoremap < <gv
vnoremap > >gv
nnoremap <C-r> :%s///gc<Left><Left><Left>
set backspace=indent,eol,start
let g:airline#extensions#tabline#enabled=1
let g:airline_power_line_fonts=1
let g:airline_statusline_ontop=0
let g:airline#extensions#tabline#formatter='default'
let g:airline_theme='ayu_mirage'
nnoremap <M-Right> :bn<cr>
nnoremap <M-Left> :bp<cr>
nnoremap <C-x> :bp \|bd #<cr>
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
nnoremap <C-Down> :m .+1<CR>==
nnoremap <C-Up> :m .-2<CR>==
nnoremap j jzz
nnoremap k kzz
nnoremap <Down> jzz
nnoremap <Up> kzz
let g:ctrlp_custom_ignore = ' v[ /] .(swp|zip)$'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_show_hidden = 1
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
map cc <Plug>NERDCommenterInvert
let g:ale_linters = {'python': ['flake8', 'pylint'], 'javascript': ['eslint']}
let g:ale_completion_enabled = 0
command! -nargs=0 Prettier :CocCommand prettier.formatFile
packloadall
