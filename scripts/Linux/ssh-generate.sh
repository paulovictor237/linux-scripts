# Update packages
# sudo apt update
# sudo apt upgrade
# sudo apt install git curl build-essential autoconf 

# ssh-keygen # SSH Generator
# dir .ssh # List the contents of ~/.ssh to view the key files
# eval $(ssh-agent) # start it manually ssh server
# ssh-add ~/.ssh/id_rsa # Load your new identity into the ssh-agent
# ssh-add -l # list the keys that the agent is managing.
# more ~/.ssh/id_rsa.pub # (cat/tail -f)Show the key
# ssh -T git@bitbucket.org #verify the key

# Git Configuration
git config --global user.name "peve"
git config --global user.email "paulovictor237@gmail.com"

# Set up SSH for Git
ssh-keygen # SSH Generator
ls -a ~/.ssh # List the contents of ~/.ssh to view the key files
ssh-agent /bin/bash # start it manually ssh server
ps -e | grep [s]sh-agent # Start the ssh-agent and load your keys
ssh-add ~/.ssh/id_rsa # Load your new identity into the ssh-agent
ssh-add -l # list the keys that the agent is managing.
more ~/.ssh/id_rsa.pub # (cat/tail -f)Show the key