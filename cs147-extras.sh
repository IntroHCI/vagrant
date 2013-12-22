echo Installing MongoDB...
mkdir /data/db
chown vagrant /data/db
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
apt-get update
apt-get install mongodb-10gen

echo Installing Heroku Toolbelt...
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh

echo Installing node packages...
npm install -g express --no-bin-link
npm install -g mongoose --no-bin-link
echo Done!