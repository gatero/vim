set nocompatible              " be iMproved, required
filetype off                  " required

set encoding=utf-8
scriptencoding utf-8
set noshowmode
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Plus\ Font\ Awesome\ Plus\ Octicons\ Plus\ Pomicons:h8

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/.vim/plugins')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" My Pluguins
Plugin 'vim-airline/vim-airline'           " airline
Plugin 'scrooloose/nerdtree'               " Nerdtree
Plugin 'scrooloose/syntastic'              " Syntastic
Plugin 'ervandew/supertab'                 " Super tab
Plugin 'mattn/emmet-vim'                   " Emmet
Plugin 'terryma/vim-multiple-cursors'      " Multiple cursor
Plugin 'Raimondi/delimitMate'              " Delimit mate
Plugin 'digitaltoad/vim-pug'               " Jade syntax
Plugin 'ryanoasis/vim-devicons'            " Devicons
" Plugin 'powerline/powerline'               " Powerline
" Plugin 'itchyny/lightline.vim'             " status line
Plugin 'othree/html5.vim'                  " HTML5 syntax
Plugin 'skammer/vim-css-color'             " show styles colors
Plugin 'fatih/vim-go'
" Plugin 'Valloric/YouCompleteMe'            " autocomplete
Plugin 'luochen1990/rainbow'               " Higlight brackets
Plugin 'junegunn/vim-emoji'
Plugin 'majutsushi/tagbar'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline-themes'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Theme
syntax on
colorscheme onedark

hi ColorColumn ctermbg=234 guibg=#293739

" PATHOGEN
execute pathogen#infect()
call pathogen#helptags()


" Higlight current column.
au WinLEave * set nocursorcolumn
au WinEnter * set cursorcolumn
au BufNewFile,BufRead *.ejs set filetype=html

" Line break
" set guifont=Monaco:h8
set t_Co=256                    " This is may or may not needed.
set background=dark             " Theme background
set wrap linebreak nolist       " Warp text
set autoindent                  " Indentation
set number                      " always show line numbers
set mouse=a                     " copy text with the mouse
set smartindent                 " smart indent script
set tabstop=2                   " a tab is four spaces
set shiftwidth=2                " number of spaces to use for autoindenting
set expandtab                   " convert tabs to spaces
set backspace=indent,eol,start  " allow backspacing over everything in insert mode
"set shiftround                  " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch                   " set show matching parenthesis
set ignorecase                  " ignore case when searching
set smartcase                   " ignore case if search pattern is all lowercase, case-sensitive otherwise
set smarttab                    " insert tabs on the start of a line according to shiftwidth, not tabstop
set hlsearch                    " highlight search terms
set incsearch                   " show search matches as you type
set history=10000                " remember more commands and search history
set undolevels=10000             " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class " ignore this extensions
set title                       " change the terminal's title
set visualbell                  " don't beep
set noerrorbells                " don't beep
set cursorline                  " hightlight current line
"set wildmenu                    " visual autocomplete for command menu
"set list                        " ordered sequence of items
set listchars=trail:·,tab:»»    " trail: Character to show for trailing spaces, tab: two characters to be used to show a tab.
set guioptions-=r               " remove right-hand scroll bar"
set guioptions-=L               " remove left-hand scroll bar"
set softtabstop=2

" Status line
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Scroll Configuration
"nmap <ScrollWheelUp> <nop>
nmap <S-ScrollWheelUp> <nop>
nmap <C-ScrollWheelUp> <nop>
"nmap <ScrollWheelDown> <nop>
nmap <S-ScrollWheelDown> <nop>
nmap <C-ScrollWheelDown> <nop>
nmap <ScrollWheelLeft> <nop>
nmap <S-ScrollWheelLeft> <nop>
nmap <C-ScrollWheelLeft> <nop>
nmap <ScrollWheelRight> <nop>
nmap <S-ScrollWheelRight> <nop>
nmap <C-ScrollWheelRight> <nop>


" Status
" powerline
set laststatus=2
set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)

"
" emojis
"
" Replace :emoji_name: into Emojis:
" "%s/:\([^:]\+\):/\=emoji#for(submatch(1), submatch(0))/g
silent! if emoji#available()
  let g:gitgutter_sign_added=emoji#for('small_blue_diamond')
  let g:gitgutter_sign_modified=emoji#for('small_orange_diamond')
  let g:gitgutter_sign_removed=emoji#for('small_red_triangle')
  let g:gitgutter_sign_modified_removed=emoji#for('collision')
endif
set completefunc=emoji#complete

