get_text_char  <- function(f){return(readChar(f, file.size(f)))}
processing_text <- ' ahrn eeeeeeee EXECUTE. ZZJJJJJJJJJJK
SDKKKKKKKKKKKKKKKKKKKKLLLLSLD
IIIIIIIIIIIII EXECUTE.      OOOOOOOOOO'

processing_text <- get_text_lines('~/u/prrasgostest.txt')
processing_text <- get_text_char('~/u/prrasgostest.txt')

processing_text  <-  gsub('(EXECUTE.*\\.)', 
                          '####################\\1', 
                          processing_text, perl=TRUE)

#SECTION REVERSING ITEMS
processing_text <- gsub('(?xx)COMPUTE\\ (\\w+?)\\ \\=\\ \\((8\\-cbq\\w+?)\\)\\.',
     'items\\$\\1 <- \\2',
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
'scales\\$\\1 <- rowMeans(data.frame(\\2), na.rm=TRUE)',
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
'factors\\$\\1 <- rowMeans(data.frame(\\2), na.rm=TRUE)',
     processing_text, perl=TRUE)

#SAVE TO DISK 
writeChar(processing_text, 'xOUT_TEST_COVERTER_CBQ_SPSS_R.txt', nchars = nchar(processing_text, type = "chars"), eos = "\n")
