setEnvVar(){
		PATH=~/bin:$PATH
    	PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
}
setVar(){
		set -o vi
}
setCommandAlias(){
		alias ls='ls --color'
		alias grep='grep --color'
}
setKeyMap(){
		#syntax 	bind 'parameter'
		bind '",,":"\e"'
		bind '"\C-a": beginning-of-line'
		bind '"\C-l": clear-screen'
}

syncfile(){
		(nohup 	rsync -azzv   /mnt/d/'OneDrive - kolo'/桌面/pdf教程  root@fashion:/var/www/ 1>/dev/null 2>&1 & ) 
		(nohup   rsync -azzv  /mnt/d/'OneDrive - kolo'/桌面/同步笔记  root@fashion:/var/www/ 1>/dev/null 2>&1 & )


}
getfile(){
	#rsync -azzv root@fashion:/var/www  /mnt/d/'OneDrive - kolo'/桌面/File
	rsync -azzv root@fashion:/var/www/同步笔记  /mnt/d/'OneDrive - kolo'/桌面/File
	rsync -azzv root@fashion:/var/www/pdf教程  /mnt/d/'OneDrive - kolo'/桌面/File

}

setAlias(){
	alias 'rmc'='rm *.class'
	alias 'e'='ls -l'
	alias sip="grep -E '\<\<(([0-9]|[1-9][0-9]|1[0-9][0-9]|2([0-4][0-9]|5[0-4]))\>\.){3}(\<[0-9]|[1-9][0-9]|1[0-9][0-9]|2([0-4][0-9]|5[0-4])\>)\>'"
}

main(){
		setVar
		setEnvVar
		setCommandAlias
		setKeyMap
		setAlias
		syncfile
}
main




