#Peer Graded Assignment: Getting and Cleaning Data - Coursera - John Hopkins

#Objectives
# 1. Merge the training and test set to create one data set.
# 2. Extract only the measurements on the mean and standard deviation for each measurement
# 3. Use descriptive activity names to name the activities in the data set. 
# 4. Appropriately label the data set with descriptive variable names.
# 5. From the data set in step 4, create a second, independent tidy data set with the average
#    of each variable for each activity and each subject.



### Load Required Packages ##############################################################

library(data.table)
library(dplyr)


### Download Data #######################################################################

path <- getwd()
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

download.file(url, file.path(path, "data.zip"), method = "curl")

unzip(zipfile = "data.zip")
file.remove("data.zip")



### Read and extract mean and sd measurement labels from features.txt file ##############

features <- fread(file.path(path, "UCI HAR Dataset/features.txt"),
                  col.names = c("feature_index", "feature_description"))

measurement_index <- grep("(mean|std)\\(\\)", features[,feature_description])
measurement_values <- grep("(mean|std)\\(\\)", features[,feature_description], value = TRUE)
rm(features)


### Load and Combine Train datasets #####################################################

train_x <- fread(file.path(path, "UCI HAR Dataset/train/X_train.txt"),
                 select = measurement_index,
                 col.names = measurement_values)
train_subject <- fread(file.path(path, "UCI HAR Dataset/train/subject_train.txt"), 
                       col.names = c("subject"))
train_y <- fread(file.path(path, "UCI HAR Dataset/train/y_train.txt"),
                 col.names = c("activity"))

train <- cbind(train_subject, train_y, train_x)
rm(train_x, train_subject, train_y)


### Load and Combine test datasets ######################################################

test_x <- fread(file.path(path, "UCI HAR Dataset/test/X_test.txt"),
                select = measurement_index,
                col.names = measurement_values)
test_subject <- fread(file.path(path, "UCI HAR Dataset/test/subject_test.txt"),
                      col.names = c("subject"))
test_y <-  fread(file.path(path, "UCI HAR Dataset/test/y_test.txt"),
                 col.names = c("activity"))

test <- cbind(test_subject, test_y, test_x)
rm(test_x, test_subject, test_y)


### Combine train and test set ##########################################################
data <- rbind(train,test)
rm(test,train)

### Apply descriptive activity names from activity_labels.txt ###########################

activities <- fread(file.path(path, "UCI HAR Dataset/activity_labels.txt"),
                    col.names = c("act_index", "act_description"))

data[["activity"]] <- factor(data[,activity],
                             levels = activities[["act_index"]],
                             labels = activities[["act_description"]])


### Summarize and create tidy data set #################################################

tidy_data <- data %>% group_by(subject, activity) %>% summarise_all(funs(mean)) 

write.table(tidy_data, "tidy_data.txt", row.names = FALSE)
