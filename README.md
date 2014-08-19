================================================================
Getting-and-Cleaning-Data-Course
Version 1.0
Course Project for Getting and Cleaning Data Course
================================================================
Mitchell Ko
================================================================
Steps:
1. Download the Data set from below links
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

2. Decompress the ZIP file and keep the "UCI HAR Dataset" subdirectory structure as original.
UCI HAR Dataset
\test
\train

3. Copy the "UCI HAR Dataset" subdirectory into the Working directory of "run_analysis.R" script

4. Execute the "run_analysis.R" script, a "har_tidy_data.TXT" file for Step. 5 will be created in Working directory.
	. Read individual portion of data from train and test sub-folders and merge them together with rbind.
		- 3 tables "all_X", "all_y" and "all_subject" are generated.
	. Read the feature names from "features.txt" and use it to names the variables in table "all_X".
	. Extract from "all_X" only the columns contains "mean()" or "std()".
		- Table "tidy_X" is generated with columns contains "mean()" or "std()" only.
	. Combine 3 tables "all_subject", "all_y" and "tidy_X" into 1 single table "tidy_data1".
	. Names the 1st and 2nd columns with more descriptive names - "Subject" and "Activity".
	. Read "activity_labels" and substitute the values in "Activity" with more descriptive names.
	. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
	. Remove redundant columns and names the newly generated columns with more descriptive names.
	. Write the 2nd tidy data set into har_tidy_data.txt.