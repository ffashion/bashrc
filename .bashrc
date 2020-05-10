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
main(){
		setVar
		setEnvVar
		setCommandAlias
}
main
