sudo apt update
sudo apt install apache2 -y
sudo apache2 -V
sudo apt install mysql-server -y
sudo mysql -V
sudo apt install php libapache2-mod-php php-mysql -y
sudo php -v
sudo apt install ufw
sudo ufw status
sudo ufw allow in "Apache Full"
sudo cp index.thml /var/www/html/index.html
sudo service apache2 restart
sudo service mysql start
