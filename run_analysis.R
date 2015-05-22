## Get the zip file
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",destfile="r_project.zip",method="libcurl")
## Look for the folder that has the information, if not there, unzip the file
if(!file.exists("UCI HAR Dataset")){unzip("r_project.zip")}
## Read in the test and training dataset and the file with the headings
test<-read.csv("UCI HAR Dataset/test/X_test.txt",header=FALSE,sep="")
train<-read.csv("UCI HAR Dataset/train/X_train.txt",header=FALSE,sep="")
## merge the data sets, since there is not common id, we use rbind
complete<-rbind(test,train)
## Add the headings onto the train and test set
headings<-read.csv("UCI HAR Dataset/features.txt",header=FALSE,sep="")
names(complete)<-headings[,2]
## read in activity labels
actLabels<-read.csv("UCI HAR Dataset/activity_labels.txt",header=FALSE,sep="")
## read in the y data for test and train
y_test<-read.csv("UCI HAR Dataset/test/y_test.txt",header=FALSE,sep="")
y_train<-read.csv("UCI HAR Dataset/train/y_train.txt",header=FALSE,sep="")
actCombined<-rbind(y_test,y_train)
## Open dplyr
library(dplyr)
## merge the activity labels
activity<-merge(actCombined,actLabels)
## Add the columns into the data sets
complete$Activity<-activity[,2]
## Locate the columes with mean and standard deviation
means<-grep("mean()",names(complete),fixed=TRUE)
stddev<-grep("std()",names(complete),fixed=TRUE)
## Create a new data fram with only the mean, std, and column 562 which has the activity
completems<-complete[,c(means,stddev,562)]
## Get the subject information
test_subjects<-read.csv("UCI HAR Dataset/test/subject_test.txt",header=FALSE,sep="")
train_subjects<-read.csv("UCI HAR Dataset/train/subject_train.txt",header=FALSE,sep="")
subjects_cmb<-rbind(test_subjects,train_subjects)
## Add the subjects column
completems$Subjects<-subjects_cmb
names(completems[,68])<-"Subjects"

## Create the second tidy data set that has the means by activity and subject
tidy_Set<-group_by(completems,Subjects,Activity) %>% summarise_each(funs(mean))

write.table(tidy_Set,file="tidy_Set.txt",row.name=FALSE)

