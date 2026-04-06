Este es un atlas de activación, que nos da un vistazo a los espacios de incrustación de alta dimensión que los modelos de inteligencia artificial modernos usan para organizar y entender el mundo. El primer modelo que vio el mundo de esta manera fue AlexNet, publicado en 2012 en un artículo de ocho páginas que sorprendió a la comunidad de visión por computadora al demostrar que una vieja idea de IA podía funcionar sorprendentemente bien al escalarla.

Los autores de este artículo ampliaron masivamente esta idea para crear ChatGPT. Este video está patrocinado por [nombre del patrocinador]. Si revisas el funcionamiento interno de ChatGPT, no encontrarás signos de "inteligencia". En su lugar, verás capas de bloques de cálculo llamados transformadores, lo que representa la "T" en GPT. Cada transformador realiza operaciones matemáticas sobre una matriz de datos y devuelve otra matriz del mismo tamaño.

Para generar texto, ChatGPT descompone lo que le preguntas en palabras y fragmentos, los convierte en vectores y los organiza en una matriz. Esta matriz pasa por el primer bloque transformador, que devuelve una nueva matriz del mismo tamaño. Este proceso se repite 96 veces en ChatGPT-3.5 y hasta 120 veces en ChatGPT-4.

Lo increíble es que la próxima palabra o fragmento que ChatGPT genera proviene literalmente de la última columna de su matriz final, convertida de vector a texto. Para formular una respuesta completa, ChatGPT agrega palabra por palabra, devolviendo el texto ligeramente extendido a su entrada hasta que aparece un fragmento de "fin".

Entonces, ¿dónde está la inteligencia? ¿Cómo pueden bloques de cálculo aparentemente simples escribir ensayos, traducir idiomas, resumir libros, resolver problemas matemáticos o explicar conceptos complejos?

El artículo de AlexNet fue significativo porque marcó la primera vez que vimos capas de bloques de cálculo aprendiendo a realizar tareas sorprendentes. Fue un punto de inflexión hacia un rendimiento increíble y escalabilidad, alejándonos de la explicabilidad. Mientras que GPT se entrena para predecir la siguiente palabra dado un texto, AlexNet se entrena para predecir etiquetas dadas imágenes.

AlexNet toma imágenes como matrices tridimensionales de valores RGB y genera vectores con probabilidades para clasificar las imágenes en mil categorías, como gatos, tostadoras o portaaviones. Al igual que ChatGPT, AlexNet aprende usando capas de bloques de cálculo, construidas una encima de la otra después de entrenarse con grandes conjuntos de datos.

Lo fascinante de AlexNet es que podemos ver lo que ha aprendido en sus primeras capas. Estas detectan patrones visuales como bordes y colores. Cada una de estas operaciones se realiza aplicando "kernels" (filtros) a las imágenes. Estas capas iniciales construyen activaciones que representan características básicas. En las capas más profundas, estas activaciones se combinan para reconocer conceptos más complejos, como rostros o aviones.

Un descubrimiento interesante fue que AlexNet podía organizar conceptos en un espacio de alta dimensión, llamado "espacio de incrustación", donde imágenes similares están más cerca unas de otras, incluso si sus píxeles son diferentes. Esto también aplica a modelos de lenguaje como GPT, donde las palabras y sus fragmentos se representan como vectores en un espacio con significados similares cercanos.

En 2012, AlexNet ganó un concurso de reconocimiento visual, mostrando que, con suficiente escala en datos y cálculo, se podían obtener resultados revolucionarios. Este principio de "escalar" es la base del desarrollo de modelos actuales como ChatGPT, que tiene más de un billón de parámetros, siendo más de 10,000 veces más grande que AlexNet.

A pesar de estas innovaciones, todavía hay conceptos que estos modelos aprenden y que ni siquiera podemos nombrar. Los atlas de activación, como los que vemos aquí, son hermosas representaciones de cómo los modelos organizan el mundo, pero son solo proyecciones simples de espacios muy complejos.

En el futuro, no sabemos hacia dónde avanzará la IA. Quizás el próximo gran avance esté a unas pocas órdenes de magnitud más de escala, o tal vez una idea olvidada resurja como lo hizo AlexNet en 2012. Lo único seguro es que el camino de la inteligencia artificial seguirá sorprendiéndonos.