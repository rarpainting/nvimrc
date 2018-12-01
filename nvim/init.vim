"No compatibility to traditional vi
set nocompatible

"vim-plug
call plug#begin('~/.config/nvim/plugged')

"Plugin list ------------------------------------------------------------------

" custom
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'wokalski/autocomplete-flow'
" For func argument completion
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'ternjs/tern_for_vim', { 'do': 'npm install & npm install -g tern' }
Plug 'carlitux/deoplete-ternjs'
Plug 'isRuslan/vim-es6'

" complete
" Plug 'neoclide/coc.nvim', {'tag': '*', 'do': {->coc#util#install()}}

" Plug 'neomake/neomake', { 'on': 'Neomake' }

Plug 'ludovicchabant/vim-gutentags'

" Plug 'jiangmiao/auto-pairs'

" go
Plug 'fatih/vim-go'
Plug 'zchee/deoplete-go', { 'do': 'make' }

" end custom

Plug 'altercation/vim-colors-solarized'
Plug 'vim-scripts/Mustang2'
Plug 'vim-scripts/darktango.vim'
Plug 'junegunn/seoul256.vim'
Plug 'vim-scripts/xoria256.vim'
Plug 'jdkanani/vim-material-theme'
Plug 'rakr/vim-one'

Plug 'neovimhaskell/haskell-vim'
Plug 'godlygeek/tabular'
Plug 'achimnol/python-syntax'
Plug 'plasticboy/vim-markdown'
Plug 'othree/html5.vim'
Plug 'lepture/vim-jinja'
Plug 'cakebaker/scss-syntax.vim'
Plug 'cespare/vim-toml'
Plug 'stephpy/vim-yaml'
Plug 'spoqa/nirum.vim'
Plug 'pbrisbin/vim-syntax-shakespeare'
Plug 'elmcast/elm-vim'
Plug 'rust-lang/rust.vim'
Plug 'leafgarland/typescript-vim'
Plug 'tomlion/vim-solidity'

Plug 'lifthrasiir/hangeul.vim'
Plug 'vim-airline/vim-airline'
Plug 'w0rp/ale'
Plug 'Shougo/unite.vim'
Plug 'Shougo/vimfiler.vim'
Plug 'simnalamburt/vim-mundo'
Plug 'rhysd/committia.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'tpope/vim-fugitive'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'junegunn/vim-slash'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'Shougo/vimshell.vim'
Plug 'junegunn/vim-easy-align'
Plug 'sgur/vim-editorconfig'

"Plug 'wakatime/vim-wakatime'

"End plugin list --------------------------------------------------------------
call plug#end()

"""""""""""""""""""""""""""""""""
" custom

"" 语法相关
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_ignore_case = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#enable_camel_case = 1
let g:deoplete#enable_refresh_always = 1
let g:deoplete#max_abbr_width = 0
let g:deoplete#max_menu_width = 0
let g:deoplete#omni#input_patterns = get(g:,'deoplete#omni#input_patterns',{})
let g:tern_request_timeout = 1
let g:tern_request_timeout = 6000
let g:tern#command = ["tern"]
let g:tern#arguments = [" — persistent"]

let g:go_gocode_propose_source = 1

" gutentags
" 跟踪
let g:gutentags_trace = 1
" gutentags 搜索目录工程的标志
let g:gutentags_project_root = ['.root', '.svn', '.git', '.project']
" 数据文件名称
let g:gutentags_ctags_tagfile = '.tags'
" 将生成的 tags 文件放在 ~/.cache/tags 中
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags
if !isdirectory(s:vim_tags)
  silent! call mkdir(s:vim_tags, 'p')
endif
" 配置 ctags
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+pxI']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']

"" 显示相关
"set shortmess=atI   " 启动的时候不显示那个援助乌干达儿童的提示  
"winpos 5 5          " 设定窗口位置  
"set lines=40 columns=155    " 设定窗口大小  
set nu              " 显示行号  
set go=             " 不要图形按钮  
""color asmanian2     " 设置背景主题  
set guifont=Courier_New:h10:cANSI   " 设置字体  
syntax on           " 语法高亮  
set showcmd         " 输入的命令显示出来，看的清楚些  
set novisualbell    " 不要闪烁(不明白)  
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}   "状态行显示的内容  
set laststatus=1    " 启动显示状态行(1),总是显示状态行(2)  
" set foldenable      " 允许折叠  
set foldmethod=manual   " 手动折叠  
"set background=dark "背景使用黑色 
set nocompatible  "去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限  
" 显示中文帮助
if version >= 603
    set helplang=cn
    set encoding=utf-8
endif

set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936
set fileencoding=utf-8

filetype plugin indent on

" neosnippet
let g:neosnippet#enable_completed_snippet = 1

" let g:neomake_javascript_enabled_makers = ['eslint']

" end custom
"""""""""""""""""""""""""""""""""

"language en_US

"Enable hangeul.vim
let hangeul_enabled = 1
let hangeul_hanja_path = resolve(expand('<sfile>:p:h:h') . '/hanja.txt')

