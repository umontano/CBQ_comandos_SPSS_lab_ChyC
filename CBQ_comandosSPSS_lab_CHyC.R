create_datasets <- function(questionnaire_dataset_file)
{
#LOAD DATA
raw_information <<- read.csv(questionnaire_dataset_file , header=TRUE )

#TRANSLATE IVESTIG INTO IDENTIFICADOR
names(raw_information) <<- gsub('investigadora', 'identificador', names(raw_information), perl=TRUE)

#CREATE DATAFRAMES
cbqee_items_dataset  <<- data.frame(lapply( raw_information[, grep('^cbq\\d', names(raw_information)) ] , as.numeric))
others_calif  <<- raw_information[, !grepl('^cbq\\d{1,3}', names(raw_information), perl=TRUE) ]
    # NOTE, CBQ ITEMS ARE COLUMNS 5:199

#REMOVE UNUSED ITEMS 3, 33, 49
unused_cbqee_items_dataset <<- c('cbq3', 'cbq33', 'cbq49')
cbqee_items_dataset <<- cbqee_items_dataset[, !names(cbqee_items_dataset) %in% unused_cbqee_items_dataset]
#REMOVE LESS THAN 1 AND ABOVE 7
cbqee_items_dataset[cbqee_items_dataset<1 | cbqee_items_dataset>7] <<- NA
#SET THE ROW NAMES USING THE ID COLUMN
row.names(cbqee_items_dataset) <<- raw_information$identificador
row.names(others_calif) <<- raw_information$identificador
## SAVE
write.csv(others_calif, 'xCBQ_OTROS_DATOS.csv', row.names=TRUE)
}


#IMPUTE MISSING VALUES IN ANY DATASET
impute_any_dataset_mice <- function(imputee_dataset, maximum_iterations=50, number_of_imputations=5, method_string='sample', ridge_decimal=0.001)
{
    library(mice)
    temp_data <- mice(imputee_dataset, m=number_of_imputations, maxit=maximum_iterations, seed=500, method=method_string, ridge=ridge_decimal)
    return(complete(temp_data, 1))
}

#ITEMS ARE IMPUTED WITH MICE
mice_imputation_cbqee_items_dataset <- function(maximum_iterations, number_of_imputations) {
cbqee_items_dataset <<- impute_any_dataset_mice(cbqee_items_dataset, maximum_iterations, number_of_imputations)

#SET THE ROW NAMES USING THE ID COLUMN
row.names(fifteen_scales_dataset)  <<- raw_information$identificador
row.names(three_factors_dataset) <<- raw_information$identificador
row.names(cbqee_items_dataset) <<- raw_information$identificador
row.names(others_calif) <<- raw_information$identificador

#SAVE TO DISK
date_time <<- format(Sys.time(), 'x%y%m%d_%Hh%Mm%Ss_')
file_name_cbqee_items_dataset <<- paste0('xCBQ_IMPUTED_ITEMS', date_time, '.csv')
write.csv(cbqee_items_dataset, file_name_cbqee_items_dataset, row.names=TRUE)
}



