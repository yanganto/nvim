"""""""""""""""""""""""""""
""" vim plugin settings """
"""   plugin manager    """
"""""""""""""""""""""""""""
call plug#begin('~/.config/nvim/plugged')
Plug 'junegunn/vim-easy-align'
Plug 'kshenoy/vim-signature'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-commentary'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'w0rp/ale'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'rking/ag.vim'
Plug 'liuchengxu/vista.vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'dhruvasagar/vim-table-mode'
Plug 'cespare/vim-toml'
Plug 'peterhoeg/vim-qml'
Plug 'tpope/vim-speeddating'
Plug 'jceb/vim-orgmode'
Plug 'rhysd/vim-clang-format'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'idanarye/vim-vebugger'
Plug 'tmhedberg/simpylfold'
Plug 'Konfekt/FastFold'
Plug 'rhysd/git-messenger.vim'
Plug 'digitaltoad/vim-pug'
Plug 'RRethy/vim-illuminate'
Plug 'tc50cal/vim-terminal'
Plug 'tpope/vim-fugitive'
Plug 'ludovicchabant/vim-gutentags'
Plug 'jiangmiao/auto-pairs'

" My Plugins
Plug 'yanganto/nvim-translate', {'branch': 'develop'}
Plug 'yanganto/nvim-translate-byte-literal', {'branch': 'master'}

" google tasks app
Plug 'mattn/googletasks-vim'
Plug 'mattn/webapi-vim'

" Rust Linters
Plug 'rust-lang/rust.vim', {'for': 'rust'}
"Plug 'vim-syntastic/syntastic'
"Plug 'alx741/vim-rustfmt'

" Code Complementation
" Plug 'Valloric/YouCompleteMe'
" Plug 'zxqfl/tabnine-vim'
" Plug 'neovim/nvim-lsp'
Plug 'autozimu/LanguageClient-neovim', {'branch': 'next', 'do': 'bash install.sh'}

" Language Colorization
Plug 'ap/vim-css-color'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'LnL7/vim-nix'
Plug 'tasn/vim-tsx'
Plug 'qnighy/lalrpop.vim'
" Plug 'chase/vim-ansible-yaml'
" Plug 'zchee/nvim-go', { 'do': 'make'}
" Plug 'posva/vim-vue'

" Following config setting for projects
Plug 'editorconfig/editorconfig-vim'

" Deubger
Plug 'yanganto/vimspector', {'branch': 'Ant'}


" Add plugins to &runtimepath
call plug#end()

