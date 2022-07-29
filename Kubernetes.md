# Kubernetes

## General commands

~~~bash
k get pods
k exec -it nginx -- bash
~~~

## Debug pods

~~~bash
k run nginx --image=nginxinc/nginx-unprivileged
k port-forward pod/nginx 8080
kubectl debug -it nginx --image=ubuntu --target=nginx
apt-get update ; apt-get install tcpdump -y
tcpdump -i any -nn port 8080
~~~
