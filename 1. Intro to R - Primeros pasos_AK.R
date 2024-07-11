#0. Preparación del entorno

#Instalación de paquetes
install.packages("dplyr")

#Ejecución de paquetes
library(dplyr)

#Búsqueda del actual directorio de trabajo
getwd()

#Establecimiento de un nuevo directorio de trabajo
setwd()

#Ayuda con una función
?setwd

#1. Vectores

my_vector <- c(1,2,5,10,13)

my_vector

#Estadística descriptiva con vectores
mean(my_vector)

median(my_vector)

min(my_vector)

max(my_vector)

var(my_vector)

sd(my_vector)

summary(my_vector)


#2. Data frames

#Creación de vectores
name <- c("Mike Jones", "John Smith", "Sarah Adler")
Gender <- c("M", "M", "F")
Age <- c(47, 38, 52)
Height <-c(5, 9, 5, 7, 5, 4)

#Creación de data frame a partir de vectores
patient_info <- data.frame (name, Gender, Age, Height)

#Uso de vectores dentro de un data frame

mean(patient_info$Age)

#Guardar variables categóricas como 'factor'
patient_info$Gender<-as.factor(patient_info$Gender)

#Creación de un scatter plot básico
plot(patient_info$Age)


#Ejercicio 1 - Gestión básica de datos


#Carga el data frame 'statesdata'
library(datasets)
statesdata<-data.frame(state.x77)
#Calcula los valores de tendencia central y dispersión de la variable 'Illiteracy'
mean(statesdata$Illiteracy)
median(statesdata$Illiteracy)
max(statesdata$Illiteracy)
min(statesdata$Illiteracy)
sd(statesdata$Illiteracy)

#Muestra un resumen del data frame
summary(statesdata)


#Crea un scatter plot contraponiendo las variables 'Illiteracy' y 'Life Exp'
plot(statesdata$'Illiteracy', statesdata$'Life.Exp')


