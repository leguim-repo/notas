# MySQL Docker

(https://platzi.com/tutoriales/1432-docker/3268-como-crear-un-contenedor-con-docker-mysql-y-persistir-la-informacion/)

```code
docker run -d -p 3306:3306 --name pom-mysql -e MYSQL_ROOT_PASSWORD=secret1234 mysql:latest
`````

## Abrir sesion en el contenedor

```code
docker exec -it pom-mysql bash
````

Eliminamos el proceso que corre el contenedor creado.

```code
docker rm -f pom-mysql
````

# Eliminamos todos los volúmenes ya que Docker crea volúmenes temporales sin pedirte permiso

```code
docker volume prune
````

# Creamos un volumen

```code
docker volume create pom-mysql-db-data
````

# Levantamos nuevamente el Docker y agregamos el volumen con la opcion --mount

Con esto levantamos la imagen de pom-mysql de forma persistente, las modificacion que se hagan en las BD quedan persistentes en el volumen Docker llamado pom-mysql-db-data  

```code
docker run -d -p 3306:3306 --name pom-mysql -e MYSQL_ROOT_PASSWORD=secret1234 --mount src=pom-mysql-db-data,dst=/var/lib/mysql mysql:latest

````

Pruebas varias no usar

```code
docker exec -i pom-mysql mysql -u root -p secret1234  <<< "show databases;"
docker exec -it pom-mysql bash

```

```code

```

```code

```

---
<!-- Pit i Collons -->
![Coded In Barcelona](https://raw.githubusercontent.com/leguim-repo/leguim-repo/master/img/currentfooter.png)
