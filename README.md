# Getting and Cleaning Data Course Project
 With this project I try to demonstrates my ability to collect, work with, and clean a data set that can be used for later analysis.
 
 This project contains an R script called run_analysis.R
 
# run_analysis.R
 A cleanup script that calculates means per subject's activity of the mean and standard deviation of the Human Activity Recognition Using Smartphones. This dataset should be present in the R file directory.
It does the following:
 
 * Merges the training and the test data sets.
 * Extracts only the measurements on the mean and standard deviation 
 * Uses descriptive activity names in the data set
 * Creates a second, independent tidy data set with the average of each variable for subject's activity
 
 Once executed, the resulting dataset will be called tidy_data_set.txt.txt
 It contains one row for each subject/activity pair and columns for subject, activity, and each feature that is a mean or  standard deviation of the original dataset.

# Steps

* Read the list of subjects.
*For both the train and test data sets, produces a temporary data set:
Extract the mean and standard deviation features (listed in CodeBook.md in 'Extracted Features').
* Read the list of activities.
* Set the activity labels (not ids) into the values table.
* Set the subject id into the values table.
* Merges the traing and test temporary data sets.
* Set each variable on its own row.
* Metls the entire table, keying on subject/acitivity pairs, applying the mean function to each vector of values in each subject/activity pair. This is the clean dataset.
* Write the clean dataset to disk.

# CodeBook.md

The code book describes the variables, the data, and any transformations or work performed to clean up the data

# Data References
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012 activityrecognition@smartlab.ws
