#LOAD DATA
raw_information <- read.csv('https://raw.githubusercontent.com/Laboratorio-CHyC/Temperament/main/cbqLab_serrano2022.csv' , header=TRUE )

#CREATE DATAFRAMES
scales  <- data.frame(matrix(ncol = 0, nrow = length(raw_information$cbq1)))
factors <- data.frame(matrix(ncol = 0, nrow = length(raw_information$cbq1)))
items  <- data.frame(lapply( raw_information[, grep('^cbq\\d', names(raw_information)) ] , as.numeric))
calif  <- raw_information[, !grepl('^cbq\\d{1,3}', names(raw_information), perl=TRUE) ]
    # NOTE, CBQ ITEMS ARE COLUMNS 5:199


#SET THE ROW NAMES USING THE ID COLUM
row.names(scales)  <- raw_information$investigadora
row.names(factors) <- raw_information$investigadora
row.names(items) <- raw_information$investigadora
row.names(calif) <- raw_information$investigadora


#################################################################

#CALCULATE REVERSED QUESTIONS


#CALCULATE DIMENSIONS
attach(items)
scales$act <- rowMeans(data.frame(cbq1, cbq25, cbq41, cbq48, cbq88, cbq102, cbq123, cbq126, cbq145, cbq153, cbq172, cbq187, cbq192) , na.rm=TRUE )
scales$fru <- rowMeans(data.frame(cbq2, cbq19, cbq34, cbq62, cbq73, cbq78, cbq120, cbq128, cbq140, cbq156, cbq173, cbq181, cbq193) , na.rm=TRUE )
scales$app <- rowMeans(data.frame(cbq10, cbq24, cbq35, cbq69, cbq82, cbq96, cbq117, cbq131, cbq148, cbq166, cbq175, cbq188, cbq191) , na.rm=TRUE )
scales$attfoc <- rowMeans(data.frame(cbq16, cbq38, cbq47, cbq125, cbq144, cbq160, cbq171, cbq186, cbq195) , na.rm=TRUE )
scales$attshi <- rowMeans(data.frame(cbq6, cbq29, cbq95, cbq180, cbq184) , na.rm=TRUE )
#suma de las dos atenciones anteriores
scales$attcon <- rowMeans(data.frame(cbq16, cbq38, cbq47, cbq125, cbq144, cbq160, cbq171, cbq186, cbq195, cbq6, cbq29, cbq95, cbq180, cbq184) , na.rm=TRUE ) 
scales$dis <- rowMeans(data.frame(cbq5, cbq21, cbq61, cbq87, cbq97, cbq101, cbq115, cbq132, cbq141, cbq157, cbq178, cbq190) , na.rm=TRUE )
scales$sth <- rowMeans(data.frame(cbq14, cbq27, cbq42, cbq53, cbq68, cbq85, cbq92, cbq103, cbq118, cbq134, cbq150, cbq167, cbq177) , na.rm=TRUE )
scales$fea <- rowMeans(data.frame(cbq15, cbq40, cbq50, cbq58, cbq70, cbq80, cbq91, cbq130, cbq138, cbq161, cbq176, cbq189) , na.rm=TRUE )
scales$hip <- rowMeans(data.frame(cbq8, cbq22, cbq30, cbq51, cbq60, cbq67, cbq77, cbq100, cbq107, cbq124, cbq139, cbq159, cbq182) , na.rm=TRUE )
scales$imp <- rowMeans(data.frame(cbq13, cbq26, cbq46, cbq59, cbq71, cbq79, cbq90, cbq104, cbq114, cbq137, cbq155, cbq169, cbq183) , na.rm=TRUE )
scales$inh <- rowMeans(data.frame(cbq4, cbq20, cbq32, cbq63, cbq75, cbq93, cbq108, cbq116, cbq136, cbq147, cbq162, cbq168, cbq185) , na.rm=TRUE )
scales$lip <- rowMeans(data.frame(cbq12, cbq36, cbq54, cbq66, cbq76, cbq86, cbq111, cbq113, cbq133, cbq146, cbq151, cbq164, cbq174) , na.rm=TRUE )
scales$per <- rowMeans(data.frame(cbq9, cbq28, cbq31, cbq52, cbq65, cbq84, cbq98, cbq105, cbq122, cbq142, cbq154, cbq170) , na.rm=TRUE )
scales$sad <- rowMeans(data.frame(cbq18, cbq39, cbq44, cbq55, cbq64, cbq72, cbq81, cbq94, cbq109, cbq112, cbq127, cbq149) , na.rm=TRUE )
scales$shy <- rowMeans(data.frame(cbq7, cbq17, cbq23, cbq37, cbq45, cbq57, cbq74, cbq89, cbq106, cbq119, cbq129, cbq143, cbq158) , na.rm=TRUE )
scales$smi <- rowMeans(data.frame(cbq11, cbq43, cbq56, cbq83, cbq99, cbq110, cbq121, cbq135, cbq152, cbq163, cbq165, cbq179, cbq194) , na.rm=TRUE )
detach(items)


##################################
##################################
##COMANDOS PARA CALCULAR LOS 3 FACTORES, CE, AN, Y SURG  
##
attach(scales)
factors$CE <- rowMeans(data.frame(attcon, lip,inh, per, attfoc, attshi) , na.rm=TRUE )
factors$AN <- rowMeans(data.frame(sad, dis, fru, fea, sth) , na.rm=TRUE )
factors$SURG <- rowMeans(data.frame(shy, app, imp, hip, smi, act) , na.rm=TRUE )
detach(scales)

#PERFILES/PROFILES
attach(factors)
cem  <- median(CE)
anm  <- median(AN)
factors$profile[CE >= cem & AN <  anm] <- 'easy'
factors$profile[CE >= cem & AN >= anm] <- 'beta'
factors$profile[CE <  cem & AN <  anm] <- 'gamma'
factors$profile[CE <  cem & AN >= anm] <- 'risky'
detach(factors)

factors$profile  <- as.factor(factors$profile)



#SAVE TO DISK
write.csv(scales, 'xCBQ_16DIMENSIONES.csv', row.names=TRUE)
write.csv(factors, 'xCBQ_3FACTORES.csv', row.names=TRUE)
write.csv(calif, 'xCBQ_CALIFICACION_Y_DEMAS.csv', row.names=TRUE)

