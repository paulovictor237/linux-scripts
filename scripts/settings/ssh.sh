# =============================================================================
# Git Configuration
# =============================================================================
git config --global user.name "peve"
git config --global user.email "paulovictor237@gmail.com"
git config --global core.filemode false
# =============================================================================
# @@@ Set up SSH for Git @@@
# =============================================================================
ssh-add -D && rm -rf ~/.ssh  # limpa tudo e reseta o ssh
ssh-keygen # SSH Generator
eval `ssh-agent -s`
ssh-add ~/.ssh/id_rsa # Load your new identity into the ssh-agent
cat  ~/.ssh/id_rsa.pub # more/cat -- (cat/tail -f)Show the key
ssh -T git@bitbucket.org #  response YES
ssh -T git@github.com #  response YES
# =============================================================================
# @@@ MULTIPLE SSH KEYS @@@
# =============================================================================
# https://blog.developer.atlassian.com/different-ssh-keys-multiple-bitbucket-accounts/
# https://gist.github.com/klodshanz/3d2f34992e1a78c9876e3be2faf8aa8e

# clean all
ssh-add -D && rm -rf ~/.ssh  # limpa tudo e reseta o ssh

# create SSH Keys
ssh-keygen -t rsa -C "paulo@motoristapx.com.br"
# /home/peve/.ssh/id_rsa
ssh-keygen -t rsa -C "paulovictor237@gmail.com"
# /home/peve/.ssh/id_rsa_bb
ls -a ~/.ssh 

# add the identities to SSH
eval `ssh-agent -s`
ssh-add -D 
ssh-add ~/.ssh/id_rsa
ssh-add ~/.ssh/id_rsa_bb
ssh-add -l

# Create Config file
code ~/.ssh/config
#user1 account
Host gh
HostName bitbucket.org
User git
IdentityFile ~/.ssh/id_rsa
IdentitiesOnly yes

#user2 account
Host bb
HostName bitbucket.org
User git
IdentityFile ~/.ssh/id_rsa_bb
IdentitiesOnly yes

# FINISH
cat  ~/.ssh/id_rsa.pub
cat  ~/.ssh/id_rsa_bb.pub

# Check that repo recognizes keys:
# ssh -T git@bitbucket.org #  response YES
ssh -T gh
ssh -T bb

# git clone git@gh:etikett_de/relaunch.git
# git clone git@bb:etikett_de/relaunch.git

# =============================================================================
