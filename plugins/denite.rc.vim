nnoremap <silent><C-d>a :<C-u>Denite file buffer -split=floating file:new<CR>
nnoremap <silent><C-d>b :<C-u>Denite buffer -split=floating file:new<CR>
nnoremap <silent><C-d>f :<C-u>Denite file -split=floating file:new<CR>
nnoremap <silent><C-d>r :<C-u>Denite file/rec -split=floating file:new<CR>
nnoremap <silent><C-d>gr :<C-u>Denite grep -buffer-name=search<CR>
nnoremap <silent><C-d>, :<C-u>DeniteCursorWord grep -buffer-name=search line<CR>
nnoremap <silent><C-d>gs :<C-u>Denie -resume -buffer-name=search<CR>
nnoremap <silent><C-d>c :<C-u>Denite command_history -split=floating<CR>

autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  nnoremap <silent><buffer><expr> o
  \ denite#do_map('do_action')
  nnoremap <silent><buffer><expr> s
  \ denite#do_map('do_action', 'split')
  nnoremap <silent><buffer><expr> v
  \ denite#do_map('do_action', 'vsplit')
  nnoremap <silent><buffer><expr> d
  \ denite#do_map('do_action', 'delete')
  nnoremap <silent><buffer><expr> p
  \ denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> <Esc>
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> q
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> i
  \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <Space>
  \ denite#do_map('toggle_select').'j'
endfunction

autocmd FileType denite-filter call s:denite_filter_my_settings()
function! s:denite_filter_my_settings() abort
  imap <silent><buffer> <C-o> <Plug>(denite_filter_quit)
endfunction