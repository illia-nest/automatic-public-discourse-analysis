library(manifestoR)
library(tidyverse)

mp_setapikey("manifesto_apikey.txt")

mp_use_corpus_version("2017-2")

english_2017 <- mp_availability(TRUE) %>% filter(annotations == TRUE & language == "english")

my_corpus <- mp_corpus(english_2017)
head(content(my_corpus[[1]])) 
meta((my_corpus[[1]]))

data_df <- as.data.frame(my_corpus, with.meta = TRUE)

# Specify the file path where you want to save the CSV file
data_csv_file_path <- "D:/get_data/data_manifesto_corpus_2017-2_english.csv"

# Export the documents data to a CSV file
write.csv(data_df, file = data_csv_file_path, row.names = FALSE)

