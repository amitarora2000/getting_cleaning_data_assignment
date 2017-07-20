# CodeBook for Getting & Cleaning Data Assignment


## Introduction

The complete the objectives defined in the assignment a R sciprt: **[run_analysis.R](https://github.com/amitarora2000/getting_cleaning_data_assignment/blob/master/run_analysis.R)** is developed. 
The script performs following steps: 
1. The zip file downloaded and saved on the local working directory. And then it is unzipped to extract the data. 
2. The train, test and subject data is then merged to create to create x_merged, y_merged and subject_merged datasets
3. Extract measurements on the mean and standard deviation. x_merged is modified to only include mean and std measurements. Resulting data set is called x_desired
4. Combine all the datasets in one single dataset & add column names
5. Finally, create an independent tidy data set with the average of each variable for each activity and each subject 

The results are stored in **[tidy_data.txt](https://github.com/amitarora2000/getting_cleaning_data_assignment/blob/master/tidy_data.txt)**.

## tidy_data
There were 66 different mean and std measurements captured during the experiment across 30 participants (subjects) whilst they performed 6 different activites.
This data set contains mean of all those measurements across 180 rows ( 30 subjects x 6 activies each).


### Data Identifiers

* test_participant - The ID of the test subject
* participant_activity - The type of activity performed when the corresponding measurements were taken

### Measurements

 tBodyAccMeanX | tBodyAccMeanY | tBodyAccMeanZ | tBodyAccStdX  
--- | --- | --- | --- |
tBodyAccStdY |tBodyAccStdZ | tGravityAccMeanX | tGravityAccMeanY 
tGravityAccMeanZ | tGravityAccStdX | tGravityAccStdY | fBodyBodyGyroJerkMagMeanFreq
tGravityAccStdZ | tBodyAccJerkMeanX | tBodyAccJerkMeanY | tBodyAccJerkMeanZ
tBodyAccJerkStdX | tBodyAccJerkStdY | tBodyAccJerkStdZ | tBodyGyroMeanX
tBodyGyroMeanY | tBodyGyroMeanZ | tBodyGyroStdX | tBodyGyroStdY
tBodyGyroStdZ | tBodyGyroJerkMeanX | tBodyGyroJerkMeanY |tBodyGyroJerkMeanZ
tBodyGyroJerkStdX | tBodyGyroJerkStdY | tBodyGyroJerkStdZ | tBodyAccMagMean
tBodyAccMagStd | tGravityAccMagMean | tGravityAccMagStd | tBodyAccJerkMagMean
tBodyAccJerkMagStd | tBodyGyroMagMean | tBodyGyroMagStd | tBodyGyroJerkMagMean
tBodyGyroJerkMagStd | fBodyAccMeanX | fBodyAccMeanY | fBodyAccMeanZ
fBodyAccStdX | fBodyAccStdY | fBodyAccStdZ | fBodyAccMeanFreqX
fBodyAccMeanFreqY | fBodyAccMeanFreqZ | fBodyAccJerkMeanX | fBodyAccJerkMeanY
fBodyAccJerkMeanZ | fBodyAccJerkStdX | fBodyAccJerkStdY | fBodyAccJerkStdZ
fBodyAccJerkMeanFreqX | fBodyAccJerkMeanFreqY | fBodyAccJerkMeanFreqZ | fBodyGyroMeanX
fBodyGyroMeanY | fBodyGyroMeanZ | fBodyGyroStdX | fBodyGyroStdY
fBodyGyroStdZ | fBodyGyroMeanFreqX | fBodyGyroMeanFreqY | fBodyGyroMeanFreqZ
fBodyAccMagMean | fBodyAccMagStd | fBodyAccMagMeanFreq | fBodyBodyAccJerkMagMean
fBodyBodyAccJerkMagStd | fBodyBodyAccJerkMagMeanFreq | fBodyBodyGyroMagMean | fBodyBodyGyroMagStd
fBodyBodyGyroMagMeanFreq | fBodyBodyGyroJerkMagMean | fBodyBodyGyroJerkMagStd | 

### Participant Activity Labels

1. **WALKING**: subject was walking during the test 
2. **WALKING_UPSTAIRS** : subject was walking up a staircase during the test 
3. **WALKING_DOWNSTAIRS** : subject was walking down a staircase during the test 
4. **SITTING**: subject was sitting during the test 
5. **STANDING**: subject was standing during the test
6. **LAYING**: subject was laying down during the test
