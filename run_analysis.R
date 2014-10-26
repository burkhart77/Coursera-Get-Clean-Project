## run_analysis.R, this function takes the UCI HAR Dataset and creates a tidy dataset
## This function will merge the train and test data, generate averages for the
## mean and standard deviation features. A tidy data set text file with these averages will
## be created with descriptive variable names.

run_analysis <- function() {

## Combine Test and Train Data

## Load Y Data
trainY <- read.csv("train/y_train.txt", header=FALSE)
testY <- read.csv("test/y_test.txt", header=FALSE)

## Load X Data
trainX <- read.csv("train/X_train.txt", header=FALSE)
testX <- read.csv("test/X_test.txt", header=FALSE)

## Combine Test and Train
ttY <- rbind(trainY,testY)
ttX <- rbind(trainX,testX)


## Extract features with mean and standard deviation for each measurement
feat <- read.csv("features.txt", sep=" ")

## Re-code the Activities from 1, 2, .. to WALKING, WALKING_UPSTAIRS, ...
act <- read.csv("activity_labels.txt")

## Create descriptive variable names in my dataset

## Make the dataset Tidy

write.csv(ttX, "UCIHAR_Tidy.txt", row.names=FALSE)

} ## End Function run_analysis