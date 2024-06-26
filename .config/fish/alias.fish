
if type -q exa
	alias ls "exa --icons --group-directories-first"
	alias la "exa --icons --group-directories-first -a"
	alias ll "la -lh"
	alias lg "ll --git"
	alias l. "exa -a | egrep '^\.'"
else
	alias la "ls -a"
	alias ll "la -lh"
	alias lg "ll"
	alias l. "la | egrep '^\.'"
end

alias grep "grep --color=auto"
alias egrep "egrep --color=auto"
alias fgrep "fgrep --color=auto"
alias sed "gsed"

if type -q vim
	alias "vi" "vim --clean"
end
alias "vim" "nvim"
# if type -q hx 
# 	alias "nvim" "hx"
# end
if type -q helix
	alias "hx" "helix"
end

if type -q lazygit
	alias lg "lazygit"
end

alias .. "cd .."
alias ... "cd ../.."
alias .2 "cd ../.."
alias .3 "cd ../../.."
alias .4 "cd ../../../.."
alias .5 "cd ../../../../.."

alias cp "cp -i"
# alias lynx "lynx -vikeys"
if type -q bat
	alias cat="bat --plain"
end

if type -q ranger
	alias r "ranger"
end

# alias min "minimal_fish"
alias reload "exec fish"

# alias cwr "cargo watch -q -c -x 'run'"

alias install "nix-env -i"
alias remove "nix-env -e"
alias clean "nix-collect-garbage; nix-store --optimise"

if type -q git
	alias g "git"
	alias gs "git status"
	alias gc "git commit"
	alias gl "git log --oneline"
	alias ga "git add"
	alias gaa "git add ."
	alias config 'git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
end

if type -q tig
	alias ti="TERM=screen-256color tig"
	alias gi="TERM=screen-256color tig"
end
if type -q htop
	alias htop="TERM=screen-256color $(which htop)"
end

alias josh="joshuto --change-directory"

alias demacs="emacs --with-profile doom"
alias space="emacs --with-profile space"

alias rr='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'
