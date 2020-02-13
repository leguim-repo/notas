# Apuntes Git

## Creacion de un repositorio
git init  

## Añadir archivos
git add RutaArchivo  
- Añade todos los archivos nuevos o modificados  
    git add .  
- Añade todos los archivos modificados, nuevos o borrados  
    git add -A  

## Descargar en local proyecto
git clone DireccionProyecto  

## Descargar los cambios al repositorio local desde el remoto
git pull  

## Crear una instantanea del repositorio
git commit (-m "descripcion del commit")  

## Enviar los cambios al servidor desde el repositorio local
git push  

## Crear un nuevo repositorio (Creado primero en el servidro GitLab)
git clone http://10.10.0.31:8000/mike/pruebas.git  
cd pruebas  
touch README.md  
git add README.md  
git commit -m "add README"  
git push -u origin master  

## Crear repositorio a partir de una carpeta existente con codigo
cd existing_folder  
git init  
git remote add origin http://10.10.0.31:8000/mike/pruebas.git  
git add .  
git commit -m "Initial commit"  
git push -u origin master  

## A partir de un repositorio Git ya existente
cd existing_repo  
git remote rename origin old-origin  
git remote add origin http://10.10.0.31:8000/mike/pruebas.git  
git push -u origin --all  
git push -u origin --tags  

## Consultar parámetros de configuración
git config —list  

## Modificación parámetros de configuración
- A nivel de proyecto  
    git config parametro valor  

- A nivel global (usuario)  
    git config —global …  

- A nivel de sistema  
    git config —system  

## Parámetros necesarios (globalmente)
user.name  
user.email  
git config --global user.name "mike"  
git config --global user.email "mike@mail.moc"  

## Parametros interesantes
core.editor -> Editor de los mensajes de commit (nano)  

## Editor Markdown online
https://jbt.github.io/markdown-editor/

## Ejemplo Markdown
https://markdown-it.github.io

