# Apuntes JavaScript

## Array

Referencia JavaScript: <https://developer.mozilla.org/es/docs/Web/JavaScript/Referencia>

### Para ordenar un array numericamente

```javascript
a.sort((a, b) => a - b);
```

sort por defecto lo ordena alfabeticamente

### E6 permite deestructurar un array en multiples variables (util en reactjs)

```javascript
    const expressions = [ 140, 10 ];
    // ES6 allows destructuring of arrays into multiple variables
    const [A,P] = expressions;
    A es 140
    P es 10
```

---
<!-- Pit i Collons -->
![Coded in Barcelona](codedinbcn.png "Coded in Barcelona")