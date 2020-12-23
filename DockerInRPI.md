# Docker in RPI

Fast receipe for install Docker in a Raspberry Pi. Works correctly in RPI with Debian 10.7 (codename buster).  
As root execute the following comamnds (pay attention and change mike for your user, maybe is pi?):

```code
cd /tmp
apt-get update
apt-get upgrade
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
usermod -aG docker mike
docker version
docker info
````

When login with user mike or your own use the command 'docker version' should be work.  

---
<!-- Pit i Collons -->
![https://raw.githubusercontent.com/leguim-repo/leguim-repo/master/img/codedinbcn.png](https://raw.githubusercontent.com/leguim-repo/leguim-repo/master/img/codedinbcn.png)