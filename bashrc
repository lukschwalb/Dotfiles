# .bashrc

if [ -L ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

if [ -e ~/.duckrice ]; then
    source ~/.duckrice
fi

export PATH=$PATH:$DOTFILE_DIR/scripts

export ROFI_KEYMAPS="us\nde"
exec fish 
