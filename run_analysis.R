library(dplyr)
library(plyr)

# Step 1: Download & Unzip the file

url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
file_loc <- file.path(getwd(), "Course3wk4/data.zip")
unzip(file_loc)


# Step 2: Merge the datasets
#setwd("./UCI HAR Dataset")

x_train <- read.table("train/X_train.txt")
y_train <- read.table("train/y_train.txt")
subject_train <- read.table("train/subject_train.txt")


x_test <- read.table("test/X_test.txt")
y_test <- read.table("test/y_test.txt")
subject_test <- read.table("test/subject_test.txt")


#merged train and test data 
x_merged <- rbind(x_train, x_test)

#merged train and test labels
y_merged <- rbind(y_train, y_test)

#merged subjects
subject_merged <- rbind(subject_train, subject_test)



# Step 2: Extract measurements on the mean and standard deviation
features <- read.table("features.txt")
activities <- read.table("activity_labels.txt")

mean_and_std_features <- grep("-(mean|std)\\(\\)", features[, 2])
x_desired <- x_merged[,mean_and_std_features]
y_merged[,1] <- activities[y_merged[,1],2]

# Step 3: combine all the data & add column names
final_data <- cbind(subject_merged,y_merged, x_desired)
names(final_data) <- c("test_participants", "participant_activity", as.character(features[mean_and_std_features,2]))


# Step 4: Create independent tidy data set with the average of each variable for each activity and each subject

#ignoring first two columns - subjects & activity - to calculate mean
average_data <- ddply(final_data, .(test_participants, participant_activity), function(x) colMeans(x[,3:68]))
write.table(average_data, "tidy_data.txt", row.name=FALSE)



