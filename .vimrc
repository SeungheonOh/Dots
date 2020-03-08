set t_Co=256

syntax on
let g:seoul256_background = 235
colorscheme seoul256

" Editor
"
set tabstop=2 shiftwidth=2 expandtab
set guifont=Iosevka\ Regular:h20
set softtabstop=2
set smarttab
set nu
set autoindent
set ruler
set encoding=UTF-8
set noshowmode

let mapleader=" "


" Plugins
"
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  Plugin'VundleVim/Vundle.vim'    
  Plugin'The-NERD-Tree'
  Plugin'octol/vim-cpp-enhanced-highlight'
  Plugin'jacoborus/tender.vim'
  Plugin'fatih/vim-go'
  Plugin'rust-lang/rust.vim'
	Plugin'mattn/webapi-vim'
	Plugin'scrooloose/nerdcommenter'
	Plugin'junegunn/vim-easy-align'
	Plugin'majutsushi/tagbar'
	Plugin'junegunn/goyo.vim'
	Plugin'junegunn/fzf'
call vundle#end()
filetype plugin indent on

" Mappings
"
nnoremap NT :NERDTreeToggle<cr>
nnoremap <leader>nt :NERDTreeToggle<cr>
nnoremap <leader>tb :TagbarToggle<cr>
xmap     ga <Plug>(EasyAlign)

nnoremap <leader>// :let @/ = ""<cr>
nnoremap <leader>ff :FZF<cr>

" Rust
"
let g:rust_recommended_style = 0  

" C++ Syntax Highlighting
"
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
