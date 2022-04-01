#RUN THE COMANDOS SCRIPT
source('https://raw.githubusercontent.com/umontano/CBQ_comandos_SPSS_lab_ChyC/main/CBQ_comandosSPSS_lab_CHyC.R')

#SET THE ROW NAMES USIN THE ID COLUM
row.names(scales)  <- raw_information$investigadora
row.names(factors) <- raw_information$investigadora
row.names(items)  <- raw_information$investigadora

#SAVE TO DISK
write.csv(scales, 'CBQ_16DIMENSIONES.csv')
write.csv(factors, 'CBQ_3FACTORES.csv')

#################################################################
