library(dplyr)
## download, unzip and read data files

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

if(!file.exists("data.zip"))download.file(fileUrl, "data.zip")

if(!file.exists("UCI HAR Dataset"))unzip("data.zip")

file.remove("data.zip")