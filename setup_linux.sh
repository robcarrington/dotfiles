# [Installs for base-level MacOS]
# iTerm2
# Install Powerline fonts
# Install Seoul256 colors
# Install conda, ipython
# Install stack/GHC
# Install elm

#[Installs needed on all boxes]
# Install oh-my-zsh
# Install vi-mode, git, git-flow, pip, python, tmux, jsontools 
# Install Powerlevel9k

# Install pathogen
# Install elm-vim, seoul256.vim, vim-javascript       
# vim-jsx, vim-scala

# ln -s ~/dotfiles/iterm2_shell_integration.zsh ~/.iterm2_shell_integration.zsh
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

for path in $DIR/*/; do
    for subpath in $path*; do
        FILE=$(basename $subpath)
        if ln -s $subpath ~/.$FILE ; then
            echo "Exported symlink for ~/.$FILE"
        fi
    done
done
