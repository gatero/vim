set nocompatible              " be iMproved, required
filetype off                  " required
" Theme
syntax on
set background=dark
set termguicolors
colorscheme material-monokai

hi ColorColumn ctermbg=234 guibg=#293739

"autocmd BufEnter * :syn sync maxlines=500
"set nocursorcolumn
"set nocursorline
"set norelativenumber
"syntax sync minlines=256

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
Plugin 'godlygeek/tabular'
"Plugin 'easymotion/vim-easymotion'
"Plugin 'plasticboy/vim-markdown'
Plugin 'thaerkh/vim-indentguides'
"Plugin 'dhruvasagar/vim-table-mode'
"Plugin 'wvffle/vimterm'
Plugin 'xuyuanp/nerdtree-git-plugin'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Raimondi/delimitMate'              " Delimit mate
Plugin 'ryanoasis/vim-devicons'            " Devicons
Plugin 'othree/html5.vim'                  " HTML5 syntax
Plugin 'fatih/vim-go'
Plugin 'Valloric/YouCompleteMe'            " autocomplete
"Plugin 'junegunn/vim-emoji'
Plugin 'majutsushi/tagbar'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'djoshea/vim-autoread'
Plugin 'flowtype/vim-flow'
Plugin 'skammer/vim-css-color'             " show styles colors
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'chemzqm/vim-jsx-improve'
Plugin 'mxw/vim-jsx'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'ctrlpvim/ctrlp.vim'

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

" PATHOGEN
execute pathogen#infect()
call pathogen#helptags()

"vimterm
"nnoremap <silent> <F4> :call vimterm#exec('g++  -o /tmp/out' . expand('%')) <CR>
"nnoremap <silent> <F5> :call vimterm#exec('/tmp/out') <CR>

"nnoremap <F7> :call vimterm#toggle() <CR>
"tnoremap <F7> <C-\><C-n>:call vimterm#toggle() <CR>

" Higlight current column.
au WinLEave * set nocursorcolumn
au WinEnter * set cursorcolumn
au BufNewFile,BufRead *.ejs set filetype=html

" Line break
" set guifont=Monaco:h8
set synmaxcol=200
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
set history=1000                " remember more commands and search history
set undolevels=1000             " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class " ignore this extensions
set title                       " change the terminal's title
set visualbell                  " don't beep
set noerrorbells                " don't beep
set cursorline                  " hightlight current line
""set wildmenu                    " visual autocomplete for command menu
"set list                        " ordered sequence of items
set listchars=trail:·,tab:»»    " trail: Character to show for trailing spaces, tab: two characters to be used to show a tab.
set guioptions-=r               " remove right-hand scroll bar"
set guioptions-=L               " remove left-hand scroll bar"
set softtabstop=2
set rtp+=$GOPATH/src/github.com/golang/lint/misc/vim

" Status line
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set noswapfile

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
"silent! if emoji#available()
""  let g:gitgutter_sign_added=emoji#for('small_blue_diamond')
""  let g:gitgutter_sign_modified=emoji#for('small_orange_diamond')
""  let g:gitgutter_sign_removed=emoji#for('small_red_triangle')
""  let g:gitgutter_sign_modified_removed=emoji#for('collision')
"endif
"set completefunc=emoji#complete

" Nerdtree
nmap <F2> :NERDTreeToggle<CR>

" Syntastic
"let g:syntastic_always_populate_loc_list=0
"let g:syntastic_auto_loc_list=0
"let g:syntastic_check_on_open=0
"let g:syntastic_check_on_wq=0
"let g:syntastic_scss_checkers=['']
"let g:syntastic_html_checkers=['']
"let g:syntastic_auto_jump=0
"let g:syntastic_enable_balloons=0
"let g:syntastic_error_symbol=emoji#for('red_circle')
"let g:syntastic_warning_symbol=emoji#for('warning')
let g:syntastic_quiet_messages = { "type": "style" }
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

" Supertab
"let g:SuperTabDefaultCompletionType="context"

" Emmet
let g:user_emmet_mode='a'    "enable all function in all mode.
let g:user_emmet_leader_key='<C-Z>'
let g:emmet_html5 = 0

" HTML 5
let g:html5_event_handler_attributes_complete=1

" NERDTress File highlighting
"function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
  "exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
  "exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
"endfunction