#==========================================
#==========================================
generate_unreversed_cbqee_items_dataset  <- function(cbqee_items_dataset)
{
cbqee_items_dataset$cbq41 <- 8-cbqee_items_dataset$cbq41
cbqee_items_dataset$cbq88 <- 8-cbqee_items_dataset$cbq88
cbqee_items_dataset$cbq102 <- 8-cbqee_items_dataset$cbq102
cbqee_items_dataset$cbq123 <- 8-cbqee_items_dataset$cbq123
cbqee_items_dataset$cbq126 <- 8-cbqee_items_dataset$cbq126
cbqee_items_dataset$cbq145 <- 8-cbqee_items_dataset$cbq145
cbqee_items_dataset$cbq192 <- 8-cbqee_items_dataset$cbq192
cbqee_items_dataset$cbq19 <- 8-cbqee_items_dataset$cbq19
cbqee_items_dataset$cbq120 <- 8-cbqee_items_dataset$cbq120
cbqee_items_dataset$cbq156 <- 8-cbqee_items_dataset$cbq156
cbqee_items_dataset$cbq131 <- 8-cbqee_items_dataset$cbq131
cbqee_items_dataset$cbq175 <- 8-cbqee_items_dataset$cbq175
cbqee_items_dataset$cbq188 <- 8-cbqee_items_dataset$cbq188
cbqee_items_dataset$cbq191 <- 8-cbqee_items_dataset$cbq191
cbqee_items_dataset$cbq38 <- 8-cbqee_items_dataset$cbq38
cbqee_items_dataset$cbq47 <- 8-cbqee_items_dataset$cbq47
cbqee_items_dataset$cbq171 <- 8-cbqee_items_dataset$cbq171
cbqee_items_dataset$cbq195 <- 8-cbqee_items_dataset$cbq195
cbqee_items_dataset$cbq6 <- 8-cbqee_items_dataset$cbq6
cbqee_items_dataset$cbq95 <- 8-cbqee_items_dataset$cbq95
cbqee_items_dataset$cbq184 <- 8-cbqee_items_dataset$cbq184
cbqee_items_dataset$cbq5 <- 8-cbqee_items_dataset$cbq5
cbqee_items_dataset$cbq101 <- 8-cbqee_items_dataset$cbq101
cbqee_items_dataset$cbq190 <- 8-cbqee_items_dataset$cbq190
cbqee_items_dataset$cbq14 <- 8-cbqee_items_dataset$cbq14
cbqee_items_dataset$cbq53 <- 8-cbqee_items_dataset$cbq53
cbqee_items_dataset$cbq68 <- 8-cbqee_items_dataset$cbq68
cbqee_items_dataset$cbq150 <- 8-cbqee_items_dataset$cbq150
cbqee_items_dataset$cbq167 <- 8-cbqee_items_dataset$cbq167
cbqee_items_dataset$cbq15 <- 8-cbqee_items_dataset$cbq15
cbqee_items_dataset$cbq58 <- 8-cbqee_items_dataset$cbq58
cbqee_items_dataset$cbq70 <- 8-cbqee_items_dataset$cbq70
cbqee_items_dataset$cbq138 <- 8-cbqee_items_dataset$cbq138
cbqee_items_dataset$cbq161 <- 8-cbqee_items_dataset$cbq161
cbqee_items_dataset$cbq176 <- 8-cbqee_items_dataset$cbq176
cbqee_items_dataset$cbq30 <- 8-cbqee_items_dataset$cbq30
cbqee_items_dataset$cbq51 <- 8-cbqee_items_dataset$cbq51
cbqee_items_dataset$cbq60 <- 8-cbqee_items_dataset$cbq60
cbqee_items_dataset$cbq159 <- 8-cbqee_items_dataset$cbq159
cbqee_items_dataset$cbq71 <- 8-cbqee_items_dataset$cbq71
cbqee_items_dataset$cbq79 <- 8-cbqee_items_dataset$cbq79
cbqee_items_dataset$cbq90 <- 8-cbqee_items_dataset$cbq90
cbqee_items_dataset$cbq137 <- 8-cbqee_items_dataset$cbq137
cbqee_items_dataset$cbq169 <- 8-cbqee_items_dataset$cbq169
cbqee_items_dataset$cbq183 <- 8-cbqee_items_dataset$cbq183
cbqee_items_dataset$cbq32 <- 8-cbqee_items_dataset$cbq32
cbqee_items_dataset$cbq93 <- 8-cbqee_items_dataset$cbq93
cbqee_items_dataset$cbq108 <- 8-cbqee_items_dataset$cbq108
cbqee_items_dataset$cbq162 <- 8-cbqee_items_dataset$cbq162
cbqee_items_dataset$cbq12 <- 8-cbqee_items_dataset$cbq12
cbqee_items_dataset$cbq66 <- 8-cbqee_items_dataset$cbq66
cbqee_items_dataset$cbq86 <- 8-cbqee_items_dataset$cbq86
cbqee_items_dataset$cbq111 <- 8-cbqee_items_dataset$cbq111
cbqee_items_dataset$cbq28 <- 8-cbqee_items_dataset$cbq28
cbqee_items_dataset$cbq83 <- 8-cbqee_items_dataset$cbq83
cbqee_items_dataset$cbq122 <- 8-cbqee_items_dataset$cbq122
cbqee_items_dataset$cbq142 <- 8-cbqee_items_dataset$cbq142
cbqee_items_dataset$cbq170 <- 8-cbqee_items_dataset$cbq170
cbqee_items_dataset$cbq72 <- 8-cbqee_items_dataset$cbq72
cbqee_items_dataset$cbq109 <- 8-cbqee_items_dataset$cbq109
cbqee_items_dataset$cbq112 <- 8-cbqee_items_dataset$cbq112
cbqee_items_dataset$cbq149 <- 8-cbqee_items_dataset$cbq149
cbqee_items_dataset$cbq17 <- 8-cbqee_items_dataset$cbq17
cbqee_items_dataset$cbq23 <- 8-cbqee_items_dataset$cbq23
cbqee_items_dataset$cbq45 <- 8-cbqee_items_dataset$cbq45
cbqee_items_dataset$cbq57 <- 8-cbqee_items_dataset$cbq57
cbqee_items_dataset$cbq119 <- 8-cbqee_items_dataset$cbq119
cbqee_items_dataset$cbq129 <- 8-cbqee_items_dataset$cbq129
cbqee_items_dataset$cbq158 <- 8-cbqee_items_dataset$cbq158
cbqee_items_dataset$cbq43 <- 8-cbqee_items_dataset$cbq43
cbqee_items_dataset$cbq99 <- 8-cbqee_items_dataset$cbq99
cbqee_items_dataset$cbq84 <- 8-cbqee_items_dataset$cbq84
cbqee_items_dataset$cbq121 <- 8-cbqee_items_dataset$cbq121
cbqee_items_dataset$cbq135 <- 8-cbqee_items_dataset$cbq135
cbqee_items_dataset$cbq165 <- 8-cbqee_items_dataset$cbq165
}


