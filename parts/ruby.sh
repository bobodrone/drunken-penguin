#! /bin/bash

# install dependences
sudo apt-get install -y zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev

# install ruby

cd

if [ ! -d ".rbenv" ]; then
  git clone https://github.com/rbenv/rbenv.git ~/.rbenv
fi

echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(rbenv init -)"' >> ~/.zshrc
exec $SHELL

git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.zshrc
exec $SHELL

rbenv install 2.5.0
rbenv global 2.5.0
ruby -v

# install bundler
gem install bundler

# install compass
gem update --system
gem install compass
