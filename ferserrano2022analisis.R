#library(Hmisc)

#xxxxbbbbxxxx
#LOAD DATA
raven <- read.csv('https://raw.githubusercontent.com/Laboratorio-CHyC/Temperament/main/ferserrano2022_raven.csv', header=TRUE)

#raw_information <- read.csv('https://raw.githubusercontent.com/Laboratorio-CHyC/Temperament/main/ferserrano2022_cbq.csv', header=TRUE)

#CORRE EL SCRIPT con datos 
source('https://raw.githubusercontent.com/umontano/CBQ_comandos_SPSS_lab_ChyC/main/CBQ_comandosSPSS_lab_CHyC.R')
cbq(mfs)

analysis_raven_temperament <- function(analizee_dataset) {
raven$numero <- gsub('.*(\\d{4})\\s*$', '\\1', raven$identificador, perl=TRUE) 

analizee_dataset$numero <- gsub('.*(\\d{4})\\s*$', '\\1', row.names(analizee_dataset), perl=TRUE) 

mergedraven <- merge(analizee_dataset, raven, by='numero')
mergedraven$altos[mergedraven$puntaje >= median(mergedraven$puntaje)] <- 1
mergedraven$altos[mergedraven$puntaje < median(mergedraven$puntaje)] <- 0

temperament_numeric <- mergedraven[, names(analizee_dataset)]
raven_numeric <- mergedraven[, names(raven)]
raven_numeric[] <- lapply(raven_numeric, as.numeric)
temperament_numeric[] <- lapply(temperament_numeric, as.numeric)
mergednumeric <- data.frame(lapply(mergedraven, as.numeric))
raven_numeric <- raven_numeric[ , c('columna_a', 'columna_ab', 'columna_b', 'puntaje', 'dx')]
#print(cor(temperament_numeric, raven_numeric), digits=1)

library(Hmisc)
#rcorr(as.matrix(df1),type="pearson")
print(rcorr(as.matrix(data.frame(temperament_numeric, raven_numeric)), type='pearson'))

}


exploratory_regressions <- function(merged_dataset) {
summary(lm(CE ~ dx , data=mergedraven))
summary(lm(AN ~ dx , data=mergedraven))
summary(lm(SURG ~ dx , data=mergedraven))
summary(lm(CE ~ puntaje , data=mergedraven))
summary(lm(AN ~ puntaje , data=mergedraven))
summary(lm(SURG ~ puntaje , data=mergedraven))
summary(lm(puntaje ~ perfil , data=mergedraven))
summary(lm(puntaje ~ CE + AN + SURG , data=mergedraven))
summary(lm(columna_a ~ CE + AN + SURG , data=mergedraven))
summary(lm(columna_b ~ CE + AN + SURG , data=mergedraven))
summary(lm(columna_ab ~ CE + AN + SURG , data=mergedraven))

summary(lm(columna_b ~ SURG * AN , data=mergedraven))
summary(lm(CE ~ rango , data=mergedraven))
summary(lm(SURG ~ rango , data=mergedraven))
summary(lm(CE ~ percentil , data=mergedraven))
summary(lm(AN ~ percentil , data=mergedraven))
summary(lm(SURG ~ percentil , data=mergedraven))


summary(lm(rango ~ AN + SURG , data=mergedraven))
summary(lm(percentil ~ AN + SURG , data=mergedraven))
summary(glm(altos ~ AN + SURG , data=mergedraven,family=binomial))
summary(lm(CE ~ altos , data=mergedraven))
summary(lm(AN ~ altos , data=mergedraven))
summary(lm(SURG ~ altos , data=mergedraven))

summary(lm(dx ~ CE + AN + SURG , data=mergednumeric))
summary(lm(dx ~ AN + SURG , data=mergednumeric))
summary(lm(dx ~ AN, data=mergednumeric))
summary(lm(dx ~ SURG , data=mergednumeric))
summary(lm(AN ~ dx , data=mergedraven))
#------------------------------------------------------------
#Resultados Significativos
summary(lm(columna_b ~ SURG , data=mergedraven))
summary(lm(columna_b ~ SURG + AN , data=mergedraven))
summary(lm(columna_b ~ SURG + CE , data=mergedraven))
summary(lm(AN ~ rango , data=mergedraven))
summary(lm(dx ~ AN, data=mergednumeric))

cor(temperament_numeric, raven_numeric)
}

analysis_raven_temperament(scales)
analysis_raven_temperament(factors[ , 1:3])
#xxxxeeeexxxx
