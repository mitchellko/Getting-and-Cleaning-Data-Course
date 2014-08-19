		DATA DICTIONARY - HAR_TIDT_DATA.TXT
Totally 180 Rows of 68 Columns.
Variables(Columns):
	Subject: One of the 30 subjects performing activities for generating the data.
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
	