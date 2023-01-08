# Kubernetes

## Comandos genericos

~~~bash
k get pods
k get nodes
k exec -it nginx -- bash
# Lista de imagenes en el repo de minikube
minikube image ls --format table 
# Subir imagen de docker a minikube
minikube image load aws-lambda-python38
~~~

## Debug de contenedores

### Creacion de entorno para probar debug en local

Instalar minikube

~~~bash
brew install minikube
~~~

Creamos un pod nginx sin privilegios de administracion:

~~~bash
k run nginx --image=nginxinc/nginx-unprivileged
~~~

Compartimos puerto del pod con el exterior

~~~bash
k port-forward pod/nginx 8080
~~~

Ejecutamos una shell de nginx

~~~bash
k exec -it nginx -- bash
~~~

### Debug de un contenedor

Crea un contenedor ubuntu dentro del pod de nginx compartiendo el proceso (namespace) con nginx, asi tendremos herramientas administrativas de ubuntu

~~~bash
kubectl debug -it nginx --image=ubuntu --target=nginx
~~~

Ahora podemos ejecutar ps fax u otros comandos

~~~bash
ps fax # ahora vemos los procesos del contenedor de nginx
apt-get update ; apt-get install tcpdump -y
tcpdump -i any -nn port 8080
~~~

### Debug de contenedor a partir de una copia del mismo

Crear un nuevo pod de debug a partir de nginx y le inyectamos el contendor de ubuntu

~~~bash
kubectl debug -it nginx --image=ubuntu --share-processes --copy-to=nginx-debug
~~~

Continuar en pod de debug

~~~bash
kubectl attach nginx-debug -c debugger-zwxxh -i -t
~~~

### Debug de contenedor en estado CrashLoopBackOff

Creamos un contendor CrashLoopBackOff

~~~bash
k run --image=busybox myapp -- false
~~~

Creamos una copia para debug y reemplazamos el comando false por sh

~~~bash
kubectl debug myapp -it --copy-to=myapp-debug --container=myapp -- sh
~~~

### Debug de un nodo

Crear un pod en el nodo con ubuntu y podemos ver todos los procesos del nodo

~~~bash
kubectl debug node/minikube -it --image=ubuntu
~~~

~~~bash
ps fax # ahora veremos todos los procesos del nodo
~~~
