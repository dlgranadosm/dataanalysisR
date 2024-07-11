#1. Correlación de Pearson
library(nortest)
library(corrplot)

#Correlación entre dos variables (dos vectores en nuestro data frame)

shapiro.test(statesdata$Illiteracy)
shapiro.test(statesdata$Income)

fligner.test(list(statesdata$Illiteracy, statesdata$Income))

cor.test(statesdata$Illiteracy, statesdata$Income) 
#Representación en un gráfico de dispersión
plot(statesdata$Illiteracy, statesdata$Income) 

#Matriz de correlaciones
cor(statesdata)

#Visualizar matriz de correlaciones
corstatesdata<-cor(statesdata)
corrplot(corstatesdata, method="number", type="upper")


#Ejercicio práctico 4

#Revisamos la matriz de correlaciones
cor(statesdata)
corrplot(corstatesdata, method="number", type="upper")

#Realizamos la correlación de Pearson para los dos pares de variables (comprobando supuestos)
shapiro.test(statesdata$Illiteracy)
shapiro.test(statesdata$Murder)
fligner.test(statesdata$Illiteracy, statesdata$Murder)

cor.test(statesdata$Illiteracy, statesdata$Murder)

shapiro.test(statesdata$Life.Exp)
fligner.test(statesdata$Life.Exp, statesdata$Murder)

cor.test(statesdata$Life.Exp, statesdata$Murder)

#Visualizamos las correlaciones en un gráfico de dispersión
plot(statesdata$Illiteracy, statesdata$Murder)
plot(statesdata$Life.Exp, statesdata$Murder)