#################################################################
#CALCULATE REVERSED QUESTIONS
make_reversed_trail_r <- function(non_reversed_dataset)
{
cbqee_items_dataset$cbq41r <- 8-cbqee_items_dataset$cbq41
cbqee_items_dataset$cbq88r <- 8-cbqee_items_dataset$cbq88
cbqee_items_dataset$cbq102r <- 8-cbqee_items_dataset$cbq102
cbqee_items_dataset$cbq123r <- 8-cbqee_items_dataset$cbq123
cbqee_items_dataset$cbq126r <- 8-cbqee_items_dataset$cbq126
cbqee_items_dataset$cbq145r <- 8-cbqee_items_dataset$cbq145
cbqee_items_dataset$cbq192r <- 8-cbqee_items_dataset$cbq192
cbqee_items_dataset$cbq19r <- 8-cbqee_items_dataset$cbq19
cbqee_items_dataset$cbq120r <- 8-cbqee_items_dataset$cbq120
cbqee_items_dataset$cbq156r <- 8-cbqee_items_dataset$cbq156
cbqee_items_dataset$cbq131r <- 8-cbqee_items_dataset$cbq131
cbqee_items_dataset$cbq175r <- 8-cbqee_items_dataset$cbq175
cbqee_items_dataset$cbq188r <- 8-cbqee_items_dataset$cbq188
cbqee_items_dataset$cbq191r <- 8-cbqee_items_dataset$cbq191
cbqee_items_dataset$cbq38r <- 8-cbqee_items_dataset$cbq38
cbqee_items_dataset$cbq47r <- 8-cbqee_items_dataset$cbq47
cbqee_items_dataset$cbq171r <- 8-cbqee_items_dataset$cbq171
cbqee_items_dataset$cbq195r <- 8-cbqee_items_dataset$cbq195
cbqee_items_dataset$cbq6r <- 8-cbqee_items_dataset$cbq6
cbqee_items_dataset$cbq95r <- 8-cbqee_items_dataset$cbq95
cbqee_items_dataset$cbq184r <- 8-cbqee_items_dataset$cbq184
cbqee_items_dataset$cbq5r <- 8-cbqee_items_dataset$cbq5
cbqee_items_dataset$cbq101r <- 8-cbqee_items_dataset$cbq101
cbqee_items_dataset$cbq190r <- 8-cbqee_items_dataset$cbq190
cbqee_items_dataset$cbq14r <- 8-cbqee_items_dataset$cbq14
cbqee_items_dataset$cbq53r <- 8-cbqee_items_dataset$cbq53
cbqee_items_dataset$cbq68r <- 8-cbqee_items_dataset$cbq68
cbqee_items_dataset$cbq150r <- 8-cbqee_items_dataset$cbq150
cbqee_items_dataset$cbq167r <- 8-cbqee_items_dataset$cbq167
cbqee_items_dataset$cbq15r <- 8-cbqee_items_dataset$cbq15
cbqee_items_dataset$cbq58r <- 8-cbqee_items_dataset$cbq58
cbqee_items_dataset$cbq70r <- 8-cbqee_items_dataset$cbq70
cbqee_items_dataset$cbq138r <- 8-cbqee_items_dataset$cbq138
cbqee_items_dataset$cbq161r <- 8-cbqee_items_dataset$cbq161
cbqee_items_dataset$cbq176r <- 8-cbqee_items_dataset$cbq176
cbqee_items_dataset$cbq30r <- 8-cbqee_items_dataset$cbq30
cbqee_items_dataset$cbq51r <- 8-cbqee_items_dataset$cbq51
cbqee_items_dataset$cbq60r <- 8-cbqee_items_dataset$cbq60
cbqee_items_dataset$cbq159r <- 8-cbqee_items_dataset$cbq159
cbqee_items_dataset$cbq71r <- 8-cbqee_items_dataset$cbq71
cbqee_items_dataset$cbq79r <- 8-cbqee_items_dataset$cbq79
cbqee_items_dataset$cbq90r <- 8-cbqee_items_dataset$cbq90
cbqee_items_dataset$cbq137r <- 8-cbqee_items_dataset$cbq137
cbqee_items_dataset$cbq169r <- 8-cbqee_items_dataset$cbq169
cbqee_items_dataset$cbq183r <- 8-cbqee_items_dataset$cbq183
cbqee_items_dataset$cbq32r <- 8-cbqee_items_dataset$cbq32
cbqee_items_dataset$cbq93r <- 8-cbqee_items_dataset$cbq93
cbqee_items_dataset$cbq108r <- 8-cbqee_items_dataset$cbq108
cbqee_items_dataset$cbq162r <- 8-cbqee_items_dataset$cbq162
cbqee_items_dataset$cbq12r <- 8-cbqee_items_dataset$cbq12
cbqee_items_dataset$cbq66r <- 8-cbqee_items_dataset$cbq66
cbqee_items_dataset$cbq86r <- 8-cbqee_items_dataset$cbq86
cbqee_items_dataset$cbq111r <- 8-cbqee_items_dataset$cbq111
cbqee_items_dataset$cbq28r <- 8-cbqee_items_dataset$cbq28
cbqee_items_dataset$cbq83r <- 8-cbqee_items_dataset$cbq83
cbqee_items_dataset$cbq122r <- 8-cbqee_items_dataset$cbq122
cbqee_items_dataset$cbq142r <- 8-cbqee_items_dataset$cbq142
cbqee_items_dataset$cbq170r <- 8-cbqee_items_dataset$cbq170
cbqee_items_dataset$cbq72r <- 8-cbqee_items_dataset$cbq72
cbqee_items_dataset$cbq109r <- 8-cbqee_items_dataset$cbq109
cbqee_items_dataset$cbq112r <- 8-cbqee_items_dataset$cbq112
cbqee_items_dataset$cbq149r <- 8-cbqee_items_dataset$cbq149
cbqee_items_dataset$cbq17r <- 8-cbqee_items_dataset$cbq17
cbqee_items_dataset$cbq23r <- 8-cbqee_items_dataset$cbq23
cbqee_items_dataset$cbq45r <- 8-cbqee_items_dataset$cbq45
cbqee_items_dataset$cbq57r <- 8-cbqee_items_dataset$cbq57
cbqee_items_dataset$cbq119r <- 8-cbqee_items_dataset$cbq119
cbqee_items_dataset$cbq129r <- 8-cbqee_items_dataset$cbq129
cbqee_items_dataset$cbq158r <- 8-cbqee_items_dataset$cbq158
cbqee_items_dataset$cbq43r <- 8-cbqee_items_dataset$cbq43
cbqee_items_dataset$cbq99r <- 8-cbqee_items_dataset$cbq99
cbqee_items_dataset$cbq84r <- 8-cbqee_items_dataset$cbq84
cbqee_items_dataset$cbq121r <- 8-cbqee_items_dataset$cbq121
cbqee_items_dataset$cbq135r <- 8-cbqee_items_dataset$cbq135
cbqee_items_dataset$cbq165r <- 8-cbqee_items_dataset$cbq165
#REMOVE THE NON INVERTED ORIGINAL ITEMS
trailingr <- gsub('r$', '', names(cbqee_items_dataset)[grep('cbq\\d{1,3}r', names(cbqee_items_dataset), perl=T)])
cbqee_items_dataset[, trailingr] <- list(NULL)
}

