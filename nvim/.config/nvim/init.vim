let mapleader = " " " map leader to Space

call plug#begin(stdpath('data') . '/plugged')

Plug('junegunn/fzf.vim')
Plug('bronson/vim-trailing-whitespace')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug('tpope/vim-fugitive')
Plug('vim-airline/vim-airline')
Plug('arcticicestudio/nord-vim')
Plug 'preservim/nerdtree'


call plug#end()


" Nord Theme
colorscheme nord
let g:nord_underline = 1
let g:nord_italic_comments = 1
let g:nord_italic = 1


"NERDTree
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>


nmap <leader>gj :diffget //3<CR>
nmap <leader>gf :diffget //2<CR>
nmap <leader>gs :G<CR>
nmap <leader>gp :Git push<CR>
nmap <leader>gc :Git commit<CR>
nmap <C-f> :Files<CR>
nmap <C-h> :History<CR>

set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching brackets.
set ignorecase              " case insensitive matching
set mouse=v                 " middle-click paste with mouse
set hlsearch                " highlight search results
set tabstop=2               " number of columns occupied by a tab character
set softtabstop=2           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=2            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set relativenumber          " add relative line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=120                   " set an 80 column border for good coding style
set hidden
" Give more space for displaying messages.
set cmdheight=2
filetype plugin indent on   " allows auto-indenting depending on file type
syntax on                   " syntax highlighting


" coc.vim config
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif


" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Show tabs and trailing whitespace
set list listchars=tab:»\ ,trail:·

autocmd BufReadPost *
      \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
      \ |   exe "normal! g`\""
      \ | endif
