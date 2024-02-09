
set XDG_CONFIG_HOME "$HOME/.config"

set -x CC gcc
# set -x CC /usr/bin/clang
set FZF_DEFAULT_OPTS '
  --color fg:#5d6466,bg:#1e2527
  --color bg+:#ef7d7d,fg+:#2c2f30
  --color hl:#dadada,hl+:#26292a,gutter:#1e2527
  --color pointer:#373d49,info:#606672
  --border
  --color border:#1e2527
  --height 13'


# bash -c "export DOTFILES_PATH=~/dotfiles/"

if type -q sccache
	set -gx RUSTC_WRAPPER sccache
end

set -gx DOTFILES_PATH ~/dotfiles/
set -x FISHPATH ~/.config/fish/

source $FISHPATH/path.fish
source $FISHPATH/alias.fish
source $FISHPATH/funcs.fish

set -x HISTORY_IGNORE "(ls|ll|lll|lg|pwd|exit|sudo reboot|history|cd -|cd ..)"
set -x LS_COLORS "fi=1;33"
# Set MANPAGER
set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"
# set MANPAGER "sh -c 'col -bx | bat -l man -p'"
set -x EDITOR "hx"
# set -x VISUAL "neovide"

set fish_greeting

# set fish_function_path $fish_function_path ~/.config/fish/fenv/functions/

# Vi-mode
fish_vi_key_bindings

# source ~/.config/fish/theme.fish

# starship init fish | source

set -x NNN_FCOLORS "$BLK$CHR$DIR$EXE$REG$HARDLINK$SYMLINK$MISSING$ORPHAN$FIFO$SOCK$OTHER"

# export NNN_OPENER="/Users/tomek/.config/nnn/plugins/nuke"

set -x NNN_PLUG 'o:fzopen;n:nuke'

set -x NNN_OPTS "cErx"

# bash $HOME/.zsh/quitcd_nnn.zsh
set -x NNN_TMPFILE "$HOME/.config/nnn/.lastd"

bash "$HOME/.config/fish/nnn.sh"

# function nnn_cd
#     if ! [ -z "$NNN_PIPE" ]
#         printf "%s\0" "0c$PWD" > "${NNN_PIPE}" !&
# 	end
# end
#
# trap nnn_cd EXIT

# if [ $USE_COLORSCRIPT = "true" ]
# 	colorscript random
# end

set -x USE_COLORSCRIPT "true"
# if type -q pyenv
# 	pyenv init - | source
# end
if type -q starship
	starship init fish | source
end
fish_add_path /Users/tomek/.spicetify

if type -q zoxide
	zoxide init fish | source
end

if type -q luarocks
	eval "$(luarocks completion fish)"
end

if type -q mise
	mise activate fish | source
	mise completion fish | source
	fish_add_path ~/.local/share/mise/shims
end

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin /Users/tomek/.ghcup/bin $PATH # ghcup-env
function __fish_poetry_95045e6843d43f9f_complete_no_subcommand
    for i in (commandline -opc)
        if contains -- $i about add build 'cache clear' 'cache list' check config 'debug info' 'debug resolve' 'env info' 'env list' 'env remove' 'env use' export help init install list lock new publish remove run search 'self add' 'self install' 'self lock' 'self remove' 'self show' 'self show plugins' 'self update' shell show 'source add' 'source remove' 'source show' update version
            return 1
        end
    end
    return 0
end

