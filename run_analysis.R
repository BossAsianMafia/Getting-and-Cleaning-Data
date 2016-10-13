## Loading dplyr
library(dplyr)

## Reading in list of features 
colnames<-read.table("./UCI HAR Dataset/features.txt")

## Reading and labelling training data (Q4)

subjecttrain<-read.table("./UCI HAR Dataset/train/subject_train.txt",col.names="subject")
ytrain<-read.table("./UCI HAR Dataset/train/y_train.txt",col.names="activity")
xtrain<-read.table("./UCI HAR Dataset/train/x_train.txt",col.names=colnames[,2])

## Reading and labelling test data (Q4)

subjecttest<-read.table("./UCI HAR Dataset/test/subject_test.txt",col.names="subject")
ytest<-read.table("./UCI HAR Dataset/test/y_test.txt",col.names="activity")
xtest<-read.table("./UCI HAR Dataset/test/x_test.txt",col.names=colnames[,2])

# Combining respective datasets

train<-cbind(subjecttrain,ytrain,xtrain)
test<-cbind(subjecttest,ytest,xtest)

# Merging training and test dataset and sorting according to subject and activity (Q1)

mergeddf<-rbind(train,test) %>% arrange(subject,activity)

# Selecting the measurements on the mean and standard deviation for each measurement (Q2)

meanandstd<-select(mergeddf,subject,activity,c(grep("mean.",names(mergeddf),fixed=TRUE),grep("std()",names(mergeddf))))

# Replacing Activity IDs with Description of activities (Q3)

activitylabels<-c("Walking","Walking_Upstairs","Walking_Downstairs","Sitting","Standing","Laying")

for (i in 1:6)
  {meanandstd$activity<-replace(meanandstd$activity,meanandstd$activity == i,activitylabels[i])}

# Grouping data-frame for summarize

meanandstd$subject<-as.factor(meanandstd$subject)
meanandstd$activity<-as.factor(meanandstd$activity)

df<-group_by(meanandstd,subject,activity)

# Generating resulting data-frame with average of each variable by subject and by activity

result<-summarize_each(group_by(df,subject,activity),funs(mean))

# Export table
write.table(result,"result.txt",row.names=FALSE)