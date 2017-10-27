#--------------------------------------------------------------------------#
# run_analysis.R                                                           #
# Made for the Coursera Getting and Cleaning Data course                   # 
# Author: Aurel Prosz                                                      #
# Version: 1.0                                                             #
# Date: 27.10.2017                                                         #
#--------------------------------------------------------------------------#

#Read in the raw dataset#--------------------------------------------------#
features <- read.table("features.txt", header = FALSE, sep ="")
activity <- read.table("activity_labels.txt", header = FALSE, sep ="")
test.data <- read.table("test/X_test.txt", header = FALSE, sep ="")
test.subject <- read.table("test/subject_test.txt", header = FALSE, sep ="")
test.act <- read.table("test/y_test.txt", header = FALSE, sep ="")
train.data <- read.table("train/X_train.txt", header = FALSE, sep ="")
train.subject <- read.table("train/subject_train.txt", header = FALSE, sep ="")
train.act <- read.table("train/y_train.txt", header = FALSE, sep ="")
#--------------------------------------------------------------------------#
#Bind the train and test data together-------------------------------------#
binded.test <- cbind(test.subject, test.act)
binded.train <- cbind(train.subject, train.act)
binded.all <- rbind(binded.train, binded.test)
binded.X <- rbind(train.data, test.data)
#--------------------------------------------------------------------------#
#Join, filter and rename the dataset and variables-------------------------#
colnames(binded.X) <- features$V2
pat <-c("Mean", "mean", "std")
filtered.X <- binded.X[, grep(paste(pat, collapse="|"), colnames(binded.X))]
joined.X <- cbind(filtered.X, binded.all)
colnames(joined.X)[88] <- "ID_act"
colnames(joined.X)[87] <- "ID_subject"
colnames(activity)[1] <- "ID_act"
colnames(activity)[2] <- "Activity_type"
merged.X <- merge(joined.X, activity, by = "ID_act", sort = FALSE)
tidy1 <- merged.X
#Write out the first tidy dataset------------------------------------------#
write.table(tidy1, file = "tidy1.txt", quote = FALSE, sep = "\t", row.names = FALSE)
#--------------------------------------------------------------------------#
#Make a second tidy dataset and write it out-------------------------------#
aggdata <-aggregate(merged.X[, -1], by=list(merged.X$Activity_type,merged.X$ID_subject), FUN=mean, na.rm=TRUE)
tidy2 <- aggdata[, -c(89, 90)]
colnames(tidy2)[1] <- "Activity_type"
colnames(tidy2)[2] <- "ID_subject"
write.table(tidy2, file = "tidy2.txt", quote = FALSE, sep = "\t", row.names = FALSE)
#--------------------------------------------------------------------------#