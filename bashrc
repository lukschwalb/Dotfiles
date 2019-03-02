# .bashrc

if [ -e ~/.repos ]; then
    source ~/.repos
fi

export PATH=$PATH:$REPOSITORY_DIRECTORY/Dotfiles/scripts
export EDITOR=nvim
export VISUAL=nvim
export TERMINAL=st


export ROFI_KEYMAPS="us\nde"


exec fish 
