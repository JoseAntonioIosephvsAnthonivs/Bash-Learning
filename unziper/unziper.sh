if [ -f $1 ] ; then
	case $1 in
	    *.tar.bz2)
		tar xvjf $1;;
	    *.tar.gz)
	        tar xvzf $1;;
	    *.bz2)
	        bunzip2 $1;;
            *.rar)
   		unrar x $1;;
	    *.gz)
                gunzip $1;;
	    *.tar)
		tar xvf $1;;
	    *.tbz2)
    		tar xvjf $1;;
  	    *.tgz)
    		tar xvzf $1;;
	   *.zip)
		unzip $1;;
	   *.Z)
   		uncompress $1;;
	   *.7z)
   		7z x $1;;
	   *)
   		echo not possible to  unzip file `$1`		   
	esac
else
	echo file `$1` does not exist
fi
