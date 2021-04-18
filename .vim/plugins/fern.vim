 let g:fern#renderer="nerdfont"
 let g:fern#default_hidden=1

 nnoremap <Leader>dir <Cmd>Fern . -reveal=% -drawer<CR>
 nnoremap <Leader>dvim <Cmd>Fern ~/dotfiles/.vim/plugins/ -drawer<CR>
 nnoremap <Leader>nvim <Cmd>Fern ~/dotfiles/.vim/nvimplugins/ -drawer<CR>

function! s:init_fern() abort
  echo "This function is called ON a fern buffer WHEN initialized"
  nmap <buffer> o <Plug>(fern-action-open:edit)
  nmap <buffer> t <Plug>(fern-action-open:tabedit)
  nmap <buffer> i <Plug>(fern-action-open:split)
  nmap <buffer> s <Plug>(fern-action-open:vsplit)
  nmap <buffer> gs <Plug>(fern-action-open:vsplit)<C-w>p
  nmap <buffer> ma <Plug>(fern-action-new-path)
  nmap <buffer> P gg
  nmap <buffer> K 5k
  nmap <buffer> J 5j
  nmap <buffer> dd <Plug>(fern-action-remove)
  nmap <buffer> qq <Cmd>quit<CR>
  nmap <buffer><nowait> l <Plug>(fern-my-expand-or-enter)
  nmap <buffer><nowait> h <Plug>(fern-my-collapse-or-leave)
  nmap <buffer> u <Plug>(fern-action-leave)\ <Plug>(fern-open-or-expand)

  nmap <buffer><expr>
        \ <Plug>(fern-my-expand-or-enter)
        \ fern#smart#drawer(
        \   "\<Plug>(fern-open-or-expand)",
        \   "\<Plug>(fern-open-or-enter)",
        \ )
  nmap <buffer><expr>
        \ <Plug>(fern-my-collapse-or-leave)
        \ fern#smart#drawer(
        \   "\<Plug>(fern-action-collapse)",
        \   "\<Plug>(fern-action-leave)",
        \ )
endfunction

augroup fern-custom
  autocmd! *
  autocmd FileType fern call s:init_fern()
augroup END
augroup opentree
	au!
  autocmd vimenter * nested if @% == ''| Fern . -reveal=% -drawer |endif
  " autocmd FileType fern call s:fern_preview_init()
augroup END

function! s:fern_preview_init() abort
  nmap <buffer><expr>
        \ <Plug>(fern-my-preview-or-nop)
        \ fern#smart#leaf(
        \   "\<Plug>(fern-action-open:edit)\<C-w>p",
        \   "",
        \ )
  nmap <buffer><expr> j
        \ fern#smart#drawer(
        \   "j\<Plug>(fern-my-preview-or-nop)",
        \   "j",
        \ )
  nmap <buffer><expr> k
        \ fern#smart#drawer(
        \   "k\<Plug>(fern-my-preview-or-nop)",
        \   "k",
        \ )
endfunction

