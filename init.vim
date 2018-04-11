"""""""""""""""""""""""""""
""" vim plugin settings """
""" - plugin manager    """
"""""""""""""""""""""""""""
call plug#begin('~/.config/nvim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'
Plug 'kshenoy/vim-signature'
Plug 'Yggdroot/indentLine'
Plug 'Valloric/YouCompleteMe'
Plug 'tpope/vim-commentary'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'w0rp/ale'
Plug 'scrooloose/nerdtree'
Plug 'chase/vim-ansible-yaml'
Plug 'zchee/nvim-go', { 'do': 'make'}
Plug 'darthmall/vim-vue'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mileszs/ack.vim'
Plug 'majutsushi/tagbar'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'yanganto/nvim-translate'
Plug 'rust-lang/rust.vim'
Plug 'dhruvasagar/vim-table-mode'
Plug 'cespare/vim-toml'
Plug 'peterhoeg/vim-qml'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-speeddating'
Plug 'jceb/vim-orgmode'
Plug 'rhysd/vim-clang-format'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'idanarye/vim-vebugger'
Plug 'tmhedberg/simpylfold'
Plug 'Konfekt/FastFold'

" Add plugins to &runtimepath
call plug#end()

""""""""""""""""""""
""" Preset Env
""""""""""""""""""""

set encoding=utf-8
set termencoding=utf-8
set langmenu=zh_TW.UTF-8
hi Search cterm=NONE ctermfg=black ctermbg=gray
"language message zh_TW.UTF-8

set number
autocmd Filetype html setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype python setlocal ts=4 sts=4 sw=4 expandtab
autocmd Filetype c setlocal ts=4 sts=4 sw=4 expandtab
autocmd Filetype cpp setlocal ts=4 sts=4 sw=4 expandtab
autocmd Filetype yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype markdown setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype sh setlocal ts=4 sts=4 sw=4 expandtab
autocmd Filetype org setlocal ts=2 sts=2 sw=2 expandtab 

let g:python_host_prog = '/usr/bin/python'

""""""""""""""""""""
""" Plug Settings
""""""""""""""""""""

"NERDTree"
map <F5> <ESC>:NERDTreeToggle<CR>

"indentLine"
let g:indentLine_char = '┆'
let g:indentLine_color_term = 235
map <F6> <ESC>:IndentLinesToggle<CR>

"YCM"
let g:ycm_server_python_interpreter = '/usr/bin/python'
let g:ycm_key_list_select_completion=['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion=['<C-p>', '<Up>']
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_complete_in_comments=1
" YCM for rust "
let g:ycm_rust_src_path = '/home/yanganto/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src'


" ALE
let g:ale_linters = {
\   'python': ['pylint', 'flake8'],
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

let g:ale_sign_column_always = 1
let g:ale_sign_error = '◉'
let g:ale_sign_warning = '◉'
highlight clear ALEErrorSign
highlight clear ALEWarningSign
highlight ALEErrorSign ctermfg=DarkMagenta guifg=#CC0000
highlight ALEWarningSign ctermfg=8 ctermbg=Black guifg=#111111
highlight ALEWarning ctermbg=8 ctermbg=Black
highlight ALEError ctermbg=9
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '【%severity%｜%linter%】%s'
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
let g:airline#extensions#ale#enabled = 1
let g:ale_set_signs = 0


" Translate
let g:translate_dest_lang='zh-TW'

" Go Debug
let g:ConqueTerm_Color = 2                                                            
let g:ConqueTerm_CloseOnEnd = 1                                                       
let g:ConqueTerm_StartMessages = 0                                                    

" nvim-translator
map <C-t> <ESC>:Translate<CR>

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Ack.vim (use ag )
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" TagBar
map <F8> :TagbarToggle<CR>

" Table Mode
map <M-t> <Esc>:TableModeToggle<CR>

" Debuger
map <F2> <Esc>:VBGtoggleBreakpointThisLine<CR>
map <F7> <Esc>:VBGstartPDB3 
" map <F6> <Esc>:VBGclearBreakpints<CR>
map <F9> <Esc>:VBGeval  
map <F10> <Esc>:VBGcontinue<CR>
map <F11> <Esc>:VBGstepOver<CR>
map <F12> <Esc>:VBGstepIn<CR>


" Fold
highlight Folded ctermbg=black ctermfg=239
set foldmethod=syntax

