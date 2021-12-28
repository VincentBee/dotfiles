if !1 | finish | endif

" Automatically install plug vim
if empty(glob('~/.config/nvim/plugged/plug.vim'))
    silent !curl -fLo ~/.config/nvim/plugged/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/plugged')

    " Allow nvim to have autocompletion
    Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
    Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
    Plug 'yaegassy/coc-intelephense', {'do': 'yarn install --frozen-lockfile'}
    Plug 'neoclide/coc-json'
    Plug 'neoclide/coc-html'
    Plug 'neoclide/coc-css'
    Plug 'neoclide/coc-yaml'
    Plug 'neoclide/coc-eslint'
    Plug 'yaegassy/coc-html-css-support'
    Plug 'fannheyward/coc-markdownlint'
    Plug 'antonk52/coc-cssmodules'
    Plug 'nelsyeung/twig.vim'

    " Allow to surround an existing text with something
    Plug 'tpope/vim-surround'
    " Automatically close blocks when open it.
    Plug 'jiangmiao/auto-pairs'

    " Fuzzy finder accross the project
    " It use ripgrep to work
    " Use it as follow:
    " <space>ff -> search file names
    " <space>fg -> search file content
    " <space>fb -> search in buffer list
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'

    " Theme and colors
    Plug 'navarasu/onedark.nvim'
    Plug 'itchyny/lightline.vim'

"    Plug 'vim-scripts/vim-gitgutter'
call plug#end()

" Easely open vimrc file
noremap <C-i> <Cmd>e ~/.config/nvim/init.vim<CR>

" Remap space bar for leader key
nnoremap <SPACE> <Nop>
let mapleader = ' '

" Show relative line number and current line number
set number
set relativenumber
 
" Use 4 space for tabulation
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set clipboard=unnamedplus

" Close file
" Delete the current buffer instead of closing the nvim application
nnoremap <C-w> <Cmd>bd<CR>

" Block navigation
noremap J }
noremap K {
noremap H b
noremap L w

" In order to select text
" v     -> select inline
" <S-v> -> select whole line
" <C-v> -> select square

" Move blocks
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv
vnoremap <C-l> >
vnoremap <C-h> <

" Theme and colors
colorscheme onedark

" File explorer
nmap <space>e <Cmd>CocCommand explorer --preset floating<CR>
let g:coc_explorer_global_presets = {
\   'floating': {
\     'position': 'floating',
\     'open-action-strategy': 'sourceWindow',
\   },
\ }

" Fuzzy finder
nnoremap <leader>ff <cmd>Telescope find_files find_command=rg,--ignore,--hidden,--files prompt_prefix=🔍<cr>
nnoremap <leader>fg <cmd>Telescope live_grep prompt_prefix=🔍<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
 
" Every file stay in the buffer
set hidden

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

