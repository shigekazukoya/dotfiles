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

"以下ショートカット

"ノーマルモードで
"スペース2回でCocList
nnoremap <Leader>coc :<C-u>CocList<CR>
"スペースhでHover
nnoremap <Leader>ch :<C-u>call CocAction('doHover')<CR>
"スペースdfでDefinition
nmap <silent> <Leader>b <Plug>(coc-definition)
"スペースrfでReferences
nmap <silent> <Leader>rf <Plug>(coc-references)
"スペースrnでRename
nmap <silent> <Leader>rn <Plug>(coc-rename)
"スペースfmtでFormat
nmap <silent> <Leader>fmt <Plug>(coc-format)
