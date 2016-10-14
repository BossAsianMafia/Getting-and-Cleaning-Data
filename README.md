# Readme for run_analysis.R

[code language="r"]

>Loading dplyr

~~~~
library(dplyr)
~~~~

>For the rest of the code, the assumption is that the data is unzipped in the working directory.
>Feel free to change the pathname to point to an alternative directory if the files are unzipped in a different location.


>Reading in list of features, which is just the list of column names of the xtrain or xtest data

~~~~
colnames<-read.table("./UCI HAR Dataset/features.txt")
~~~~

>Reading and labelling training and test data.  I've labelled the columns here (hence answering Q4) so that it's easier to subset the mean and std columns later.

~~~~
subjecttrain<-read.table("./UCI HAR Dataset/train/subject_train.txt",col.names="subject")
ytrain<-read.table("./UCI HAR Dataset/train/y_train.txt",col.names="activity")
xtrain<-read.table("./UCI HAR Dataset/train/x_train.txt",col.names=colnames[,2])
~~~~

~~~~
subjecttest<-read.table("./UCI HAR Dataset/test/subject_test.txt",col.names="subject")
ytest<-read.table("./UCI HAR Dataset/test/y_test.txt",col.names="activity")
xtest<-read.table("./UCI HAR Dataset/test/x_test.txt",col.names=colnames[,2])
~~~~

>Forming the respective datasets so that the first column is the subject (from subjecttrain/subjecttest), second column is the activity (from ytrain/ytest) 
>and the subsequent columns are the features

~~~~
train<-cbind(subjecttrain,ytrain,xtrain)
test<-cbind(subjecttest,ytest,xtest)
~~~~

>Merging training and test dataset and sorting according to subject and activity (as per Q1)

~~~
mergeddf<-rbind(train,test) %>% arrange(subject,activity)
~~~

>Selecting the measurements on the mean and standard deviation for each measurement (as per Q2)
>Variable names with mean as part of the description (e.g. MeanFreq) rather than as a mean of a measurement were not selected

~~~~
meanandstd<-select(mergeddf,subject,activity,c(grep("mean.",names(mergeddf),fixed=TRUE),grep("std",names(mergeddf))))
~~~~

>Replacing Activity IDs with Description of activities (as per Q3)
>This was done by first assigning the activity labels (taken from the text file) to a vector
>then replacing each cell of the relevant column in the data frame with the respective activity labels

~~~~
activitylabels<-c("Walking","Walking_Upstairs","Walking_Downstairs","Sitting","Standing","Laying")

for (i in 1:6)
  {meanandstd$activity<-replace(meanandstd$activity,meanandstd$activity == i,activitylabels[i])}
~~~~

>Converting the subject and activity variables to factors 
>then grouping data-frame in preparation for summarize

~~~~
meanandstd$subject<-as.factor(meanandstd$subject)
meanandstd$activity<-as.factor(meanandstd$activity)

df<-group_by(meanandstd,subject,activity)
~~~~

>Generating resulting data-frame with mean of each variable by subject and by activity using the dplyr command summarize_each
>Note that I've used the wide form here for easier readability since both the long and the wide forms are considered tidy data according to the course forums

~~~~
result<-summarize_each(group_by(df,subject,activity),funs(mean))
~~~~

>Export table

~~~~
write.table(result,"result.txt",row.names=FALSE)
~~~~
[/code]
