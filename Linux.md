# Network

## Resources list of server
```code
smbclient -U mike -L 10.168.0.13 
```

## Mount remote server resources
```code
mount -t cifs -o username=mike //10.168.0.13/myshare /mnt/share
````
