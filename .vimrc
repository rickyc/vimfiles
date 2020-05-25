call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-test/vim-test'
Plug 'Galooshi/vim-import-js'
Plug 'scrooloose/nerdtree'
Plug 'mtth/scratch.vim'
Plug 'mhartington/oceanic-next'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'mileszs/ack.vim'
Plug 'vim-scripts/ZoomWin'
Plug 'godlygeek/tabular'
Plug 'vim-scripts/L9'
Plug 'othree/vim-autocomplpop'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
"Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'vim-scripts/Mark'
Plug 'jlanzarotta/bufexplorer'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'zivyangll/git-blame.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'slim-template/vim-slim'
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

Plug 'fannheyward/coc-marketplace', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-yank', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-eslint', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-snippets', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-tabnine', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-css', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-solargraph', {'do': 'yarn install --frozen-lock'}
Plug 'fannheyward/coc-terminal', {'do': 'yarn install --frozen-lockfile'}


call plug#end()

" Nerdtree
" nmap <F7> :NERDTreeToggle<CR>

" Git Blame Plugin like VSCode
:nmap <Leader>b :<C-u>call gitblame#echo()<CR>
":autocmd CursorMoved * :call gitblame#echo()

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

let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name

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

set encoding=utf8

if has("gui_running")
  let g:airline_powerline_fonts = 1

  "set guifont=Menlo:h11
  "set guifont=DejaVu_Sans_Mono:h11
  "set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 10
  "set guifont=Menlo\ for\ Powerline
  set guifont=Hack\ Regular\ Nerd\ Font\ Complete:h20
  "let Powerline_symbols = 'fancy'
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
  color slate
endif


" TextEdit might fail if hidden is not set.
set hidden

" Give more space for displaying messages.
"set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=500

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of LS, ex: coc-tsserver
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings using CoCList:
" Show all diagnostics.
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
