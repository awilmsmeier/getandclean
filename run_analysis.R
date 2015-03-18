## Required packages
require(base)
require(utils)
require(plyr)

## Dedicated function to run the analysis (parameter nrows to allow for testing with subsets of the data)
run_analysis <- function(nrows = -1)
{
   ## Get the names of the different measurements from "features.txt"
   colNames = read.delim("HAR/features.txt", sep = "", header = FALSE, col.names = c("number", "measurement"))

   ## Get the test data set, add columns with test subjects and test activities
   dataSet = rbind (
      data.frame(
         read.delim("HAR/test/subject_test.txt", nrows = nrows, sep = "", header = FALSE, col.names = c("subject")),
         read.delim("HAR/test/Y_test.txt", nrows = nrows, sep = "", header = FALSE, col.names = c("id")),
         read.delim("HAR/test/X_test.txt", nrows = nrows, sep = "", header = FALSE, col.names = colNames$measurement)),

   ## Then get the training data set, add columns with training subjects and training activities and append
   ## that to complete the data set
      data.frame(
         read.delim("HAR/train/subject_train.txt", nrows = nrows, sep = "", header = FALSE, col.names = c("subject")),  
         read.delim("HAR/train/Y_train.txt", nrows = nrows, sep = "", header = FALSE, col.names = c("id")),
         read.delim("HAR/train/X_train.txt", nrows = nrows, sep = "", header = FALSE, col.names = colNames$measurement)))

   ## Get the activity labels from file "activity_labels.txt" and merge them with the data set
   actLabels = read.delim("HAR/activity_labels.txt", sep = "", header = FALSE, col.names = c("id", "activity"))
   dataSet = merge(actLabels, dataSet, by = c("id"))

   ## Create a subset of the dataset with only the subject, the activity (text, without id), all mean values
   ## and the standard variance values
   selectedColumns = c("subject", "activity", 
            grep(".std.", colnames(dataSet), value = TRUE),
            grep(".mean.", colnames(dataSet), value = TRUE))
   dataSet = subset(dataSet, select = selectedColumns)
   
   ## Use ddply function to compute mean values aggregated by subject and activity
   resultSet = ddply(dataSet, c("subject", "activity"), numcolwise(mean))

   ## Write result to file and return the resulting data frame (not required, but useful for testing)
   write.table(resultSet, "run_analysis_result", row.names = FALSE)
   resultSet
}
