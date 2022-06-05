delincuencia <- read.csv("e://7Semestre/ProfChapa/DatosNuevos/DATOSSSSS.csv")

head(delincuencia)

table(delincuencia$Anio_inicio)

plot(table(delincuencia$Anio_inicio))

table(delincuencia$Edad)
plot(table(delincuencia$Edad))

sort(table(delincuencia$Edad))

tabla <- table(delincuencia$Edad, delincuencia$Delito)

plot(tabla)
table(delincuencia$Mes_Hecho)
plot(sort(table(delincuencia$Mes_Hecho)))


table(delincuencia$Anio_Hecho, delincuencia$Mes_Hecho)
plot(table(delincuencia$Anio_Hecho, delincuencia$Mes_Hecho))

table(delincuencia$Delito, delincuencia$HoraHecho)

 sum(delincuencia$Delito == "VIOLACION")
 
 table(delincuencia$Delito=="VIOLACION", delincuencia$AlcaldiaHechos)
 sum(delincuencia$Delito=="VIOLACION", na.rm = TRUE)
soloviolacion <- subset(delincuencia, delincuencia$Delito=="VIOLACION") 
head(soloviolacion)

table(soloviolacion$Mes_Hecho)

plot(table(soloviolacion$Mes_Hecho))



table(delincuencia$Delito)
plot(table(delincuencia$Categoria))


table(delincuencia$Mes_Hecho)
plot(table(delincuencia$Mes_Hecho))

table(delincuencia$TipoPersona)
plot(table(delincuencia$TipoPersona))

table(delincuencia$Sexo, delincuencia$Edad)
plot(table(delincuencia$Sexo,delincuencia$Edad))


table(delincuencia$CalidadJuridica)
plot(table(delincuencia$CalidadJuridica))



soloNINO <- subset(delincuencia, delincuencia$CalidadJuridica=="VICTIMA  NINO")

head(soloNINO)

table(soloNINO$Delito)
plot(table(delincuencia$Sexo,delincuencia$Edad))
plot(table(soloNINO$Delito))

table(soloNINO$Mes_Hecho)

sort(table(delincuencia$HoraHecho))
head(sort(table(delincuencia$HoraHecho)))
tail(sort(table(delincuencia$HoraHecho)))


table(delincuencia$Competencia)
plot(table(delincuencia$Competencia))





sort(table(delincuencia$ColoniaHechos))

head(sort(table(delincuencia$ColoniaHechos)))
tail(sort(table(delincuencia$ColoniaHechos)))

#delitos mas populares
table(delincuencia$Delito)

sort(table(delincuencia$Delito), decreasing=T)

sort(table(delincuencia$Delito), decreasing=T)[1:10]

names(sort(table(delincuencia$Delito), decreasing=T)[1:10])
delitosmaspopulares <- sort(table(delincuencia$Delito), decreasing=T)[1:10]
delincuencia$Delito %in% delitosmaspopulares
length(delitosmaspopulares)

DelitosSexuales <- c("VIOLACION","ABUSO SEXUAL", "ACOSO SEXUAL","ACOSO SEXUAL AGRAVADO EN CONTRA DE MENORES")
head(DelitosSexuales)
table(delincuencia$Edad, DelitosSexuales)

delincuencia$Delito
table(delincuencia$Mes_inicio)
table(delincuencia$Anio_inicio == "2019", delincuencia$Mes_inicio)


sort(table(delincuencia$HoraInicio))
head(sort(table(delincuencia$HoraInicio)))

table(delincuencia$Delito)

sort(table(delincuencia$Delito))
head(sort(table(delincuencia$Delito)))


sort(table(delincuencia$Categoria))
sort(table(delincuencia$Categoria), decreasing=T)[1:5]
names(sort(table(delincuencia$Categoria), decreasing=T)[1:5])

sort(table(delincuencia$Sexo=="Femenino", delincuencia$Edad))


tail(sort(table(delincuencia$AlcaldiaHechos)))

sort(table(delincuencia$ColoniaHechos), decreasing=T)[1:10]
names(sort(table(delincuencia$ColoniaHechos), decreasing=T)[1:10])

