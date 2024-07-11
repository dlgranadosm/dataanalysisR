#0.(Instala y) ejecuta las siguientes librerías
library(nortest)



#1. Prueba t dependiente

#Cargamos datos
freshman <- read.table("http://people.sc.fsu.edu/~jburkardt/datasets/triola/freshman_15.csv",
                       header = TRUE, sep = ",",
                       col.names = c("Sex", "SeptWeight", "AprWeight", "SeptBMI", "AprBMI"))                       

shapiro.test(freshman$SeptBMI)
shapiro.test(freshman$AprBMI)

bartlett.test(list(freshman$SeptBMI, freshman$AprBMI))
fligner.test(list(freshman$SeptBMI, freshman$AprBMI)) #En principio, no cumplíamos el supuesto de normalidad

t.test (freshman$SeptBMI, freshman$AprBMI, paired = TRUE)



#Ejercicio 2 - prueba t dependiente
#Cargamos datos
library(readxl)
ELEdatos<-read_excel("ELEdatos.xlsx")

#Comprobamos supuestos de normalidad
library(nortest)
lillie.test(ELEdatos$Puntuacion1)
lillie.test(ELEdatos$Puntuacion2)


#Comprobamos supuestos de homocedasticidad
bartlett.test(list(ELEdatos$Puntuacion1, ELEdatos$Puntuacion2))


#Realizamos t test dependiente
t.test(ELEdatos$Puntuacion1, ELEdatos$Puntuacion2, paired = TRUE)



#2. Prueba t independiente

#Cargamos los datos
ELEdatos2<-read_excel("ELEdatos2.xlsx")
ELEdatos2$Clase<-as.factor(ELEdatos2$Clase)


#Ejercicio 3 - Prueba t independiente

lillie.test(ELEdatos2$Puntuacion)

bartlett.test(ELEdatos2$Puntuacion~ELEdatos2$Clase)
fligner.test(ELEdatos2$Puntuacion~ELEdatos2$Clase)


t.test(ELEdatos2$Puntuacion ~ ELEdatos2$Clase, var.equal = TRUE)
