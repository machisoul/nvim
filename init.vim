" __  ____   __  _   ___     _____ __  __ ____   ____
"|  \/  \ \ / / | \ | \ \   / /_ _|  \/  |  _ \ / ___|
"| |\/| |\ V /  |  \| |\ \ / / | || |\/| | |_) | |
"| |  | | | |   | |\  | \ V /  | || |  | |  _ <| |___
"|_|  |_| |_|   |_| \_|  \_/  |___|_|  |_|_| \_\\____|

" Author: @George Wong




" ==================== Auto load for first time uses ====================
"nothing to do now!
"nothing to do now!
"nothing to do now!


" ==================== Editor behavior ====================
set clipboard=unnamedplus
let &t_ut=''
set mouse=a
set autochdir
set exrc
set secure
set ts=4
set autoindent
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set list
set listchars=tab:\|\ ,trail:▫
set scrolloff=4
set tw=0
set indentexpr=
set foldmethod=indent
set foldlevel=99
set foldenable
set number
set relativenumber
set cursorline
set wrap
set showcmd
set wildmenu
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase
set updatetime=100
set signcolumn=yes
syntax on
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


" ==================== Terminal Behaviors ====================
"nothint to do now!
"nothint to do now!
"nothint to do now!


" ==================== Basic Mappings ====================
let mapleader=" "
noremap ; :
nnoremap Q :q<CR>
nnoremap S :w<CR>
" Open the vimrc file anytime
nnoremap <LEADER>rc :e $HOME/.config/nvim/init.vim<CR>
" Insert Key
noremap h i
noremap H I
"" Copy to system clipboard
vnoremap Y "+y
" Search
noremap n nzz
noremap N Nzz
noremap <LEADER><CR> :nohlsearch<CR>
" insert a pair of {} and go to the next line
inoremap <c-y> <ESC>A {}<ESC>i<CR><ESC>ko


" ==================== Cursor Movement ====================
" New cursor movement (the default arrow keys are used for resizing windows)
"     ^
"     i
" < j   l >
"     k
"     v
noremap <silent> i k
noremap <silent> k j
noremap <silent> j h
noremap <silent> gi gk
noremap <silent> gk gj
noremap <silent> I 5k
noremap <silent> K 5j
noremap <silent> J 7h
noremap <silent> L 7l
" Ctrl+J key: go to the start of the line
noremap <silent> <C-j> 0
" Ctrl+L key: go to the end of the line
noremap <silent> <C-l> $
" jump to the next
noremap <silent> <C-D> <C-I>
" up or down 0.5 page.
noremap <silent> <C-I> <C-U>
noremap <silent> <C-K> <C-D>


" ==================== Insert Mode Cursor Movement ====================
inoremap <C-a> <ESC>A
inoremap <C-j> <Left>
inoremap <C-l> <Right>

" ==================== Command Mode Cursor Movement ====================
cnoremap <C-h> <Home>
cnoremap <C-e> <End>
cnoremap <C-i> <Up>
cnoremap <C-k> <Down>
cnoremap <C-j> <Left>
cnoremap <C-l> <Right>


" ==================== Window management ====================
" Use <space> + new arrow keys for moving the cursor around windows
noremap <LEADER>i <C-w>k
noremap <LEADER>k <C-w>j
noremap <LEADER>j <C-w>h
noremap <LEADER>l <C-w>l
" Disable the default s key
noremap s <nop>
" split the screens to up (horizontal), down (horizontal), left (vertical), right (vertical)
noremap si :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
noremap sk :set splitbelow<CR>:split<CR>
noremap sj :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
noremap sl :set splitright<CR>:vsplit<CR>
" Resize splits with arrow keys
noremap <up> :res +5<CR>
noremap <down> :res -5<CR>
noremap <left> :vertical resize-5<CR>
noremap <right> :vertical resize+5<CR>


" ==================== Tab management ====================
" Create a new tab with tu
noremap ta :tabe<CR>
noremap tA :tab split<CR>
" Move around tabs with tn and ti
noremap tj :-tabnext<CR>
noremap tl :+tabnext<CR>
" Move the tabs with tmn and tmi
noremap tmj :-tabmove<CR>
noremap tml :+tabmove<CR>


" ==================== Markdown Settings ====================


" ==================== Visual Settings ====================
noremap <C-a> ggVG


" ==================== Other useful stuff ====================
" Open a new instance of st with the cwd
nnoremap \t :tabe<CR>:-tabmove<CR>:term sh -c 'st'<CR><C-\><C-N>:q<CR>
" Press space twice to jump to the next '<++>' and edit it
noremap <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>"_c4l


" ==================== Install Plugins with Vim-Plug ====================
call plug#begin('~/.config/nvim/plugged')

Plug 'vim-airline/vim-airline'

Plug 'mg979/vim-xtabline'

Plug 'tpope/vim-surround'

Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

Plug 'junegunn/vim-peekaboo'
call plug#end()

" ==================== eleline.vim ====================


" ==================== gitsigns.nvim ====================


" ==================== coc.nvim ====================
let g:coc_global_extensions = [
    \ 'coc-tsserver',
    \ 'coc-vimlsp',
    \ 'coc-diagnostic',
    \ 'coc-explorer',
	\ 'coc-yank']

" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Useful commands
nnoremap <silent> <space>y :<C-u>CocList -A --normal yank<cr>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gD :tab sp<CR><Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap tt :CocCommand explorer<CR>
" ==================== vim-surround-mapping ====================


" ==================== coc ====================

