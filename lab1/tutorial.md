### Arch
Initialization of Mariadb. Should only be performed once during setup.
```bash
mariadb-install-db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
```

Starting the mariabd.service:
```bash
sudo systemctl start mariadb
mariadb
```

To enter the Mariadb environment do:
```bash 
mariadb
``` 

### Fedora
Installing MySQL on Fedora
```bash 
sudo dnf install mysql-server
```

Start MySQL Service and Enable at login:
```bash 
sudo systemctl start mysqld
sudo systemctl enable mysqld
```

Find Default Password: For security reasons, MySQL generates a temporary root key. Please note that MySQL has even stricter security policies than MariaDB.
```bash 
sudo grep 'temporary password' /var/log/mysqld.log
```

Configuring MySQL before the first use:
```bash 
sudo mysql_secure_installation
```
Then, answer the security questions as you prefer. or just say yes to all of them.

Using MySQL
```bash 
sudo mysql -u root -p
```
