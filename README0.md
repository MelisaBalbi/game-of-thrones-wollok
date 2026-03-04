# Game of Throne

Este ejercicio busca ser una primera aproximación al mundo de las colecciones.

## Daenerys

Se trata de un juego en el cual nuestro personaje, **Daenerys**, va recolectando distintos artefactos por el mundo.  
Para la primera versión, existen 4 artefactos:

- **Espada de Dragón**
- **Libro de Magia Ancestral**
- **Collar de Fuego**
- **Armadura de Acero Valyrio**

Al principio, **Daenerys** solo puede llevar hasta 2 artefactos a la vez, pero se espera que a medida que se desarrolla el juego, pueda incrementar su capacidad.

Cada vez que Daenerys se encuentra con un artefacto y tiene capacidad para llevarlo, lo levanta.

### Ejemplo:
1. Daenerys encuentra la **Espada de Dragón** (la agarra).
2. Daenerys encuentra el **Libro de Magia Ancestral** (lo agarra).
3. Daenerys encuentra el **Collar de Fuego** (no lo agarra, ya que tiene la espada y el libro encima y su capacidad es de 2).

---

## Rocadragón

**Rocadragón** es donde **Daenerys** vive. Es tan grande que allí no hay límite para almacenar artefactos.  
Cuando **Daenerys** llega a Rocadragón, guarda en ella todos los artefactos que lleva encima, liberando espacio para poder levantar nuevos.

### Ejemplo:
1. Daenerys encuentra la **Espada de Dragón** (la agarra).
2. Daenerys encuentra el **Libro de Magia Ancestral** (lo agarra).
3. Daenerys llega a **Rocadragón** (deja en la fortaleza la espada y el libro de magia).
4. Daenerys encuentra el **Collar de Fuego** (ahora sí lo puede agarrar, ya que liberó espacio).
5. Daenerys llega a **Rocadragón** de nuevo (deja el collar, con lo cual ahora la fortaleza tiene el collar, la espada y el libro).

---

## Saber los artefactos de Daenerys

Hay dos preguntas interesantes que debe poder contestar **Daenerys**: por un lado, cuáles son los artefactos que tiene encima (ya resuelto en el punto anterior), pero también debe saber cuáles son todos los artefactos que ella posee, sin importar si los tiene encima o en su fortaleza.

También se quiere preguntar si posee un artefacto en especial.

### Ejemplo:
Si la fortaleza tiene el **Collar de Fuego** y la **Espada de Dragón**, y **Daenerys** tiene la **Armadura de Acero Valyrio**, entonces **Daenerys** posee:

- **Collar de Fuego**
- **Espada de Dragón**
- **Armadura de Acero Valyrio**

El **Libro de Magia Ancestral** no lo posee.

---

## Saber la historia de los encuentros con los artefactos

Se desea saber el orden en que **Daenerys** fue encontrándose con los artefactos, independientemente de si los agarró o no.

### Ejemplo:

1. Daenerys encuentra la **Espada de Dragón** (la agarra).
2. Daenerys encuentra el **Libro de Magia Ancestral** (lo agarra).
3. Daenerys encuentra el **Collar de Fuego** (no lo agarra, ya que tiene la espada y el libro encima y su capacidad es de 2).
4. Daenerys llega a **Rocadragón** (deja en la fortaleza la espada y el libro de magia).
5. Daenerys encuentra la **Armadura de Acero Valyrio** (la agarra).
6. Daenerys encuentra el **Collar de Fuego** (ahora sí lo puede agarrar, ya que liberó espacio).

Si consultamos la historia de encuentros con los artefactos, debería ser:

1. **Espada de Dragón**  
2. **Libro de Magia Ancestral**  
3. **Collar de Fuego**  
4. **Armadura de Acero Valyrio**  
5. **Collar de Fuego** (¡de nuevo!)
