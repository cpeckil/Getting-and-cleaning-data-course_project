

{
  ## Read in the training data, training activities, subjects in the training data along with labels for the activities
  ## and training/test data variable names
  train<-read.table("./data/Samsung/UCI Har Dataset/train/X_train.txt")
  train_activity<-read.table("./data/Samsung/UCI Har Dataset/train/y_train.txt",sep='\t',col.names=c("Number"))
  train_subject<-read.table("./data/Samsung/UCI Har Dataset/train/subject_train.txt",sep='\t')
  activity_labels<-read.table("./data/Samsung/UCI Har Dataset/activity_labels.txt",sep='\t',col.names=c("activity"))
  train_labels<-read.table("./data/Samsung/UCI Har Dataset/features.txt",sep='\t',col.names=c("var_names"))

  ## Read in the test data, test activities and subjects in the test data
  test<-read.table("./data/Samsung/UCI Har Dataset/test/X_test.txt")
  test_activity<-read.table("./data/Samsung/UCI Har Dataset/test/y_test.txt",sep='\t',col.names=c("Number"))
  test_subject<-read.table("./data/Samsung/UCI Har Dataset/test/subject_test.txt",sep='\t')

  ## Load the tidyr package
  library("tidyr")
  
  ## Separate the variable in the activity_labels data frame into the number of the activity (Number) and
  ## its description (Type)
  activity_labels_descrip<-separate(activity_labels, activity, c("Number", "Type"), sep = 1)
  train_labels_descrip<-separate(train_labels,var_names,c("Number","Type"),sep=" ")

  ## Update the variable names to be more descriptive
  train_labels_descrip$Type<-sub("^f","Frequency",train_labels_descrip$Type)
  train_labels_descrip$Type<-sub("^t","Time",train_labels_descrip$Type)
  train_labels_descrip$Type<-sub("BodyAcc","BodyMotionMeasuredByAccelerometer",train_labels_descrip$Type)
  train_labels_descrip$Type<-sub("GravityAcc","GravitationalMotionMeasuredByAccelerometer",train_labels_descrip$Type)
  train_labels_descrip$Type<-sub("BodyAccJerk","BodyMotionJerkSignalMeasuredByAccelerometer",train_labels_descrip$Type)
  train_labels_descrip$Type<-sub("BodyGyro","BodyMotionMeasuredByGyroscope",train_labels_descrip$Type)
  train_labels_descrip$Type<-sub("Mag","Magnitude",train_labels_descrip$Type)
  train_labels_descrip$Type<-sub("mean\\(\\)","Mean",train_labels_descrip$Type)
  train_labels_descrip$Type<-sub("meanFreq\\(\\)","MeanFrequency",train_labels_descrip$Type)
  train_labels_descrip$Type<-sub("std\\(\\)","StdDev",train_labels_descrip$Type)

  ## Set the column names in the train and test data frames to be the descriptive variable names from train_labels_descrip
  colnames(train)<-train_labels_descrip[,2]
  colnames(test)<-train_labels_descrip[,2]

  ## Keep only the measurements on mean and standard deviaition
  train<-train[,grepl("Mean|Std",names(train))]
  test<-test[,grepl("Mean|Std",names(test))]

  ## Add the subject to the train and test data frames
  train$subject<-train_subject$V1
  test$subject<-test_subject$V1

  ## Merge the training / test activities wtih their labels to provide a description column
  train_activity_label<-merge(train_activity,activity_labels_descrip)
  test_activity_label<-merge(test_activity,activity_labels_descrip)

  ## Set the activity variable in the train and test data frames to the Type field to provie a description of
  ## the activity
  train$activity<-train_activity_label$Type
  test$activity<-test_activity_label$Type

  ## Combine the train and test data frames
  total<-rbind(train,test)

  ## Create a data set with the average of each variable for each activity and subject
  MeanOfTotalBySubjectAndActivity <-aggregate(total, by=list(total$subject,total$activity),FUN=mean)
  
  ## Remove the original subject and activity variables and update the variable names of the aggregated
  ## Subject and Activity variables
  MeanOfTotalBySubjectAndActivity$subject<-NULL
  MeanOfTotalBySubjectAndActivity$activity<-NULL
  colnames(MeanOfTotalBySubjectAndActivity)[1]<-"Subject"
  colnames(MeanOfTotalBySubjectAndActivity)[2]<-"Activity"

  ## Sort the data by the Subject and Activity variables
  SortedMeanOfTotalBySubjectAndActivity<-MeanOfTotalBySubjectAndActivity[order(MeanOfTotalBySubjectAndActivity$Subject,MeanOfTotalBySubjectAndActivity$Activity),]

  ## Write out the MeanOfTotalBySubjectAndActivity data frame to a text file
  write.table(SortedMeanOfTotalBySubjectAndActivity,file="./data/mean_by_subject_activity.txt",row.names = FALSE)
  }
