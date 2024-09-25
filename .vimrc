set nu
set tabstop=4
set shiftwidth=4
set nobackup
set ruler
syntax on
set cindent


"**************************************************"

call plug#begin('~/.vimxpluggedz')

Plug 'preservim/nerdtree'
Plug 'tpope/vim-surround'
Plug 'Yggdroot/indentLine'
Plug 'mhinz/vim-startify'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'
Plug 'morhetz/gruvbox'
Plug 'tomasr/molokai'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', { 'branch':'master', 'do':'npm ci' }
Plug 'w0rp/ale'
Plug 'vhda/verilog_systemverilog.vim'
Plug 'majutsushi/tagbar'


call plug#end()


set background=dark
colorscheme gruvbox

let g:ale_linters_explicit = 1
let g:ale_completion_delay = 500
let g:ale_echo_delay       = 20
let g:ale_lint_delay       = 500
let g:ale_echo_msg_format  = '[%linter%] %code: %%s'
let g:ale_set_highlights = 0
let g:ale_sign_error = "✗"
let g:ale_sign_warning = '--'
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
let g:ale_sign_column_always   = 1
let g:ale_lint_on_center = 0

let g:ale_linters = {
\ 'cpp' :['g++'],
\ 'c'   :['gcc'],
\ 'v'   :['iverilog']
\}

"**************************************************"
"mapping

nmap <F8> : TagbarToggle<CR>
