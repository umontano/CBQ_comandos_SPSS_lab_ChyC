'~/u/prrasgostest.txt' -> file_name
#'https://raw.githubusercontent.com/umontano/CBQ_comandos_SPSS_lab_ChyC/main/prrasgostest.txt' -> file_name

#CONDITIONAL TO READ FROM COMMAND LINE
cli_arguments <- commandArgs(trailingOnly = FALSE)
print(cli_arguments)
if(length(cli_arguments)>11){ 
file_name <- cli_arguments[12]
}

#DEFINE FUNCTIONS TO LOAD TEXT, WE ONLY USE ONE OF THESE FUNCTIOSN
get_text_lines  <- function(f){return(paste(readLines(f), collapse = '\n'))}
get_text_char  <- function(f){return(readChar(f, file.size(f)))}
#READ TEXT FILE
processing_text <- get_text_lines(file_name)


########################################################################################
#PROCESSING TEXT
#TAKE AWAY EXECUTE COMMAND
processing_text  <-  gsub('(EXECUTE.*\\.)', 
                          '####################\\1', 
                          processing_text, perl=TRUE)

#SECTION REVERSING ITEMS
processing_text <- gsub('(?xx)COMPUTE\\ (\\w+?)\\ \\=\\ \\((8\\-cbq\\w+?)\\)\\.',
'',
     processing_text, perl=TRUE)

#SECCTION SCALES
processing_text <- gsub('(?sxx)
#REGEX FOR INDVIDUAL SCALES
COMPUTE\\ 
#NEW COLUMNS FOR SCALES 
([a-z]{2,})
\\ \\=\\ mean\\ \\(
#CBQ COLUMNS
(cbq.+?)
\\)\\.', 
'attach(items, warn.conflicts=FALSE)
print(alpha(data.frame(\\2), impute="medians", check.keys=TRUE))
detach(items)',
     processing_text, perl=TRUE)


#SECTION FACTORS
#REPLACE FOR FACTORS INSTEAD OF SCALES
processing_text <- gsub('(?sxx)
#REGEX FOR THE THREE FACTORS
COMPUTE\\ 
#NEW COLUMNS FOR FACTORES 
([A-Z]{2,})
\\ \\=\\ mean\\ \\(
#SCALES COLUMNS
([a-z]{2,}.+?)
\\)\\.',
'attach(scales, warn.conflicts=FALSE)
print(alpha(data.frame(\\2), impute="means", check.keys=TRUE))
detach(scales)',
     processing_text, perl=TRUE)



#CHANGE DOUBLE QUOTES TO SINGLE
processing_text <- gsub('\\"', "\\'", processing_text, perl=TRUE)
processing_text <- paste('library(psych)\n\n', processing_text)


###########################################################################
#CHANGE REVERESED TO NON REVERSED BY TAKING AWAY TRAILING r FROM cbq ITEMS
#processing_text <- gsub('(cbq\\d{1,3})r', '\\1', processing_text, perl=TRUE)
###########################################################################




#SAVE TO DISK 
out_name <- gsub('\\W','_', file_name, perl=TRUE)
out_name <- paste0('xALPHA_CRONBACH_OUTPUT_CONVERTER_SPSS_R_', out_name, '_.R')
writeLines(processing_text, out_name)

# 0y}:.,.+33!"