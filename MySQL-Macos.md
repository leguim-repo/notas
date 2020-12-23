# MySQL en MacOs

## Desactivar que arranque el servicio automaticamente

```code
sudo launchctl list | grep -i mysql
sudo launchctl unload -w /Library/LaunchDaemons/com.oracle.oss.mysql.mysqld.plist
```

## Paro del servidor mysql

```code
sudo /usr/local/mysql/support-files/mysql.server stop
```

## Arranque mysql

```code
sudo /usr/local/mysql/support-files/mysql.server start
```

## Ver el pid del puerto

```code
sudo lsof -i:3306
```

---
<!-- Pit i Collons -->
![Coded In Barcelona](https://raw.githubusercontent.com/leguim-repo/leguim-repo/master/img/codedinbcn.png)
