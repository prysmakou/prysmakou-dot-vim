filetype off
filetype plugin indent off
filetype plugin indent on
filetype plugin on
set ts=4
set expandtab
set shiftwidth=4
set softtabstop=4
set encoding=utf-8
map <C-n> :NERDTreeToggle<CR>
let python_highlight_all = 1
set makeprg=pylint\ --reports=n\ --output-format=parseable\ %:p
set errorformat=%f:%l:\ %m
set statusline=
set statusline+=%7*\[%n]                                  "buffernr
set statusline+=%1*\ %<%F\                                "File+path
set statusline+=%2*\ %y\                                  "FileType
set statusline+=%3*\ %{''.(&fenc!=''?&fenc:&enc).''}      "Encoding
set statusline+=%3*\ %{(&bomb?\",BOM\":\"\")}\            "Encoding2
set statusline+=%4*\ %{&ff}\                              "FileFormat (dos/unix..) 
set statusline+=%5*\ %{&spelllang}\%{HighlightSearch()}\  "Spellanguage & Highlight on?
set statusline+=%8*\ %=\ row:%l/%L\ (%03p%%)\             "Rownumber/total (%)
set statusline+=%9*\ col:%03c\                            "Colnr
set statusline+=%0*\ \ %m%r%w\ %P\ \                      "Modified? Readonly? Top/bot.
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