"call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#282C34')
"call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#282C34')
"call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#282C34')
"call NERDTreeHighlightFile('go', 'blue', 'none', '#3366FF', '#282C34')
"call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#282C34')
"call NERDTreeHighlightFile('config', 'brown', 'none', 'brown', '#282C34')
"call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#282C34')
"call NERDTreeHighlightFile('json', 'cyan', 'none', 'cyan', '#282C34')
"call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#282C34')
"call NERDTreeHighlightFile('styl', 'Magenta', 'none', 'Magenta', '#282C34')
"call NERDTreeHighlightFile('css', 'Magenta', 'none', 'Magenta', '#282C34')
"call NERDTreeHighlightFile('coffee', 'Gray', 'none', 'Gray', '#282C34')
"call NERDTreeHighlightFile('js', 'yellow', 'none', 'yellow', '#282C34')
"call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#282C34')
"call NERDTreeHighlightFile('ds_store', 'Gray', 'none', '#686868', '#282C34')
"call NERDTreeHighlightFile('gitconfig', 'Gray', 'none', '#686868', '#282C34')
"call NERDTreeHighlightFile('gitignore', 'Gray', 'none', '#686868', '#282C34')
"call NERDTreeHighlightFile('bashrc', 'Gray', 'none', '#686868', '#282C34')
"call NERDTreeHighlightFile('bashprofile', 'Gray', 'none', '#686868', '#282C34')

" highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+\%#\@<!$/
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhitespace /\s\+$/

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
let g:syntastic_mode_map = {
    \ "mode": "active",
    \ "passive_filetypes": ["go"] }

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
"nmap <F3> :TagbarToggle<CR>
"let g:tagbar_autoclose = 1
"let g:tagbar_type_coffee = {
    "\ 'ctagstype' : 'coffee',
    "\ 'kinds'     : [
        "\ 'c:classes',
        "\ 'm:methods',
        "\ 'f:functions',
        "\ 'v:variables',
        "\ 'f:fields',
    "\ ]
"\ }
"let g:tagbar_type_markdown = {
    "\ 'ctagstype' : 'markdown',
    "\ 'kinds' : [
        "\ 'h:Heading_L1',
        "\ 'i:Heading_L2',
        "\ 'k:Heading_L3'
    "\ ]
"\ }
"let g:tagbar_type_typescript = {
  "\ 'ctagstype': 'typescript',
  "\ 'kinds': [
    "\ 'c:classes',
    "\ 'n:modules',
    "\ 'f:functions',
    "\ 'v:variables',
    "\ 'v:varlambdas',
    "\ 'm:members',
    "\ 'i:interfaces',
    "\ 'e:enums',
  "\ ]
"\ }
"let g:tagbar_type_css = {
"\ 'ctagstype' : 'Css',
    "\ 'kinds'     : [
        "\ 'c:classes',
        "\ 's:selectors',
        "\ 'i:identities'
    "\ ]
"\ }

" golang
"autocmd BufWritePost,FileWritePost *.go execute 'Lint' | cwindow
highlight LineNr ctermfg=grey
highlight Comment ctermfg=lightgrey

" ctrlp
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*     " MacOSX/Linux
let g:ctrlp_custom_ignore = 'node_modules/|DS_Store/|.git'
" golang
let g:go_fmt_command = "goimports"
let g:go_highlight_types       = 1
let g:go_highlight_fields      = 1
let g:go_highlight_functions   = 1
let g:go_highlight_methods     = 1
let g:go_highlight_operators   = 1
let g:go_highlight_extra_types = 1


"
"highlight clear SignColumn
"highlight GitGutterAdd ctermfg=green
"highlight GitGutterChange ctermfg=yellow
"highlight GitGutterDelete ctermfg=red
"highlight GitGutterChangeDelete ctermfg=yellow
let g:ctrlp_user_command = 'find %s -type f'
"
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
let g:NERDTreeShowIgnoredStatus = 1
" tabularize
let mapleader=','
if exists(":Tabularize")
  nmap <Leader>a= :Tabularize /=<CR>
  vmap <Leader>a= :Tabularize /=<CR>
  nmap <Leader>a: :Tabularize /:\zs<CR>
  vmap <Leader>a: :Tabularize /:\zs<CR>
endif
"easymotion
"map <Leader> <Plug>(easymotion-prefix)
"" <Leader>f{char} to move to {char}
"map  <Leader>f <Plug>(easymotion-bd-f)
"nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
"nmap s <Plug>(easymotion-overwin-f2)

"" Move to line
"map <Leader>L <Plug>(easymotion-bd-jk)
"nmap <Leader>L <Plug>(easymotion-overwin-line)

"" Move to word
"map  <Leader>w <Plug>(easymotion-bd-w)
"nmap <Leader>w <Plug>(easymotion-overwin-w)
"indent
let g:indentguides_ignorelist = ['text']
let g:indentguides_spacechar = '┆'
let g:indentguides_tabchar = '|'
" flow
let g:flow#enable = 1
let g:javascript_plugin_flow = 1
" theme
let g:materialmonokai_italic=1
let g:airline_theme='materialmonokai'
" jsx
let g:jsx_ext_required = 0
