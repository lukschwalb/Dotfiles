# .bash_profile

if [ -e ~/.bash_vars ]; then
    source ~/.bash_vars
fi

systemctl --user import-environment DISPLAY
#  [[ $DG_VTNR -le 2 ]] && tbsm