## ONCE THE REVERSED ITEMS WERE COMPUTED ONLY THE SCALES AND FACTORS ARE COMPUTED
compute_scales_and_factors <- function(cbqee_items_dataset)
{
#CREATE DATAFRAMES
fifteen_scales_dataset  <- data.frame(matrix(ncol = 0, nrow = length(cbqee_items_dataset[, 1])))
three_factors_dataset <- data.frame(matrix(ncol = 0, nrow = length(cbqee_items_dataset[, 1])))
#SET THE ROW NAMES USING THE ID COLUMN
row.names(fifteen_scales_dataset)  <- raw_information$identificador
row.names(three_factors_dataset) <- raw_information$identificador


#CALCULATE DIMENSIONS
fifteen_scales_dataset$act <- rowMeans(data.frame(cbqee_items_dataset$cbq1, cbqee_items_dataset$cbq25, cbqee_items_dataset$cbq41r, cbqee_items_dataset$cbq48, cbqee_items_dataset$cbq88r, cbqee_items_dataset$cbq102r, cbqee_items_dataset$cbq123r, cbqee_items_dataset$cbq126r, cbqee_items_dataset$cbq145r, cbqee_items_dataset$cbq153, cbqee_items_dataset$cbq172, cbqee_items_dataset$cbq187, cbqee_items_dataset$cbq192r) , na.rm=TRUE )
fifteen_scales_dataset$fru <- rowMeans(data.frame(cbqee_items_dataset$cbq2, cbqee_items_dataset$cbq19r, cbqee_items_dataset$cbq34, cbqee_items_dataset$cbq62, cbqee_items_dataset$cbq73, cbqee_items_dataset$cbq78, cbqee_items_dataset$cbq120r, cbqee_items_dataset$cbq128, cbqee_items_dataset$cbq140, cbqee_items_dataset$cbq156r, cbqee_items_dataset$cbq173, cbqee_items_dataset$cbq181, cbqee_items_dataset$cbq193) , na.rm=TRUE )
fifteen_scales_dataset$app <- rowMeans(data.frame(cbqee_items_dataset$cbq10, cbqee_items_dataset$cbq24, cbqee_items_dataset$cbq35, cbqee_items_dataset$cbq69, cbqee_items_dataset$cbq82, cbqee_items_dataset$cbq96, cbqee_items_dataset$cbq117, cbqee_items_dataset$cbq131r, cbqee_items_dataset$cbq148, cbqee_items_dataset$cbq166, cbqee_items_dataset$cbq175r, cbqee_items_dataset$cbq188r, cbqee_items_dataset$cbq191r) , na.rm=TRUE )
fifteen_scales_dataset$attfoc <- rowMeans(data.frame(cbqee_items_dataset$cbq16, cbqee_items_dataset$cbq38r, cbqee_items_dataset$cbq47r, cbqee_items_dataset$cbq125, cbqee_items_dataset$cbq144, cbqee_items_dataset$cbq160, cbqee_items_dataset$cbq171r, cbqee_items_dataset$cbq186, cbqee_items_dataset$cbq195r) , na.rm=TRUE )
fifteen_scales_dataset$attshi <- rowMeans(data.frame(cbqee_items_dataset$cbq6r, cbqee_items_dataset$cbq29, cbqee_items_dataset$cbq95r, cbqee_items_dataset$cbq180, cbqee_items_dataset$cbq184r) , na.rm=TRUE )
#suma de las dos atenciones anteriores
fifteen_scales_dataset$attcon <- rowMeans(data.frame(cbqee_items_dataset$cbq16, cbqee_items_dataset$cbq38r, cbqee_items_dataset$cbq47r, cbqee_items_dataset$cbq125, cbqee_items_dataset$cbq144, cbqee_items_dataset$cbq160, cbqee_items_dataset$cbq171r, cbqee_items_dataset$cbq186, cbqee_items_dataset$cbq195r, cbqee_items_dataset$cbq6r, cbqee_items_dataset$cbq29, cbqee_items_dataset$cbq95r, cbqee_items_dataset$cbq180, cbqee_items_dataset$cbq184r) , na.rm=TRUE ) 
fifteen_scales_dataset$dis <- rowMeans(data.frame(cbqee_items_dataset$cbq5r, cbqee_items_dataset$cbq21, cbqee_items_dataset$cbq61, cbqee_items_dataset$cbq87, cbqee_items_dataset$cbq97, cbqee_items_dataset$cbq101r, cbqee_items_dataset$cbq115, cbqee_items_dataset$cbq132, cbqee_items_dataset$cbq141, cbqee_items_dataset$cbq157, cbqee_items_dataset$cbq178, cbqee_items_dataset$cbq190r) , na.rm=TRUE )
fifteen_scales_dataset$sth <- rowMeans(data.frame(cbqee_items_dataset$cbq14r, cbqee_items_dataset$cbq27, cbqee_items_dataset$cbq42, cbqee_items_dataset$cbq53r, cbqee_items_dataset$cbq68r, cbqee_items_dataset$cbq85, cbqee_items_dataset$cbq92, cbqee_items_dataset$cbq103, cbqee_items_dataset$cbq118, cbqee_items_dataset$cbq134, cbqee_items_dataset$cbq150r, cbqee_items_dataset$cbq167r, cbqee_items_dataset$cbq177) , na.rm=TRUE )
fifteen_scales_dataset$fea <- rowMeans(data.frame(cbqee_items_dataset$cbq15r, cbqee_items_dataset$cbq40, cbqee_items_dataset$cbq50, cbqee_items_dataset$cbq58r, cbqee_items_dataset$cbq70r, cbqee_items_dataset$cbq80, cbqee_items_dataset$cbq91, cbqee_items_dataset$cbq130, cbqee_items_dataset$cbq138r, cbqee_items_dataset$cbq161r, cbqee_items_dataset$cbq176r, cbqee_items_dataset$cbq189) , na.rm=TRUE )
fifteen_scales_dataset$hip <- rowMeans(data.frame(cbqee_items_dataset$cbq8, cbqee_items_dataset$cbq22, cbqee_items_dataset$cbq30r, cbqee_items_dataset$cbq51r, cbqee_items_dataset$cbq60r, cbqee_items_dataset$cbq67, cbqee_items_dataset$cbq77, cbqee_items_dataset$cbq100, cbqee_items_dataset$cbq107, cbqee_items_dataset$cbq124, cbqee_items_dataset$cbq139, cbqee_items_dataset$cbq159r, cbqee_items_dataset$cbq182) , na.rm=TRUE )
fifteen_scales_dataset$imp <- rowMeans(data.frame(cbqee_items_dataset$cbq13, cbqee_items_dataset$cbq26, cbqee_items_dataset$cbq46, cbqee_items_dataset$cbq59, cbqee_items_dataset$cbq71r, cbqee_items_dataset$cbq79r, cbqee_items_dataset$cbq90r, cbqee_items_dataset$cbq104, cbqee_items_dataset$cbq114, cbqee_items_dataset$cbq137r, cbqee_items_dataset$cbq155, cbqee_items_dataset$cbq169r, cbqee_items_dataset$cbq183r) , na.rm=TRUE )
fifteen_scales_dataset$inh <- rowMeans(data.frame(cbqee_items_dataset$cbq4, cbqee_items_dataset$cbq20, cbqee_items_dataset$cbq32r, cbqee_items_dataset$cbq63, cbqee_items_dataset$cbq75, cbqee_items_dataset$cbq93r, cbqee_items_dataset$cbq108r, cbqee_items_dataset$cbq116, cbqee_items_dataset$cbq136, cbqee_items_dataset$cbq147, cbqee_items_dataset$cbq162r, cbqee_items_dataset$cbq168, cbqee_items_dataset$cbq185) , na.rm=TRUE )
fifteen_scales_dataset$lip <- rowMeans(data.frame(cbqee_items_dataset$cbq12r, cbqee_items_dataset$cbq36, cbqee_items_dataset$cbq54, cbqee_items_dataset$cbq66r, cbqee_items_dataset$cbq76, cbqee_items_dataset$cbq86r, cbqee_items_dataset$cbq111r, cbqee_items_dataset$cbq113, cbqee_items_dataset$cbq133, cbqee_items_dataset$cbq146, cbqee_items_dataset$cbq151, cbqee_items_dataset$cbq164, cbqee_items_dataset$cbq174) , na.rm=TRUE )
fifteen_scales_dataset$per <- rowMeans(data.frame(cbqee_items_dataset$cbq9, cbqee_items_dataset$cbq28r, cbqee_items_dataset$cbq31, cbqee_items_dataset$cbq52, cbqee_items_dataset$cbq65, cbqee_items_dataset$cbq84r, cbqee_items_dataset$cbq98, cbqee_items_dataset$cbq105, cbqee_items_dataset$cbq122r, cbqee_items_dataset$cbq142r, cbqee_items_dataset$cbq154, cbqee_items_dataset$cbq170r) , na.rm=TRUE )
fifteen_scales_dataset$sad <- rowMeans(data.frame(cbqee_items_dataset$cbq18, cbqee_items_dataset$cbq39, cbqee_items_dataset$cbq44, cbqee_items_dataset$cbq55, cbqee_items_dataset$cbq64, cbqee_items_dataset$cbq72r, cbqee_items_dataset$cbq81, cbqee_items_dataset$cbq94, cbqee_items_dataset$cbq109r, cbqee_items_dataset$cbq112r, cbqee_items_dataset$cbq127, cbqee_items_dataset$cbq149r) , na.rm=TRUE )
fifteen_scales_dataset$shy <- rowMeans(data.frame(cbqee_items_dataset$cbq7, cbqee_items_dataset$cbq17r, cbqee_items_dataset$cbq23r, cbqee_items_dataset$cbq37, cbqee_items_dataset$cbq45r, cbqee_items_dataset$cbq57r, cbqee_items_dataset$cbq74, cbqee_items_dataset$cbq89, cbqee_items_dataset$cbq106, cbqee_items_dataset$cbq119r, cbqee_items_dataset$cbq129r, cbqee_items_dataset$cbq143, cbqee_items_dataset$cbq158r) , na.rm=TRUE )
fifteen_scales_dataset$smi <- rowMeans(data.frame(cbqee_items_dataset$cbq11, cbqee_items_dataset$cbq43r, cbqee_items_dataset$cbq56, cbqee_items_dataset$cbq83r, cbqee_items_dataset$cbq99r, cbqee_items_dataset$cbq110, cbqee_items_dataset$cbq121r, cbqee_items_dataset$cbq135r, cbqee_items_dataset$cbq152, cbqee_items_dataset$cbq163, cbqee_items_dataset$cbq165r, cbqee_items_dataset$cbq179, cbqee_items_dataset$cbq194) , na.rm=TRUE )

##CALCULA 3 FACTORES, CE, AN, Y SU  
three_factors_dataset$CE <- rowMeans(data.frame(fifteen_scales_dataset$attcon, fifteen_scales_dataset$lip, fifteen_scales_dataset$inh, fifteen_scales_dataset$per) , na.rm=TRUE )
three_factors_dataset$AN <- rowMeans(data.frame(fifteen_scales_dataset$sad, fifteen_scales_dataset$dis, fifteen_scales_dataset$fru, fifteen_scales_dataset$fea, fifteen_scales_dataset$sth) , na.rm=TRUE )
three_factors_dataset$SU <- rowMeans(data.frame(fifteen_scales_dataset$shy, fifteen_scales_dataset$app, fifteen_scales_dataset$imp, fifteen_scales_dataset$hip, fifteen_scales_dataset$smi, fifteen_scales_dataset$act) , na.rm=TRUE )
##################################
#PERFILES
CE <- three_factors_dataset$CE
AN <- three_factors_dataset$AN
cem  <- median(CE)
anm  <- median(AN)
three_factors_dataset$perfil[CE >= cem & AN <  anm] <- 'easy'
three_factors_dataset$perfil[CE >= cem & AN >= anm] <- 'intense'
three_factors_dataset$perfil[CE <  cem & AN <  anm] <- 'disengaged'
three_factors_dataset$perfil[CE <  cem & AN >= anm] <- 'risky'
three_factors_dataset$perfil  <- as.factor(three_factors_dataset$perfil)

#QUITA LAS VARIABLES DE ATENCION -ATTFOC -ATTSHI
dimensions_noextras_att <- fifteen_scales_dataset[, !grepl('(attfoc|attshi)', names(fifteen_scales_dataset), perl=TRUE)]

#SAVE TO DISK
write.csv(fifteen_scales_dataset, 'xCBQ_15DIMENSIONES.csv', row.names=TRUE)
write.csv(three_factors_dataset, 'xCBQ_3FACTORES.csv', row.names=TRUE)
write.csv(dimensions_noextras_att,'xCBQ_DIMENSIONES_SIN_ATTFOC_ATTSHI.csv', row.names=TRUE)

## RETURN VALUE
list(scales = dimensions_noextras_att, factors = three_factors_dataset, att_extra = fifteen_scales_dataset)
}



