# .bashrc

if [ -L ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

if [ -e ~/.repos ]; then
    source ~/.repos
fi

export PATH=$PATH:$REPOSITORY_DIRECTORY/Dotfiles/scripts
export EDITOR=nvim
export VISUAL=nvim


export ROFI_KEYMAPS="us\nde"
exec fish 
