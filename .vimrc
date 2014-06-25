" Features
set nocompatible
filetype indent plugin on
syntax on

" Highlight search
set hlsearch
" これを加えるとvimを起動した時にdが押されたような状態になってしまうため
" とりあえずOffにしておく。
" nnoremap <esc> :noh<return><esc> 
"
"------------------------------------------------------------
" Usability options {{{1
"
" These are options that users frequently set in their .vimrc. Some of them
" change Vim's behaviour in ways which deviate from the true Vi way, but
" which are considered to add usability. Which, if any, of these options to
" use is very much a personal preference, but they are harmless.

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase


"------------------------------------------------------------
" Syntax highlighting
set background=dark
colorscheme solarized
autocmd Filetype python set colorcolumn=80

" Indentation options 
set expandtab     " タブを空白文字に変換
set tabstop=4     " タブ文字が画面上で表示される幅
set shiftwidth=4  " Normal modeやcindent(?)で加えられるインデント
set softtabstop=4 " 挿入モードでtabキーを押した時に挿入される空白の量

set number

"------------------------------------------------------------
" Shortcut keys
" Tagbar
nmap <F8> :TagbarToggle<CR> 

