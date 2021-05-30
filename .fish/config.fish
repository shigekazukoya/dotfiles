set zenhan /mnt/c/Apps/zenhan/bin64/zenhan.exe
set EDITOR nvim
fish_vi_key_bindings

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

function fish_mode_prompt
  switch $fish_bind_mode
    case default
      echo -en "\e[2 q"
      set_color -o brwhite
      echo "["
      set_color -o brred
      echo "N"
      set_color -o brwhite
      echo "]"
    case insert
      echo -en "\e[6 q"
      set_color -o brwhite
      echo "["
      set_color -o brgreen
      echo "I"
      set_color -o brwhite
      echo "]"
    case replace_one
      echo -en "\e[4 q"
      set_color -o brwhite
      echo "["
      set_color -o bryellow
      echo "R"
      set_color -o brwhite
      echo "]"
    case visual
      echo -en "\e[2 q"
      set_color -o brwhite
      echo "["
      set_color -o brmagenta
      echo "V"
      set_color -o brwhite
      echo "]"
    case '*'
      echo -en "\e[2 q"
      set_color -o brwhite
      echo "["
      set_color -o brred
      echo "?"
      set_color -o brwhite
      echo "]"
  end
  set_color normal
end
