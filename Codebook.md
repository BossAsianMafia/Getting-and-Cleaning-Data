# Codebook for HAR Data Summary

==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

## Data Description

The experiments have been carried out with a group of **30** volunteers within an age bracket of 19-48 years. 

Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 

Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). 

The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. 

The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. 

From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 

These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. 

Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 

Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). 

Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

**The data submitted is a summary of the dataset with the average of each variable for each activity and each subject.**


## Variables

Subject 			- Subject ID identifiying the subject who performed the activities

Activity 			- Activity performed by the subject

tBodyAcc.mean...X/Y/Z		- Mean of body acceleration signal in the X/Y/Z axis for the particular subject and activity in standard gravity units *g*

tGravityAcc.mean...X/Y/Z	- Mean of gravity acceleration signal in the X/Y/Z axis for the particular subject and activity in standard gravity units *g*

tBodyAccJerk.mean...X//Y/Z	- Mean of Jerk signal derived from body acceleration signal in the X/Y/Z axis for the particular subject and activity in standard gravity units *g*

tBodyGyro.mean...X/Y/Z		- Mean of body gyroscope signal in the X/Y/Z axis for the particular subject and activity in standard gravity units *g*

tBodyGyroJerk.mean...X/Y/Z  	- Mean of Jerk signal derived from body gyroscope signal in the X/Y/Z axis for the particular subject and activity in standard gravity units *g*

tBodyAccMag.mean..		- Mean of magnitude of three-dimensional body acceleration signal for the particular subject and activity in standard gravity units *g* 

tGravityAccMag.mean..		- Mean of magnitude of three-dimensional gravity acceleration signal for the particular subject and activity in standard gravity units *g* 

tBodyAccJerkMag.mean..		- Mean of magnitude of three-dimensional Jerk signal derived from body acceleration signal for the particular subject and activity in standard gravity units *g*

tBodyGyroMag.mean..		- Mean of magnitude of three-dimensional body gyroscope signal for the particular subject and activity in standard gravity units *g*

tBodyGyroJerkMag.mean.. 	- Mean of magnitude of three-dimensional Jerk signal derived from body gyroscope signal for the particular subject and activity in standard gravity units *g*

fBodyAcc.mean...X/Y/Z		- Mean of Fourier-transformed body acceleration signal in the X/Y/Z axis for the particular subject and activity in standard gravity units *g*

fBodyAccJerk.mean...X/Y/Z	- Mean of Fourier-transformed Jerk signal derived from body acceleration signal in the X/Y/Z axis for the particular subject and activity in standard gravity units *g*

fBodyGyro.mean...X/Y/Z		- Mean of Fourier-transformed body gyroscope signal in the X/Y/Z axis for the particular subject and activity in standard gravity units *g*

fBodyAccMag.mean..		- Mean of magnitude of Fourier-transformed three-dimensional body acceleration signal for the particular subject and activity in standard gravity units *g*
	
fBodyBodyAccJerkMag.mean..	- Mean of magnitude of Fourier-transformed three-dimensional Jerk signal derived from body acceleration signal for the particular subject and activity in standard gravity units *g*

fBodyBodyGyroMag.mean..		- Mean of magnitude of Fourier-transformed three-dimensional body gyroscope signal for the particular subject and activity in standard gravity units *g*

fBodyBodyGyroJerkMag.mean..	- Mean of magnitude of Fourier-transformed three-dimensional Jerk signal derived from body gyroscope signal for the particular subject and activity in standard gravity units *g*

tBodyAcc.std...X/Y/Z		- Mean of standard deviation of body acceleration signal in the X/Y/Z axis for the particular subject and activity in standard gravity units *g* 

tGravityAcc.std...X/Y/Z		- Mean of standard deviation of gravity acceleration signal in the X/Y/Z axis for the particular subject and activity in standard gravity units *g*

tBodyAccJerk.std...X//Y/Z	- Mean of standard deviation of Jerk signal derived from body acceleration signal in the X/Y/Z axis for the particular subject and activity in standard gravity units *g*
 
tBodyGyro.std...X/Y/Z		- Mean of standard deviation of body gyroscope signal in the X/Y/Z axis for the particular subject and activity in standard gravity units *g*

tBodyGyroJerk.std...X/Y/Z  	- Mean of standard deviation of Jerk signal derived from body gyroscope signal in the X/Y/Z axis for the particular subject and activity in standard gravity units *g*

tBodyAccMag.std..		- Mean of standard deviation of magnitude of three-dimensional body acceleration signal for the particular subject and activity in standard gravity units *g*

tGravityAccMag.std..		- Mean of standard deviation of magnitude of three-dimensional gravity acceleration signal for the particular subject and activity in standard gravity units *g*

tBodyAccJerkMag.std..		- Mean of standard deviation of magnitude of three-dimensional Jerk signal derived from body acceleration signal for the particular subject and activity in standard gravity units *g*

tBodyGyroMag.std..		- Mean of standard deviation of magnitude of three-dimensional body gyroscope signal for the particular subject and activity in standard gravity units *g*

tBodyGyroJerkMag.std.. 		- Mean of standard deviation of magnitude of three-dimensional Jerk signal derived from body gyroscope signal for the particular subject and activity in standard gravity units *g*

fBodyAcc.std...X/Y/Z		- Mean of standard deviation of Fourier-transformed body acceleration signal in the X/Y/Z axis for the particular subject and activity in standard gravity units *g*

fBodyAccJerk.std...X/Y/Z	- Mean of standard deviation of Fourier-transformed Jerk signal derived from body acceleration signal in the X/Y/Z axis for the particular subject and activity in standard gravity units *g*

fBodyGyro.std...X/Y/Z		- Mean of standard deviation of Fourier-transformed body gyroscope signal in the X/Y/Z axis for the particular subject and activity in standard gravity units *g*

fBodyAccMag.std..		- Mean of standard deviation of magnitude of Fourier-transformed three-dimensional body acceleration signal for the particular subject and activity in standard gravity units *g*
	
fBodyBodyAccJerkMag.std..	- Mean of standard deviation of magnitude of Fourier-transformed three-dimensional Jerk signal derived from body acceleration signal for the particular subject and activity in standard gravity units *g*
 
fBodyBodyGyroMag.std..		- Mean of standard deviation of magnitude of Fourier-transformed three-dimensional body gyroscope signal for the particular subject and activity in standard gravity units *g*

fBodyBodyGyroJerkMag.std..	- Mean of standard deviation of magnitude of Fourier-transformed three-dimensional Jerk signal derived from body gyroscope signal for the particular subject and activity in standard gravity units *g*


For more information about this dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
