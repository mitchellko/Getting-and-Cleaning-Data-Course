===========================================
DATA DICTIONARY - HAR_TIDT_DATA.TXT

Description: This data set was created from subseting and reshaping the original dataset
downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.
The information of the original data set can be obtained from
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The Processes taken to create this dataset from the original are as below:
Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement. 
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive variable names. 
Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

All the feature values are normalized and bounded within [-1,1].
And stored in " " seperated text format.
===========================================
Totally 180 Rows of 68 Columns.

Variables(Columns):

	Subject: Identifier of the of the 30 subjects performing activities for generating the data.
		1..30

	Activity: One of the 6 defined activities.
		WALKING
		WALKING_UPSTAIRS
		WALKING_DOWNSTAIRS
		SITTING
		STANDING
		LAYING

	The succeeding 66 Variables contains the average value per Subject and Activity
	of the mean() and std() of below features, where XYZ means there are 3 individual variables
	in the X, Y and Z directions:
	(8 of them with 3 directions, the other 9 has only one. All with mean() and std(), 
	 totally ( 8 * 3 + 9) * 2 = 66 variables.)
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
	Notes: 
	======
	- Features are normalized and bounded within [-1,1].
	- Each feature vector is a row on the text file.
