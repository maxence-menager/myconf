set nocompatible              " required
filetype off                  " required


call plug#begin("~/.local/share/nvim/plugged")


Plug 'hynek/vim-python-pep8-indent'   "gestion de l'indetation automatique    
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'


Plug 'nvie/vim-flake8'    " utilisation de flake8 pour python
Plug 'vim-airline/vim-airline'
Plug 'neomake/neomake'

Plug 'scrooloose/nerdtree' 

"ci apres des colorsshemes
Plug 'tomasr/molokai'  "utilisé atuellement

" All of your Plugins must be added before the following line

call plug#end()            " required

let g:deoplete#enable_at_startup = 1

let g:neomake_python_enabled_makers = ['pylint']
call neomake#configure#automake('nrwi', 500)

filetype plugin indent on    " required

se noshowmatch "ne montre pas les parentèse qui match
set mouse=a
set exrc "permet les reglage par dossiers
set secure


colo molokai  "choit du colorsheme

set laststatus=2 " Always show the statusline (utile pour powerline)
set encoding=utf-8 " choix de l'encodage des caractères, utiles pour powerline
let g:Powerline_symbols = 'unicode'
set number "affiche la numerotation des lignes
set colorcolumn=79

noremap <C-j> <C-w><C-j>
noremap <C-k> <C-w><C-k>
noremap <C-h> <C-w><C-h>
noremap <C-l> <C-w><C-l>
noremap <C-n> :NERDTree<CR>

let g:ycm_seed_identifiers_with_syntax = 1 " proposition des mots de la syntaxe 
let g:ycm_python_binary_path = '/usr/bin/python3.5'
"let g:ycm_server_python_interpreter = '/usr/bin/python3.5'
let g:ycp_autoclose_preview_window_after_completion = 1

"let g:syntastic_python_checkers = ['pylint'] force syntastic a utiliser pylint

let g:rustfmt_autosave = 1
let g:rust_conceal = 1
set hidden
au BufNewFile,BufRead *.rs syntax match rustEquality "==\ze[^>]" conceal cchar=≟
au BufNewFile,BufRead *.rs syntax match rustInequality "!=\ze[^>]" conceal cchar=≠

let g:LanguageClient_autoStart = 1
let g:LanguageClient_serverCommands = {
    \ 'python': ['pyls'],
    \ 'rust': ['rustup', 'run', 'nightly-2017-12-01-x86_64-unknown-linux-gnu', 'rls'],
    \ 'javascript': ['javascript-typescript-stdio'],
    \ 'go': ['go-langserver'] }


