# Apuntes NodeJS

## Depuracion Remota usando Chrome

1. Hacemos un port forward del equipo remoto (9229) a nuestra maquina local(9221)

```console
ssh -L 9221:localhost:9229 miguel@deathstar
```

2. Ejecutamos en la conexion ssh del por forward nuestra app en el equipo remoto

```console
nodejs --inspect missile.js
```

3. Abrimos en nuestra maquina el chrome y abrimos la direccion chrome://inspect. Hacemos click en "Open dedicated DevTools for Node"


4. Se abre la pantalla DevTools - NodeJS. Creamos una conexion nueva haciendo click en "Add connection" con los parametros: localhost:9221. Cerramos la pantalla

5. Volvemos a la pantalla de chrome://inspect. Alli tenemos que ver la app que estamos ejecutando en el equipo remoto, en nuestro ejemplo missile.js file:///home....inspect. Hacemos click en inspect y ya estamos depurando nuesta app ejecutada en el equipo remoto

## Uso de NPM

Inicializa el directorio de trabajo

```console
npm init
```

Inicializa el directoro de trabajo y crea el package.json con valores por defecto

```console
npm init --yes
```

Instala paquete, lo añade a package.json y fuentes para compilarlo

```console
npm install --save-dev paquete@1.0.0
```

Instala paquete y lo añade a package.json

```console
npm install --save paquete@1.0.0
```

Instala paquete en la ultima version y lo añade a package.json

```console
npm install --save paquete
```

Desinstala y elimina la dependencia en package.json

```console
npm uninstall --save paquete@1.0.0
```


```console
```


```console
```

```console
```

```console
```

---
<!-- Pit i Collons -->
![Coded In Barcelona](https://raw.githubusercontent.com/leguim-repo/leguim-repo/master/img/codedinbcn.png)
