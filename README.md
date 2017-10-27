# Getting and Cleaning Data Peer Assessment  
The code and the related CodeBook can be found in this repository.  
To run the analysis simply run the run_analysis.R script.  
More information about the script are found in the CodeBook.md file.  
Be sure to download the raw data first and to set your working directory to "UCI HAR Dataset/" after you unzip the data. The R script must be also located in this directory.  
The raw data set have been downloaded from the specific URL highlighted in the description of the assessment.  
The data were processed using the run_analysis.R script and no other transformation was applied to it.  
The processing steps were the followings:  
* Read in the raw data and join the train and the test dataset together
* Make a data frame out of the mean and std values of the variables
* Join the data frames containing the information on the subjects and activity types
* Rename the variables appropriately
* Write out the first tidy data set to tidy1.txt
* Make a second tidy data set, containing aggregated data for each activity type and subject related to the observations
* Write out the second tidy data set to tidy2.txt  
## Description of the assessment  
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:  

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones  

Here are the data for the project:  

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  

You should create one R script called run_analysis.R that does the following.  

* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement.
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names.
 *From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
 
 ## File descriptions
 * Features.txt: Name of the features  
 * activity_labels.txt: Name of the activity types and their associated ID  
 * X_test / X_train.txt: contains the observed values  
 * y_test/y_train.txt: contains the activity types with ID  
 * subject_test/subject_train.txt: Contains the subject ID  
