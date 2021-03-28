if [ -f config ] ; then 
		if [ -f ~/.ssh/config ] ; then 
				cp ~/.ssh/config ~/.ssh/config.back
		fi
		cp config ~/.ssh/config
		
		if [ 0 -ne $UID ] ;then 
				echo "please use root user exe this file" 
		else 
				cp sshd_config /etc/ssh/sshd_config /etc/ssh/sshd_config_back 
				cp sshd_config /etc/ssh/sshd_config 
		fi

fi
