# Disable the default greeting
set -U fish_greeting

# alias
alias vim nvim
alias ls="lsd --icon=always --group-dirs=first"
alias la "ls -A"
alias ll "ls -l"
alias lla "ll -A"
alias g git
alias fd fdfind
alias ff "fd --type f | fzf"
alias open "explorer.exe"
alias python python3
alias pip pip3

set -Ux fish_user_paths $HOME/.config/fish/scripts $fish_user_paths
set -x NODE_OPTIONS "--max-old-space-size=8192"

# path
set -Ux fish_user_paths $fish_user_paths /home/seer/.cargo/bin
# eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv fish)"
if status is-interactive
    if not set -q SSH_AUTH_SOCK
        eval (ssh-agent -c) >/dev/null
        set -Ux SSH_AUTH_SOCK $SSH_AUTH_SOCK
        set -Ux SSH_AGENT_PID $SSH_AGENT_PID
    end
end


fzf_configure_bindings --directory=\cf
