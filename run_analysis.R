## Select only mean and standard deviation data
## This run_analysis code can be run once the Samsung data has been downloaded 
## and extracted into the working directory. The output from this code is a txt
## file containing the averages for each activity and subject of the mean and 
## standard deviation data extracted from the original Samsung data set.

library(dplyr)

x_test <- read.table(("./UCI HAR Dataset/test/X_test.txt"))

y_test <- read.table(("./UCI HAR Dataset/test/y_test.txt"))

y_train <- read.table(("./UCI HAR Dataset/train/y_train.txt"))

x_train <- read.table(("./UCI HAR Dataset/train/X_train.txt"))

sub_train <- read.table(("./UCI HAR Dataset/train/subject_train.txt"))

sub_test <- read.table(("./UCI HAR Dataset/test/subject_test.txt"))

features <- read.table(("./UCI HAR Dataset/features.txt"))

activity <- read.table("./UCI HAR Dataset/activity_labels.txt")

## merge test and training data, add subject identifier and activity identifier,
## change activity identifier to activity

testarray1 <- cbind(sub_test, y_test, x_test)

trainarray1 <- cbind(sub_train, y_train, x_train)

dataarray <- rbind(testarray1, trainarray1)

## read variable names into data file, assign variable (column) names and change
## activity identifier to activity

arraynames <- c(as.character(features[,2]))
arraynames <- gsub("\\(\\)","", arraynames)
dataarray <- `colnames<-`(dataarray, c("subject", "activity",arraynames))

dataarray$activity <- as.numeric(dataarray$activity)

for(i in 1:nrow(dataarray)){
     dataarray$activity[i] <- as.character(activity[dataarray$activity[i], 2])
}

## Select only mean and standard deviation data, calculate means for all 
## varibles for each subject and activity, write Tidy da"ta to txt file

dataarray <- dataarray [,grepl("subject|activity|*[Mm]ean|*[Ss]td",names(dataarray))]

groupby <- group_by(dataarray, subject, activity)%>% summarise_all(funs(mean))

write.table(groupby, "MeanStdOutput.txt", row.name=FALSE)