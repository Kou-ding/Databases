run the following command before starting the mariadb.service:

```bash
mariadb-install-db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
```
start the mariabd.service:
```bash
sudo systemctl start mariadb
mariadb
```