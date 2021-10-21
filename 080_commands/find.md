# find

## Find all *.mp4 files by group vivek

```code
find $HOME -name "*.mp4" -group vivek
```

## Find file owned by user

```code
find /var/www -user vivek -name "*.pl"
```

## How to find files by users vivek and wendy

match files only

```code
find / -type f -user vivek -o -user wendy
```

match dirs only

```code
find / -type d -user vivek -o -user wendy
```

## Find inside files

```code
find . -name '*.js' -exec grep -i 'private' {} \; -print"
```

---
<!-- Pit i Collons -->
![Coded In Barcelona](https://raw.githubusercontent.com/leguim-repo/leguim-repo/master/img/currentfooter.png)
