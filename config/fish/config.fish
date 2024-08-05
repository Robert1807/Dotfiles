if status is-interactive
    # Commands to run in interactive sessions can go here
    # remove welcome message
    set -g fish_greeting
    # set TERM
    set -g TERM kitty
    # Theme
    fish_config theme choose "ayu Mirage"
    # starship
    starship init fish | source
    # atuin
    atuin init fish | source
    # zoxide
    zoxide init fish | source
    # direnv
    direnv hook fish | source
    # Alias
    alias cd='z'
    alias ll='eza -lhF --color=always --icons --sort=size --group-directories-first'
    alias la='eza -ha --color=always --icons --sort=size --group-directories-first'
    alias lla='eza -lhaF --color=always --icons --sort=size --group-directories-first'
    alias ls='eza --color=always --icons --sort=size --group-directories-first'
    alias cat='bat'
    alias vi='nvim'
    alias vim='nvim'
    alias cl='clear'
    alias x='exit'
    alias cp='cp -rv'
    alias mkdir='mkdir -pv'
end
