#!/bin/bash
WorkPath=`pwd`


str="go :  "
ret=`whereis go`
if [ ${#ret} -lt ${#str} ]; then
	if [ ! -f $WorkPath/golang.tar.gz ]; then
		cd $WorkPath
		wget -O golang.tar.gz https://dl.google.com/go/go1.12.6.linux-amd64.tar.gz
	fi
	if [ ! -d $HOME/golang ]; then
		mkdir $HOME/golang
		tar -C $HOME/golang -xzf golang.tar.gz
	fi
	
	echo 'export GOROOT='$HOME'/golang/root' >> ~/.bashrc
	mkdir $HOME/golang/root
	echo 'export GOPATH='$HOME'/golang/go' >> ~/.bashrc
	echo 'export PATH=$PATH:$GOROOT/bin:$GOPATH/bin' >> ~/.bashrc
	source ~/.bashrc
	echo -e "export golang path\n${Line}"  
else
	echo -e "exist golang env\n${Line}"
fi