#==========================================
    #Function to clean-up outlaiers
#==========================================
place_na_in_otlaiers <- function(column_outlaieree) {
        for(iteration_column in 1:10) {
		print(paste0(iteration_column, '===ITER COLUM======'))
            outlaiers <- boxplot.stats(column_outlaieree)$out
            column_outlaieree[which(column_outlaieree %in% outlaiers)] <- NA
            if(! length(boxplot.stats(column_outlaieree)$out) > 0) break else print(paste0('==A COLUMN ITER=== ', iteration_column, '\\n ', as.character(which(column_outlaieree %in% outlaiers))))
        }
	return(column_outlaieree)
}
#==========================================


#==========================================
#FUNCTION TO CONSTRUCT A VECTOR OF BOOLENA VALUES INDICATION IF EACH COLUM HAS OUTLAIERS
#Creates a boolean value checking if there is still outlaiers after being removed, so tgat it can be evaluated
#==========================================
check_is_cleaned <- function(column_outlaieree) {
    return(! length(boxplot.stats(column_outlaieree)$out) > 0)
}

#==========================================
#Loop to identify outlaiers and place NA 
#==========================================
identify_and_make_na_outlaiers <- function(outlaieree_dataset) {
	for(iteration_dataset in 1:10) {
		print(paste0(iteration_dataset, '===ITER WHOLE DATASET======'))
	    na_ed_dataset <- data.frame(lapply(outlaieree_dataset, place_na_in_otlaiers))
	    checked_out_cleaned_vector <- unlist(lapply(na_ed_dataset, check_is_cleaned))
	    if(all(checked_out_cleaned_vector)) break else print(paste0('===== CLEANING ========', iteration_dataset))
	}
	if(iteration_dataset > 9) print(paste0(iteration_dataset, '== MAXIMUM I REACHED =========='))
	write.csv(na_ed_dataset, 'xOUTLAIERS_CLEANED_ITEMS.csv')
	return(na_ed_dataset)
}

