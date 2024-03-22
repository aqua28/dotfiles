# Lines configured by zsh-newuser-install
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

export PATH="$PATH:${$(find ~/.local/bin -type d -printf %p:)%%:}"

export EDITOR="nvim"
export TERMINAL="st"
export TERMINAL_PROG="st"
export BROWSER="firefox"

$HOME/.local/bin/cleanup

HISTFILE=$HOME/.config/shell/histfile
HISTSIZE=100000
SAVEHIST=100000
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '$HOME/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Prompt ZSH
autoload -Uz promptinit
promptinit

#Colourize
alias \
        ls="ls -hN --color=auto --group-directories-first" \
        grep="grep --color=auto" \
        diff="diff --color=auto" \


# Commands Software
alias \
        cp="cp -iv" \
        mv="mv -iv" \
        rm="rm -vI" \
        mkd="mkdir -pv" \
        ffmpeg="ffmpeg -hide_banner" \
        es="sdcv -c -u drae" \
        v="nvim" \
        s="ls -v | nsxiv -" \
        z="zathura" \
	dmpv="devour mpv" \
	ro="redshift -O 2500k" \
	rf="redshift -x" \
	p="sudo pacman" \

# Commands System
alias \
        sdn="sudo shutdown now" \
        srn="sudo reboot now" \
        ms="sshfs pi@192.168.1.196:/mnt/server $HOME/server" \
        mso="sshfs pi@10.8.0.1:/mnt/server $HOME/server" \
        msub="sudo umount -f ~/server" \
        SS="sudo systemctl" \
        zrc="source ~/.zshrc" \
	dock="autorandr -l docked" \
	mobile="autorandr -l mobile" \

# Server
alias \
        srv="ssh pi@192.168.1.196" \
        srvo="ssh pi@10.8.0.1" \
	vpn="sudo openvpn rpi.ovpn" \


# XDG_DATA_DIRS="/var/lib/flatpak/exports/share:$XDG_DATA_DIRS"


# Load syntax highlighting; should be last.
source ~/.config/shell/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/shell/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
