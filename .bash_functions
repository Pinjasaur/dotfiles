# Make a directory and `cd` into it
mkd() {
	mkdir -p "$@" && cd "$_"
}

# `cd` into a directory and `ls`
cdl() {
	cd "$1" && ls
}

# Jump up `n` directories
up() {
	local ups=""
	for i in $(seq 1 $1)
		do
			ups=$ups"../"
		done
	cd $ups
}

# General "extract" function
# Source: https://github.com/xvoland/Extract
extract() {
	if [ -z "$1" ]; then
		# display usage if no parameters given
		echo "Usage: extract <path/file_name>.<zip|rar|bz2|gz|tar|tbz2|tgz|Z|7z|xz|ex|tar.bz2|tar.gz|tar.xz>"
		echo "       extract <path/file_name_1.ext> [path/file_name_2.ext] [path/file_name_3.ext]"
		return 1
	else
		for n in $@
		do
			if [ -f "$n" ] ; then
				case "${n%,}" in
					*.tar.bz2|*.tar.gz|*.tar.xz|*.tbz2|*.tgz|*.txz|*.tar)
					             tar xvf "$n"       ;;
					*.lzma)      unlzma ./"$n"      ;;
					*.bz2)       bunzip2 ./"$n"     ;;
					*.rar)       unrar x -ad ./"$n" ;;
					*.gz)        gunzip ./"$n"      ;;
					*.zip)       unzip ./"$n"       ;;
					*.z)         uncompress ./"$n"  ;;
					*.7z|*.arj|*.cab|*.chm|*.deb|*.dmg|*.iso|*.lzh|*.msi|*.rpm|*.udf|*.wim|*.xar)
					             7z x ./"$n"        ;;
					*.xz)        unxz ./"$n"        ;;
					*.exe)       cabextract ./"$n"  ;;
					*)
					             echo "extract: '$n' - unknown archive method"
					             return 1
					             ;;
				esac
			else
				echo "'$n' - file does not exist"
				return 1
			fi
		done
	fi
}

# Upload a file to the hastebin service
# Source: https://github.com/diethnis/standalones
haste() {
	local output returnfile contents
	if (( $# == 0 )) && [[ $(printf "%s" "$0" | wc -c) > 0 ]]
		then
		contents=$0
	elif (( $# != 1 )) || [[ $1 =~ ^(-h|--help)$ ]]
		then
		echo "Usage: $0 FILE"
		echo "Upload contents of plaintext document to hastebin."
		echo "\nInvocation with no arguments takes input from stdin or pipe."
		echo "Terminate stdin by EOF (Ctrl-D)."
		return 1
	elif [[ -e $1 && ! -f $1 ]]
		then
		echo "Error: Not a regular file."
		return 1
	elif [[ ! -e $1 ]]
		then
		echo "Error: No such file."
		return 1
	elif (( $(stat -c %s $1) > (512*1024**1) ))
		then
		echo "Error: File must be smaller than 512 KiB."
		return 1
	fi
	if [[ -n "$contents" ]] || [[ $(printf "%s" "$contents" | wc -c) < 1 ]]
		then
		contents=$(cat $1)
	fi
	output=$(curl -# -f -XPOST "https://hastebin.com/documents" -d"$contents")
	if (( $? == 0 )) && [[ $output =~ \"key\" ]]
		then
		returnfile=$(sed 's/^.*"key":"/https:\/\/hastebin.com\//;s/".*$//' <<< "$output")
		if [[ -n $returnfile ]]
			then
			echo "$returnfile"
			return 0
		fi
	fi
	echo "Upload failed."
	return 1
}
