# Run_Analysis
My code downloads the file and uzips it.  All of the files are kept in the "UCI HAR Dataset" folder in my working directory and retrieved from within those folders.

I went a little out of order from the class directions.
1. I read the test and training data in and then comined them with an rbind
2. I read the headings in as a vector and added the column names in
3. I used the files y_test.txt and y_train.txt for the activity labes.  I comined them as one vector and added that as a columne in my data set.
4. I then reduced all the variables to only the ones with mean and stand deviation
5. I added the subject id's in the data set
6. Last I created the tidy dataset with group by and summarise_each

## Code Book
Subjects					ID of the subjects
Activity					Activity being measured
tBodyAcc-mean()-X				mean of tBodyAcc for X
tBodyAcc-mean()-Y				mean of tBodyAcc for Y
tBodyAcc-mean()-Z				mean of tBodyAcc for Z
tGravityAcc-mean()-X				mean of tGravityAcc for X
tGravityAcc-mean()-Y				mean of tGravityAcc for Y
tGravityAcc-mean()-Z				mean of tGravityAcc for Z
tBodyAccJerk-mean()-X				mean of tBodyAccJerk for X
tBodyAccJerk-mean()-Y				mean of tBodyAccJerk for Y
tBodyAccJerk-mean()-Z				mean of tBodyAccJerk for Z
tBodyGyro-mean()-X				mean of tBodyGyro for X
tBodyGyro-mean()-Y				mean of tBodyGyro for Y
tBodyGyro-mean()-Z				mean of tBodyGyro for Z
tBodyGyroJerk-mean()-X				mean of tBodyGyroJerk for X
tBodyGyroJerk-mean()-Y				mean of tBodyGyroJerk for Y
tBodyGyroJerk-mean()-Z				mean of tBodyGyroJerk for Z
tBodyAccMag-mean()				mean of tBodyAccMag
tGravityAccMag-mean()				mean of tGravityAccMag
tBodyAccJerkMag-mean()				mean of tBodyAccJerkMag
tBodyGyroMag-mean()				mean of tBodyGyroMag
tBodyGyroJerkMag-mean()				mean of tBodyGyroJerkMag
fBodyAcc-mean()-X				mean of fBodyAcc for X
fBodyAcc-mean()-Y				mean of fBodyAcc for Y
fBodyAcc-mean()-Z				mean of fBodyAcc for Z
fBodyAccJerk-mean()-X				mean of fBodyAccJerk for X
fBodyAccJerk-mean()-Y				mean of fBodyAccJerk for Y
fBodyAccJerk-mean()-Z				mean of fBodyAccJerk for Z
fBodyGyro-mean()-X				mean of fBodyGyro for X
fBodyGyro-mean()-Y				mean of fBodyGyro for Y
fBodyGyro-mean()-Z				mean of fBodyGyro for Z
fBodyAccMag-mean()				mean of fBodyAccMag
fBodyBodyAccJerkMag-mean()			mean of fBodyBodyAccJerkMag
fBodyBodyGyroMag-mean()				mean of fBodyBodyGyroMag
fBodyBodyGyroJerkMag-mean()			mean of fBodyBodyGyroJerkMag
tBodyAcc-std()-X				std of tBodyAcc for X
tBodyAcc-std()-Y				std of tBodyAcc for Y
tBodyAcc-std()-Z				std of tBodyAcc for Z
tGravityAcc-std()-X				std of tGravityAcc for X
tGravityAcc-std()-Y				std of tGravityAcc for Y
tGravityAcc-std()-Z				std of tGravityAcc for Z
tBodyAccJerk-std()-X				std of tBodyAccJerk for X
tBodyAccJerk-std()-Y				std of tBodyAccJerk for Y
tBodyAccJerk-std()-Z				std of tBodyAccJerk for Z
tBodyGyro-std()-X				std of tBodyGyro for X
tBodyGyro-std()-Y				std of tBodyGyro for Y
tBodyGyro-std()-Z				std of tBodyGyro for Z
tBodyGyroJerk-std()-X				std of tBodyGyroJerk for X
tBodyGyroJerk-std()-Y				std of tBodyGyroJerk for Y
tBodyGyroJerk-std()-Z				std of tBodyGyroJerk for Z
tBodyAccMag-std()				std of tBodyAccMag
tGravityAccMag-std()				std of tGravityAccMag
tBodyAccJerkMag-std()				std of tBodyAccJerkMag
tBodyGyroMag-std()				std of tBodyGyroMag
tBodyGyroJerkMag-std()				std of tBodyGyroJerkMag
fBodyAcc-std()-X				std of fBodyAcc for X
fBodyAcc-std()-Y				std of fBodyAcc for Y
fBodyAcc-std()-Z				std of fBodyAcc for Z
fBodyAccJerk-std()-X				std of fBodyAccJerk for X
fBodyAccJerk-std()-Y				std of fBodyAccJerk for Y
fBodyAccJerk-std()-Z				std of fBodyAccJerk for Z
fBodyGyro-std()-X				std of fBodyGyro for X
fBodyGyro-std()-Y				std of fBodyGyro for Y
fBodyGyro-std()-Z				std of fBodyGyro for Z
fBodyAccMag-std()				std of fBodyAccMag
fBodyBodyAccJerkMag-std()			std of fBodyBodyAccJerkMag
fBodyBodyGyroMag-std()				std of fBodyBodyGyroMag
fBodyBodyGyroJerkMag-std()			std of fBodyBodyGyroJerkMag
