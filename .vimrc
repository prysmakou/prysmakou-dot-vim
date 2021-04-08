filetype off
filetype plugin indent off
filetype plugin indent on
filetype plugin on
let g:airline_powerline_fonts = 1
set ts=4
set expandtab
set shiftwidth=4
set softtabstop=4
set encoding=utf-8
map <C-n> :NERDTreeToggle<CR>
let python_highlight_all = 1
set makeprg=pylint\ --reports=n\ --output-format=parseable\ %:p
set errorformat=%f:%l:\ %m
set laststatus=2
function! HighlightSearch()
  if &hls
    return 'H'
  else
    return ''
  endif
endfunction
autocmd BufWritePost *.py make
syntax on
colorscheme desert
execute pathogen#infect()
