set zenhan /mnt/c/Apps/zenhan/bin64/zenhan.exe
set -x LS_COLORS 'ow=01;36'

function fzf_runcher
set a (fzf)
set b (wslpath -w $a)
echo $b
explorer.exe $b
end

function fp
set a (fzf < $history --preview 'cat{}')
set b (wslpath -w $a)
echo $b
explorer.exe $b
end

function vf
set a  (fzf --preview 'cat {}')
vim $a
end

function c
cd /mnt/c/
end

