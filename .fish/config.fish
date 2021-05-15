set zenhan /mnt/c/Apps/zenhan/bin64/zenhan.exe
set EDITOR nvim

export DISPLAY=(cat /etc/resolv.conf | grep nameserver | awk '{print $2}'):0

set -x LS_COLORS 'ow=01;36'
set -U FZF_LEGACY_KEYBINDINGS 0

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

function ranger-cd
    set dir (mktemp -t ranger_cd.XXX)
    ranger --choosedir=$dir
    cd (cat $dir) $argv
    rm $dir
    commandline -f repaint
end
funcsave ranger-cd

# To bind Ctrl-O to ranger-cd, save this in `~/.config/fish/config.fish`:
bind \ck ranger-cd

