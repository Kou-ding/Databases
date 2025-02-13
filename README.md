# Databases

Notes to aid in understanding the vast subject of Databases. Databases course 2024.
### MySQL
```bash
# Install mariadb (mysql alternative)
sudo pacman -S mariadb

# After installation configure mariadb
mariadb-install-db --user=mysql --basedir=/usr --datadir=/var/lib/mysql

# Enable and start the mariadb.service
sudo systemctl enable mariadb.service
sudo systemctl start mariadb.service

# Run mariadb
mariadb
```


### Mongodb
```bash
# Download mongodb and the gui interface of our choice (compass)
yay -S mongodb-bin mongodb-compass mongodb-tools-bin

# Enable and start the mongodb service
sudo systemctl enable mongodb.service
sudo systemctl start mongodb.service

# Run mongodb
mongosh

# Now you can connect to your locally run mongodb database via compass
```

