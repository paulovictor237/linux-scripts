# =====================
# Git Configuration
# =====================
git config --global user.name "peve"
git config --global user.email "paulovictor237@gmail.com"
# =====================
# SSH Configuration
# =====================

 # limpa tudo e reseta o ssh
ssh-add -D && rm -rf ~/.ssh 
# SSH Generator
ssh-keygen -t rsa -b 4096 -C "seu_email@example.com"
# Load your new identity into the ssh-agent
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

# Show the key
cat  ~/.ssh/id_rsa.pub # more/cat -- (cat/tail -f)Show the key

# =====================
# SSH Multiple Accounts
# =====================
code ~/.ssh/config
# paste the code below
Host github.com
    HostName github.com
    User git
    IdentityFile ~/.ssh/id_rsa

Host bitbucket.org
    HostName bitbucket.org
    User git
    IdentityFile ~/.ssh/id_rsa

# =====================
# SSH Test
# =====================
ssh -T git@github.com #  response YES
ssh -T git@bitbucket.org #  response YES
