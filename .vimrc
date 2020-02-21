call plug#begin('~/.vim/plugged')

Plug 'janko-m/vim-test' " https://github.com/janko-m/vim-test
Plug 'scrooloose/nerdtree'
Plug 'mtth/scratch.vim'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'mileszs/ack.vim'
Plug 'vim-scripts/ZoomWin'
Plug 'godlygeek/tabular'
Plug 'vim-scripts/L9'
Plug 'othree/vim-autocomplpop'
Plug 'Jackliu91/nerdtree-git-plugin'
Plug 'vim-scripts/Mark'
Plug 'jlanzarotta/bufexplorer'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'zivyangll/git-blame.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'slim-template/vim-slim'
"Plug 'tpope/vim-rhubarb'
"Plug 'gregsexton/gitv', {'on': ['Gitv']}
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
"Plug 'terryma/vim-multiple-cursors'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'pangloss/vim-javascript'
if has("gui_running")
  Plug 'w0rp/ale'
end

Plug 'vim-scripts/YankRing.vim'
Plug 'tpope/vim-rails'
Plug 'sjl/gundo.vim'
Plug 'mxw/vim-jsx'
Plug 'MaxMEllon/vim-jsx-pretty'

call plug#end()

" Nerdtree
nmap <F7> :NERDTreeToggle<CR>

:nmap <Leader>b :<C-u>call gitblame#echo()<CR>
:autocmd CursorMoved * :call gitblame#echo()
:nmap <Leader>s :source $MYVIMRC
:nmap <Leader>e :e $MYVIMRC
:nmap <Leader>v :NERDTreeToggle<CR>
:nmap <Leader>o :ZoomWin<CR>

:nmap ; :Buffers<CR>
:nmap <Leader>t :Files<CR>

:nmap <Leader>q :set transparency=0<CR>
:nmap <Leader>w :set transparency=10<CR>

"
"http://arjanvandergaag.nl/blog/navigating-project-files-with-vim.html
"set path+=~/Sites/**

""tab complete
function! InsertTabWrapper(direction)
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    elseif "backward" == a:direction
        return "\<c-p>"
    else
        return "\<c-n>"
    endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper ("forward")<cr>
inoremap <s-tab> <c-r>=InsertTabWrapper ("backward")<cr>

let g:project_find_path = '.,' . system("git ls-tree -d HEAD --name-only | tr '\n' : | sed 's/:/**,/g'")
autocmd VimEnter let &path = g:project_find_path
autocmd BufReadPost * let &path = g:project_find_path

" CTRL
nmap <C-n> :TestNearest<CR>
nmap <C-f> :TestFile<CR>
nmap <C-s> :TestSuite<CR>
nmap <C-l> :TestLast<CR>
nmap <C-g> :TestVisit<CR>
let test#strategy = "iterm"


" FZF
" Respect .gitignore
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

" Ale
let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']
"let g:ale_linters = {
"\  'javascript': ['eslint'],
"\  'ruby': ['rubocop']
"\}

"highlight clear ALEErrorSign " otherwise uses error bg color (typically red)
"highlight clear ALEWarningSign " otherwise uses error bg color (typically red)
let g:ale_sign_error = 'x'
let g:ale_sign_warning = '⚠'
let g:ale_statusline_format = ['X %d', '? %d', '']
" %linter% is the name of the linter that provided the message
" %s is the error or warning message
let g:ale_echo_msg_format = '%linter% says %s'

"let g:ale_linter_aliases = {'jsx': ['css', 'javascript']}
"let g:ale_linters = {'jsx': ['stylelint', 'eslint']}

" Map keys to navigate between lines with errors and warnings.
nnoremap <leader>an :ALENextWrap<cr>
nnoremap <leader>ap :ALEPreviousWrap<cr>

"Vim-JSX Pretty
let g:jsx_ext_required = 0 " Allow JSX in normal JS files
let g:vim_jsx_pretty_enable_jsx_highlight = 0 " default 1
let g:vim_jsx_pretty_colorful_config = 1 " default 0

nnoremap gp `[v`]

" Ack
let g:ackprg = 'ag --vimgrep --nogroup --nocolor --column'

" Tabularize Hackery!
nmap <Leader>z= :Tabularize /=<CR>
vmap <Leader>z= :Tabularize /=<CR>
nmap <Leader>z: :Tabularize /:\zs<CR>
vmap <Leader>z: :Tabularize /:\zs<CR>

