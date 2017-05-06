# Getting-and-Cleaning-Data-Course-Project
This is the course project for the Getting and Cleaning Data week 4 programming assignment

This repo contains two R code files Get_Samsung_Data.R and run_analysis.R as well as a Codebook.md document.

The Get_Samsung_Data.R file will retrieve the "Human Activity Recognition Using Smartphones Dataset Version 1.0) and extract the Dataset along with the codebook and readme files into a "UCI HAR Dataset" folder in the working directory.

The run_analysis.R file inputs the data from the training and testing groups which are combined with the subject and activity identifiers for their respective groups. The program then combinds the training and testing data into a single data array. Variable names are read in the from the features.txt file and set as column names. The required subset of variables, namely "the measurements on the mean and standard deviation for each measurement" (quoted from the project instructions) are selected. The selected data are then grouped by subject and activity. The average value for each subject and activity is then calculated for each variable and output as a txt file "MeanStdOutput.txt" to the working directory.

The Codebook gives a more detailed description of the variable subsetting scheme and data manipulation.
