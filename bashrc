setEnvVar(){
		PATH=~/.bin/:~/bin:$PATH
    	PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
		export LD_LIBRARY_PATH=/home/fashion/project/nginx/ffmpeg/shared-install/lib
}
setTerminalParametere(){
		set -o vi
		if [ -f /usr/share/bash-completion/bash_completion ];then 
				. /usr/share/bash-completion/bash_completion 
		elif [ -f /etc/bash_completion ];then
				. /etc/bash_completion
		fi
}

setKeyMap(){
		#syntax 	bind 'parameter'
		bind '",,":"\e"'
		bind '"\C-a": beginning-of-line'
		bind '"\C-l": clear-screen'
}

syncfile(){
		(nohup 	rsync -azzv   /mnt/c/Users/fashion/Desktop/pdf教程  root@ruanhaiqing.com:/var/www/html/ 1>/dev/null 2>&1 & ) 
		(nohup   rsync -azzv  /mnt/c/Users/fashion/Desktop/同步笔记  root@ruanhaiqing.com:/var/www/html/ 1>/dev/null 2>&1 & )


}
getfile(){
	#rsync -azzv root@fashion:/var/www  /mnt/d/'OneDrive - kolo'/桌面/File
	rsync -azzv root@fashion:/var/www/同步笔记  /mnt/d/'OneDrive - kolo'/桌面/File
	rsync -azzv root@fashion:/var/www/pdf教程  /mnt/d/'OneDrive - kolo'/桌面/File

}

setAlias(){
	alias ls='ls --color'
	alias grep='grep --color'
	alias 'rmc'='rm *.class'
	alias 'e'='ls -l'
	alias sip="grep -E '\<\<(([0-9]|[1-9][0-9]|1[0-9][0-9]|2([0-4][0-9]|5[0-4]))\>\.){3}(\<[0-9]|[1-9][0-9]|1[0-9][0-9]|2([0-4][0-9]|5[0-4])\>)\>'"
	#alias dd='dd status=progress'
	alias 'glog'='git log --oneline --graph'
	alias 'gdb'='function funtest(){ gdb -q $1 ; }; funtest'
}

main(){
		setTerminalParametere
		syncfile
		setEnvVar
		setKeyMap
		setAlias
}
main
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}";/home/fashion/project/algorithms/Common/lib"
export REPO_URL='https://gerrit-googlesource.proxy.ustclug.org/git-repo'
