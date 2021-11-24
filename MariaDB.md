#  MariaDB

## Para cuando una DB se va a por tabaco y no funcina ningun tipo de recuperacion

```code
rm /var/lib/mysql/ib*
```

Probar a ver si reinicia

```code
systemctl start mariadb
```


## Create And Restore MySQL/MariaDB Backups

Backup  
To back up just the application database, create a dump file using the mysqldump tool. In this example, the database is named bitnami_app; replace this with the name of the database you wish to export.

`mysqldump -u root -p bitnami_app > backup.sql`  
To back up all the databases, use this command instead:  

`mysqldump -A -u root -p > backup.sql`  
This operation could take some time depending on the database sizes.  

NOTE: The steps previously described will only back up the data contained inside your databases. There may be other files that you should take into account when performing a full backup, such as files that may have been uploaded to your application. Refer to your application’s documentation for more details.  

Restore  
Once you have the backup file, you can restore the data with a command like the one below:  

`mysql -u root -p < backup.sql`  
To restore the data to a specific database, include the database name in the command, as shown below. For example, to import the data to a database named bitnami_app, use this command:  

`mysql -u root -p -D bitnami_app < backup.sql`  