" Clear all white space on save
autocmd BufWritePre * %s/\s\+$//e
"autocmd BufWritePre * %s/\.pa0/\.pa0/e

" Git Gutter
let g:gitgutter_enabled = 1

if !has("autocmd")
  filetype off
end

au BufNewFile,BufRead .bash_login set syntax=sh

" Set indentation
au FileType c setl shiftwidth=2 tabstop=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype .*.js setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype .*.php setlocal ts=2 sts=2 sw=2
autocmd Filetype php setlocal ts=2 sts=2 sw=2
autocmd! BufNewFile,BufRead *.pde setlocal ft=arduino

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif

" Automatically highlights lines past 80 characters
"augroup vimrc_autocmds
"	autocmd BufRead * highlight OverLength ctermbg=darkgrey guibg=#592929
"	autocmd BufRead * match OverLength /\%80v.*/
"augroup END

" Uncomment the following to have Vim load indentation rules according to the
" detected filetype. Per default Debian Vim only load filetype specific
" plugins.
if has("autocmd")
  syntax on
  filetype on
  filetype indent on
  filetype plugin on
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
" set background=dark
"set smartindent
"set backspace=start,eol
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set number
set nowrap
set ruler
set showcmd		  " Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase	" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set hidden      " Hide buffers when they are abandoned
set mouse=a		  " Enable mouse usage (all modes) in terminals
set hlsearch

" Gundo
nnoremap <F5> :GundoToggle<CR>

" JSLint Validation
nmap <F6> :JSL<CR>

"nmap <S-F7> :NERDTreeClose<CR> "shift-f7
" Store the bookmarks file in perforce
"let NERDTreeBookmarksFile="~/.vim/NERDTreeBookmarks"
"let NERDTreeShowBookmarks=1
let NERDTreeIgnore=[ '\.swp$', '\.suo$', '\.vcproj\.RIMNET', '\.obj$',
            \ '\.ilk$', '^BuildLog.htm$', '\.pdb$', '\.idb$', '\.DS_STORE$',
            \ '\.embed\.manifest$', '\.embed\.manifest.res$',
            \ '\.intermediate\.manifest$', '^mt.dep$' ]


"set grepprg=ack
function! Ack_Search(command)
    cexpr system("ack " . a:command)
endfunction

command! -nargs=+ -complete=file Ack call Ack_Search(<q-args>)
"map <leader>a :Ack<space>
noremap <Leader>a :Ack<space>


set background=dark
"color ir_black
color Tomorrow-Night-Eighties-modified
"autocmd FileType * colorscheme Tomorrow-Night-Eighties
"autocmd FileType *.jsx colorscheme Tomorrow-Night-Eighties-modified

set path+=**/src/main/**,**
set suffixesadd+=.js

if has("gui_running")
  "set guifont=Menlo:h11
  "set guifont=DejaVu_Sans_Mono:h11
  "set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 10
  let Powerline_symbols = 'fancy'
  set guioptions-=T
  set guioptions-=r
  set guioptions-=L

  set cursorcolumn
  set cursorline
  "irblack settings
  set transparency=10

  "color molokai2
  "set transparency=3
  "color molokai
  "highlight Normal guibg=grey3
  "highlight NonText guibg=grey3
  set ofu=syntaxcomplete#Complete
endif

set undodir=~/.vimundo
set undofile
set undolevels=10000 "maximum number of changes that can be undone
set undoreload=5000000 "maximum number lines to save for undo on a buffer reload

if has("gui_running")
    " Enable heavy omni completion.
    "highlight clear SignColumn

    inoremap <expr><TAB> pumvisible() ? "\<C-n>" : <SID>check_back_space() ? "\<TAB>" : "\<C-x>\<C-u>"
    function! s:check_back_space()"{{{
        let col = col('.') - 1
        return !col || getline('.')[col - 1] =~ '\s'
    endfunction"}}
endif

if has('gui_vimr')
  nnoremap <S-D-{> :tabp<CR>
  vnoremap <S-D-{> :tabp<CR>
  inoremap <S-D-{> :tabp<CR>
  nnoremap <S-D-}> :tabn<CR>
  vnoremap <S-D-}> :tabn<CR>
  inoremap <S-D-}> :tabn<CR>
endif
