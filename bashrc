# .bashrc

if [ -e ~/.bash_vars ]; then
    source ~/.bash_vars
fi

# Example setup (bash) (in .bashrc)
f() { fff "$@"; cd "$(< ~/.fff_d)"; }

# Customization (temporary file to use)
# Default: '${XDG_CACHE_HOME}/fff/fff.d'
#          If not using XDG, '${HOME}/.cache/fff/fff.d' is used.
export FFF_CD_FILE=~/.fff_d


# Example setup (posix) (in .shellrc)
f() { fff "$@"; cd "$(cat ~/.fff_d)"; }
