RUBY_VERSION="2.0.0"
LOG_FILE="$HOME/ror_install.log"
sudo apt-get update >>$LOG_FILE
sudo apt-get -y install git >>$LOG_FILE
sudo apt-get -y install curl >>$LOG_FILE
curl -L get.rvm.io | bash -s stable >>$LOG_FILE
source ~/.rvm/scripts/rvm >>$LOG_FILE
sudo apt-get -y install build-essential openssl libreadline6 libreadline6-dev zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-0 libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev automake libtool bison subversion libmysql-ruby libmysqlclient-dev mysql-server mysql-client
sudo apt-add-repository -y ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get -y install nodejs
rvm autolibs enable
rvm install $RUBY_VERSION >>$LOG_FILE
rvm --default use $RUBY_VERSION >>$LOG_FILE
gem install rails -v 3.2.12 >>$LOG_FILE