# Propiedades de los Flexbox 

Flex-flow
Simplemente es un atajo para poner de una sola vez flex-direction y flex-wrap. El valor predeterminado es row nowrap


.flex-container {
 display: flex;
 flex-flow: row wrap;
 }
## Justify-content
Para situar los márgenes y justificados de los ítems es una propiedad muy práctica. Bien puedes justificarlos al inicio del eje o al final, colocar un espacio entre ellos o entre ellos y los bordes.

Estos son sus posibles valores:

- flex-start: A partir del inicio del eje principal añadimos los elementos.
- flex-end: Se añaden a partir del final del eje principal.
- center: centramos los elementos respecto al eje principal.
- space-between: La distribución entre los elementos será proporcional y los ítems de los extremos se ubicarán en el borde del contenedor.
- space-around: como el anterior pero dejando espacio entre los bordes y los ítems de los extremos.
Partmios de este sencillo HTML, que ya vimos en Repasamos las propiedades que podemos aplicar en los contenedores Flexbox (I), para conseguir el efecto de la imagen de abajo.

div class="flex-container"> 
"<"div class="item">1"<"/div> 
"<"div class="item">2"<"/div> 
"<"div class="item">3"<"/div>
"<"div class="item">4"<"/div>
"<"/div> 
![Image text](https://www.arsys.es/blog/file/uploads/2017/09/flex4.jpg)

## Align-items
Muestra similitudes con justify-content, pero su alineación es sobre el eje secundario. Es decir, la propiedad align-items nos ofrece un alineamiento vertical. A continuación, una descripción de sus posibles valores.

- flex-start: el posicionamiento será al principio del eje secundario.
- flex-end: el posicionamiento será al final del eje secundario.
- center: se centran respecto al eje secundario.
- stretch: llenará el total del eje secundario.
- baseline: se posicionará teniendo en cuenta el texto que hay dentro.

En la imagen siguiente podéis observar esto con detalle:
![Image text](https://www.arsys.es/blog/file/uploads/2017/09/flex5.jpg)


## Align-content
Aplicaremos esta propiedad cuando tengamos varias filas de elementos dentro del contenedor Flexbox y obtendremos una alineación y separación respecto al eje secundario. El efecto será similar al de align-items, pero indicando la colocación de todas las filas y definiendo la separación entre los ítems.

- flex-start: pegadas entre sí las filas y al inicio del eje secundario.
- flex-end: pegadas entre sí las filas y al final del eje secundario.
- center: centrado respecto al eje secundario.
- stretch: Ocupará todo el espacio disponible.
- space-between: lashttps://www.arsys.es/blog/file/uploads/2017/09/flex6.jpg filas se separan entre ellas y dejan un espacio proporcional.
- space-around: las filas se separan y dejan un espacio proporcional entre ellas, incluido el borde.
Quedaría así:
![Image text](https://www.arsys.es/blog/file/uploads/2017/09/flex6.jpg)
