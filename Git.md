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

git clone <http://direcciondelproyecto/repositorio/proyecto.git>  

## Descargar los cambios al repositorio local desde el remoto

git pull  

## Añadir submodulo (otro repo) al repo principal

git submodule add https://github.com/leguim-repo/potential-code-engine  potential-code-engine/potential-code-engine

## Descargar los cambios del repo  incluidos los submodulos

git pull && git submodule update --recursive

## Configurar git para actualizar submodulos

git config submodule.recurse true

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
git clone <http://10.10.0.31:8000/mike/pruebas.git>  
cd pruebas  
touch README.md  
git add README.md  
git commit -m "add README"  
git push -u origin master  

## Crear repositorio a partir de una carpeta existente con codigo

Metodo GitLab  
cd existing_folder  
git init  
git remote add origin <http://10.10.0.31:8000/mike/pruebas.git>  
git add .  
git commit -m "Initial commit"  
git push -u origin master  

## A partir de un repositorio Git ya existente

Metodo GitLab  
cd existing_repo  
git remote rename origin old-origin  
git remote add origin <http://10.10.0.31:8000/mike/pruebas.git>  
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

## Crear .gitignore global

nano ~/.gitignore
.DS_Store
.vscode
.idea

git config --global core.excludesfile ~/.gitignore  
git config --global --list  

## Deshacer todos los cambios en los archivos y directorios

git clean -fd

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

## Nano para los commit

```code
git config --global core.editor "nano"
```

## Ver config global  

```code
git config --list --show-origin
```

## Crear .gitignore global

Crear el .gitignore en el perfil del usuario  

```code
nano ~/.gitignore
````

Un contenido basico puede ser el siguiente:  

```code

# Folder view configuration files
.DS_Store
Desktop.ini

# Thumbnail cache files
._*
Thumbs.db

# Files that might appear on external disks
.Spotlight-V100
.Trashes

# Compiled Python files
*.pyc

# Compiled C++ files
*.out

# Application specific files
venv
node_modules
.sass-cache
```

Una vez creado configurar git para que coja ese .gitignore de forma global

```code
git config --global core.excludesfile ~/.gitignore
```

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

Para usar git flow primero hay que inicializar el repo. ( Solo hay que hacerlo la primera vez)  

```code
git flow init -d

git flow feature start <nombredelafeature>  
```

Ahora modificamos/creamos lo necesario para la feature  

```code
git add .
git commit
git flow feature finish
#git push # no estoy seguro de este git push
```

Si al cerrar la feature da error de que tu repo local no esta actualizado  

```code
git checkout develop
git pull
git checkout <nombredelafeature>
git flow feature finish
git push
```

## Ir a un commit especifico del repo  

```code
git log
git reset --hard <numero hexadecimal del commit>
```

## Descartar cambios  

```code
git reset --hard #is for when you want to discard all uncommitted changes.
```

```code
git restore src/main/resources/hibernate.cfg.xml
```

Si estan en staged ( git add . ), primero hay que sacarlos  

```code
git restore --staged src/main/java/com/pomhotel/booking/ui/controllers/BookController.java

git clean -fd # Solo si los archivos no estan en staged
```

## Para pillar los cambios de la rama principal y traerlos a tu rama

```code
git checkout mi-rama
git fetch
git rebase origin/main
git push --force
```

##  Stash

```code
git stash
git checkout other-branch
git stash pop
```

## Borrar rama local

```code
git branch -d <local-branch>
git branch -D <local-branch> # force deletion of the branch, even if it contains unmerged / unpushed commits
```

## Cambiar de nombre a una rama

If you want to rename a branch while pointed to any branch, do:

```code
git branch -m <oldname> <newname>
```

If you want to rename the current branch, you can do:

```code
git branch -m <newname>
```

If you want to push the local branch and reset the upstream branch:

```code
git push origin -u <newname>
```

And finally if you want to Delete the remote branch:

```code
git push origin --delete <oldname>
```

## How to undo commit?

```code
git revert <commit hash>
```

## Crear una parche (patch)

Para crear un patch:

```code
git diff > mi_parche_para_un_bug.patch
```

Para aplicar un patch:

```code
git apply mi_parche_para_un_bug.patch
```

## Create a patch

Before create a patch remember add all files to stagging area with <code>git add -A</code>

```code
#In the folder of the modified repository, where the new files are staged
git diff -p --staged > ~/new.file.patch.diff;

#In the folder of the new clone of the repository, where the new files need to be created
git apply ~/new.file.patch.diff;

```

## Remove file from stagging area

```code
git rm paraborrar.txt --cached
```

##  Renaming Git Branch
Follow the steps below to rename a Local and Remote Git Branch:

Start by switching to the local branch which you want to rename:

~~~bash
git checkout <old_name>
~~~

Rename the local branch by typing:

~~~bash
git branch -m <new_name>
~~~

At this point, you have renamed the local branch.

If you’ve already pushed the <old_name> branch to the remote repository , perform the next steps to rename the remote branch.

Push the <new_name> local branch and reset the upstream branch:

~~~bash
git push origin -u <new_name>
~~~

Delete the <old_name> remote branch:

~~~bash
git push origin --delete <old_name>
~~~

That’s it. You have successfully renamed the local and remote Git branch.

---
<!-- Pit i Collons -->
![Coded In Barcelona](https://raw.githubusercontent.com/leguim-repo/leguim-repo/master/img/currentfooter.png)
<!--
Coded with ❤️ in Barcelona 
##### Deployed in [![GitHub](https://github.githubassets.com/images/icons/emoji/octocat.png)](https://github.com)
-->
