# .bash_profile

# Initialize keychain if needed
if [ -r $HOME/.ssh/identity -o -r $HOME/.ssh/id_dsa -o -r $HOME/.ssh/id_rsa ]; then
 	if [ ! -d $HOME/.keychain ]; then
	        keychain
        fi
fi

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

export PATH
unset USERNAME