""""""""""""""""""""
""" Preset Env
""""""""""""""""""""

set encoding=utf-8
set termencoding=utf-8
set langmenu=zh_TW.UTF-8
set guifont=Fira\ Code:h12

hi Search cterm=NONE ctermfg=black ctermbg=gray
hi Comment ctermfg=12 gui=bold guifg=Blue
"language message zh_TW.UTF-8

set number
autocmd Filetype html setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype css setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype scss setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype sass setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype json setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype python setlocal ts=4 sts=4 sw=4 expandtab
autocmd Filetype c setlocal ts=4 sts=4 sw=4 expandtab
autocmd Filetype cpp setlocal ts=4 sts=4 sw=4 expandtab
autocmd Filetype rust setlocal ts=4 sts=4 sw=4 noexpandtab
autocmd Filetype yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype markdown setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype asciidoc setlocal ts=4 sts=4 sw=4 expandtab
autocmd Filetype sh setlocal ts=4 sts=4 sw=4 expandtab
autocmd Filetype org setlocal ts=2 sts=2 sw=2 expandtab 
autocmd Filetype vue setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype just setlocal syntax=make
autocmd Filetype toml setlocal ts=4 sts=4 sw=4 expandtab
autocmd Filetype vim setlocal ts=2 sts=2 sw=2 expandtab

let g:python_host_prog = '/usr/bin/python'

" hight the 
set colorcolumn=80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99
hi ColorColumn ctermbg=black 


"""""""""""""""""""
"" Plug Settings ""
"""""""""""""""""""

"NERDTree"
map <F5> <ESC>:NERDTreeToggle<CR>
let g:NERDTreeHighlightCursorline = 1
let g:NERDTreeShowHidden=1

" CtrlP
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
    \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc)$',
    \ }

"indentLine"
let g:indentLine_char = '┆'
let g:indentLine_color_term = 236
set list lcs=tab:\┆\ 
let g:indent_line_mode = "enable"
highlight default TabIndent ctermfg=60 guifg=60
match TabIndent /\t/
function! ToggleIndentLineMode()
  if g:indent_line_mode == "enable"
    set list lcs=tab:\ \ 
    IndentLinesToggle
    let g:indent_line_mode = "disable"
  else
    set list lcs=tab:\┆\ 
    IndentLinesToggle
    let g:indent_line_mode = "enable"
  endif
endfunction
map <F6> <ESC>:call ToggleIndentLineMode()<CR>

" ALE
let g:ale_linters = {
\   'python': ['pylint -j2', 'flake8'],
\}
let g:ale_fixers = {
\   'javascript': ['eslint'],
\}
let g:ale_python_pylint_options ='--disable=C0301,F0401,C0111' 
" F0401 - Unable to import
" C0111 - doc string check
" C0301 - line too long

let g:ale_python_flake8_options ='--ignore=E302,E303,E501' 
" E501  - line too long
" E302  - two line spacing
" E302  - too many blank lines

" Auto remove tailing space in python
autocmd BufWritePre *.py :%s/\s\+$//e


let g:ale_sign_column_always = 1
let g:ale_sign_error = '◉'
let g:ale_sign_warning = '◉'
highlight clear ALEErrorSign
highlight clear ALEWarningSign
highlight ALEErrorSign ctermfg=DarkMagenta guifg=#CC0000
highlight ALEWarningSign ctermfg=8 ctermbg=DarkGray guifg=#444444
highlight ALEWarning ctermbg=8 ctermbg=DarkGray
highlight ALEError ctermbg=9 ctermfg=DarkGray
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '【%severity%｜%linter%】%s'
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
let g:airline#extensions#ale#enabled = 1
let g:ale_set_signs = 0

" illuminate
hi illuminatedWord cterm=underline,bold gui=underline,bold

" Translate
let g:translate_dest_lang='zh-TW'
let g:translate_display_option='status'

" Go Debug
let g:ConqueTerm_Color = 2                                                            
let g:ConqueTerm_CloseOnEnd = 1                                                       
let g:ConqueTerm_StartMessages = 0                                                    

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Ag
let g:ag_working_path_mode="r"

" gutentags
let g:gutentags_cache_dir = '~/.cache/gutentags'

" Vista
" let g:vista_default_executive = 'TagbarToggle'
let g:vista_mode = "none"
function! ToggleVistaWindow()
  if g:vista_mode == "none"
    let g:vista_sidebar_width = 30
    let g:vista_mode = "small"
    Vista
    echo "Set Vista Window Small"
  elseif g:vista_mode == "small"
    let g:vista_sidebar_width = 60
    let g:vista_mode = "mid"
    Vista! | Vista
    echo "Set Vista Window Middle"
  elseif g:vista_mode == "mid"
    let g:vista_sidebar_width = 90
    let g:vista_mode = "large"
    Vista! | Vista
    echo "Set Vista Window Large"
  else
    let g:vista_mode = "none"
    Vista!
  endif
endfunction
map <F8> <Esc>:call ToggleVistaWindow()<CR>

" Table Mode
map <M-t> <Esc>:TableModeToggle<CR>

" Spell check
function! ToggleSpellCheck()
  set spell!
  if &spell
    echo "Spellcheck ON"
  else
    echo "Spellcheck OFF"
  endif
endfunction
map <F9> <Esc>:call ToggleSpellCheck()<CR>
map <F10> <Esc>]s
" Translate
map <F2> <ESC>:Translate<CR>

" Fold
highlight Folded ctermbg=black ctermfg=239
set foldmethod=syntax
au BufRead,BufNewFile *.py set foldmethod=indent

" FastFold
let g:markdown_folding = 1
let g:tex_fold_enabled = 1
let g:xml_syntax_folding = 1
let g:javaScript_fold = 1
let g:rust_fold = 1

" vim table
let g:table_mode_corner='|'

" Git Messenger
nmap <Leader>gm <Plug>(git-messenger)
let g:git_messenger_include_diff = "current"
hi gitmessengerPopupNormal term=None guifg=#eeeeee guibg=#333333 ctermfg=255 ctermbg=234
hi gitmessengerHeader term=None guifg=#88b8f6 ctermfg=111
hi gitmessengerHash term=None guifg=#f0eaaa ctermfg=229
hi gitmessengerHistory term=None guifg=#fd8489 ctermfg=210


" Terminal bash
map <C-~> <ESC>:TerminalSplit zsh<CR>

" Rust fmt
let g:rustfmt_autosave = 1


let g:LanguageClient_serverCommands = {
    \ 'rust': ['/usr/bin/rustup', 'run', 'stable', 'rls'],
    \ }
    " \ 'javascript': ['/usr/local/bin/javascript-typescript-stdio'],
    " \ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
    " \ 'python': ['/usr/local/bin/pyls'],
    " \ 'ruby': ['~/.rbenv/shims/solargraph', 'stdio'],

nmap  K :call LanguageClient#textDocument_hover()<CR>
nmap  gd :call LanguageClient#textDocument_definition()<CR>

"YCM"
" let g:ycm_server_python_interpreter = '/usr/bin/python'
" let g:ycm_key_list_select_completion=['<C-n>', '<Down>']
" let g:ycm_key_list_previous_completion=['<C-p>', '<Up>']
" let g:ycm_seed_identifiers_with_syntax=1
" let g:ycm_complete_in_comments=1
" YCM for rust "
" let g:ycm_rust_src_path = '/home/yanganto/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src'

" Debug functions
autocmd Filetype rust map <F3> <ESC>:s/^/\/\*TODO:rm debug\*\/fn debug<T:std::fmt::Debug>(s:\&str,t:T){print!("ANT: {:}: {:#?}\\n",s,t);}\r/<CR><ESC>:noh<CR>

" vim-translate-byte
nmap tt :<C-u>TranslateByteArray<CR>


" Fmt notify checker
if !exists("g:rustfmt_autosave")
  echo "[WARN] Rust fmt autosave disabled"
  " call nvim_buf_set_lines(buf, 0, -1, v:true, [WARN] Rust fmt autosave disabled)
  " let opts = {'relative': 'cursor', 'width': 20, 'height': 33, 'col': 1, 'row': 0, 'anchor': 'NW', 'style': 'minimal'}
  " let win = nvim_open_win(buf, v:true, opts)
  " call nvim_win_set_option(win, 'winhl', 'Normal:popupwindow')
  " highlight popupwindow ctermfg=15 ctermbg=4
endif

" vimspector
let g:vimspector_enable_mappings = 'ANT'
let g:vimspector_sidebar_width = 75
let g:vimspector_bottombar_height = 15
let g:vimspector_code_minwidth = 90
let g:vimspector_terminal_maxwidth = 100
let g:vimspector_terminal_minwidth = 20
