# =====================
# SSH Configuration
# =====================

# SSH Generator
# /home/peve/.ssh/id_rsa_bb
ssh-keygen -t rsa -C "paulovictor237@gmail.com"

# add the identities to SSH
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa_bb

# Show the key
cat  ~/.ssh/id_rsa_bb.pub # more/cat -- (cat/tail -f)Show the key

# =====================
# SSH Multiple Accounts
# =====================
code ~/.ssh/config
# paste the code below

# user1 github
Host github.com
    HostName github.com
    User git
    IdentityFile ~/.ssh/id_rsa
    # IdentitiesOnly yes

# user1 bitbucket
Host bitbucket.org
    HostName bitbucket.org
    User git
    IdentityFile ~/.ssh/id_rsa
    # IdentitiesOnly yes

# user2 bitbucket
Host bitbucket.org2
    HostName bitbucket.org
    User git
    IdentityFile ~/.ssh/id_rsa_bb
    # IdentitiesOnly yes

# =====================
# SSH Test
# =====================

ssh -T git@github.com #  response YES
ssh -T git@bitbucket.org #  response YES
ssh -T git@bitbucket.org2 #  response YES

# git clone git@github.com:paulovictor237/linux-scripts.git
# git clone git@bitbucket.org:paulovictor237/linux-scripts.git
# git clone git@bitbucket.org2:paulovictor237/linux-scripts.git




