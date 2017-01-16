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


" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Group dependencies, vim-snippets depends on ultisnips
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
"Plug '~/my-prototype-plugin'

" Add plugins to &runtimepath
call plug#end()

""""""""""""""""""""
""" Preset Env
""""""""""""""""""""
set nu

""""""""""""""""""""
""" Sort cuts
""""""""""""""""""""


""""""""""""""""""""
""" Plug Settings
""""""""""""""""""""

"NERDTree"
map <F5> <ESC>:NERDTreeToggle<CR>

"indentLine"
let g:indentLine_char = '┆'
map <F6> <ESC>:IndentLinesToggle<CR>

