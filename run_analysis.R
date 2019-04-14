#Getting and Cleaning Data Project - Run_Analysis R

#Part 1: Merge the training and test sets to create one data set
library("reshape2")

file <- "getdata_dataset.zip"

#download and unzip dataset

Url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(Url, file, method = "curl")
unzip(file)


#reading test and train data

#training tables
xtrain <- read.table("UCI HAR Dataset/train/X_train.txt")
ytrain <- read.table("UCI Har Dataset/train/y_train.txt")
subtrain <- read.table("UCI Har Dataset/train/subject_train.txt")

#testing tables
xtest <- read.table("UCI HAR Dataset/test/X_test.txt")
ytest <- read.table("UCI HAR Dataset/test/y_test.txt")
subtest <- read.table("UCI HAR Dataset/test/subject_test.txt")


#reading activity labels and features
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt")
features <- read.table("UCI HAR Dataset/features.txt")


#Naming Columns

#training data
colnames(xtrain) <- features[,2]
colnames(ytrain) <- "activityId"
colnames(subtrain) <- "subjectId"

#testing data
colnames(xtest) <- features[,2]
colnames(ytest) <- "activityId"
colnames(subtest) <- "subjectId"

colnames(activityLabels) <- c('activityId', 'activitytype')

#merging data

#merging training data
trainmerge <- cbind(ytrain, subtrain, xtrain)

#merging testing data
testmerge <- cbind(ytest, subtest, xtest)

#merging training and testing data
FullData <- rbind(trainmerge, testmerge)

#Part 2: Extracts only the measurements on the mean and standard deviation for each measurement

columnnames <- colnames(FullData)

mean_stdev <- (grepl("activityId" , columnnames) | 
                        grepl("subjectId" , columnnames) | 
                        grepl("mean.." , columnnames) | 
                        grepl("std.." , columnnames) )

mean_stdev_subset <- FullData[ , mean_stdev == TRUE]

#Part 3: Uses descriptive activity names to name the activities in the data set

Data_w_ActivityNames <- merge(mean_stdev_subset, activityLabels, by = 'activityId', all.x = TRUE)

#Part 4: Appropriately labels the data set with descriptive variable names
names(Data_w_ActivityNames) <- gsub("^t", "Time", names(Data_w_ActivityNames))
names(Data_w_ActivityNames) <- gsub("^f", "Frequency", names(Data_w_ActivityNames))
names(Data_w_ActivityNames) <- gsub("Acc", "Accelerometer", names(Data_w_ActivityNames))
names(Data_w_ActivityNames) <- gsub("Gyro", "Gyroscope", names(Data_w_ActivityNames))
names(Data_w_ActivityNames) <- gsub("Mag", "Magnitude", names(Data_w_ActivityNames))
names(Data_w_ActivityNames) <- gsub("BodyBody", "Body", names(Data_w_ActivityNames))
names(Data_w_ActivityNames) <- gsub("-mean()", "Mean", names(Data_w_ActivityNames), ignore.case = TRUE)
names(Data_w_ActivityNames) <- gsub("-std()", "STD", names(Data_w_ActivityNames), ignore.case = TRUE)
names(Data_w_ActivityNames) <- gsub("-freq()", "Frequency", names(Data_w_ActivityNames), ignore.case = TRUE)
names(Data_w_ActivityNames) <- gsub("angle", "Angle", names(Data_w_ActivityNames))
names(Data_w_ActivityNames) <- gsub("gravity", "Gravity", names(Data_w_ActivityNames))

names(Data_w_ActivityNames)

#Part 5: From the dataset in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject
TidyData <- aggregate(. ~subjectId + activityId, Data_w_ActivityNames, mean)
TidyData <- TidyData[order(TidyData$subjectId, TidyData$activityId),]

write.table(TidyData, "TidyData.txt", row.name=FALSE)


