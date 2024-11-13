##### Mishell Cabrera #####
## Practicas de Econometría en RStudio ##
## Clase #1 ##


##### Operaciones aritmeticas 
# Suma
3 + 5

# Resta
10 - 4


# Multiplicación
7 * 6

# División
20 / 4

# Exponenciación
2^3

#Creacion de Variables 
# Asignando valores a variables
estudiante <- "Juan"
estudiante
dinero <- 50.5
dinero
año <- 2023
año

# Imprimir valores de las variables
print(estudiante)
print(dinero)
print(año)

### Tipos de datos
# Numérico
cantidad <- 100.5

# Caracter
nombre <- "Ana"

# Lógico
aprobado <- TRUE

##### Creación de vectores 

# Crear vectores de nombres, dinero y años
nombres <- c("Juan", "Ana", "Luis", "Carla", "Sofia")
dinero <- c(50, 60, 55, 45, 70)
año <- c(2001, 2002, 2003, 2004, 2005)

# Imprimir los vectores
print(nombres)
print(dinero)
print(año)

#Funciones basicas 

# Longitud del vector de dinero
length(dinero)

# Suma total de dinero
sum(dinero)

# Promedio de dinero
mean(dinero)

#Tipo de datos 
str(año)
#minimo
min(dinero)
#maximo
max(dinero)


#### Creacion de una matriz 
# Crear una matriz combinando los vectores de dinero y años
matriz <- cbind(dinero, año)

# Imprimir la matriz
print(matriz)

#Como acceder a los elementos de la matriz 
# Acceder a la primera columna (dinero)
matriz[, 1]

# Acceder a la primera fila
matriz[1, ]

# Acceder a un elemento específico (primer valor de dinero en 2001)
matriz[1, 1]

#### Creacion de Data Frame 
# Crear un data frame con nombres, dinero y años
estudiantes_df = data.frame(Nombre = nombres, Dinero = dinero, Año = año)
View(estudiantes_df)

# Imprimir el data frame
print(estudiantes_df)

#Manipulacion de datos en dataframe 
# Acceder a la columna de nombres
estudiantes_df$Nombre

# Añadir una nueva columna (por ejemplo, Notas)
estudiantes_df$Notas <- c(85, 90, 88, 92, 87)

# Imprimir el data frame actualizado
print(estudiantes_df)

#Utilizacion de Funciones summary y plot 
# Resumen del data frame
summary(estudiantes_df)

# Gráfica de Dinero vs. Año
plot(estudiantes_df$Año, estudiantes_df$Dinero, type = "l", col = "red", xlab = "Año", ylab = "Dinero")

#Los valores posibles para type son:

#"p": Solo puntos (por defecto).
#"l": Solo líneas.
#"b": Both (líneas y puntos juntos), es decir, combina líneas y puntos en la misma gráfica.
#"o": Overplotted (líneas y puntos juntos, pero con los puntos superpuestos en las líneas).
#"h": Histograma, dibuja líneas verticales desde cada punto hasta el eje.
#"s": Step, forma una gráfica escalonada.
#"n": Ninguno, no dibuja puntos ni líneas, pero establece el área de la gráfica.

#col = "blue" hace que el gráfico sea de color azul.
#xlab = "Año" etiqueta el eje x como "Año".
#ylab = "Dinero en USD" etiqueta el eje y como "Dinero en USD".

# Instalación y carga de librerías
install.packages("dplyr")
#llamar a la libreria 
library(dplyr)
#tener en cuenta que al utilizar una funcion que se encuentra dentro de la libreria siempre hay que llamarla 

### Importar datos desde archivo excel y csv 
# Importar desde CSV

library(readr)
datos_estudiantes1 <- read_csv("~/Desktop/Datos Econometria/datos_estudiantes.csv")
View(datos_estudiantes)

# Importar desde Excel (requiere el paquete 'readxl')
library(readxl)
datos_estudiantes2 <- read_excel("~/Desktop/Datos Econometria/datos_estudiantes.xlsx")
View(datos_estudiantes)


#Exploracion de datos y Manejo de datos nulos 
# Exploración de datos
summary(datos_estudiantes1)

# Comprobar valores nulos
is.na(datos_estudiantes2)

# Eliminar filas con valores nulos
datos_sin_na <- na.omit(datos_estudiantes1)



