au BufRead,BufNewFile *.pelia set filetype=pelia

autocmd FileType pelia nmap <silent> <Leader>ww :silent!!waver % >/dev/null 2>&1 &<CR>
autocmd FileType pelia nmap <silent> <Leader>ws :silent!!killall waver<CR>
