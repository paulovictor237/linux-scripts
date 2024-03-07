# python

sudo apt-get install \
  make \
  libssl-dev\
  build-essential\
  zlib1g-dev\
  libbz2-dev\
  libreadline-dev\
  libsqlite3-dev\
  wget\
  llvm\
  libncursesw5-dev\
  xz-utils\
  tk-dev\
  libxml2-dev\
  libxmlsec1-dev\
  libffi-dev\
  liblzma-dev

curl https://pyenv.run | bash
exec "$SHELL"
pyenv install 3.10
pyenv global 3.10

# install pipenv
pip install --upgrade pip
pip install pipenv
