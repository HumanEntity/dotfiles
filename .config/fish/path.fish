set PATH $PATH $HOME/.local/share/bob/nightly/nvim-macos/bin/
set PATH $PATH $HOME/bin/
set PATH $PATH /Applications/Docker.app/Contents/Resources/bin/
set PATH $PATH $HOME/.config/tmux/plugins/tmuxifier/bin/

set PATH $PATH $HOME/.night.zig/nz/
set PATH $PATH $HOME/.night.zig/latest/

set PATH $PATH $HOME/scripts/

set -x HELIX_RUNTIME ~/dev/tools/helix/runtime
# set -x NIX_PATH "$HOME/.nix-defexpr/channels:nixpkgs=$HOME/.nix-defexpr/channels/unstable"
# bash -c "export NIX_PATH ${NIX_PATH:+$NIX_PATH:}$HOME/.nix-defexpr/channels:/nix/var/nix/profiles/per-user/root/channels"
# Pyenv
# set PATH $PATH ~/.pyenv/bin/
set -Ux PYENV_ROOT $HOME/.pyenv
fish_add_path $PYENV_ROOT/bin
# Scripts
set PATH ~/.scripts/ $PATH
set PATH ~/.scripts/colorscripts/ $PATH
# Brew
set PATH /opt/homebrew/bin/ $PATH
set PATH $PATH /opt/homebrew/opt/llvm/bin
# DOOM Emacs
set PATH $PATH ~/.config/doom-emacs/bin/
# GNU EMACS
set PATH "~/.emacs.d/bin" $PATH
# RUST
set PATH $PATH ~/.cargo/bin/

# Firefox
set PATH $PATH /Applications/Firefox.app/Contents/MacOS

# GO
set -gx GOROOT /usr/local/go
set PATH $PATH $GOROOT/bin

set -gx GOPATH ~/.golib
set PATH $PATH $GOPATH/bin

# Odin
set PATH $PATH $HOME/code/tools/Odin/

# Tmuxifier
set PATH $PATH $HOME/code/tools/tmuxifier/bin/

# set -p PATH $PATH /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin

# PYENV Config
# set PYENV_ROOT "$HOME/.pyenv"
# command -v pyenv > /dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"
set PATH /usr/local/opt/tcl-tk/bin $PATH

# set -gx LIBRARY_PATH $LIBRARY_PATH $( brew --prefix )/lib:$(brew --prefix)/opt/libiconv/lib
# set -gx LIBRARY_PATH $LIBRARY_PATH /usr/lib/ /usr/local/lib/ /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/System/Library/Frameworks/ /opt/homebrew/lib/

# /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/lib/ /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/System/Library/Frameworks/

# set -gx LDFLAGS $LDFLAGS -F /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/System/Library/Frameworks/Security.framework/
set -gx LDFLAGS $LDFLAGS "-L/usr/local/lib -lobjc -I/opt/homebrew/include"

# set -x PATH $PATH /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/
set -x PATH $PATH /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/bin/
set -x PATH $PATH /Library/Frameworks/

set -x LDFLAGS $LDFLAGS "-F/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/System/Library/Frameworks/ -F/Library/Frameworks/ -F/System/Library/Frameworks/"
set -x LDFLAGS $LDFLAGS "-L/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/System/Library/Frameworks/ -L/Library/Frameworks/ -L/System/Library/Frameworks/"
set -x CFLAGS $CFLAGS "-F/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/System/Library/Frameworks/ -F/Library/Frameworks/ -F/System/Library/Frameworks/"
# set -x CPATH $CPATH "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/"


set -x LDFLAGS $LDFLAGS "-L/opt/homebrew/opt/libiconv/lib"
set -x CFLAGS $CFLAGS "-I/opt/homebrew/opt/libiconv/include"
set -x CFLAGS $CFLAGS "-I/opt/homebrew/Cellar/libmagic/5.45/include/magic.h"

set -x PATH $PATH ~/.local/bin
set -x PATH $PATH ~/dev/v/v/

set -x MANPATH $MANPATH /opt/homebrew/opt/gh/share/man/

set -x PATH $PATH ~/.config/v-analyzer/bin/
