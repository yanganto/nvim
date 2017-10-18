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
Plug 'vim-syntastic/syntastic'
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
Plug 'wting/rust.vim'
Plug 'racer-rust/vim-racer'
Plug 'dhruvasagar/vim-table-mode'




" Any valid git URL is allowed
"Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Group dependencies, vim-snippets depends on ultisnips
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
"Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
"Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
"Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
"Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
"Plug '~/my-prototype-plugin'

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

set nu
autocmd Filetype html setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype python setlocal ts=4 sts=4 sw=4 expandtab

let g:python_host_prog = '/usr/bin/python'

""""""""""""""""""""
""" Plug Settings
""""""""""""""""""""

"NERDTree"
map <F5> <ESC>:NERDTreeToggle<CR>

"indentLine"
let g:indentLine_char = '┆'
map <F6> <ESC>:IndentLinesToggle<CR>

"YCM"
let g:ycm_server_python_interpreter = '/usr/bin/python'
let g:ycm_key_list_select_completion=['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion=['<C-p>', '<Up>']
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_complete_in_comments=1

"Syntastic"
let g:syntastic_javascript_checkers = ['standard']

let g:syntastic_python_checkers=['pyflakes']
let g:syntastic_python_pylint_args='--disable=C0301'
" C0111 - doc string check
" C0301 - line to long
" R0903 - No method class warning
let g:syntastic_check_on_open = 1

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
