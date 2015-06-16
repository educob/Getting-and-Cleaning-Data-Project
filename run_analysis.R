library(reshape2) # functions: melt, dcast

# Load & bind subjects
train_subject <- read.table("./train/subject_train.txt")
test_subject <- read.table("./test/subject_test.txt")
subject <- rbind(train_subject, test_subject)
colnames(subject) <- "subject"

# Load & bind data sets
train_x <- read.table("./train/X_train.txt")
test_x <- read.table("./test/X_test.txt")
data <- rbind(train_x, test_x)
features <- read.table("./features.txt")
colnames(data) <- features[, 2]

# Load & bind activities (replacing id with its name)
train_y <- read.table("./train/y_train.txt")
test_y <- read.table("./test/y_test.txt")
activity_id <- rbind(train_y, test_y)
activity_name <- read.table("./activity_labels.txt")
activity <- merge(activity_id, activity_name, by=1)[,2]

# Merge all three data sets
data_set <- cbind(subject, activity, data)

# Create a data set with the mean and std of features
mean_std_var_id <- grep("-mean|-std", colnames(data_set)) #finds features with mean or std
data_mean_std <- data_set[,c(1, 2, mean_std_var_id)]

# Compute the means, grouped by subject-activity
melted = melt(data_mean_std, id.var = c("subject", "activity"))
vars_mean = dcast(melted , subject + activity ~ variable, mean)

# Save the tidy means data set
write.table(vars_mean, file="tidy_data_set.txt")

# return tidy means data set
return(means)
