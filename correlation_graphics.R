#DEFINE THE FUNCTIONS to generate SCATTER PLOTS AND SUBROUTINES
#==========================================================================
scatterp_with_regression_lines <- function(plotee_pair, rows_dataset, columns_dataset)
{
variablex <- plotee_pair[2]
variabley <- plotee_pair[1]
merged_dataset <- cbind(rows_dataset, columns_dataset)
library(ggplot2)
ggplot(merged_dataset, aes(
	merged_dataset[, variablex],
	merged_dataset[, variabley]
	)
) +
geom_jitter(alpha=0.5) +
geom_smooth(method="lm", se=TRUE, fullrange=TRUE) +
         annotate( "point", x=mean(merged_dataset[, variablex]), y=mean(merged_dataset[, variabley]), col="red4", size=3) +
labs(title = paste(variablex, '-- correl --', variabley)) +
xlab(variablex) +
ylab(variabley)
}

#================================================================
#================================================================
#scatterp_with_regression_lines <- function(plotee_pair) { return(plot(torrance[, variablex], torrance[, variabley]) ) }
scatterplot_significant_correlations <- function(rows_dataset, columns_dataset)
{
#Matrices for correlations and pvalues
cor_mat <- round(cor(rows_dataset, columns_dataset), 8)
library('psych')
cor_test_mat <- round(corr.test(rows_dataset, columns_dataset, adjust='bonferroni')$p, 3)
	#Extract rows and columns
	rows <- rownames(cor_mat)
	cols <- colnames(cor_mat)
	#Initialize empty list
	pairs_list <<- NULL
#Implementation of search by currying nested mapping functions
lapply(cols, function(eachcol) lapply(rows, function(eachrow){ #if(pmat[y,x]<0.05) llll[[length(llll)+1]] <<- c(y,x) 
	#for(eachcol in cols) {
		#for(eachrow in rows) {
			if(
            !is.na(cor_test_mat[eachrow , eachcol]) &&
            eachrow != eachcol &&
            cor_test_mat[eachrow , eachcol] < 0.05
            ) {
				pairs_list[[ length(pairs_list) +1 ]] <<- c(eachrow, eachcol);
				print(paste(eachrow, eachcol));
				}
		#}
	#}
#nested lapply ends here
} ) )
		#Show results only in case there exists significant values
		if(length(pairs_list) > 0)
		{
			#Show p-values text
			showr <- cor_mat
			showpv <- cor_test_mat
			showr[showpv > 0.05] <- NA
			print(showr)
			showpv[showpv > 0.05] <- NA

			#Send list of names to generate scatterplots
			scatters_list <- lapply(pairs_list, scatterp_with_regression_lines, rows_dataset, columns_dataset)
			#Show a single graph from the list of scatters
			library('gridExtra')
			gridExtra::grid.arrange(grobs = scatters_list, ncol = 3, nrow = 2)

			#Graphic correlation matrix
			library(ggcorrplot)
			corr_graph <- ggcorrplot(t(cor_mat), ggtheme = ggplot2::theme_dark, lab=TRUE, p.mat=t(cor_test_mat), insig='blank')
			print(corr_graph)

			return(list(corr_graph, scatters_list))
		}
		else
		{
			#Mesagge there are no significants
			lapply(1:4, function(x) print('=== NO SIGN CORRELATIONS FOUND ==='));
			print(cor_test_mat)
			return(NULL)
		}
}




#BLOCK TOrrance
torrance <- read.csv('https://github.com/Laboratorio-CHyC/Temperament/raw/main/torrance1_2022.csv')
rownames(torrance) <- torrance$identificador
torrance$numero <- gsub('.*(\\d{4})\\s*$', '\\1', torrance$identificador, perl=TRUE) 
torrance[, grep('_|dibujo|titulo|observaciones|experimentadora|escuela|grupo|edad|sexo|identificador|Parte', names(torrance))] <- list(NULL)
#Removed problematic
torrance[, c('orig2_6')] <- list(NULL)
#Ouliers cleanup
source('https://raw.githubusercontent.com/umontano/CBQ_comandos_SPSS_lab_ChyC/main/CBQ_comandosSPSS_lab_CHyC.R')
torrance <- lapply(torrance, as.numeric)
torrance_raw <- torrance
torrance <- identify_and_make_na_outlaiers(torrance)
torrance <- impute_any_dataset_mice(torrance)

