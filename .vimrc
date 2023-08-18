set encoding=utf-8
let g:polyglot_disabled = ['markdown']
"vimrc for John Rudolph
"Created December 2020


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim Plugin Management
" Use vim-plug for Plugin managment
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vim/plugged')

"LightLine 
Plug 'itchyny/lightline.vim'

"Gruvbox
"Plug 'morhetz/gruvbox'
Plug 'sainnhe/gruvbox-material'

" Syntax Highlighting
Plug 'sheerun/vim-polyglot'

" Python linting
" Plug 'Vimjas/vim-python-pep8-indent'

" Code Completion
" Plug 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build' }
" Plug 'davidhalter/jedi-vim'

call plug#end()

"LiteLine Config
set laststatus=2
if !has('gui_running')
  set t_Co=256
endif
let g:lightline = {
\ 'colorscheme':'jellybeans'
            \}

" Grovbox Config
colorscheme  
        " Important!!
        if has('termguicolors')
          set termguicolors
        endif
        " For dark version.
        set background=dark
        " For light version.
        "set background=light
        " Set contrast.
        " This configuration option should be placed before `colorscheme gruvbox-material`.
        " Available values: 'hard', 'medium'(default), 'soft'
        let g:gruvbox_material_background = 'soft'
        colorscheme gruvbox-material


" Syntax highlighting with Vim-Polygot
set nocompatible


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Native Vim Configurations
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" use indentation for newline
 set autoindent

" highlight search word
set hlsearch
"
" Set to mouse to work in Vim
set mouse=a

" use intelligent indentation
set smartindent
set cindent
"inoremap { {<CR>}<up><end><CR>

"tab is 4 spaces
set tabstop=4
"indent is 4 spaces
set shiftwidth=4
"tab is set to 4 for python files
autocmd Filetype py setlocal tabstop=4
autocmd Filetype py setlocal shiftwidth=4
"expand tabs to spaces
set expandtab

"wrap lines at 80 chars
set textwidth=80

"turn on syntax highlighting
"set t_Co=256
"syntax on

"turn on line numbers
set relativenumber
set number

"show matching braces
set showmatch

"automatically closing braces and quotes
inoremap { {}<Esc>ha
inoremap ( ()<Esc>ha
inoremap [ []<Esc>ha
inoremap " ""<Esc>ha
inoremap ' ''<Esc>ha
inoremap ` ``<Esc>ha
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"key mapping
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = "\<space"

:inoremap jj <esc>
:nnoremap <S-j> <C-d>
:nnoremap <S-k> <C-u>
vmap <space>j <esc>
