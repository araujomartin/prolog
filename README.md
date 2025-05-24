# Ejercicios de Prolog

![Prolog](https://img.shields.io/badge/Prolog-Ejercicios-blue)

Este repositorio contiene ejercicios resueltos en Prolog realizados durante mi etapa como estudiante universitario. La descripción de este repositorio fue generada automáticamente utilizando un MCP (Model Context Protocol) de Visual Studio Code.

## 📚 Descripción
Aquí encontrarás una colección de ejercicios prácticos de lógica y programación declarativa, útiles para aprender y practicar Prolog. Los ejercicios cubren temas como listas, recursividad, árboles, grafos, conjuntos y matrices.

## 📂 Estructura del repositorio
- **arboles/**: Ejercicios relacionados con árboles.
- **conjuntos/**: Operaciones y ejercicios sobre conjuntos.
- **grafos/**: Ejercicios de grafos y relaciones.
- **listas/**: Manipulación y operaciones con listas.
- **matrices/**: Ejercicios sobre matrices.
- **recursividad/**: Ejercicios que emplean recursividad.
- **concatenar.pl**: Concatenación de listas.
- **longitud.pl**: Cálculo de la longitud de una lista.
- **pertenece.pl**: Verificación de pertenencia a una lista.

## 💡 Ejemplos de uso

### Concatenar listas
```prolog
% concatenar([], B, B).
% concatenar([A|As], B, [A|C]) :- concatenar(As, B, C).

?- concatenar([1,2],[3,4],R).
R = [1,2,3,4].
```

### Calcular longitud de una lista
```prolog
% longitud([], 0).
% longitud([_|Xs], R) :- longitud(Xs, R1), R is R1+1.

?- longitud([a,b,c], N).
N = 3.
```

### Verificar pertenencia a una lista
```prolog
% pertenece(X, [X|_]).
% pertenece(X, [_|Y]) :- pertenece(X, Y).

?- pertenece(2, [1,2,3]).
true.
```

## 🎓 Contexto académico
Estos ejercicios fueron desarrollados como parte de la formación universitaria en lógica y programación declarativa. Son útiles para estudiantes y docentes que deseen practicar o enseñar Prolog.

## ✨ Generado con MCP
La descripción de este repositorio fue generada automáticamente utilizando un Model Context Protocol (MCP) de Visual Studio Code.

---

**Autor:** Martin Araujo

¡Gracias por visitar este repositorio!