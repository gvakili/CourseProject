The performed analysis on the original dataset [1] is as follows:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

///////////////////////////////////////

1. Merging the training and the test sets to create one data set:
According to the descriptions of the "subject_train.txt", "subject_test.txt", "X_train.txt", "X_test.txt", "y_train.txt", "y_test.txt" in the README.txt file of the original dataset, to prepare the training [test] set, I combined the data in the following files by columns: "subject_train.txt" ["subject_test.txt"], "X_train.txt" ["X_test.txt"], "y_train.txt" ["y_test.txt"].

2. Extracts only the measurements on the mean and standard deviation for each measurement.
According to the definitions in "" provided by the original dataset, for each measurement of 3-axial signals in the X, Y and Z directions, a set a variables were estimated including "mean()" that is "Mean value" and "std()" that is "Standard deviation" of that measurement. Therefore, I extracted the associated columns with these variables for each measurement from the prepared dataset in step 1.

3. Uses descriptive activity names to name the activities in the data set.
To this end I used ',activity_labels.txt' file as it "links the class labels with their activity name-" (according to the definition in the README.txt provided by the original dataset.

4. Appropriately labels the data set with descriptive activity names.
To this end, I replaced the integer values of the associated column with the activity (in the prepared data subset in step 2) with their descriptive names obtained in step 3.

5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
To this end, I split the dataset prepared in step 1 based on 180 interactions of 6 activities and 30 subjects. As the average of each variable is requierd, I consider all the 561 features in the new dataset (I assumed each feature can be considered as a variable). I prepared the new dataset in compliance with the tidy-data rules and export it as a text file.



[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
