## run_analysis.R, this function takes the UCI HAR Dataset and creates a tidy dataset
## This function will merge the train and test data, add subject and activity data to
## it, generate averages for the mean and standard deviation features. A tidy data 
## set text file with these averages will be created with descriptive variable names.

#run_analysis <- function() {

## Load X, Y and Subject Data
## X(raw measurements), Y(activity classification), Subject ID
trainX <- read.csv("train/X_train.txt", header=FALSE, sep="")
trainY <- read.csv("train/y_train.txt", header=FALSE)
trainSubj <- read.csv("train/subject_train.txt", header=FALSE)
testX <- read.csv("test/X_test.txt", header=FALSE, sep="")
testY <- read.csv("test/y_test.txt", header=FALSE)
testSubj <- read.csv("test/subject_test.txt", header=FALSE)

## Combine test x, y and subject, and train x, y and subject
testSYX <- cbind(testSubj, testY, testX)
trainSYX <- cbind(trainSubj, trainY, trainX)
combinedSYX <- rbind(testSYX, trainSYX)


## Load variables to decode activity labels and features
act <- read.csv("activity_labels.txt")
feat <- read.table("features.txt")

# Add column names to combined SYX
colnames(combinedSYX) <- c("SUBJECT", "ACTIVITY", as.character(feat$V2))
write.csv(x=combinedSYX,file="combinedSYX-names.csv", row.names=FALSE)

## Re-code the Activities and attach to dataset
## 1, 2.. will be re-coded to WALKING, WALKING_UPSTAIRS...


## Extract features with mean and standard deviation for each measurement
mean <- grep("mean\\(\\)", names(combinedSYX))
std <- grep("std\\(\\)", names(combinedSYX))
combinedMeanStd <- subset(combinedSYX, select=c(1,2,mean,std))

write.csv(x=combinedMeanStd, file="combinedMeanStd.csv", row.names=FALSE)


## Sort Tidy Dataset

## Output tidy dataset
#write.table(x=tidy, file="UCIHAR_Tidy.txt", row.names=FALSE)


#} ## End Function run_analysis