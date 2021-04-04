let s:lastiminsert = 0
set iminsert=0
set imsearch=0

augroup Norml
	autocmd!
	" IMEの状態を保持しておく、置換モードではIMEの状態を保持しない
	" 置換モードではIMEの状態を保持しない。置換モードではIMEオフなので、置換モード後の挿入モードが常にIMEオフになることを避ける
	autocmd  InsertLeave * if v:insertmode !=# 'r' | let s:lastiminsert  = s:IsImeActivate() | :call system('$zenhan 0') | endif
	" IMEの状態を復帰する。改行時には続けてIMEオンのままにしたいため。
	" 挿入モード（IMEオン）→ノーマルモード→挿入モード（IMEオン） となるが。これはむしろできなくていい
	" 置換モードではIMEの状態を復帰しない
	autocmd  InsertEnter * if v:insertmode ==# 'i' | :call system('$zenhan '. s:lastiminsert) | endif
augroup END

function! s:IsImeActivate()
	return system('$zenhan')
endfunction