#==========================================
#SIN INVERTIDOS
#OUTLAIERS NA AND THEN IMPUTES
#==========================================
sin_invertidos_outlaiers_before_impute  <- function(maximum_iterations, number_of_imputations) {
#LOAD()
create_datasets(valkar)
#LOOP OUTLS IMPUTE
#for(iteration_imputation in 1:10) {
	cbqee_items_dataset <<- identify_and_make_na_outlaiers(cbqee_items_dataset)
	#IMPUTE()
	#check there are not outs left and  stop the loop
	checked_out_cleaned_vector <- unlist(lapply(cbqee_items_dataset, check_is_cleaned))
    #if(all(checked_out_cleaned_vector)) break else print(paste0('===== CLEANING ========', iteration_imputation))
	#}
#Remaining of the original impute fvgunction
mice_imputation_cbqee_items_dataset(maximum_iterations, number_of_imputations)
generate_unreversed_cbqee_items_dataset()
compute_scales_and_factors()
}


#==========================================
#IN MAKING THE ORIGINAL CBQ CALCULATION IT MAKES OUTLAIERS NA AND THEN IMPUTES, STOPINGG THE LOOP WHRE THERE ARE NO OUTL ANY MORE
#==========================================
outlaiers_before_impute <- function(questionnaire_dataset_file, maximum_iterations, number_of_imputations) {
#LOAD()
create_datasets(questionnaire_dataset_file)
#LOOP OUTLS IMPUTE
#for(iteration_imputation in 1:10) {
	cbqee_items_dataset <<- identify_and_make_na_outlaiers(cbqee_items_dataset)
	#IMPUTE()
	#check there are not outs left and  stop the loop
	#checked_out_cleaned_vector <- unlist(lapply(cbqee_items_dataset, check_is_cleaned))
    #if(all(checked_out_cleaned_vector)) break else print(paste0('===== CLEANING ========', iteration_imputation))
	#}
#Remaining of the original impute fvgunction
mice_imputation_cbqee_items_dataset(maximum_iterations, number_of_imputations)
compute_scales_and_factors()
}



