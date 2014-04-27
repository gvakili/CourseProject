#First set working directory to include the following files (or put them in your current working directory.
#The training set
subTrain <- read.table("subject_train.txt")
xTrain <- read.table("X_train.txt")
yTrain <- read.table("y_train.txt")
Train <- cbind(yTrain, xTrain)
Train <- cbind(subTrain, Train)

#The test set
subTest <- read.table("subject_test.txt")
xTest <- read.table("X_test.txt")
yTest <- read.table("y_test.txt")
Test <- cbind(yTest, xTest)
Test <- cbind(subTest, Test)

#1. Merges the training and the test sets to create one data set.
data <- rbind(Train, Test)

#2. Extracts only the measurements on the mean and standard deviation for each measurement.
features <- read.table("features.txt", colClasses= c("integer","character"))
names(data) <- c("subject", "activity", features$V2)
columns <- grepl(("mean|std"), names(data))
dataSubset <- data[,columns]

#3. Uses descriptive activity names to name the activities in the data set.
labels <- read.table("activity_labels.txt", colClasses= c("integer", "factor"))
#labels$V1 is a vector of 1:6 and labels$V2 describes activity names in the dataset.

#4. Appropriately labels the data set with descriptive activity names.
activity <- data$activity
for (i in 1:6) {
  activity <- gsub(i, labels$V2[i], activity)
}
activity <- as.factor(activity)
dataSubset <- cbind(activity, dataSubset)
#Finally, we can add the subject column to the dataSubset too:
dataSubset <- cbind(data$subject, dataSubset)

#5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
dataGroups <- split(data, list(data$subject, data$activity))
#average of each variable for each activity and each subject:
averageMeasure <- lapply(dataGroups, colMeans)
#Creating a "tidy" data set:
tidyDataset <- data.frame(matrix(unlist(averageMeasure), nrow=180, byrow=T))
names(tidyDataset) <- names(data)
write.table(tidyDataset, "tidyDataset.txt")