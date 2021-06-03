"let mapleader=" "

set nocompatible              " be iMproved, required
filetype off                  " required

set shellslash


set rtp+=$HOME/.vim/bundle/Vundle.vim/
call vundle#begin('$HOME/.vim/bundle/')



" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'gruvbox-community/gruvbox'


Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'takac/vim-hardtime'
Plugin 'farmergreg/vim-lastplace'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'enricobacis/vim-airline-clock'

Plugin 'ryanoasis/vim-devicons'



Plugin 'powerman/vim-plugin-ruscmd'
Plugin 'ryvnf/readline.vim'
Plugin 'myusuf3/numbers.vim'
Plugin 'mhinz/vim-startify'

Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'majutsushi/tagbar'
Plugin 'preservim/nerdtree'
Plugin 's3rvac/autofenc'
Plugin 'machakann/vim-highlightedyank'
Plugin 'terryma/vim-smooth-scroll'

Plugin 'rhysd/clever-f.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required



""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-cpp-enhanced-highlight settings

let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_concepts_highlight = 1



""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:highlightedyank_highlight_duration = -1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <C-n> :NERDTreeToggle<CR>
map <C-m> :TagbarToggle<CR>
let g:tagbar_iconchars = ['', '']

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"airline settings
let g:airline_theme = 'gruvbox'

let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_buffers = 0


let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
"let g:airline#extensions#tabline#right_sep = ''
"let g:airline#extensions#tabline#right_alt_sep = ''
let airline#extensions#tabline#show_splits = 0
let airline#extensions#tabline#tabs_label = ''

" Disable tabline close button
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#fnamecollapse = 1

let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#buffers_label = ''
let g:airline#extensions#tabline#tabs_label = ''
set noshowmode
set showtabline=1

let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1
let g:webdevicons_enable_ctrlp = 1
"let g:webdevicons_conceal_nerdtree_brackets = 1
"let g:WebDevIconsNerdTreeAfterGlyphPadding = '  '
let g:webdevicons_enable_denite = 1
let g:DevIconsEnableFoldersOpenClose = 1

"let airline#extensions#whitespace#trailing_format='T[%s]'
"let g:airline#extensions#whitespace#mixed_indent_file_format='MI[%s]'

set encoding=utf8

" enable powerline fonts
let g:airline_powerline_fonts = 1
"let g:airline_left_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''

"let g:airline#extensions#tabline#formatter = 'unique_tail'

let g:bufferline_echo = 0
let g:bufferline_active_buffer_left = '['
let g:bufferline_active_buffer_right = ']'
let g:bufferline_modified = '[]'
let g:bufferline_rotate = 2
let g:bufferline_inactive_highlight = 'StatusLineNC'
let g:bufferline_active_highlight = 'StatusLine'


let g:airline_skip_empty_sections = 1



"------------------------------------------------------------------------

set showcmd         " Show (partial) command in status line.
set showmatch       " Show matching brackets.
set ignorecase      " Do case insensitive matching

set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab
set hlsearch
set incsearch
set inccommand=split " this cool feature makes substitution interactive

"set statusline="%f%m%r%h%w [%Y] [0x%02.2B]%< %F%=%4v,%4l %3p%% of %L"
set ls=2


set nocompatible
syntax enable
filetype plugin on

set path+=**
set wildmenu


set encoding=utf8

colorscheme gruvbox
set background=dark


set backspace=indent,eol,start


set cursorline
set mouse=a
set ruler
set laststatus=0
"set number
set nonumber
set norelativenumber

"set virtualedit=block        " Position cursor anywhere in visual block



let g:python3_host_prog='C:\coding\python\python.EXE'

let python_highlight_all = 1
let cpp_hightlight_all = 1


set undofile





"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! ChangeFileencoding()
  let encodings = ['cp1251', 'utf-8', 'koi8-r', 'cp866']
  let prompt_encs = []
  let index = 0
  while index < len(encodings)
    call add(prompt_encs, index.'. '.encodings[index])
    let index = index + 1
  endwhile
  let choice = inputlist(prompt_encs)
  if choice >= 0 && choice < len(encodings)
    execute 'e ++enc='.encodings[choice].' %:p'
  endif
endf
nmap <F8> :call ChangeFileencoding()<CR>



set fileencodings=utf-8,cp1251,koi8-r,cp866


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
















