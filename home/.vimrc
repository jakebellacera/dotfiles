" ==============================================================================
" Initial Stuff
" ==============================================================================

" Set the shell to ZSH
set shell=zsh

" Ignore specific directories
set wildignore +=*/.git/*,*/.hg/*,*/.svn/*,*/.sass-cache/*,*.DS_Store,*.swp

" Use Pathogen for plugin management
execute pathogen#infect()

" Display only filenames for tab labels
set guitablabel=%t

" CtrlP config
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_show_hidden = 1
let g:ctrlp_dotfiles = 1
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn|sass_cache)|node_modules)$',
  \ 'file': '\v\.(DS_Store|exe|so|swp)$',
  \ }

" Map NERDTree toggle key
silent! map <F3> :NERDTreeFind<CR>
silent! map <F2> :NERDTreeToggle<CR>
let g:NERDTreeMapActivateNode="<F3>"
let g:NERDTreeMapPreview="<F4>"
let NERDTreeShowHidden = 1
let NERDTreeIgnore = ['\.git$', '\.svn$', '\.hg$', '\.sass-cache$', '\.swp$', '\.DS_Store', 'node_modules']

" closetag.vim
let g:closetag_html_style=1

" Show line numbers
set number

" Set the color scheme
colorscheme vividchalk

" Fix backspaces
set backspace=indent,eol,start

" Tabs, by default, are 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab

" Toggle invisible characters
nmap <leader>l :set list!<CR>
set listchars=tab:▸-,eol:¬

" Enable the wildmenu for command completion
set wildmenu
set wim=list:full,full

" Turn on syntax hightlighting
syntax on

" Color column 81 for a vertical rule
set colorcolumn=81

" ==============================================================================
" Syntax-specific
" ==============================================================================

" Plugins
" ------------------------------------------------------------------------------

" Turn on indentations
filetype plugin indent on


" ==============================================================================
" Key Bindings
" ==============================================================================

" Make [j] and [k] maintain their column position
nmap j gj
nmap k gk

