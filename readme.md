Dieses Dockerfile ist eine verbitterte Frickelage.

Was muss man tun:

```
sudo docker build -t "trovebox" .

sudo docker run -t -i --rm -p 80:80  trovebox /bin/bash

im container:
php5enmod mcrypt
nano /etc/apache2/sites-enabled/openphoto.conf
--> RewriteEngine auf off setzen

/etc/init.d/apache2 restart

dpkg-reconfigure mysql-server-5.5
--> mysql-passwort auf z.B. root setzen

/etc/init.d/mysql restart
mysql --password=root
--> 'CREATE DATABASE foo;'

/etc/init.d/mysql restart
```