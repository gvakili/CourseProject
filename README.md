The analysis have been carried out using Smartphones dataset provided by "Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto. Smartlab - Non Linear Complex Systems Laboratory - University degli Studi di Genova" [1]. In the original dataset, for each record it is provided:

////////////////////////////////////////////////

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

Based on the original dataset, the current dataset includes the following files:

////////////////////////////////////////////////

- 'README.md'
- 'CodeBook.md' : Describes the variables, the data, and any transformations or work that have been performed to clean up the data.
- 'run_analysis.R' : The R script for performing the analysis.
- 'tidyDataset.txt': The tidy data set with the average of each variable for each activity and each subject in the original dataset.



[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
