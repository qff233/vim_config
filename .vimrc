
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
	Plug 'vim-scripts/autocomplpop'
	Plug 'majutsushi/tagbar'
	Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
	Plug 'https://github.com/bling/vim-airline.git'
	Plug 'itchyny/lightline.vim'
	Plug 'powerline/powerline'
	Plug 'vim-scripts/a.vim'
	Plug 'vim-scripts/TagHighlight'
	Plug 'crusoexia/vim-monokai'
	Plug 'justinmk/vim-syntax-extra'
	Plug 'octol/vim-cpp-enhanced-highlight'
call plug#end()

set t_Co=256
"let g:solarized_termcolors=16

colorscheme	desert
set background=dark

syntax on	  "语法高亮 
set number    "行数
set wildmenu  "显示命令提示
set hlsearch  "搜索高亮
set incsearch "边输入边搜索
set wrapscan  "循环搜索

set number			"显示行数
set tabstop=4		"tab缩进
set softtabstop=4	"tab实际缩进
set shiftwidth=4	"每一级缩进
set noexpandtab		"tab制表符不转空格
set autoindent		"自动缩进


let g:NERDTreeWinSize = 20
let g:tagbar_width=45

let g:AutoComplPop_IgnoreCaseOption=1

set ignorecase
let g:acp_behaviorKeywordCommand="\<C-n>"

map <F2> <S-K><CR>
map! <F2> <C-O><S-K><CR>

map <F3> :! ctags -R<CR> :UpdateTypesFile<CR>
map! <F3> <Esc>:! ctags -R<CR> :UpdateTypesFile<CR>

map <F11> :NERDTreeToggle<CR>
map! <F11> <Esc>:NERDTreeToggle<CR>
map <F12> :TagbarToggle<CR>
map! <F12> <Esc>:TagbarToggle<CR>

map <c-]> g<c-]>
map! <c-]> <Esc> g<c-]>

map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <C-T> :tabnew<CR>

noremap  1 1gt
noremap  2 2gt
noremap  3 3gt
noremap  4 4gt
noremap  5 5gt
noremap  6 6gt
noremap  7 7gt
noremap  8 8gt
noremap  9 9gt
noremap  0 :tablast<CR>

map <S-Q> :wq<CR>

