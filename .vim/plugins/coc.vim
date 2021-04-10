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

"Diagnosticsの、左横のアイコンの色設定
highlight CocErrorSign ctermfg=15 ctermbg=196
highlight CocWarningSign ctermfg=0 ctermbg=172

nnoremap <Leader>coc :<C-u>CocList<CR>
nnoremap <Leader>ch :<C-u>call CocAction('doHover')<CR>
nmap <silent> <Leader>b <Plug>(coc-definition)
nmap <silent> <Leader>rf <Plug>(coc-references)
nmap <silent> <Leader>rn <Plug>(coc-rename)
nmap <silent> <Leader>fmt <Plug>(coc-format)

