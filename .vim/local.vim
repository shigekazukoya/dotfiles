nnoremap <Leader>local <Cmd>e ~/dotfiles/.vim/local.vim<CR>
nnoremap <Leader>note <Cmd>e ~/memo/Diary/2022/note2022_3.md<CR>Gzz
nnoremap <Leader>todo <Cmd>e ~/memo/Todo.md<CR>
nnoremap <Leader>temp <Cmd>e ~/memo/temp.md<CR>
nnoremap <Leader>memo <Cmd>Fern ~/memo -drawer<CR>

nnoremap <Leader>exp <Cmd>!explorer.exe .<CR>

nnoremap <Leader>task <Cmd>Fern /mnt/c/Data/Task/TaskItems -drawer<CR>
nnoremap <Leader>bug <Cmd>Fern /mnt/c/Data/Task/BugItems -drawer<CR>

autocmd VimEnter * nested  call s:OpenDirectoryTree()


function! s:OpenDirectoryTree()
  if @% == '' && s:GetBufByte() == 0
    Fern ~/memo -drawer
    wincmd l
    e ~/memo/temp.md
  else
    Fern . -drawer
    wincmd l
  endif
endfunction

function! s:GetBufByte()
    let byte = line2byte(line('$') + 1)
    if byte == -1
        return 0
    else
        return byte - 1
    endif
endfunction
