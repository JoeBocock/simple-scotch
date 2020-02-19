sudo chmod -x /etc/update-motd.d/*
echo "Welcome to Simple Scotch." | sudo tee /etc/motd
echo "[mysqld]" | sudo tee -a /etc/mysql/my.cnf > /dev/null 2>&1
echo "sql_mode=\"\"" | sudo tee -a /etc/mysql/my.cnf > /dev/null 2>&1
sudo service mysql restart > /dev/null 2>&1
export MYSQL_PWD=root
mysql -u root -e 'DROP DATABASE IF EXISTS scotchbox;'
mysql -u root -e 'CREATE DATABASE IF NOT EXISTS home;'
echo 'Ready to go...'
