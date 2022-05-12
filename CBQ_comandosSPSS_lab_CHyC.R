#LOAD DATA
#raw_information <- read.csv('https://raw.githubusercontent.com/Laboratorio-CHyC/Temperament/main/cbqLab_serrano2022.csv' , header=TRUE )

#TRANSLATE IVESTIG INTO IDENTIFICADOR
names(raw_information) <- gsub('investigadora', 'identificador', names(raw_information), perl=TRUE)

#CREATE DATAFRAMES
scales  <- data.frame(matrix(ncol = 0, nrow = length(raw_information$cbq1)))
factors <- data.frame(matrix(ncol = 0, nrow = length(raw_information$cbq1)))
items  <- data.frame(lapply( raw_information[, grep('^cbq\\d', names(raw_information)) ] , as.numeric))
calif  <- raw_information[, !grepl('^cbq\\d{1,3}', names(raw_information), perl=TRUE) ]
    # NOTE, CBQ ITEMS ARE COLUMNS 5:199

#REMOVE LESS THAN 1 AND ABOVE 7
items[items<1 | items>7] <- NA

#SET THE ROW NAMES USING THE ID COLUMN
row.names(scales)  <- raw_information$identificador
row.names(factors) <- raw_information$identificador
row.names(items) <- raw_information$identificador
row.names(calif) <- raw_information$identificador


#################################################################

#CALCULATE REVERSED QUESTIONS
attach(items)
items$cbq41r <- 8-cbq41
items$cbq88r <- 8-cbq88
items$cbq102r <- 8-cbq102
items$cbq123r <- 8-cbq123
items$cbq126r <- 8-cbq126
items$cbq145r <- 8-cbq145
items$cbq192r <- 8-cbq192
items$cbq19r <- 8-cbq19
items$cbq120r <- 8-cbq120
items$cbq156r <- 8-cbq156
items$cbq131r <- 8-cbq131
items$cbq175r <- 8-cbq175
items$cbq188r <- 8-cbq188
items$cbq191r <- 8-cbq191
items$cbq38r <- 8-cbq38
items$cbq47r <- 8-cbq47
items$cbq171r <- 8-cbq171
items$cbq195r <- 8-cbq195
items$cbq6r <- 8-cbq6
items$cbq95r <- 8-cbq95
items$cbq184r <- 8-cbq184
items$cbq5r <- 8-cbq5
items$cbq101r <- 8-cbq101
items$cbq190r <- 8-cbq190
items$cbq14r <- 8-cbq14
items$cbq53r <- 8-cbq53
items$cbq68r <- 8-cbq68
items$cbq150r <- 8-cbq150
items$cbq167r <- 8-cbq167
items$cbq15r <- 8-cbq15
items$cbq58r <- 8-cbq58
items$cbq70r <- 8-cbq70
items$cbq138r <- 8-cbq138
items$cbq161r <- 8-cbq161
items$cbq176r <- 8-cbq176
items$cbq30r <- 8-cbq30
items$cbq51r <- 8-cbq51
items$cbq60r <- 8-cbq60
items$cbq159r <- 8-cbq159
items$cbq71r <- 8-cbq71
items$cbq79r <- 8-cbq79
items$cbq90r <- 8-cbq90
items$cbq137r <- 8-cbq137
items$cbq169r <- 8-cbq169
items$cbq183r <- 8-cbq183
items$cbq32r <- 8-cbq32
items$cbq93r <- 8-cbq93
items$cbq108r <- 8-cbq108
items$cbq162r <- 8-cbq162
items$cbq12r <- 8-cbq12
items$cbq66r <- 8-cbq66
items$cbq86r <- 8-cbq86
items$cbq111r <- 8-cbq111
items$cbq28r <- 8-cbq28
items$cbq83r <- 8-cbq83
items$cbq122r <- 8-cbq122
items$cbq142r <- 8-cbq142
items$cbq170r <- 8-cbq170
items$cbq72r <- 8-cbq72
items$cbq109r <- 8-cbq109
items$cbq112r <- 8-cbq112
items$cbq149r <- 8-cbq149
items$cbq17r <- 8-cbq17
items$cbq23r <- 8-cbq23
items$cbq45r <- 8-cbq45
items$cbq57r <- 8-cbq57
items$cbq119r <- 8-cbq119
items$cbq129r <- 8-cbq129
items$cbq158r <- 8-cbq158
items$cbq43r <- 8-cbq43
items$cbq99r <- 8-cbq99
items$cbq84r <- 8-cbq84
items$cbq121r <- 8-cbq121
items$cbq135r <- 8-cbq135
items$cbq165r <- 8-cbq165
detach(items)