" Nerdtree
nmap <F2> :NERDTreeToggle<CR>

" Syntastic
let g:syntastic_always_populate_loc_list=0
let g:syntastic_auto_loc_list=0
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
let g:syntastic_scss_checkers=['']
let g:syntastic_html_checkers=['']
let g:syntastic_auto_jump=1
let g:syntastic_enable_balloons=1
let g:syntastic_error_symbol=emoji#for('red_circle')
let g:syntastic_warning_symbol=emoji#for('warning')

" Supertab
let g:SuperTabDefaultCompletionType="context"

" Emmet
let g:user_emmet_leader_key='<C-Z>'

" HTML 5
let g:html5_event_handler_attributes_complete=1

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
  exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
  exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#282C34')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#282C34')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#282C34')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#282C34')
call NERDTreeHighlightFile('config', 'brown', 'none', 'brown', '#282C34')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#282C34')
call NERDTreeHighlightFile('json', 'cyan', 'none', 'cyan', '#282C34')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#282C34')
call NERDTreeHighlightFile('styl', 'Magenta', 'none', 'Magenta', '#282C34')
call NERDTreeHighlightFile('css', 'Magenta', 'none', 'Magenta', '#282C34')
call NERDTreeHighlightFile('coffee', 'Gray', 'none', 'Gray', '#282C34')
call NERDTreeHighlightFile('js', 'yellow', 'none', 'yellow', '#282C34')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#282C34')
call NERDTreeHighlightFile('ds_store', 'Gray', 'none', '#686868', '#282C34')
call NERDTreeHighlightFile('gitconfig', 'Gray', 'none', '#686868', '#282C34')
call NERDTreeHighlightFile('gitignore', 'Gray', 'none', '#686868', '#282C34')
call NERDTreeHighlightFile('bashrc', 'Gray', 'none', '#686868', '#282C34')
call NERDTreeHighlightFile('bashprofile', 'Gray', 'none', '#686868', '#282C34')

" highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+\%#\@<!$/
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhitespace /\s\+$/

"0 if you want to enable it later via :RainbowToggle
let g:rainbow_active=1
let g:rainbow_conf={
\   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
\   'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
\   'operators': '_,_',
\   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\   'separately': {
\       '*': {},
\       'tex': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
\       },
\       'lisp': {
\           'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
\       },
\       'vim': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
\       },
\       'html': {
\           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
\       },
\       'css': 0,
\   }
\}


let g:gitgutter_sign_column_always=1
" :AirlineRefresh
" :AirlineTheme <theme_name>
" Devicons
let g:airline_theme='wombat'
let g:Powerline_symbols='unicode'
let g:webdevicons_enable=1
let g:airline_powerline_fonts=1

let g:airline#extensions#tabline#enabled=1
let g:webdevicons_enable_airline_tabline=1
let g:webdevicons_enable_airline_statusline=1

let g:WebDevIconsNerdTreeAfterGlyphPadding=' '
let g:WebDevIconsUnicodeDecorateFolderNodes=1
let g:webdevicons_enable_unite=1
let g:webdevicons_enable_flagship_statusline=1
let g:WebDevIconsNerdTreeGitPluginForceVAlign=1
let g:webdevicons_conceal_nerdtree_brackets=1

if exists("g:loaded_webdevicons")
  call webdevicons#refresh()
endif

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" Airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.crypt = ''
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'

" Tagbar
nmap <F3> :TagbarToggle<CR>
let g:tagbar_autoclose = 1
let g:tagbar_type_coffee = {
    \ 'ctagstype' : 'coffee',
    \ 'kinds'     : [
        \ 'c:classes',
        \ 'm:methods',
        \ 'f:functions',
        \ 'v:variables',
        \ 'f:fields',
    \ ]
\ }
let g:tagbar_type_markdown = {
    \ 'ctagstype' : 'markdown',
    \ 'kinds' : [
        \ 'h:Heading_L1',
        \ 'i:Heading_L2',
        \ 'k:Heading_L3'
    \ ]
\ }
let g:tagbar_type_typescript = {
  \ 'ctagstype': 'typescript',
  \ 'kinds': [
    \ 'c:classes',
    \ 'n:modules',
    \ 'f:functions',
    \ 'v:variables',
    \ 'v:varlambdas',
    \ 'm:members',
    \ 'i:interfaces',
    \ 'e:enums',
  \ ]
\ }
let g:tagbar_type_css = {
\ 'ctagstype' : 'Css',
    \ 'kinds'     : [
        \ 'c:classes',
        \ 's:selectors',
        \ 'i:identities'
    \ ]
\ }
