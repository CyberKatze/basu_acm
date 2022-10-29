compilers="g++=4:11.2.0-1ubuntu1 gcc=4:11.2.0-1ubuntu1 python3.9 openjdk-11-jdk"
editors="vim neovim geany emacs gedit kate vim-gui-common"
PKG="/home/acm/shared"

function install_compiler {
	echo "Installing Compilers..."
	echo "" > error.log
	sudo apt update 1> /dev/null 2>> error.log
	sudo add-apt-repository ppa:deadsnakes/ppa -y 1> /dev/null 2>> error.log
	sudo apt install -y $compilers 1> /dev/null 2>> error.log
	# install kotlin
	sudo snap install --classic kotlin 1> /dev/null 2>> error.log
	echo -e "\e[0;32m============================================"
	echo -e "Compilers installation done!"
	echo -e "============================================\e[0m"
	gcc --version
	g++ --version
	python3 --version
	java -version
	kotlin -version
}

function install_editor {
	echo -e "\nInstalling Editors..."
	sudo apt install -y $editors
	echo -e "\e[0;32m============================================"
	echo -e "Editors installation done!"
	echo -e "============================================\e[0m"

}

function install_IDE {
	echo -e "\nInstalling IDE..."
	for i in /$HOME/shared/*.gz; do
		sudo tar -xzf $i -C /opt
	done;
	# install vscode
	sudo apt install $PKG/*.deb
	sudo mv /opt/idea-IC* /opt/IntelliJ
	sudo mv /opt/pycharm* /opt/pycharm
	sudo mv /opt/clion* /opt/clion
	# install codeblocks
	sudo apt install codeblocks -y 1> /dev/null 2> error.log
	sudo desktop-file-install *.desktop
	echo -e "\e[0;32m============================================"
	echo -e "IDE installation done!"
	echo -e "============================================\e[0m"
}


install_compiler
install_editor
install_IDE