#CALCULATE DIMENSIONS
attach(items)
scales$act <- rowMeans(data.frame(cbq1, cbq25, cbq41r, cbq48, cbq88r, cbq102r, cbq123r, cbq126r, cbq145r, cbq153, cbq172, cbq187, cbq192r) , na.rm=TRUE )
scales$fru <- rowMeans(data.frame(cbq2, cbq19r, cbq34, cbq62, cbq73, cbq78, cbq120r, cbq128, cbq140, cbq156r, cbq173, cbq181, cbq193) , na.rm=TRUE )
scales$app <- rowMeans(data.frame(cbq10, cbq24, cbq35, cbq69, cbq82, cbq96, cbq117, cbq131r, cbq148, cbq166, cbq175r, cbq188r, cbq191r) , na.rm=TRUE )
scales$attfoc <- rowMeans(data.frame(cbq16, cbq38r, cbq47r, cbq125, cbq144, cbq160, cbq171r, cbq186, cbq195r) , na.rm=TRUE )
scales$attshi <- rowMeans(data.frame(cbq6r, cbq29, cbq95r, cbq180, cbq184r) , na.rm=TRUE )
#suma de las dos atenciones anteriores
scales$attcon <- rowMeans(data.frame(cbq16, cbq38r, cbq47r, cbq125, cbq144, cbq160, cbq171r, cbq186, cbq195r, cbq6r, cbq29, cbq95r, cbq180, cbq184r) , na.rm=TRUE ) 
scales$dis <- rowMeans(data.frame(cbq5r, cbq21, cbq61, cbq87, cbq97, cbq101r, cbq115, cbq132, cbq141, cbq157, cbq178, cbq190r) , na.rm=TRUE )
scales$sth <- rowMeans(data.frame(cbq14r, cbq27, cbq42, cbq53r, cbq68r, cbq85, cbq92, cbq103, cbq118, cbq134, cbq150r, cbq167r, cbq177) , na.rm=TRUE )
scales$fea <- rowMeans(data.frame(cbq15r, cbq40, cbq50, cbq58r, cbq70r, cbq80, cbq91, cbq130, cbq138r, cbq161r, cbq176r, cbq189) , na.rm=TRUE )
scales$hip <- rowMeans(data.frame(cbq8, cbq22, cbq30r, cbq51r, cbq60r, cbq67, cbq77, cbq100, cbq107, cbq124, cbq139, cbq159r, cbq182) , na.rm=TRUE )
scales$imp <- rowMeans(data.frame(cbq13, cbq26, cbq46, cbq59, cbq71r, cbq79r, cbq90r, cbq104, cbq114, cbq137r, cbq155, cbq169r, cbq183r) , na.rm=TRUE )
scales$inh <- rowMeans(data.frame(cbq4, cbq20, cbq32r, cbq63, cbq75, cbq93r, cbq108r, cbq116, cbq136, cbq147, cbq162r, cbq168, cbq185) , na.rm=TRUE )
scales$lip <- rowMeans(data.frame(cbq12r, cbq36, cbq54, cbq66r, cbq76, cbq86r, cbq111r, cbq113, cbq133, cbq146, cbq151, cbq164, cbq174) , na.rm=TRUE )
scales$per <- rowMeans(data.frame(cbq9, cbq28r, cbq31, cbq52, cbq65, cbq84r, cbq98, cbq105, cbq122r, cbq142r, cbq154, cbq170r) , na.rm=TRUE )
scales$sad <- rowMeans(data.frame(cbq18, cbq39, cbq44, cbq55, cbq64, cbq72r, cbq81, cbq94, cbq109r, cbq112r, cbq127, cbq149r) , na.rm=TRUE )
scales$shy <- rowMeans(data.frame(cbq7, cbq17r, cbq23r, cbq37, cbq45r, cbq57r, cbq74, cbq89, cbq106, cbq119r, cbq129r, cbq143, cbq158r) , na.rm=TRUE )
scales$smi <- rowMeans(data.frame(cbq11, cbq43r, cbq56, cbq83r, cbq99r, cbq110, cbq121r, cbq135r, cbq152, cbq163, cbq165r, cbq179, cbq194) , na.rm=TRUE )
detach(items)
##CALCULA 3 FACTORES, CE, AN, Y SURG  
attach(scales)
factors$CE <- rowMeans(data.frame(attcon, lip,inh, per, attfoc, attshi) , na.rm=TRUE )
factors$AN <- rowMeans(data.frame(sad, dis, fru, fea, sth) , na.rm=TRUE )
factors$SURG <- rowMeans(data.frame(shy, app, imp, hip, smi, act) , na.rm=TRUE )
detach(scales)

##################################
#PERFILES
attach(factors)
cem  <- median(CE)
anm  <- median(AN)
factors$perfil[CE >= cem & AN <  anm] <- 'easy'
factors$perfil[CE >= cem & AN >= anm] <- 'intense'
factors$perfil[CE <  cem & AN <  anm] <- 'disengaged'
factors$perfil[CE <  cem & AN >= anm] <- 'risky'
detach(factors)
factors$perfil  <- as.factor(factors$perfil)


#QUITA LAS VARIABLES DE ATENCION -ATTFOC -ATTSHI
dimensions_noextras_att <- scales[, !grepl('(attfoc|attshi)', names(scales), perl=TRUE)]

#SAVE TO DISK
write.csv(scales, 'xCBQ_16DIMENSIONES.csv', row.names=TRUE)
write.csv(factors, 'xCBQ_3FACTORES.csv', row.names=TRUE)
write.csv(calif, 'xCBQ_CALIFICACION_Y_DEMAS.csv', row.names=TRUE)
write.csv(dimensions_noextras_att,'xCBQ_DIMENSIONES_SIN_ATTFOC_ATTSHI.csv', row.names=TRUE)


