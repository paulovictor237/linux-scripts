# python
sudo apt-get update
# sudo apt-get install -y libpq-dev python-dev
sudo apt-get install -y build-essential zlib1g-dev libffi-dev libssl-dev liblzma-dev libbz2-dev libreadline-dev libsqlite3-dev

curl https://pyenv.run | bash
exec "$SHELL"
pyenv install 3.10
pyenv global 3.10

# install pipenv
pip install --upgrade pip
pip install pipenv
