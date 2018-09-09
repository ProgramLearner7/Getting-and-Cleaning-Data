# Getting-and-Cleaning-Data
#### The script is to merge train and test sets and calculate the average of each variables by subject and activity.
#### All the data sets are imported using "Import Dataset" option in RStudio.
## Steps to clean data set: 
#### 1. Use "Import Dataset" option in RStudio to read X_test.txt, y_test.txt, X_train.txt and y_train.txt
#### 2. Rename column names
#### 3. Link subjects with their test and train sets
#### 4. Merges the training and the test sets to create one data set.
#### 5. Extracts only the measurements on the mean and standard deviation for each measurement.
#### 6. Use "Import Dataset" option in RStudio to read activity_labels.txt
#### 7. Uses descriptive activity names to name the activities in the data set
#### 8. Create a dataframe includes the average of each variable for each activity and each subject

## Code Book:
#### ID: Identifiers of each study subject
#### Activity: Activity names
#### tBodyAcc-XYZ and tGravityAcc-XYZ: Body and gravity acceleration signals
#### tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ: Body linear acceleration and angular velocity of Jerk signals
#### tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag: magnitude of three-dimensional signals calculated by the Euclidean norm
#### fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag: Frequency of domain signals
#### mean(): Mean value 
#### std(): Standard deviation
