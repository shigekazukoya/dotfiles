nnoremap <Leader>run <Cmd>QuickRun<CR>

let g:quickrun_config = {
\
\   "bat" : {
\       "type" : "dosbatch",
\       "command" : "explorer.exe",
\       "exec"    : "%c %o %s:p",
\   },
\}

augroup quickrun
  autocmd BufNewFile,BufRead *.bat  let g:quickrun_config.dosbatch = {'command':'explorer.exe','exec' : 'explorer.exe (wslpath -w %s)'}
augroup end
