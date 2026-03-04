
# Game of Thrones - Parte 2

Este ejercicio es una continuación en la creación del mundo de las colecciones, ahora enfocado en los combates y el uso estratégico de artefactos.

## Comportamiento de los Artefactos

Los artefactos son elementos que aportan poder en una batalla al personaje que los posee.  
Sin embargo, cada vez que se utilizan en una batalla, sufren efectos. El poder de pelea de **Daenerys** depende de un valor base (inicialmente configurable) y de sus artefactos. Ten en cuenta al programar que estos artefactos podrían ser usados por otros personajes que aún no se han introducido.

### Efectos de los Artefactos

- **Espada de Dragón**: La primera vez que se utiliza, aporta la misma cantidad que el poder base del personaje; luego, solo el 50%.
- **Collar de Fuego**: Aporta 3 puntos. Si el personaje tiene un poder base mayor a 6, suma también un punto por cada batalla en la que se haya usado el collar.
- **Armadura de Acero Valyrio**: Aporta 6 de poder de pelea siempre; el acero valyrio no se gasta con las batallas.

*Nota: La regla del Libro de Hechizos se define más adelante.*

El poder de pelea de **Daenerys** es la suma de su poder base (que inicialmente es 5) más la sumatoria de los poderes de pelea que le aportan los artefactos que tiene encima. Cuando ocurre una batalla, se utilizan todos los artefactos que **Daenerys** lleva encima y, además, se incrementa en 1 el número base del poder de pelea.

### Requerimientos

- Hacer que **Daenerys** luche una batalla.
- Saber el poder de pelea de **Daenerys**.

#### Ejemplo de Batalla

- **Daenerys** tiene 5 de base y capacidad de 3 artefactos. Entre sus artefactos se encuentran la *espada* (que le aporta 5), la *armadura* (aporta 6), y el *collar* (aporta 3).
- Luego de la primera batalla: **Daenerys** tiene 6 de base, la espada (aporta 6/2 = 3), la armadura (aporta 6), y el collar (aporta 3).
- Luego de la segunda batalla: **Daenerys** tiene 7 de base, la espada (aporta 7/2 = 3.5), la armadura 6, y el collar (3+2=5).
- Luego de la tercera batalla: **Daenerys** tiene 8 de base, la espada (aporta 8/2 = 4), la armadura 6, y el collar (3+3=6).

#### Ejemplo de Poder de Pelea

- Si **Daenerys** tiene 5 de base y capacidad de 3 artefactos. Entre sus artefactos se encuentran la *espada* (aporta 5), la *armadura* (aporta 6), y el *collar* (aporta 3).  
  Entonces el poder de pelea de **Daenerys** es:  
  `5 (base) + 5 (espada) + 6 (armadura) + 3 (collar) = 19`.

## Libro de Hechizos

- El **Libro de Hechizos** contiene varios hechizos, pero solo se pueden usar de uno a la vez.  
  Los hechizos están ordenados y se utilizan en ese orden. Luego de utilizar un hechizo, este se descarta.  
  Existen estos 3 hechizos (pero podría haber más):

  - **Bendición**: Aporta 4 de poder de pelea.
  - **Invisibilidad**: Aporta la misma cantidad que el poder de pelea base del personaje.
  - **Invocación**: Aporta el valor del artefacto más poderoso para el héroe que posee en su morada. (El artefacto del castillo no sufre ningún efecto por la batalla.)

Si el **Libro de Hechizos** no tiene ningún hechizo, entonces su aporte es nulo.

#### Ejemplo

Suponiendo que **Daenerys** (con 5 de poder de pelea) solo tiene encima el libro de hechizos, mientras que en su castillo tiene la espada, la armadura y el collar (todo sin haber sido usado antes).  
El libro de hechizos contiene estos tres hechizos en este orden: *Bendición, Invisibilidad, e Invocación*.

- Antes de la primera batalla, el libro de hechizos aporta 4 de la *Bendición*.
- Luego de la primera batalla, el libro de hechizos aporta 6 por la *Invisibilidad*.
- Luego de la segunda batalla, el libro aporta 7, ya que la *Invocación* otorga los 7 puntos de la espada.
- Luego de la tercera batalla, ya no quedan más hechizos, por lo que el aporte del libro es 0.

## Enemigos

En la tierra de **Westeros** existen 3 poderosos enemigos. De cada uno interesa saber su poder de pelea y su morada.

- **Cersei Lannister**: Tiene 16 de poder de pelea y vive en King's Landing.
- **Jon Snow**: Tiene 28 de poder de pelea y vive en Invernalia.
- **Arya Stark**: Tiene 14 de poder de pelea y vive en Braavos.

### Enemigos Vencibles y Moradas Conquistables

Los enemigos en **Westeros** que **Daenerys** puede vencer son aquellos que tienen un poder de batalla menor al de **Daenerys**.  
A su vez, las moradas que **Daenerys** podría conquistar son las moradas de los enemigos a los cuales puede vencer.

#### Ejemplo

Si **Daenerys** tiene 5 de base y capacidad de 3 artefactos. Entre sus artefactos se encuentran la *espada* (que le aporta 5), la *armadura* (aporta 6), y el *collar* (aporta 3).  
Su poder de batalla es 19, por lo tanto puede vencer a **Cersei Lannister** y a **Arya Stark**. Las moradas conquistables son King's Landing y Braavos.

### Poderosa

**Daenerys** es poderosa en la tierra de **Westeros** si está en condiciones de vencer a todos los enemigos.  
En el caso anterior no es poderosa, pero si su poder base es de 10, entonces sí lo es.

### Artefacto Fatal

Saber si **Daenerys** tiene encima algún artefacto fatal para luchar contra un enemigo.  
Un artefacto letal es aquel que le da un poder de pelea superior al poder de batalla de su enemigo.

Además, se debe poder pedir a **Daenerys** un artefacto fatal.

#### Ejemplo

Si **Daenerys** tiene de base 15, la espada, la armadura y el collar, entonces cuenta con un artefacto, que es la espada, para enfrentar a **Arya Stark**.  
Sin embargo, no cuenta con ningún artefacto fatal para enfrentar a **Jon Snow**.


