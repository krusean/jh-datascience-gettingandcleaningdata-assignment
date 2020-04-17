# Codebook for tidy_data

## Table of Contents

1. Experimental Study Design
2. Summary Choices
3. Variables

## 1 Experimental Study Design

### Human Activity Recognition Using Smartphones Dataset
#### Version 1.0

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws


The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag.

#### For each record it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.


## 2 Summary Choices

- Input Data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
- Output Data: tidy_data.txt

The following summary choices have been made and carried out with the run_analysis.R script:
- Training and Test Set were merged
- Only the measurements on mean and standard deviation were extracted for each measurement
- The average of each variable for each activity and each subject were taken (Without discriminating between test and train data)

## 3 Explicit Description of Variables in tidy_data

| Column Index | Variable Name                    | Class     | Range    | Description                                |
|--------------|----------------------------------|-----------|----------|--------------------------------------------|
| 1            | subject                          | Integer   | 1-30     | Identifies a subject                     
| 2            | activity                         | Factor    | 1-6      | Identifies the activity                                            
| 3            | tBodyAcc-mean()-X                | Numeric   | [-1, 1]  | Body Acceleration in X-direction, time domain, average of means                                                    
| 4            | tBodyAcc-mean()-Y                | Numeric   | [-1, 1]  | Body Acceleration in Y-direction, time domain, average of means                                             
| 5            | tBodyAcc-mean()-Z                | Numeric   | [-1, 1]  | Body Acceleration in Z-direction, time domain, average of means                                        
| 6            | tBodyAcc-std()-X                 | Numeric   | [-1, 1]  | Body Acceleration in X-direction, time domain, average of standard deviations                                                                    
| 7            | tBodyAcc-std()-Y                 | Numeric   | [-1, 1]  | Body Acceleration in Y-direction, time domain, average of standard deviations                             
| 8            | tBodyAcc-std()-Z                 | Numeric   | [-1, 1]  | Body Acceleration in Z-direction, time domain, average of standard deviations                                             
| 9            | tGravityAcc-mean()-X             | Numeric   | [-1, 1]  | Gravity Acceleration in X-direction, time domain, average of means                                                
| 10           | tGravityAcc-mean()-Y             | Numeric   | [-1, 1]  | Gravity Acceleration in Y-direction, time domain, average of means                                          
| 11           | tGravityAcc-mean()-Z             | Numeric   | [-1, 1]  | Gravity Acceleration in Z-direction, time domain, average of means       
| 12           | tGravityAcc-std()-X              | Numeric   | [-1, 1]  | Gravity Acceleration in X-direction, time domain, average of standard deviations                                                    
| 13           | tGravityAcc-std()-Y              | Numeric   | [-1, 1]  | Gravity Acceleration in Y-direction, time domain, average of standard deviations                   
| 14           | tGravityAcc-std()-Z              | Numeric   | [-1, 1]  | Gravity Acceleration in Z-direction, time domain, average of standard deviations        
| 15           | tBodyAccJerk-mean()-X            | Numeric   | [-1, 1]  | Jerk of Body Acceleration in X-direction, time domain, average of means                 
| 16           | tBodyAccJerk-mean()-Y            | Numeric   | [-1, 1]  | Jerk of Body Acceleration in Y-direction, time domain, average of means                    
| 17           | tBodyAccJerk-mean()-Z            | Numeric   | [-1, 1]  | Jerk of Body Acceleration in Z-direction, time domain, average of means               
| 18           | tBodyAccJerk-std()-X             | Numeric   | [-1, 1]  | Jerk of Body Acceleration in X-direction, time domain, average of standard deviations        
| 19           | tBodyAccJerk-std()-Y             | Numeric   | [-1, 1]  | Jerk of Body Acceleration in Y-direction, time domain , average of standard deviations     
| 20           | tBodyAccJerk-std()-Z             | Numeric   | [-1, 1]  | Jerk of Body Acceleration in Z-direction, time domain, average of standard deviations                  
| 21           | tBodyGyro-mean()-X               | Numeric   | [-1, 1]  | Angular Velocity in X-direction, time domain, average of means    
| 22           | tBodyGyro-mean()-Y               | Numeric   | [-1, 1]  | Angular Velocity in Y-direction, time domain, average of means  
| 23           | tBodyGyro-mean()-Z               | Numeric   | [-1, 1]  | Angular Velocity in Z-direction, time domain, average of means  
| 24           | tBodyGyro-std()-X                | Numeric   | [-1, 1]  | Angular Velocity in X-direction, time domain, average of standard deviations   
| 25           | tBodyGyro-std()-Y                | Numeric   | [-1, 1]  | Angular Velocity in Y-direction, time domain, average of standard deviations   
| 26           | tBodyGyro-std()-Z                | Numeric   | [-1, 1]  | Angular Velocity in Z-direction, time domain, average of standard deviations      
| 27           | tBodyGyroJerk-mean()-X           | Numeric   | [-1, 1]  | Jerk of Angular Velocity in X-direction, time domain, average of means   
| 28           | tBodyGyroJerk-mean()-Y           | Numeric   | [-1, 1]  | Jerk of Angular Velocity in Y-direction, time domain, average of means             
| 29           | tBodyGyroJerk-mean()-Z           | Numeric   | [-1, 1]  | Jerk of Angular Velocity in Z-direction, time domain, average of means          
| 30           | tBodyGyroJerk-std()-X            | Numeric   | [-1, 1]  | Jerk of Angular Velocity in X-direction, time domain, average of standard deviations       
| 31           | tBodyGyroJerk-std()-Y            | Numeric   | [-1, 1]  | Jerk of Angular Velocity in Y-direction, time domain, average of standard deviations     
| 32           | tBodyGyroJerk-std()-Z            | Numeric   | [-1, 1]  | Jerk of Angular Velocity in Z-direction, time domain, average of standard deviations   
| 33           | tBodyAccMag-mean()               | Numeric   | [-1, 1]  | Magnitude of Body Acceleration, time domain, average of means  
| 34           | tBodyAccMag-std()                | Numeric   | [-1, 1]  | Magnitude of Body Acceleration, time domain, average of standard deviations   
| 35           | tGravityAccMag-mean()            | Numeric   | [-1, 1]  | Magnitude of Gravity Acceleration, time domain, average of means   
| 36           | tGravityAccMag-std()             | Numeric   | [-1, 1]  | Magnitude of Gravity Acceleration, time domain, average of standard deviations     
| 37           | tBodyAccJerkMag-mean()           | Numeric   | [-1, 1]  | Magnitude of Jerk of Body Acceleration, time domain, average of means       
| 38           | tBodyAccJerkMag-std()            | Numeric   | [-1, 1]  | Magnitude of Jerk of Body Acceleration, time domain, average of standard deviations            
| 39           | tBodyGyroMag-mean()              | Numeric   | [-1, 1]  | Magnitude of Angular Velocity, time domain, average of means    
| 40           | tBodyGyroMag-std()               | Numeric   | [-1, 1]  | Magnitude of Angular Velocity, time domain    
| 41           | tBodyGyroJerkMag-mean()          | Numeric   | [-1, 1]  | Magnitude of Jerk of Angular Velocity, time domain, average of means  
| 42           | tBodyGyroJerkMag-std()           | Numeric   | [-1, 1]  | Magnitude of Jerk of Angular Velocity, time domain, average of standard deviations              
| 43           | fBodyAcc-mean()-X                | Numeric   | [-1, 1]  | Body Acceleration in X-direction, frequency Domain. average of means        
| 44           | fBodyAcc-mean()-Y                | Numeric   | [-1, 1]  | Body Acceleration in Y-direction, frequency Domain, average of means           
| 45           | fBodyAcc-mean()-Z                | Numeric   | [-1, 1]  | Body Acceleration in Z-direction, frequency Domain, average of means      
| 46           | fBodyAcc-std()-X                 | Numeric   | [-1, 1]  | Body Acceleration in X-direction, frequency Domain, average of standard deviations  
| 47           | fBodyAcc-std()-Y                 | Numeric   | [-1, 1]  | Body Acceleration in Y-direction, frequency Domain, average of standard deviations     
| 48           | fBodyAcc-std()-Z                 | Numeric   | [-1, 1]  | Body Acceleration in Z-direction, frequency Domain, average of standard deviations   
| 49           | fBodyAccJerk-mean()-X            | Numeric   | [-1, 1]  | Jerk of Body Acceleration in X-Direction, frequency Domain, average of means      
| 50           | fBodyAccJerk-mean()-Y            | Numeric   | [-1, 1]  | Jerk of Body Acceleration in Y-Direction, frequency Domain, average of means    
| 51           | BodyAccJerk-mean()-Z             | Numeric   | [-1, 1]  | Jerk of Body Acceleration in Z-Direction, frequency Domain, average of means  
| 52           | fBodyAccJerk-std()-X             | Numeric   | [-1, 1]  | Jerk of Body Acceleration in X-Direction, frequency Domain, average of standard deviations   
| 53           | fBodyAccJerk-std()-Y             | Numeric   | [-1, 1]  | Jerk of Body Acceleration in Y-Direction, frequency Domain, average of standard deviations   
| 54           | fBodyAccJerk-std()-Z             | Numeric   | [-1, 1]  | Jerk of Body Acceleration in Z-Direction, frequency Domain, average of standard deviations           
| 55           | fBodyGyro-mean()-X               | Numeric   | [-1, 1]  | Angular Velocity in X-direction, frequency Domain, average of means     
| 56           | fBodyGyro-mean()-Y               | Numeric   | [-1, 1]  | Angular Velocity in Y-direction, frequency Domain, average of means       
| 57           | fBodyGyro-mean()-Z               | Numeric   | [-1, 1]  | Angular Velocity in Z-direction, frequency Domain, average of means  
| 58           | fBodyGyro-std()-X                | Numeric   | [-1, 1]  | Angular Velocity in X-direction, frequency Domain, average of standard deviations       
| 59           | fBodyGyro-std()-Y                | Numeric   | [-1, 1]  | Angular Velocity in Y-direction, frequency Domain, average of standard deviations   
| 60           | fBodyGyro-std()-Z                | Numeric   | [-1, 1]  | Angular Velocity in Z-direction, frequency Domain, average of standard deviations   
| 61           | fBodyAccMag-mean()               | Numeric   | [-1, 1]  | Magnitude of Body Acceleration, frequency Domain, average of means  
| 62           | fBodyAccMag-std()                | Numeric   | [-1, 1]  | Magnitude of Body Acceleration, frequency Domain, average of standard deviations       
| 63           | fBodyBodyAccJerkMag-mean()       | Numeric   | [-1, 1]  | Magnitude of Jerk of Body Acceleration, frequency Domain, average of means       
| 64           | fBodyBodyAccJerkMag-std()        | Numeric   | [-1, 1]  | Magnitude of Jerk of Body Acceleration, frequency Domain, average of standard deviations                         
| 65           | fBodyBodyGyroMag-mean()          | Numeric   | [-1, 1]  | Magnitude of Angular Velocity, frequency Domain, average of means    
| 66           | fBodyBodyGyroMag-std()           | Numeric   | [-1, 1]  | Magnitude of Angular Velocity, frequency Domain, average of standard deviations                     
| 67           | fBodyBodyGyroJerkMag-mean()      | Numeric   | [-1, 1]  | Magnitude of Jerk of Angular Velocity, frequency Domain, average of means                 
| 68           | fBodyBodyGyroJerkMag-std()       | Numeric   | [-1, 1]  | Magnitude if Jerk of Angular Velocity, frequency Domain, average of standard deviations                  




