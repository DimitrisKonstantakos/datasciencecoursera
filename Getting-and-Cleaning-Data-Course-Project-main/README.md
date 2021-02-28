According to Coursera course description, "the companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones Here are the data for the project: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

Afterwards, I read and understand what the data represent, and start to write the code.

#I download zip file containing data if it hasn't already been downloaded
link <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
UCIHARDATASETZip <- "UCI HAR Dataset.zip"
if (!file.exists(UCIHARDATASETZip)) {
  download.file(link, UCIHARDATASETZip, mode = "wb")
}

#Then I unzip the zip file which contains data if data directory exists
dataPathOfDataset <- "UCI HAR Dataset"
if (!file.exists(dataPathOfDataset)) {
  unzip(UCIHARDATASETZip)
}

# Read training data
trainingSubjects <- read.table(file.path(dataPathOfDataset, "train", "subject_train.txt"))
trainingValueX <- read.table(file.path(dataPathOfDataset, "train", "X_train.txt"))
trainingValueY <- read.table(file.path(dataPathOfDataset, "train", "y_train.txt"))

# Read test data
testSubjects <- read.table(file.path(dataPathOfDataset, "test", "subject_test.txt"))
testValueX <- read.table(file.path(dataPathOfDataset, "test", "X_test.txt"))
testValueY <- read.table(file.path(dataPathOfDataset, "test", "y_test.txt"))



# Read features from text  file
features <- read.table(file.path(dataPathOfDataset, "features.txt"), as.is = TRUE)


# Read activities from text file and rename column names (3. Uses descriptive activity names to name the activities in the data set) 
activities <- read.table(file.path(dataPathOfDataset, "activity_labels.txt"))
colnames(activities) <- c("activityId", "activityLabel")

# Merge data tables
feature_data <- rbind(trainingValueX, testValueX)
activity_data <- rbind(trainingValueY, testValueY)
subject_data <- rbind(trainingSubjects, testSubjects)

# Remove some characteristics from columns names (2.Extracts only the measurements on the mean and standard deviation for each measurement. )
features[, 2] <- gsub("[\\(\\)-]", "", features[, 2])

#Rename and make readable features
features[, 2] <- gsub("^f", "Frequency", features[, 2])
features[, 2] <- gsub("^t", "Time", features[, 2])

features[, 2] <- gsub("mean", "Mean", features[, 2])
features[, 2] <- gsub("std", "StandardDeviation", features[, 2])
features[, 2] <- gsub("BodyBody", "Body", features[, 2])

features[, 2] <- gsub("Acc", "Accelerometer", features[, 2])
features[, 2] <- gsub("Gyro", "Gyroscope", features[, 2])
features[, 2] <- gsub("Mag", "Magnitude", features[, 2])

#Keep only features that includes mean and standard ()
columnsToKeep <- grepl("Mean|StandardDeviation", features[, 2]) 
features <- features[columnsToKeep,]

#4. clear data according to rename and the related features of mean and std
feature_data <- feature_data[columnsToKeep]

# I  bind all the clean data  to one table and give the appropriate names (4. Appropriately labels the data set with descriptive variable names. )
allData <- cbind(subject_data, activity_data, feature_data)
colnames(allData) <- c("subject", "activity", features[,2])

# remove individual data tables to save memory
allData$activity <- factor(allData$activity, 
                             levels = activities[, 1], labels = activities[, 2])

# Group by subject and activity and summarize using mean (5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.)
dataTableMeans  <- allData %>% 
  group_by(subject, activity) %>%
  summarise_each(funs(mean))
# Pass data to text file "tidy_data.txt"
write.table(dataTableMeans, "tidydata.txt", row.names = FALSE, 
            quote = FALSE)

