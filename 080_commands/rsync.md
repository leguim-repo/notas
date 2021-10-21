# rsync

## Uso de rsync

-a, --archive               archive mode  
-c, --checksum              skip based on checksum, not mod-time & size -> tarda mucho y no haria falta  
-p, --perms                 preserve permissions  
-r, --recursive             recurse into directories  
--progress              show progress during transfer  
--delete-during         receiver deletes during transfer (default)  

## ejemplo

```code
#rsync -apr --progress --delete-during --exclude-from=/media/exclude.txt /home/kauffman/HackTheBox/ /media/16G/

rsync -apr --progress --delete-during  /root/Escritorio/HackTheBox/machines/ /run/user/0/gvfs/smb-share\:server\=192.168.0.48\,share\=homes/HackTheBox/machines/
```

---
<!-- Pit i Collons -->
![Coded In Barcelona](https://raw.githubusercontent.com/leguim-repo/leguim-repo/master/img/currentfooter.png)

