#!/bin/bash
WorkPath=`pwd`


str="go :  "
ret=`whereis go`
if [ ${#ret} -lt ${#str} ]; then
	cd $WorkPath
	if [ ! -f $WorkPath/golang.tar.gz ]; then
		cd $WorkPath
		wget -O golang.tar.gz https://dl.google.com/go/go1.12.6.linux-amd64.tar.gz
	fi
	if [ ! -d /usr/local/go ]; then
		sudo tar -C /usr/local -xzf golang.tar.gz
	fi
	
	echo 'export GOROOT=$HOME/local/go' >> $HOME/.bashrc
	echo 'export GOPATH=$HOME/go' >> $HOME/.bashrc
	echo 'export PATH=$PATH:$GOROOT/bin:$GOPATH/bin' >> $HOME/.bashrc
	source $HOME/.bashrc
	echo -e "export golang path\n${Line}"  
else
	echo -e "exist golang env\n${Line}"
fi

