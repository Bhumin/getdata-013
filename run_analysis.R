rm(list = ls())
x_test <- read.csv(file = "./test/X_test.txt", header = FALSE, sep = "")
x_train <- read.csv(file = "./train/X_train.txt", header = FALSE, sep = "")
combined_all <- rbind(x_test, x_train)

y_test <- read.csv(file = "./test/y_test.txt", header = FALSE, sep = "")
y_train <- read.csv(file = "./train/y_train.txt", header = FALSE, sep = "")
combined_activities <- rbind(y_test, y_train)

activities <- read.csv(file = "./activity_labels.txt", header = FALSE, sep = "")

features <- read.csv(file = "./features.txt", header = FALSE, sep = "")
colnames (combined_all) <- features[ ,2]

onlyMeanAndSd <- combined_all[ ,grepl("mean|std" ,names(combined_all))]
combined <- cbind(combined_activities, combined_all)

subject_test <- read.csv(file = "./test/subject_test.txt", header = FALSE, sep = "")
subject_train <- read.csv(file = "./train/subject_train.txt", header = FALSE, sep = "")
subject_all <- rbind(subject_test, subject_train)
colnames(subject_all)[1] <- "Subject_ID"
combined_with_subject <- cbind(subject_all, combined)

merged_dataset <- merge(activities, combined_with_subject)
colnames(merged_dataset)[1] <- "Activity_ID"
colnames(merged_dataset)[2] <- "Activity"

aggregate_data_set <- aggregate(merged_dataset, by = list(merged_dataset$Activity_ID, merged_dataset$Subject_ID), FUN = mean)
drops <- c("Group.1", "Group.2", "Activity")
aggregate_data_set <- aggregate_data_set[,!(names(aggregate_data_set) %in% drops)]
write.table(aggregate_data_set, file = "aggregate_dataset.txt", row.names = FALSE)