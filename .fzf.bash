# Setup fzf
# ---------
if [[ ! "$PATH" == */home/shige/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/shige/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/shige/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/shige/.fzf/shell/key-bindings.bash"
