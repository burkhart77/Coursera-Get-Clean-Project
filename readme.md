==================================================================
Modified Original Dataset  - MODIFICATION OF ORIGINAL DATASET by DANIELLE SCHULZ
(see below for original readme.txt contents)
Human Activity Recognition Using Smartphones Dataset - Futher Analysis
==================================================================
Danielle Schulz
Coursera Data Scientist Track by John Hopkins University
Code Book and Variable Descriptions for Coursera Getting and Cleaning Data Course 
Course Details: getdata-008, October 2014
==================================================================

The purpose of my modifications to the original UCI HAR Dataset was to create a tidy dataset
of combined train and test data. The original raw data will be cleaned and made tidy with my 
code in the "run_analysis.R" file. The cleaned data will retain only the mean and standard 
deviation feature measurements for x and y values. A tidy data set text file ("UCIHAR_Tidy.txt") with the averages 
of these features will be created with descriptive variable names.

FILES
This readme.md modified from the original raw dataset readme.txt
run_analysis.R R code file with the code to convert from the raw dataset into the tidy dataset.


CODE BOOK
Original raw data set obtained from UCI Machine Learning Repository. Descriptions of the original raw data set are here as well as below my modifications: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#

CLEAN DATA STEPS
Activities to clean the data set are are follows:
y_train.txt and y_test.txt were cobmined.
X_train.txt and X_test.txt were combined.
Mean and Standard Deviation features were retained, all other features discarded.
Activity codes re-coded to readable activity descriptions (i.e. "2" becomes " WALKING_UPSTAIRS").
Rename variables to more descriptive names.


TIDY DATA STEPS
Activities to tidy the data set are as follows:

VARIABLE DESCRIPTIONS
Subject and activity column variables were created in the tidy data set. In addition the following 
features mean (mean) and standard deviations (std) measurements of X Y and Z were retained. They
are enumerated here followed by their readable variable names.

*tBodyAcc-XYZ = Time Body Acceleration
*tGravityAcc-XYZ = Time Gravity Acceleration
*tBodyAccJerk-XYZ = Time Body Jerk
*tBodyGyro-XYZ = Time Body Gyroscope
*tBodyGyroJerk-XYZ = Time Body Gyroscope Jerk
*tBodyAccMag = Time Body Acceleration Magnitude
*tGravityAccMag = Time Gravity Acceleration Magnitude
*tBodyAccJerkMag = Time Body Acceleration Jerk Magnitude
*tBodyGyroMag = Time Body Gyroscope Magnitude
*tBodyGyroJerkMag = Time Body Gyroscope Jerk Magnitude
*fBodyAcc-XYZ = Frequency Body Acceleration
*fBodyAccJerk-XYZ = Frequency Body Acceleration Jerk
*fBodyGyro-XYZ = Frequency Body Gyroscope
*fBodyAccMag = Frequency Body Acceleration Magnitude
*fBodyAccJerkMag = Frequency Body Acceleration Jerk Magnitude
*fBodyGyroMag = Frequency Body Gyroscope Magnitude
*fBodyGyroJerkMag = Frequency Body Gyroscope Jerk Magnitude


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

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.


