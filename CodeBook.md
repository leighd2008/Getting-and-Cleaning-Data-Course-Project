---
title: "CodeBook"
author: "Diane Leigh"
date: "May 6, 2017"
output:
  html_document: default
  pdf_document: default
  word_document: default
---

Codebook for Getting and Cleaning Data Course Project

Feature Selection(Copied from features_info.txt from UCI HAR Dataset)
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ   
tGravityAcc-XYZ   
tBodyAccJerk-XYZ   
tBodyGyro-XYZ   
tBodyGyroJerk-XYZ   
tBodyAccMag   
tGravityAccMag   
tBodyAccJerkMag   
tBodyGyroMag   
tBodyGyroJerkMag   
fBodyAcc-XYZ   
fBodyAccJerk-XYZ   
fBodyGyro-XYZ   
fBodyAccMag   
fBodyAccJerkMag   
fBodyGyroMag   
fBodyGyroJerkMag   

The set of variables that were estimated from these signals are: 

mean(): Mean value   
std(): Standard deviation   
mad(): Median absolute deviation    
max(): Largest value in array   
min(): Smallest value in array   
sma(): Signal magnitude area    
energy(): Energy measure. Sum of the squares divided by the number of values.    
iqr(): Interquartile range    
entropy(): Signal entropy   
arCoeff(): Autorregresion coefficients with Burg order equal to 4   
correlation(): correlation coefficient between two signals   
maxInds(): index of the frequency component with largest magnitude   
meanFreq(): Weighted average of the frequency components to obtain a mean  frequency   
skewness(): skewness of the frequency domain signal   
kurtosis(): kurtosis of the frequency domain signal    
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.  
angle(): Angle between to vectors.   

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean   
tBodyAccMean    
tBodyAccJerkMean   
tBodyGyroMean   
tBodyGyroJerkMean   

The complete list of variables of each feature vector is available in 'features.txt'


## Data processing by run_analysis.R

Once the data is downloaded and the "UCI HAR Dataset folder extracted into the working directory, the run_analysis.R code selects a subset of the variables estimated for each signal in the original data processing.

Subset of variable selected

mean(): Mean value    
std(): Standard deviation   
meanFreq(): Weighted average of the frequency components to obtain a mean frequency   
gravityMean   
tBodyAccMean   
tBodyAccJerkMean   
tBodyGyroMean   
tBodyGyroJerkMean   

This data was selected for all 30 subjects (9 in the test group and 21 in the training group) For each of six activities:

1 WALKING   
2 WALKING_UPSTAIRS   
3 WALKING_DOWNSTAIRS   
4 SITTING   
5 STANDING    
6 LAYING    

Once the data was pulled from the original dataset, The average of each variable was calculated for the 30 individual subjects for each of the 6 activities resulting in 180 observations of 88 variables (see complete list below) with no missing values. This data was then output as a txt file "MeanStdOutput.txt". 


The complete list of variables of each feature vector is available in 'variables.txt'
