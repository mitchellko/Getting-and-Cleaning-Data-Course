## Set my working directory
setwd("E:\\Coursera\\Getting_and_Cleaning_Data")

## The Data Set is in "UCI HAR Dataset" subdirectory in my working directory
## The subdirectory structure is kept as original

## Read X data from Train Set and Test Set, and merge them together
train_X <- read.table( ".\\UCI HAR Dataset\\train\\X_train.txt")
test_X <- read.table( ".\\UCI HAR Dataset\\test\\X_test.txt")
all_X <- rbind( train_X, test_X)
## Labels the data set with descriptive variable names.
features_name <- read.table( ".\\UCI HAR Dataset\\features.txt")
colnames( all_x) <-  features_name$V2

## Read y data from Train Set and Test Set, and merge them together
train_y <- read.table( ".\\UCI HAR Dataset\\train\\y_train.txt")
test_y <- read.table( ".\\UCI HAR Dataset\\test\\y_test.txt")
all_y <- rbind( train_y, test_y)

## Read subject data from Train Set and Test Set, and merge them together
train_subject <- read.table( ".\\UCI HAR Dataset\\train\\subject_train.txt")
test_subject <- read.table( ".\\UCI HAR Dataset\\test\\subject_test.txt")
all_subject <- rbind( train_subject, test_subject)

## Extracts only the the mean and standard deviation for each measurement. 
tidy_X <- all_X[ , c( grep( "mean()", colnames( all_X), fixed=TRUE),
                             grep( "std()", colnames( all_X), fixed=TRUE))]

## Merges the subject, y and extracted X altogether into one data set.
tidy_data1 <- cbind( all_subject, all_y, tidy_X)

## Labels the 1st and 2nd Columns in data set with descriptive variable names.
colnames( all_data)[1:2] <-  c( "Subject", "Activity")

## Uses descriptive activity names to name the activities in the data set
activity_labels <- read.table( ".\\UCI HAR Dataset\\activity_labels.txt")
tidy_data1[,"Activity"] <- activity_labels$V2[ tidy_data1[,"Activity"]]

## Creates a second, independent tidy data set with the average of each variable
## for each activity and each subject.
attach( tidy_data1)
tidy_data2 <- aggregate( tidy_data1, by=list( Subject, Activity), FUN=mean)
detach( tidy_data1)

## Remove the redundant columns and set descriptive names to the newly generated columns.
tidy_data2 <- tidy_data2[c( -3, -4)]
colnames( tidy_data2)[1:2] <- c( "Subject", "Activity")

## Write the 2nd tidy data into TXT file.
write.table( tidy_data2, ".\\har_tidy_data.txt", row.names=FALSE)