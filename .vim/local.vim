let g:notePath = strftime('~/memo/Diary/%Y/note%Y_%m.md')

nnoremap <Leader>local <cmd>e ~/dotfiles/.vim/local.vim<CR>
nnoremap <Leader>note <cmd>OpenNote<CR>
nnoremap <Leader>todo <cmd>e ~/memo/Todo.md<CR>
nnoremap <Leader>temp <cmd>e ~/memo/temp.md<CR>
nnoremap <Leader>memo <cmd>Fern ~/memo -drawer<CR>

nnoremap <Leader>exp <Cmd>!explorer.exe .<CR>

nnoremap <Leader>task <Cmd>Fern /mnt/c/Data/Task/TaskItems -drawer<CR>
nnoremap <Leader>bug <Cmd>Fern /mnt/c/Data/Task/BugItems -drawer<CR>

autocmd VimEnter * nested  call s:OpenDirectoryTree()

command! OpenNote call s:OpenNote()
function! s:OpenNote()
  execute'edit' . g:notePath
endfunction

function! s:OpenDirectoryTree()
  if @% == '' && s:GetBufByte() == 0
    OpenNote
    Fern ~/memo -drawer
  else
    Fern . -drawer
  endif
  wincmd l
  Vista
  wincmd h
endfunction

function! s:GetBufByte()
    let byte = line2byte(line('$') + 1)
    if byte == -1
        return 0
    else
        return byte - 1
    endif
endfunction

augroup vimrc-auto-mkdir  " {{{
  autocmd!
  autocmd BufWritePre * call s:auto_mkdir(expand('<afile>:p:h'), v:cmdbang)
  function! s:auto_mkdir(dir, force)  " {{{
    if !isdirectory(a:dir) && (a:force ||
    \    input(printf('"%s" does not exist. Create? [y/N]', a:dir)) =~? '^y\%[es]$')
      call mkdir(iconv(a:dir, &encoding, &termencoding), 'p')
    endif
  endfunction  " }}}
augroup END  " }}}


command! CommitMemo call s:CommitMemo()
function! s:CommitMemo()
  !fish ~/memo/autocommiter.fish
endfunction

