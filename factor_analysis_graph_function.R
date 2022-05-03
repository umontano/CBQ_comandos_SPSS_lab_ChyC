library(dplyr)
library(tidyr)
library(ggplot2)
library(broom)

#DEFINICION DE FUNCION PARA ANALISIS DE FACTORES Y GRAFICAS
fa_graphics  <- function(analyzee, num_factors, threshold) {
	#MAKE TITLE STRING
	dtitle <- toupper(deparse(substitute(analyzee)))
#
	#FACTOR ANALYSIS
	fa_results <- stats::factanal(analyzee, factors = num_factors, rotation="promax")
	print('==========================================================================')
	print(dtitle)
	print('==========================================================================')
	print(fa_results, digits=2, cutoff=threshold)
#
	#GENERATES LONG FORMAT RESULTS
	fatidy <- fa_results %>% broom::tidy() %>% 
		select(-uniqueness) %>% 
		pivot_longer(cols=-variable) %>% 
		dplyr::filter(abs(value)>threshold)
#
	#MAKES GRAPHICS
	faplot <- ggplot(fatidy, aes(abs(value), reorder(variable, abs(value)), col=variable, fill=value>0)) +
		geom_col() +
		facet_wrap(~name) + 
		labs(title = paste(dtitle, ' ', num_factors, ' ',  'FACTORS'),
			subtitle = paste('N factors=', num_factors, 'cutoff=', threshold),
			caption = 'iDimensions Loadings, CBQ')
#
	#SAVE GRAPHICS TO DISK
	#ggsave(paste0('xANALISIS_FACTORES_', dtitle, '_f', num_factors, '_cut', chartr('.', '_', threshold), '.pdf'))
#
	#SHOW GRAPHICS
	faplot
}

