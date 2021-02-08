# Auto-completion
# ---------------
[[ $- == *i* ]] && source ~/.myzsh/fzf/shell/completion.zsh 2> /dev/null

# Key bindings
# ------------
source ~/.myzsh/fzf/shell/key-bindings.zsh

# Use fd-find for more speed
if type fd &>/dev/null; then
    _fzf_compgen_path() {
      fd --hidden --follow --exclude ".git" . "$1"
    }

    # Use fd to generate the list for directory completion
    _fzf_compgen_dir() {
      fd --type d --hidden --follow --exclude ".git" . "$1"
    }
fi