# Apuntes Git

## Creacion de un repositorio  

git init  

## Añadir archivos

git add RutaArchivo  

- Añade todos los archivos nuevos o modificados  
    git add .  
- Añade todos los archivos modificados, nuevos o borrados  
    git add -A  
    git add -u  

## Descargar en local proyecto

git clone http://direcciondelproyecto/repositorio/proyecto.git  

## Descargar los cambios al repositorio local desde el remoto

git pull  

## Crear una instantanea del repositorio

git commit (-m "descripcion del commit")  

## Enviar los cambios al servidor desde el repositorio local

git push  

## Ver lista de ramas

git branch  

## Ver lista de todas las ramas del servidor

git branch -a  

## Crear una rama

git branch NombreRama  

## Crear una rama y seleccionarla

git branch -b NombreRama

## Cambiar a otra rama

git checkout NombreRama

## Borrar una rama

git branch -d NombreRama

## Crear un nuevo repositorio (Creado primero en el servidor GitLab)

Metodo GitLab
git clone http://10.10.0.31:8000/mike/pruebas.git  
cd pruebas  
touch README.md  
git add README.md  
git commit -m "add README"  
git push -u origin master  

## Crear repositorio a partir de una carpeta existente con codigo

Metodo GitLab  
cd existing_folder  
git init  
git remote add origin http://10.10.0.31:8000/mike/pruebas.git  
git add .  
git commit -m "Initial commit"  
git push -u origin master  

## A partir de un repositorio Git ya existente

Metodo GitLab  
cd existing_repo  
git remote rename origin old-origin  
git remote add origin http://10.10.0.31:8000/mike/pruebas.git  
git push -u origin --all  
git push -u origin --tags  

## Ver modificaciones

git log  

- Ver las ultimas 30 modificaciones  
    git log -p -30  

- Ver las modificaciones de forma grafica  
    git log --pretty=format:"%h %s" --graph  

## Mostrar el autor que ha modificado por ultima vez cada linea de un archivo

git blame nombrearchivo.extension  

## Consultar parámetros de configuración

git config —list  

## Deshacer el ultimo commit de la rama actual

git revert HEAD  

## Modificación parámetros de configuración

- A nivel de proyecto  
    git config parametro valor  

- A nivel global (usuario)  
    git config —global .... ....  

- A nivel de sistema  
    git config —system  .... ....  

## Parámetros necesarios (globalmente)

user.name  
user.email  
git config --global user.name "mike"  
git config --global user.email "mike@mail.moc"  

## Editar la configuracion  

git config --global edit  
git config --system edit  
git config --local edit  

## Desactivar el ayudante de credenciales  

git config --system --unset credential.helper  
(no me funciona. De hecho no tengo el archivo /etc/gitconfig)

## Parametros interesantes

core.editor -> Editor de los mensajes de commit (nano)  

## Commit and push

git add . ; git add -u ; git status ; git commit ; git status ; git push  

## Alias de Commit and push en .bashrc o .zshrc

alias commit='git add . ; git add -u ; git status ; git commit ; git status'  
alias commitandpush='git add . ; git add -u ; git status ; git commit ; git status ; git push'  

## Git Flow

Instalacion para macos:  

```code
brew install git-flow-avh  
```

git-flow init  
git-flow feature start \<nuevafeature>  
Modificacmos/creamos los archivos necesarios normalmente  
git add .  
git commit  
git-flow feature finish  
git push  

---
<!-- Pit i Collons -->
![Coded in Barcelona](codedinbcn.png "Coded in Barcelona")

<!--
Coded with ❤️ in Barcelona 
##### Deployed in [![GitHub](https://github.githubassets.com/images/icons/emoji/octocat.png)](https://github.com)
-->