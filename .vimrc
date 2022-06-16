filetype off                  "required

"so ~/.vim/plugins.vim
"so %                         "source this file
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-vinegar'
Plugin 'preservim/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'

call vundle#end()
filetype plugin indent on

"Syntax =======================================================================
syntax enable
syntax on

set backspace=indent,eol,start    "Enable BackSpace.
set number 
set numberwidth=3                 "Set foldcolumn=3
set noerrorbells visualbell t_vb= "No dawn bells! Settings visualbell.
set ls=2

let mapleader = ","               "The default leader is \, 
				  "but a comma is much better.
"let mapleader = "\<Space>"       "Default leader

"Visuals ======================================================================
"colorscheme desert
colorscheme atom-dark
colo slate                              " Simple default colo
colo pablo 				" Norm default colo
set guifont=Fira_Code:h15
set t_CO=256                            "Use <t_CO> colors 
					"This is useful for Terminal Vim
set linespace=15                        "Macvim-specific line-height
set encoding=utf-8
set guioptions-=e                       "We don't want Gui tabs.
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

"Auto-Commands ================================================================
"Automatically source the Vimrc file on save.
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END

"Start NERDTree and leave the cursor in it.
"autocmd VimEnter * NERDTree | wincmd p

"Search =======================================================================
set hlsearch
set incsearch

"Mapping ======================================================================

"Make it easy edit files
nmap <Leader>ev :tabedit $MYVIMRC<cr> 

"Leader key save and exit vim 
nmap <Leader>q :q!<CR>
nmap <Leader>w :w<CR>
nmap <Leader>a :wq<CR>

"Split management
set splitbelow
set splitright
nmap <C-h> <C-w><C-h>
nmap <C-l> <C-w><C-l>

"Shortcut to open NERDTree
nnoremap <Leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

"CntrP
nmap <C-R> :CtrlPBufTag<cr>
