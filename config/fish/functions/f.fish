# Defined in - @ line 1
function f --description 'alias f ranger'
    ranger --choosedir="$HOME/.rangerdir" 
	cd (cat $HOME/.rangerdir)
end
