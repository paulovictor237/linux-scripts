# clear
ssh-add -D && rm -rf ~/.ssh 

# gen
ssh-keygen -t rsa
ssh-keygen -t rsa_bb

# config
code ~/.ssh/config
# user1
Host gh
  HostName bitbucket.org
  IdentityFile ~/.ssh/id_rsa 
# user2
Host bb
  HostName bitbucket.org
  IdentityFile ~/.ssh/id_rsa_bb

# copy
pbcopy < ~/.ssh/id_rsa.pub
pbcopy < ~/.ssh/id_rsa_bb.pub

# active
ssh -T gh
ssh -T bb

# usage
# git clone git@gh:etikett_de/relaunch.git
# git clone git@bb:etikett_de/relaunch.git