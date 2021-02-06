# Anaconda

After install miniconda appears ```(base)``` in prompt in order to disable:

```bash
conda config --show | grep changeps1
conda config --set changeps1 false
```

Another way more dirty:

```bash
conda config --set auto_activate_base false
```
---
<!-- Pit i Collons -->
![Coded In Barcelona](https://raw.githubusercontent.com/leguim-repo/leguim-repo/master/img/currentfooter.png)
