"LightLineにcoc.nvimのステータスを載せます
let g:lightline = {
			\'active': {
			\'right': [
			\['coc']
			\]
			\},
			\'component_function': {
			\'coc': 'coc#status'
			\}
			\}
let g:coc_global_extensions = [
      \ 'coc-lists',
      \ 'coc-vimlsp',
      \ 'coc-fish',
      \ 'coc-json',
      \ 'coc-lua',
      \ 'coc-omnisharp',
      \ 'coc-python',
      \ 'coc-rls',
      \ 'coc-tsserver',
      \ 'coc-xml',
      \ ]

"Diagnosticsの、左横のアイコンの色設定
highlight CocErrorSign ctermfg=15 ctermbg=196
highlight CocWarningSign ctermfg=0 ctermbg=172

nmap fb <Plug>(coc-definition)
nmap fr <Plug>(coc-rename)

nmap <Leader>cl :<C-u>CocList<CR>
nnoremap <Leader>cf :CocList files<CR>
nmap <Leader>ca :<C-u>call CocAction('doHover')<CR>
nmap <Leader>cr <Plug>(coc-references)
nmap <Leader>ci <Plug>(coc-implementation)
nmap <Leader>cm <Plug>(coc-format)
nmap <Leader>cq <Plug>(coc-fix-current)
nmap <Leader>cc <Plug>(coc-codeaction)
nmap <Leader>c, <Plug>(coc-diagnostic-prev)
nmap <Leader>c. <Plug>(coc-diagnostic-next)

xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

