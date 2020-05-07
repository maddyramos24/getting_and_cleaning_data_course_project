# Code Book
This code book describes the variables, the data, and any transformations or work that was performed to clean up the data
## Data
- This project utilizes data from the UCI Machine Learning Respository:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
- Specific data for this project can be found here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
- The goal of the project was to transform this dataset into a tidy data set with the average of each variable for each activity and each subject
- The output data from this project can be found in 'tidy.txt'
## Transformations
1. Merged the training and the test sets to create one data set.
2. Extracted only the measurements on the mean and standard deviation for each measurement.
3. Used descriptive activity names to name the activities in the data set
4. Appropriately labeled the data set with descriptive variable names.
5. From the data set in step 4, created a second, independent tidy data set with the average of each variable for each activity and each subject.
## Variables
* subject - test subject ID
* activity - activity being performed while measurements were taken
* timeBodyAccelerometerMeanX
* timeBodyAccelerometerMeanY
* timeBodyAccelerometerMeanZ
* timeBodyAccelerometerStdX
* timeBodyAccelerometerStdY
* timeBodyAccelerometerStdZ
* timeGravityAccelerometerMeanX
* timeGravityAccelerometerMeanY
* timeGravityAccelerometerMeanZ
* timeGravityAccelerometerStdX
* timeGravityAccelerometerStdY
* timeGravityAccelerometerStdZ
* timeBodyAccelerometerJerkMeanX
* timeBodyAccelerometerJerkMeanY
* timeBodyAccelerometerJerkMeanZ
* timeBodyAccelerometerJerkStdX
* timeBodyAccelerometerJerkStdY
* timeBodyAccelerometerJerkStdZ
* timeBodyGyroscopeMeanX
* timeBodyGyroscopeMeanY
* timeBodyGyroscopeMeanZ
* timeBodyGyroscopeStdX
* timeBodyGyroscopeStdY
* timeBodyGyroscopeStdZ
* timeBodyGyroscopeJerkMeanX
* timeBodyGyroscopeJerkMeanY
* timeBodyGyroscopeJerkMeanZ
* timeBodyGyroscopeJerkStdX
* timeBodyGyroscopeJerkStdY
* timeBodyGyroscopeJerkStdZ
* timeBodyAccelerometerMagnitudeMean
* timeBodyAccelerometerMagnitudeStd
* timeGravityAccelerometerMagnitudeMean
* timeGravityAccelerometerMagnitudeStd
* timeBodyAccelerometerJerkMagnitudeMean
* timeBodyAccelerometerJerkMagnitudeStd
* timeBodyGyroscopeMagnitudeMean
* timeBodyGyroscopeMagnitudeStd
* timeBodyGyroscopeJerkMagnitudeMean
* timeBodyGyroscopeJerkMagnitudeStd
* frequencyBodyAccelerometerMeanX
* frequencyBodyAccelerometerMeanY
* frequencyBodyAccelerometerMeanZ
* frequencyBodyAccelerometerStdX
* frequencyBodyAccelerometerStdY
* frequencyBodyAccelerometerStdZ
* frequencyBodyAccelerometerMeanFreqX
* frequencyBodyAccelerometerMeanFreqY
* frequencyBodyAccelerometerMeanFreqZ
* frequencyBodyAccelerometerJerkMeanX
* frequencyBodyAccelerometerJerkMeanY
* frequencyBodyAccelerometerJerkMeanZ
* frequencyBodyAccelerometerJerkStdX
* frequencyBodyAccelerometerJerkStdY
* frequencyBodyAccelerometerJerkStdZ
* frequencyBodyAccelerometerJerkMeanFreqX
* frequencyBodyAccelerometerJerkMeanFreqY
* frequencyBodyAccelerometerJerkMeanFreqZ
* frequencyBodyGyroscopeMeanX
* frequencyBodyGyroscopeMeanY
* frequencyBodyGyroscopeMeanZ
* frequencyBodyGyroscopeStdX
* frequencyBodyGyroscopeStdY
* frequencyBodyGyroscopeStdZ
* frequencyBodyGyroscopeMeanFreqX
* frequencyBodyGyroscopeMeanFreqY
* frequencyBodyGyroscopeMeanFreqZ
* frequencyBodyAccelerometerMagnitudeMean
* frequencyBodyAccelerometerMagnitudeStd
* frequencyBodyAccelerometerMagnitudeMeanFreq
* frequencyBodyAccelerometerJerkMagnitudeMean
* frequencyBodyAccelerometerJerkMagnitudeStd
* frequencyBodyAccelerometerJerkMagnitudeMeanFreq
* frequencyBodyGyroscopeMagnitudeMean
* frequencyBodyGyroscopeMagnitudeStd
* frequencyBodyGyroscopeMagnitudeMeanFreq
* frequencyBodyGyroscopeJerkMagnitudeMean
* frequencyBodyGyroscopeJerkMagnitudeStd
* frequencyBodyGyroscopeJerkMagnitudeMeanFreq


