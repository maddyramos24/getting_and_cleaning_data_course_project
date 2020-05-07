#Getting and Cleaning Data Course Project

# This R script does the following:
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

library(reshape2)

# Download and upzip data
datafiles <- "getdata_dataset.zip"
if (!file.exists(datafiles)){
        fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
        download.file(fileURL, datafiles, method="curl")
}  
if (!file.exists("UCI HAR Dataset")) { 
        unzip(datafiles) 
}

# Load activity labels and features
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt")
activityLabels[,2] <- as.character(activityLabels[,2])
features <- read.table("UCI HAR Dataset/features.txt")
features[,2] <- as.character(features[,2])

#Extract only mean and std deviation measurements
subfeatures <- grep(".*mean.*|.*std.*", features[,2])
subfeatures.names <- features[subfeatures,2]
subfeatures.names = gsub('-mean', 'Mean', subfeatures.names)
subfeatures.names = gsub('-std', 'Std', subfeatures.names)
subfeatures.names <- gsub('[-()]', '', subfeatures.names)


# Load train datasets
train <- read.table("UCI HAR Dataset/train/X_train.txt")[subfeatures]
trainActivities <- read.table("UCI HAR Dataset/train/Y_train.txt")
trainSubjects <- read.table("UCI HAR Dataset/train/subject_train.txt")
train <- cbind(trainSubjects, trainActivities, train)

# Load test datasets
test <- read.table("UCI HAR Dataset/test/X_test.txt")[subfeatures]
testActivities <- read.table("UCI HAR Dataset/test/Y_test.txt")
testSubjects <- read.table("UCI HAR Dataset/test/subject_test.txt")
test <- cbind(testSubjects, testActivities, test)

# Merge datasets
allData <- rbind(train, test)

# Add data labels
colnames(allData) <- c("subject", "activity", subfeatures.names)

names(allData)<-gsub("^t", "time", names(allData))
names(allData)<-gsub("^f", "frequency", names(allData))
names(allData)<-gsub("Acc", "Accelerometer", names(allData))
names(allData)<-gsub("Gyro", "Gyroscope", names(allData))
names(allData)<-gsub("Mag", "Magnitude", names(allData))
names(allData)<-gsub("BodyBody", "Body", names(allData))

# Convert activities and subjects into factors
allData$activity <- factor(allData$activity, levels = activityLabels[,1], labels = activityLabels[,2])
allData$subject <- as.factor(allData$subject)

# Create a second tidy dataset with the average of each variable for each activity and each subject
allData.melted <- melt(allData, id = c("subject", "activity"))
allData.mean <- dcast(allData.melted, subject + activity ~ variable, mean)

write.table(allData.mean, "tidy.txt", row.names = FALSE, quote = FALSE)

