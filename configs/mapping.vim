nnoremap <C-[><C-[> :nohlsearch<CR><Esc>
nnoremap <C-@><C-@> :nohlsearch<CR><Esc>
nnoremap <Space><Space> :set relativenumber!<CR><Esc>
nnoremap <C-n> gt<CR>
nnoremap <C-p> gT<CR>
nnoremap <Space>h :bprev<CR>
nnoremap <Space>l :bnext<CR>
nnoremap <C-g> :tabe<CR>:Files<CR>
imap <C-h> <Left>
imap <C-l> <Right>

" reload init.vim
nmap <Space>v :so ~/.config/nvim/init.vim<CR>

" break
au FileType ruby nnoremap <space>b obinding.pry<CR><ESC>
au FileType python nnoremap <space>b oimport ipdb<ESC>oipdb.set_trace()<ESC>

" * not to move next word
nnoremap <silent><expr> * v:count ? '*'
\ : ':sil exe "keepj norm! *" <Bar> call winrestview(' . string(winsaveview()) . ')<CR>'

" rm spaces
autocmd BufWritePre * :%s/\s\+$//ge
" todo.vim
au BufNewFile,BufRead *.todo setf todo