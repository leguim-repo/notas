# Kali in a Docker

Quick recipe to have Kali in a Docker container (and create a custom image).

Reference articles:

[https://airman604.medium.com/kali-linux-in-a-docker-container-5a06311624eb](https://airman604.medium.com/kali-linux-in-a-docker-container-5a06311624eb)

[https://desarrolloactivo.com/blog/kali-linux-pentesting-docker/](https://desarrolloactivo.com/blog/kali-linux-pentesting-docker/)

Download Kali image

```bash
docker pull kalilinux/kali-rolling
```

This downloads official Kali Linux Docker image, creates a container based on that image and starts /bin/bash in the container. Kali image is bare bones. Though it has Kali apt sources configured, no tools are installed.

Now run Kali

```bash
docker run --tty --interactive kalilinux/kali-rolling /bin/bash
```

Update Kali image

```bash
apt update
apt dist-upgrade
apt autoremove
apt clean
```

Install our favorite weapons selection ([https://www.kali.org/news/kali-linux-metapackages/](https://www.kali.org/news/kali-linux-metapackages/))

```bash
apt install kali-tools-top10
```

Or install your custom selection:

```bash
apt-get install bettercap
```

For install ifconfig:

```bash
apt-get install net-tools
```

Now exit from Kali

As a next step, let’s create a local Docker image with the updates and Kali tools installed. This means, you’ll be able to quickly create new Kali Linux containers with all the tools ready to go. This is a required step if you’d like to stick with persistence option 1 below (recommended).

To create a new image based on the changes we just did, exit the Kali Linux shell (this will stop the container) and run the following:

```bash
docker ps -a
```

This will list all the Docker containers (-a means also include stopped ones). The output should be something similar to:

```bash
CONTAINER ID   IMAGE                    COMMAND       CREATED          STATUS                          PORTS                    NAMES
55c818b80860   kalilinux/kali-rolling   "/bin/bash"   12 minutes ago   Exited (0) About a minute ago                            compassionate_hermann
```

Copy the CONTAINER ID (55c818b80860 in the example above) and run:

```bash
docker commit <CONTAINER ID> my-kali
docker commit 55c818b80860 my-kali
```

This will create a new Docker image named my-kali (feel free to improvise!) based on the changes in the running container. Next time you want to create a new Kali container, use the new image name:

```bash
docker run -ti my-kali /bin/bash
```
---
<!-- Pit i Collons -->
![Coded In Barcelona](https://raw.githubusercontent.com/leguim-repo/leguim-repo/master/img/codedinbcn.png)
