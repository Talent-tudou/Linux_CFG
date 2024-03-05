
colorscheme desert 
syntax on
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set textwidth=0
set modifiable
set confirm

set smarttab
set tabstop=2
set softtabstop=2 
set shiftwidth=2
set noexpandtab 
let mapleader = ","

set showmatch

filetype on
filetype plugin on
filetype indent on


set smartindent
set autoindent
set cindent

set cmdheight=2
set laststatus=2

set hlsearch
set incsearch 
set ignorecase
set smartcase 

set number 

set nocompatible

set ruler

set scrolloff=3

set backspace=2

set nobackup

set foldmethod=marker 

set guifont=monospace\ 15.5

nmap wn <C-w>n
nmap wv <C-w>v
nmap wc <C-w>c 
nmap ws <C-w>s

function ShortTabLabel ()
    let bufnrlist = tabpagebuflist (v:lnum)
    let label = bufname (bufnrlist[tabpagewinnr (v:lnum) -1])
    let filename = fnamemodify (label, ':t')
    return filename
endfunction
set guitablabel=%{ShortTabLabel()}

cabbr <expr> %% expand('%:p:h') 

ab ccc   //-----------------------------------------------------------------------------------
ab ccl*  *************************************************************************************
ab ccl=  =====================================================================================
ab ccl#  #------------------------------------------------------------------------------------
ab ccl+  +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ab ccl-  -------------------------------------------------------------------------------------
ab ccs   //-------------------------------------
ab cc+   +++++++++++++++++++++++++++++++++++++++
ab cc=   =======================================
ab cc*   ***************************************
ab cc-   ---------------------------------------
ab cc#   #--------------------------------------


let g:treeExplVertical=1
let g:treeExplDirSort=1
let g:treeExplWinSize=30
nmap vt :VSTreeExplore<cr>


let Tlist_Ctags_Cmd = '/usr/bin/ctags'
let g:Tlist_Use_Right_Window=1
let g:Tlist_Show_One_File=1


let showmarks_enable = 1
let showmarks_include = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
let showmarks_ignore_type = "hqm"
let showmarks_hlline_lower = 1
let showmarks_hlline_upper = 1 
hi ShowMarksHLl ctermbg=Yellow   ctermfg=Black  guibg=#FFDB72    guifg=Black
hi ShowMarksHLu ctermbg=Magenta  ctermfg=Black  guibg=#FFB3FF    guifg=Black 


nmap <silent> <leader>mk :MarksBrowser<cr> 

highlight CursorLine cterm=none ctermbg=236
highlight CursorColumn cterm=none ctermbg=236

set noswapfile
set cursorline  
set cursorcolumn  
set showcmd
set showmode
set wrap

set lbr  

set completeopt=longest,menu
set wildmenu
set autoread

