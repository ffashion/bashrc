setEnvVar(){
		PATH=~/bin:$PATH
    	PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
}
setVar(){
		set -o vi
}
setCommandAlias(){
		alias ls='ls --color'
}
setKeyMap(){
		#syntax 	bind 'parameter'
		bind '",,":"\e"'
		bind '"\C-a": beginning-of-line'
		bind '"\C-l": clear-screen'
}
main(){
		setVar
		setEnvVar
		setCommandAlias
		setKeyMap
}
main
