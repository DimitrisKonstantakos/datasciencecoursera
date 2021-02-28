## Introduction
 There are data linked to website, that collected from a range of sensors of a smartphone (accelerometer and gyroscope), a Samsung Galaxy S II smartphone. The data were captureda at 3-axial linear acceleration and 3-axial angular velocity with a constant rate of 50Hz, according to the article of course (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

## Data

The data are included in zip file in two main categories the test data and the training data. These data are related to Subject, Activity, and sensor data as signals from accelerometer and gyroscope.

### Subject 

SubjectId from 1 to 30

## Measurements
These variables are separated in three axes and we keep only the mean and the standard deviation of them.


*TimeBodyAccelerometerMeanX 
*TimeBodyAccelerometerMeanY 
*TimeBodyAccelerometerMeanZ 
*TimeBodyAccelerometerStandardDeviationX 
*TimeBodyAccelerometerStandardDeviationY 
*TimeBodyAccelerometerStandardDeviationZ 
*TimeGravityAccelerometerMeanX 
*TimeGravityAccelerometerMeanY 
*TimeGravityAccelerometerMeanZ 
*TimeGravityAccelerometerStandardDeviationX 
*TimeGravityAccelerometerStandardDeviationY 
*TimeGravityAccelerometerStandardDeviationZ 
*TimeBodyAccelerometerJerkMeanX 
*TimeBodyAccelerometerJerkMeanY 
*TimeBodyAccelerometerJerkMeanZ 
*TimeBodyAccelerometerJerkStandardDeviationX 
*TimeBodyAccelerometerJerkStandardDeviationY 
*TimeBodyAccelerometerJerkStandardDeviationZ 
*TimeBodyGyroscopeMeanX 
*TimeBodyGyroscopeMeanY 
*TimeBodyGyroscopeMeanZ 
*TimeBodyGyroscopeStandardDeviationX 
*TimeBodyGyroscopeStandardDeviationY 
*TimeBodyGyroscopeStandardDeviationZ 
*TimeBodyGyroscopeJerkMeanX 
*TimeBodyGyroscopeJerkMeanY 
*TimeBodyGyroscopeJerkMeanZ 
*TimeBodyGyroscopeJerkStandardDeviationX 
*TimeBodyGyroscopeJerkStandardDeviationY 
*TimeBodyGyroscopeJerkStandardDeviationZ 
*TimeBodyAccelerometerMagnitudeMean 
*TimeBodyAccelerometerMagnitudeStandardDeviation 
*TimeGravityAccelerometerMagnitudeMean 
*TimeGravityAccelerometerMagnitudeStandardDeviation 
*TimeBodyAccelerometerJerkMagnitudeMean 
*TimeBodyAccelerometerJerkMagnitudeStandardDeviation 
*TimeBodyGyroscopeMagnitudeMean 
*TimeBodyGyroscopeMagnitudeStandardDeviation 
*TimeBodyGyroscopeJerkMagnitudeMean 
*TimeBodyGyroscopeJerkMagnitudeStandardDeviation 
*FrequencyBodyAccelerometerMeanX 
*FrequencyBodyAccelerometerMeanY 
*FrequencyBodyAccelerometerMeanZ 
*FrequencyBodyAccelerometerStandardDeviationX 
*FrequencyBodyAccelerometerStandardDeviationY
*FrequencyBodyAccelerometerStandardDeviationZ 
*FrequencyBodyAccelerometerMeanFreqX 
*FrequencyBodyAccelerometerMeanFreqY 
*FrequencyBodyAccelerometerMeanFreqZ 
*FrequencyBodyAccelerometerJerkMeanX 
*FrequencyBodyAccelerometerJerkMeanY 
*FrequencyBodyAccelerometerJerkMeanZ 
*FrequencyBodyAccelerometerJerkStandardDeviationX 
*FrequencyBodyAccelerometerJerkStandardDeviationY 
*FrequencyBodyAccelerometerJerkStandardDeviationZ 
*FrequencyBodyAccelerometerJerkMeanFreqX 
*FrequencyBodyAccelerometerJerkMeanFreqY 
*FrequencyBodyAccelerometerJerkMeanFreqZ 
*FrequencyBodyGyroscopeMeanX 
*FrequencyBodyGyroscopeMeanY 
*FrequencyBodyGyroscopeMeanZ 
*FrequencyBodyGyroscopeStandardDeviationX 
*FrequencyBodyGyroscopeStandardDeviationY 
*FrequencyBodyGyroscopeStandardDeviationZ 
*FrequencyBodyGyroscopeMeanFreqX
*FrequencyBodyGyroscopeMeanFreqY 
*FrequencyBodyGyroscopeMeanFreqZ 
*FrequencyBodyAccelerometerMagnitudeMean 
*FrequencyBodyAccelerometerMagnitudeStandardDeviation
*FrequencyBodyAccelerometerMagnitudeMeanFreq 
*FrequencyBodyAccelerometerJerkMagnitudeMean 
*FrequencyBodyAccelerometerJerkMagnitudeStandardDeviation 
*FrequencyBodyAccelerometerJerkMagnitudeMeanFreq 
*FrequencyBodyGyroscopeMagnitudeMean 
*FrequencyBodyGyroscopeMagnitudeStandardDeviation 
*FrequencyBodyGyroscopeMagnitudeMeanFreq 
*FrequencyBodyGyroscopeJerkMagnitudeMean 
*FrequencyBodyGyroscopeJerkMagnitudeStandardDeviation
*FrequencyBodyGyroscopeJerkMagnitudeMeanFreq 
*angletBodyAccelerometerMean,gravity 
*angletBodyAccelerometerJerkMean,gravityMean 
*angletBodyGyroscopeMean,gravityMean 
*angletBodyGyroscopeJerkMean,gravityMean 
*angleX,gravityMean 
*angleY,gravityMean 
*angleZ,gravityMean

## Activity Labels
As the article mentioned, the experiment monitorized via a smartphone the six different activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) of people.

WALKING  
WALKING_UPSTAIRS 
WALKING_DOWNSTAIRS  
SITTING 
STANDING
LAYING 

## Conclusion 

As a result, the expected tidydata set of the course project  that includes the average of each variable for each activity and each subject id.