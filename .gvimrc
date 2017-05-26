set guifont=Inconsolata:h18
set lines=41 columns=90

nmap <leader>1 :set lines=20 columns=71<CR><C-w>o
nmap <leader>2 :set lines=40 columns=120<CR><C-w>o


nnoremap <ESC> i
inoremap <Esc> <Esc>`^:w<CR>
"autocmd  WinLeave * :!open -a iTerm
