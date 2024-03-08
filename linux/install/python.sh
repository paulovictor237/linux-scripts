# python
sudo apt-get update
sudo apt-get install -y libssl-dev libpq-dev python-dev

curl https://pyenv.run | bash
exec "$SHELL"
pyenv install 3.10
pyenv global 3.10

# install pipenv
pip install --upgrade pip
pip install pipenv
