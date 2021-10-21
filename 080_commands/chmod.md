# chmod

## quitar permiso ejecucion a todos los archivo menos los directorios

```code
find . -type f -exec chmod -x {} \;
```

## poner permiso ejecucion

```code
find . -name '*.sh' -exec chmod ug+x {} \;
```

## valor octal del archivo

```code
stat -c "%a %n" archivo.ext
```

---
<!-- Pit i Collons -->
![Coded In Barcelona](https://raw.githubusercontent.com/leguim-repo/leguim-repo/master/img/currentfooter.png)

