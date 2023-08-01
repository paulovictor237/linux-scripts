# clear
ssh-add -D && rm -rf ~/.ssh

# gen
ssh-keygen

# copy
pbcopy < ~/.ssh/id_rsa.pub

# active
ssh -T git@github.com #  response YES
ssh -T git@bitbucket.org #  response YES