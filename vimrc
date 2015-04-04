set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<

" NeoBundle
if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#rc(expand('~/.vim/bundle'))

" ファイルツリー表示
NeoBundle 'scrooloose/nerdtree'
" コメントON/OFFを手軽に実行
NeoBundle 'tomtom/tcomment_vim'
" テンプレートプラグイン
NeoBundle "thinca/vim-template"
" テンプレート中に含まれる特定文字列を置き換える
augroup MyAutoCmd
autocmd MyAutoCmd User plugin-template-loaded call s:template_keywords()
function! s:template_keywords()
    silent! %s/<+DATE+>/\=strftime('%Y-%m-%d')/g
    silent! %s/<+FILENAME+>/\=expand('%:r')/g
endfunction
" テンプレート中に含まれる'<+CURSOR+>'にカーソルを移動
autocmd MyAutoCmd User plugin-template-loaded
    \   if search('<+CURSOR+>')
    \ |   silent! execute 'normal! "_da>'
    \ | endif

" 未インストールのプラグインがある場合インストールするかをチェックしてくれる
NeoBundleCheck 

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
set colorcolumn=80

" Indentation options 
set expandtab     " タブを空白文字に変換
set tabstop=4     " タブ文字が画面上で表示される幅
set shiftwidth=4  " Normal modeやcindent(?)で加えられるインデント
set softtabstop=4 " 挿入モードでtabキーを押した時に挿入される空白の量

set number

"------------------------------------------------------------
" Shortcut keys
" F8 to open Tagbar
nmap <F8> :TagbarToggle<CR> 
" F1 to open NERDTree
noremap <F1> :NERDTree<CR>

