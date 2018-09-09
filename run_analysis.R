#Use "Import Dataset" option in RStudio to read X_test.txt and y_test.txt
# Rename column names
names(X_test) = features[["X2"]]
names(y_test) = "ActivityCode"
names(subject_test) = "ID"
# Link subjects with their test sets
test = cbind(subject_test, y_test, X_test)

#Use "Import Dataset" option in RStudio to read X_train.txt and y_train.txt
# Rename column names
names(X_train) = features[["X2"]]
names(y_train) = "ActivityCode"
names(subject_train) = "ID"
# Link subjects with their train sets
train = cbind(subject_train, y_train, X_train)

#Merges the training and the test sets to create one data set.
all = rbind(test, train)
#Extracts only the measurements on the mean and standard deviation for each measurement.
MeanStd = all[, grepl("mean+|std+|ID|ActivityCode", names(all))]

#Use "Import Dataset" option in RStudio to read activity_labels.txt
#Uses descriptive activity names to name the activities in the data set
names(activity_labels) = c("ActivityCode", "Activity")
MeanStd = merge(MeanStd, activity_labels, by.x = "ActivityCode", by.y = "ActivityCode")


#A dataframe includes the average of each variable for each activity and each subject
final = aggregate(MeanStd[, 3:81], list(MeanStd$ID, MeanStd$Activity), mean)
colnames(final)[1:2] = c("ID", "Activity")