"Syntax highlighting.
syntax on

"Softtab -- use spaces instead tabs.
set expandtab
set tabstop=4 shiftwidth=2 sts=4
set autoindent nosmartindent

"set tab characters apart
set listchars=tab:↹\

"I dislike CRLF.
if !exists("vimpager")
  set fileformat=unix
endif

set backspace=2

"Detect modeline hints.
set modeline

"Disable bell
set visualbell t_vb=

"Prefer UTF-8.
set encoding=utf-8 fileencodings=ucs-bom,utf-8,cp949,korea,iso-2022-kr

"More tabs
set tabpagemax=25

filetype plugin on

"Some additional syntax highlighters.
au! BufRead,BufNewFile *.wsgi setfiletype python
au! BufRead,BufNewFile *.sass setfiletype sass
au! BufRead,BufNewFile *.scss setfiletype scss
au! BufRead,BufNewFile *.haml setfiletype haml
au! BufRead,BufNewFile *.less setfiletype less

"These languages have their own tab/indent settings.
au FileType cpp    setl ts=2 sw=2 sts=2
au FileType ruby   setl ts=2 sw=2 sts=2
au FileType yaml   setl ts=2 sw=2 sts=2
au FileType html   setl ts=2 sw=2 sts=2
au FileType jinja  setl ts=2 sw=2 sts=2
au FileType lua    setl ts=2 sw=2 sts=2
au FileType haml   setl ts=2 sw=2 sts=2
au FileType sass   setl ts=2 sw=2 sts=2
au FileType scss   setl ts=2 sw=2 sts=2
au FileType make   setl ts=4 sw=4 sts=4 noet
au FileType rst    setl spell
au FileType gitcommit setl spell

"Terminal-related configurations.
tnoremap <C-w>h <C-\><C-N><C-w>h
tnoremap <C-w>j <C-\><C-N><C-w>j
tnoremap <C-w>k <C-\><C-N><C-w>k
tnoremap <C-w>l <C-\><C-N><C-w>l

"ALE-related configurations.
let g:ale_linters = {
\    'haskell': ['stack-ghc-mod', 'hlint'],
\    'rust': ['cargo'],
\}
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

"Python-related configurations.
"See also: https://github.com/achimnol/python-syntax#options-used-by-the-script
let python_highlight_builtins = 1
let python_highlight_type_annotations = 1
let python_highlight_exceptions = 1
let python_highlight_string_formatting = 1
let python_highlight_string_format = 1
let python_highlight_string_templates = 0
let python_highlight_indent_errors = 1
let python_highlight_space_errors = 0
let python_highlight_doctests = 1

"Markdown-related configurations.
augroup mkd
  autocmd BufRead *.markdown set formatoptions=tcroqn2 comments=n:> spell
  autocmd BufRead *.mkdn     set formatoptions=tcroqn2 comments=n:> spell
  autocmd BufRead *.mkd      set formatoptions=tcroqn2 comments=n:> spell
augroup END

"Haskell-related config
let g:haskell_quasi         = 0
let g:haskell_interpolation = 0
let g:haskell_regex         = 0
let g:haskell_jmacro        = 0
let g:haskell_shqq          = 0
let g:haskell_sql           = 0
let g:haskell_json          = 0
let g:haskell_xml           = 0
let g:haskell_hsp           = 0

"Elm format
let g:elm_format_autosave = 1

"English spelling checker.
setlocal spelllang=en_us

"Keep 80 columns.
set colorcolumn=80
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
autocmd WinEnter * match OverLength /\%81v.\+/

"I dislike folding.
set nofoldenable

"I dislike visual bell as well.
set novisualbell

"gVim-specific configurations (including MacVim).
if has("gui_running")
  set bg=dark
  set guioptions=egmrLt
  set linespace=1
endif

"MacVim-specific configurations.
if has("gui_macvim") || has("gui_vimr")
  set imd
  set guifont=Source_Code_Pro_Light:h16.00
endif

"GVim under GNOME
if has("gui_gnome")
  set guifont="Ubuntu Mono 11"
endif

"GVim under Windows
if has("gui_win32")
  set guifont=Consolas:h11:cANSI
endif

"vim-airline
let g:airline_powerline_fonts = 1

"Mundo -- Undo tree visualization
set undofile
set undodir=~/.config/nvim/undo
nnoremap <F5> :MundoToggle

"Use Vimfiler as default explorer like netrw
let g:vimfiler_as_default_explorer = 1

"deoplete
let g:deoplete#enable_at_startup = 1

"vim-easy-align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

"VimShell
let g:vimshell_prompt_expr = '$USER . " " . fnamemodify(getcwd(), ":~") . " $ "'
let g:vimshell_prompt_pattern = '^[a-z_-][a-z0-9_-]\{,31\} [~/][^$ ]* $ '

"True colors
if $TERM_PROGRAM == "iTerm.app" || has("gui_vimr")
  set termguicolors
  colorscheme material-theme
  set background=dark
else
  colorscheme seoul256
  set background=dark
endif

"Alias :W to :w
cnoreabbrev W w
