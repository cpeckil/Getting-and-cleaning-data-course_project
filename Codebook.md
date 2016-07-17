Getting and Cleaning Data Course Project Codebook

Tidy data set name: mean_by_subject_activity.txt

The data represents data collected from the accelerometers from the Samsung Galaxy S smartphone.

Raw data:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Summary Choices
Data was summarized by the subject and activity type and the mean was taken of all measurements in the tidy data set.  

Experimental Design


Study Design
A description of how the data was collected can be found in Readmeoriginal.txt

Code Book
- See features_info.txt for a description of the original variables used to create this tidy data set. 
- The variable names found in features.txt were transformed as follows:
  f at beginning of variable name = Frequency
  t at beginning of variable name = Time
  BodyAcc = BodyMotionMeasuredByAccelerometer
  GravityAcc = GravitationalMotionMeasuredByAccelerometer
  BodyAccJerk = BodyMotionJerkSignalMeasuredByAccelerometer
  BodyGyro = BodyMotionMeasuredByGyroscope
  BodyAcc = BodyMotionMeasuredByAccelerometer
  Mag = Magnitude
  Mean()= Mean
  meanFreq()= MeanFrequency
  std() = StdDev
  tBody = TimeBody

- Of the original 561 variables, only the measurements on the mean and standard deviation were included in this tidy data set.
- the variables contained in the tidy data set are:
"Subject" = each of the 30 subjects numbered 1-30
"Activity" = a description of the activity done by the subject
"TimeBodyMotionMeasuredByAccelerometer-Mean-X" 
ÒTimeBodyMotionMeasuredByAccelerometer-Mean-Y"
ÒTimeBodyMotionMeasuredByAccelerometer-Mean-Z"
"TimeBodyMotionMeasuredByAccelerometer-StdDev-X
"TimeBodyMotionMeasuredByAccelerometer-StdDev-Y"
"TimeBodyMotionMeasuredByAccelerometer-StdDev-Z"
"TimeGravitationalMotionMeasuredByAccelerometer-Mean-X"
"TimeGravitationalMotionMeasuredByAccelerometer-Mean-Y"
"TimeGravitationalMotionMeasuredByAccelerometer-Mean-Z"
"TimeGravitationalMotionMeasuredByAccelerometer-StdDev-X"
"TimeGravitationalMotionMeasuredByAccelerometer-StdDev-Y"
"TimeGravitationalMotionMeasuredByAccelerometer-StdDev-Z"
"TimeBodyMotionMeasuredByAccelerometerJerk-Mean-X"
"TimeBodyMotionMeasuredByAccelerometerJerk-Mean-Y"
"TimeBodyMotionMeasuredByAccelerometerJerk-Mean-Z"
"TimeBodyMotionMeasuredByAccelerometerJerk-StdDev-X"
"TimeBodyMotionMeasuredByAccelerometerJerk-StdDev-Y"
"TimeBodyMotionMeasuredByAccelerometerJerk-StdDev-Z"
"TimeBodyMotionMeasuredByGyroscope-Mean-X"
"TimeBodyMotionMeasuredByGyroscope-Mean-Y"
"TimeBodyMotionMeasuredByGyroscope-Mean-Z"
"TimeBodyMotionMeasuredByGyroscope-StdDev-X"
"TimeBodyMotionMeasuredByGyroscope-StdDev-Y"
"TimeBodyMotionMeasuredByGyroscope-StdDev-Z"
"TimeBodyMotionMeasuredByGyroscopeJerk-Mean-X"
"TimeBodyMotionMeasuredByGyroscopeJerk-Mean-Y"
"TimeBodyMotionMeasuredByGyroscopeJerk-Mean-Z"
"TimeBodyMotionMeasuredByGyroscopeJerk-StdDev-X"
"TimeBodyMotionMeasuredByGyroscopeJerk-StdDev-Y"
"TimeBodyMotionMeasuredByGyroscopeJerk-StdDev-Z" "TimeBodyMotionMeasuredByAccelerometerMagnitude-Mean" "TimeBodyMotionMeasuredByAccelerometerMagnitude-StdDev" "TimeGravitationalMotionMeasuredByAccelerometerMagnitude-Mean" "TimeGravitationalMotionMeasuredByAccelerometerMagnitude-StdDev" "TimeBodyMotionMeasuredByAccelerometerJerkMagnitude-Mean" "TimeBodyMotionMeasuredByAccelerometerJerkMagnitude-StdDev" "TimeBodyMotionMeasuredByGyroscopeMagnitude-Mean" "TimeBodyMotionMeasuredByGyroscopeMagnitude-StdDev" "TimeBodyMotionMeasuredByGyroscopeJerkMagnitude-Mean" "TimeBodyMotionMeasuredByGyroscopeJerkMagnitude-StdDev" "FrequencyBodyMotionMeasuredByAccelerometer-Mean-X" "FrequencyBodyMotionMeasuredByAccelerometer-Mean-Y" "FrequencyBodyMotionMeasuredByAccelerometer-Mean-Z" "FrequencyBodyMotionMeasuredByAccelerometer-StdDev-X" "FrequencyBodyMotionMeasuredByAccelerometer-StdDev-Y" "FrequencyBodyMotionMeasuredByAccelerometer-StdDev-Z" "FrequencyBodyMotionMeasuredByAccelerometer-MeanFrequency-X" "FrequencyBodyMotionMeasuredByAccelerometer-MeanFrequency-Y" "FrequencyBodyMotionMeasuredByAccelerometer-MeanFrequency-Z" "FrequencyBodyMotionMeasuredByAccelerometerJerk-Mean-X" "FrequencyBodyMotionMeasuredByAccelerometerJerk-Mean-Y" "FrequencyBodyMotionMeasuredByAccelerometerJerk-Mean-Z" "FrequencyBodyMotionMeasuredByAccelerometerJerk-StdDev-X" "FrequencyBodyMotionMeasuredByAccelerometerJerk-StdDev-Y" "FrequencyBodyMotionMeasuredByAccelerometerJerk-StdDev-Z" "FrequencyBodyMotionMeasuredByAccelerometerJerk-MeanFrequency-X" "FrequencyBodyMotionMeasuredByAccelerometerJerk-MeanFrequency-Y" "FrequencyBodyMotionMeasuredByAccelerometerJerk-MeanFrequency-Z" "FrequencyBodyMotionMeasuredByGyroscope-Mean-X" "FrequencyBodyMotionMeasuredByGyroscope-Mean-Y" "FrequencyBodyMotionMeasuredByGyroscope-Mean-Z" "FrequencyBodyMotionMeasuredByGyroscope-StdDev-X" "FrequencyBodyMotionMeasuredByGyroscope-StdDev-Y" "FrequencyBodyMotionMeasuredByGyroscope-StdDev-Z" "FrequencyBodyMotionMeasuredByGyroscope-MeanFrequency-X" "FrequencyBodyMotionMeasuredByGyroscope-MeanFrequency-Y" "FrequencyBodyMotionMeasuredByGyroscope-MeanFrequency-Z" "FrequencyBodyMotionMeasuredByAccelerometerMagnitude-Mean" "FrequencyBodyMotionMeasuredByAccelerometerMagnitude-StdDev" "FrequencyBodyMotionMeasuredByAccelerometerMagnitude-MeanFrequency" "FrequencyBodyBodyMotionMeasuredByAccelerometerJerkMagnitude-Mean" "FrequencyBodyBodyMotionMeasuredByAccelerometerJerkMagnitude-StdDev" "FrequencyBodyBodyMotionMeasuredByAccelerometerJerkMagnitude-MeanFrequency"
"FrequencyBodyBodyMotionMeasuredByGyroscopeMagnitude-Mean" "FrequencyBodyBodyMotionMeasuredByGyroscopeMagnitude-StdDev" "FrequencyBodyBodyMotionMeasuredByGyroscopeMagnitude-MeanFrequency" "FrequencyBodyBodyMotionMeasuredByGyroscopeJerkMagnitude-Mean" "FrequencyBodyBodyMotionMeasuredByGyroscopeJerkMagnitude-StdDev" "FrequencyBodyBodyMotionMeasuredByGyroscopeJerkMagnitude-MeanFrequency"
"angle(TimeBodyMotionMeasuredByAccelerometerMean,gravity)" "angle(TimeBodyMotionMeasuredByAccelerometerJerkMean),gravityMean)" "angle(TimeBodyMotionMeasuredByGyroscopeMean,gravityMean)" "angle(TimeBodyMotionMeasuredByGyroscopeJerkMean,gravityMean)" "angle(X,gravityMean)"
"angle(Y,gravityMean)"
"angle(Z,gravityMean)"
- the values contained in the data set are the means of each variable summarized by the Subject and Activity
