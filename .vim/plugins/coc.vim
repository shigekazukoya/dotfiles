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

nmap <leader>cl :<C-u>CocList<CR>
nmap <leader>ca :<C-u>call CocAction('doHover')<CR>
nmap <leader>cb <Plug>(coc-definition)
nmap <leaer>cr <Plug>(coc-references)
nmap <leader>ci <Plug>(coc-implementation)
nmap <leader>cn <Plug>(coc-rename)
nmap <leader>cf <Plug>(coc-format)
nmap <leader>cq <Plug>(coc-fix-current)
nmap <leader>cc <Plug>(coc-codeaction)
nmap <leader>c, <Plug>(coc-diagnostic-prev)
nmap <leader>c. <Plug>(coc-diagnostic-next)

xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)


