eval "$(fzf --zsh)"

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

export FZF_DEFAULT_OPTS="--layout=reverse --ansi --preview-window 'right:60%' --preview 'bat --style=numbers,changes --wrap never --color always {} 2> /dev/null || eza --tree --level 2 --icons --color=always --group-directories-first {} 2> /dev/null'"