#function to merge with temp
#analizee_dataset <- scales
#analizee_dataset <- factors[, 1:3]

analysis_torrance_temperament <- function(analizee_dataset) {
analizee_dataset$numero <- gsub('.*(\\d{4})\\s*$', '\\1', row.names(analizee_dataset), perl=TRUE) 

mergedtorrance <- merge(analizee_dataset, torrance, by='numero')

temperament_numeric <- mergedtorrance[, names(analizee_dataset)]
torrance_numeric <- mergedtorrance[, names(torrance)]
torrance_numeric[] <- lapply(torrance_numeric, as.numeric)
temperament_numeric[] <- lapply(temperament_numeric, as.numeric)
mergednumeric <- data.frame(lapply(mergedtorrance, as.numeric))

#SET UP FINAL PROCESSING
temperament_numeric[, 'numero'] <- NULL
torrance_numeric <- torrance_numeric[ , names(torrance)]
torrance_numeric[, 'numero'] <- NULL

#library(Hmisc)

#Store the corresponding significant scaterplots
graphics_list <- NULL
graphics_list <- scatterplot_significant_correlations(torrance_numeric, temperament_numeric)

return(graphics_list)
}


#Load and impute scales datasets
#scales <- read.csv('~/p/tmfs/imp30/xCBQ_15DIMENSIONES.csv')[, -1]
scales <- read.csv('https://raw.githubusercontent.com/umontano/kar/master/mfs/mfs22cbq15dimensiones_imputado.csv')
rownames(scales) <- scales[, 1]
scales <- scales[, -1]
scales[]  <- lapply(scales, as.numeric)

#Load and impute factors dataset
#factors <- read.csv('~/p/tmfs/imp30/xCBQ_3FACTORES.csv')[, -1]
factors <- read.csv('https://raw.githubusercontent.com/umontano/kar/master/mfs/mfs22cbq3factores_imputado.csv')
rownames(factors) <- factors[, 1]
factors <- factors[, -1]
factors[] <- lapply(factors, as.numeric)


#CORRE EL SCRIPT CBQ CMOMMANDOS SPSS
source('https://raw.githubusercontent.com/umontano/CBQ_comandos_SPSS_lab_ChyC/main/CBQ_comandosSPSS_lab_CHyC.R')
#Clean outlaiers and impute questionnaire data
#con datos DE M F SERRANO (MFS)
#cbq(mfs)

var_raven  <- c('columna_a', 'columna_ab', 'columna_b', 'puntaje', 'dx')
#xxxxbbbbxxxx
#LOAD DATA
raven <- read.csv('https://raw.githubusercontent.com/Laboratorio-CHyC/Temperament/main/ferserrano2022_raven.csv', header=TRUE)
#Set indentificador as column names
rownames(raven) <- raven$identificador

#==========================================
#CLEAN OUTLAIERS AND IMPUTE RAVEN DATA
#==========================================
rav_to_impute  <- raven[, var_raven]
rav_to_impute[]  <- lapply(rav_to_impute, as.numeric)
raven_raw <- rav_to_impute



rav_to_impute <- identify_and_make_na_outlaiers(rav_to_impute)
rav_to_impute <- impute_any_dataset_mice(rav_to_impute)
#==========================================
#SHOW BOXPLOT
#==========================================

#==========================================
#CONTINUE PROCESSIN NOT PRINTING
#==========================================
raven[, var_raven] <- list(NULL)
raven  <- cbind(raven, rav_to_impute)







#raw_information <- read.csv('https://raw.githubusercontent.com/Laboratorio-CHyC/Temperament/main/ferserrano2022_cbq.csv', header=TRUE)

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

#SET UP FINAL PROCESSING
temperament_numeric[, 'numero'] <- NULL
raven_numeric <- raven_numeric[ , c('columna_a', 'columna_ab', 'columna_b', 'puntaje', 'dx')]


cor_mat <- cor(raven_numeric, temperament_numeric)
library(psych)
cor_test_mat <- corr.test(raven_numeric, temperament_numeric)$p    # Apply corr.test function

library(ggcorrplot)
return(ggcorrplot(t(cor_mat), ggtheme = ggplot2::theme_dark, lab=TRUE, p.mat=t(cor_test_mat), insig='blank'))
}