#==========================================
#==========================================
cbq  <- function(questionnaire_dataset_file) {
create_datasets(questionnaire_dataset_file)
compute_scales_and_factors()
}

imputed_cbq  <- function(questionnaire_dataset_file, maximum_iterations, number_of_imputations) {
create_datasets(questionnaire_dataset_file)
mice_imputation_cbqee_items_dataset(maximum_iterations, number_of_imputations)
compute_scales_and_factors()
}

#==========================================
#==========================================
sin_invertidos_val_kar_mfs <- function(questionnaire_dataset_file) {
create_datasets(valkar)
generate_unreversed_cbqee_items_dataset()
compute_scales_and_factors()
}


imputed_sin_invertidos  <- function(maximum_iterations, number_of_imputations) {
create_datasets(valkar)
mice_imputation_cbqee_items_dataset(maximum_iterations, number_of_imputations)
generate_unreversed_cbqee_items_dataset()
compute_scales_and_factors()
}


#==========================================
#==========================================
#==========================================
valkar <- 'https://raw.githubusercontent.com/Laboratorio-CHyC/Temperament/main/cbqLab_serrano2022.csv'

raven_url <- 'https://raw.githubusercontent.com/Laboratorio-CHyC/Temperament/main/ferserrano2022_raven.csv'

mfs <- 'https://raw.githubusercontent.com/Laboratorio-CHyC/Temperament/main/ferserrano2022_cbq.csv'
('https://raw.githubusercontent.com/Laboratorio-CHyC/Temperament/main/cbqLab_serrano2022.csv')
#sin_invertidos_val_kar_mfs(valkar)
#sin_invertidos_outlaiers_before_impute(50, 5) 
