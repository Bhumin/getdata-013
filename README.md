==================================================================
R Scrip submitted for the project assignment - Getting and Cleaning Data course

==================================================================
Bhumin Pathak
==================================================================

The dataset includes the following files:
=========================================

- 'README.txt' - This file. 
- 'run_analysis.R' - R-Script to run the R program for this assignment. 

Note:
- This script assumes that the original dataset is available in the working directory of the R package. 
- This script produces two datasets:
	- merged_dataset --> This is the output of the dataset requested in the step-4.
	- aggregate_data_set --> This is the output of the dataset requested in step-5 --> Tidy dataset
	

Codebook for variables
=================

The "aggregate_data_set" has 180 rows and 563 columns. 
1st column --> Activity ID
2nd column --> Subject ID

Subsequent columns are mean values of different measurements aggregated by the Activity_ID and Subject_ID. 

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



