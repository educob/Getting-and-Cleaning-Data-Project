# CodeBook
 
# ID Fields
* subject - The participant ID (1-30)
* activity - The label of the activity performed when the corresponding measurements were taken.

The activities are: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.

# Feature Fields
The mean per subject/activity of: 

* tBodyAcc-mean()-X 
* tBodyAcc-mean()-Y
* tBodyAcc-mean()-Z 
* tBodyAcc-std()-X 
* tBodyAcc-std()-Y 
* tBodyAcc-std()-Z 
* tGravityAcc-mean()-X
* tGravityAcc-mean()-Y 
* tGravityAcc-mean()-Z 
* tGravityAcc-std()-X 
* tGravityAcc-std()-Y 
* tGravityAcc-std()-Z 
* tBodyAccJerk-mean()-X 
* tBodyAccJerk-mean()-Y 
* tBodyAccJerk-mean()-Z 
* tBodyAccJerk-std()-X 
* tBodyAccJerk-std()-Y 
* tBodyAccJerk-std()-Z
* tBodyGyro-mean()-X 
* tBodyGyro-mean()-Y
* tBodyGyro-mean()-Z
* tBodyGyro-std()-X 
* tBodyGyro-std()-Y 
* tBodyGyro-std()-Z 
* tBodyGyroJerk-mean()-X 
* tBodyGyroJerk-mean()-Y 
* tBodyGyroJerk-mean()-Z 
* tBodyGyroJerk-std()-X 
* tBodyGyroJerk-std()-Y 
* tBodyGyroJerk-std()-Z
* tBodyAccMag-mean() 
* tBodyAccMag-std()
* tGravityAccMag-mean()
* tGravityAccMag-std() 
* tBodyAccJerkMag-mean()
* tBodyAccJerkMag-std()
* tBodyGyroMag-mean()
* tBodyGyroMag-std() 
* tBodyGyroJerkMag-mean()
* tBodyGyroJerkMag-std() 
* fBodyAcc-mean()-X
* fBodyAcc-mean()-Y 
* fBodyAcc-mean()-Z 
* fBodyAcc-std()-X 
* fBodyAcc-std()-Y
* fBodyAcc-std()-Z 
* fBodyAccJerk-mean()-X 
* fBodyAccJerk-mean()-Y
* fBodyAccJerk-mean()-Z
* fBodyAccJerk-std()-X
* fBodyAccJerk-std()-Y 
* fBodyAccJerk-std()-Z
* fBodyGyro-mean()-X 
* fBodyGyro-mean()-Y 
* fBodyGyro-mean()-Z
* fBodyGyro-std()-X 
* fBodyGyro-std()-Y 
* fBodyGyro-std()-Z 
* fBodyAccMag-mean() 
* fBodyAccMag-std() 
* fBodyBodyAccJerkMag-mean()
* fBodyBodyAccJerkMag-std()
* fBodyBodyGyroMag-mean()
* fBodyBodyGyroMag-std() 
* fBodyBodyGyroJerkMag-mean()
* fBodyBodyGyroJerkMag-std()

# Transformations

The script run_analysis.R does:

* Load the various files which make-up the UCI dataset.
* Merges the three train and test files into a single data.
* Creates a smaller second data set, containing only subject, activity, and mean and std variables.
* Computes the means of this secondary data set, grouped by subject/activity.
* Saves this data set to tidy_data_set.txt
