" leader key = \

call plug#begin('~/.local/share/nvim/plugged')
Plug 'mzlogin/vim-markdown-toc'
Plug 'plasticboy/vim-markdown'
" Plug 'reedes/vim-pencil'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }}
" Code Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Tags
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround' " maybe delete
" Commenting
Plug 'tpope/vim-commentary'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'junegunn/goyo.vim'
Plug 'mbbill/undotree'
" Color Themes
" Plug 'haishanh/night-owl.vim'
" Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'norcalli/nvim-colorizer.lua'
call plug#end()

" Color Theme
" if (has("termguicolors"))
"  set termguicolors
" endif

syntax enable
" colorscheme night-owl
colorscheme default
set notermguicolors
highlight Search ctermfg=0

let g:coc_node_path = '/home/omk/.nvm/versions/node/v18.10.0/bin/node'
let g:vim_markdown_frontmatter = 1
" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 0

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1

" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 0

" set to 1, the MarkdownPreview command can be use for all files,
" by default it can be use in markdown file
" default: 0
let g:mkdp_command_for_global = 1

" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 0

" use custom IP to open preview page
" useful when you work in remote vim and preview on local browser
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = ''

" specify browser to open preview page
" default: ''
let g:mkdp_browser = ''

" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 0

" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
let g:mkdp_browserfunc = ''

" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
" content_editable: if enable content editable for preview page, default: v:false
" disable_filename: if disable filename header for preview page, default: 0
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false,
    \ 'disable_filename': 0
    \ }

" use a custom markdown style must be absolute path
" like '/Users/username/markdown.css' or expand('~/markdown.css')
let g:mkdp_markdown_css = ''

" use a custom highlight style must absolute path
" like '/Users/username/highlight.css' or expand('~/highlight.css')
let g:mkdp_highlight_css = ''

" use a custom port to start server or random for empty
let g:mkdp_port = ''

" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'

" recognized filetypes
" these filetypes will have MarkdownPreview... commands
let g:mkdp_filetypes = ['markdown']

" Goyo config

let g:goyo_width = 80 " (default: 80)
let g:goyo_height = 95 " (default: 85%)
let g:goyo_linenr = 0 " (default: 0)


nmap <leader>gy :Goyo<CR>



set nocompatible            " disable compatibility to old-time vi
set clipboard=unnamedplus
" set showmatch               " show matching brackets.
set ignorecase              " case insensitive matching
set mouse=a                 " if v=middle-click paste with mouse
set nohlsearch                " highlight search results
set spelllang=en_us,pt_br
set spell
set tabstop=4               " number of columns occupied by a tab character
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number relativenumber                 " add line numbers
set nu
set wildmode=longest,list,full   " get bash-like tab completions
set noswapfile
set undodir=~/.config/nvim/undodir
set undofile
"set completeopt=longest,menuone " autocompletion
set completeopt=noinsert,menuone,noselect
set termguicolors
set pyx=3
set nofoldenable


filetype plugin indent off   " allows auto-indenting depending on file type
filetype plugin on
syntax on                   " syntax highlighting

command! MakeTags !ctags -R .

" autocmd BufWritePost *note-*.md silent !buildNote %:p

" Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" autocmd vimenter * ++nested colorscheme gruvbox

" Map

" Spell-check set to <leader>o, 'o' for 'orthography':
map <leader>o :setlocal spell! spelllang=en<CR>
" Spell-check set to <leader>o, 'o' for 'orthography':
map <leader><leader>o :setlocal spell! spelllang=pt_br<CR>
" Clipboard
vmap <C-c> y:call system("xclip -i -selection clipboard", getreg("\""))<CR>:call system("xclip -i", getreg("\""))<CR>
map <C-v> "+p
" Autocompletion    
" inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" iunmap <CR>
" use <tab> for trigger completion and navigate to the next complete item
" Save As
" command! Copy :sav %:h/""
" NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

" Source
source $HOME/.config/nvim/plug-config/coc.vim
