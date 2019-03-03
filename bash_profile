# .bash_profile

if [ -e ~/.bash_vars ]; then
    source ~/.bash_vars
fi

[[ $DG_VTNR -le 2 ]] && tbsm 

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

