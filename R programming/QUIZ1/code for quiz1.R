setwd("2230416016_王景然") # set directory name
# install the R package "xlsx"
install.packages("xlsx")

# load data from the given xlsx file
library("xlsx")
sheetIndex <- 1
group <- read.xlsx("group.xlsx", sheetIndex, header = TRUE)

# unify na strings into "NA"
write.table(group, file = "group_raw.txt", sep = "\t", append = FALSE, quote = FALSE)
group_processed <- read.table("group_raw.txt", header = TRUE, na.strings = c("NO", "NA"))
file.remove('group_raw.txt') # delete the file generated during the process

# output processed data into csv file
write.table(group_processed, file = "Quiz1.csv", sep = ',',  append = FALSE, quote = FALSE,row.names = FALSE)

# save .Rdata and .Rhistory
save.image("Quiz1.RData")
savehistory("Quiz1.Rhistory")
