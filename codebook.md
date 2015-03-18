This is the codebook for the analysis of the "Human Activity Recognition Using Smartphones Data Set" as per the instructions of the course project of the "Getting and Cleaning Data" class by John Hopkins University available on the Coursera platform.

A full description of the raw data and the process of collecting the raw data is available at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
ample codebook.

#Data acquisition
In the original data set, data is split into separate data sets for test data and training data. These data sets are split into three different files:
- One file containing a list of subject IDs ("subject...txt")
- One file containing a list of activity IDs ("Y...txt")
- One file containing the actual measurements ("X...txt")
Each of these files contain exactly one row per measurement.
Data is described by two additional files:
- Variable names can be found in the file "features.txt" (one line per variable name)
- Names of activities can be found on the file "activity_labels.txt"
There is no additional, identifying information available for the individuals taking part in the study (the "subjects").

#Data transformation
The different files available in the original data sets are merged into one single data frame by reading the subject IDs into the first column ("subject"), the activity IDs into the second column ("id") an the measurements into the subsequent columns. Test and training data are handled in the same way and merged by appending the training data to the test data. The names of these columns are pulled from the "features.txt" file and are adjusted to syntactial conventions of the R environment.

In a second step, the activity labels are merged into the combined data frame and finally the data set is reduced by removing all unwanted columns, leaving the subject, activity (label) and all columns that are labelled as "mean" or "std" columns indicating mean values or standard variances.

Based upon the resulting data set, the final step calculates the mean value for all remaining variables by subject and by group, providing one line of aggregated data for each unique combination of subject and activity (labeL).

See below for a list of variables available in the resulting data set. All variables represent the mean value of the corresponding variable in the original dataset according to the aggregation described above. For a full reference of the actual meaning of the variable, please refer to the description of the original dataset (see link above).   
- "tBodyAcc.std...X"               
- "tBodyAcc.std...Y"               
- "tBodyAcc.std...Z"               
- "tGravityAcc.std...X"            
- "tGravityAcc.std...Y"            
- "tGravityAcc.std...Z"            
- "tBodyAccJerk.std...X"           
- "tBodyAccJerk.std...Y"           
- "tBodyAccJerk.std...Z"           
- "tBodyGyro.std...X"              
- "tBodyGyro.std...Y"              
- "tBodyGyro.std...Z"              
- "tBodyGyroJerk.std...X"          
- "tBodyGyroJerk.std...Y"          
- "tBodyGyroJerk.std...Z"          
- "tBodyAccMag.std.."              
- "tGravityAccMag.std.."           
- "tBodyAccJerkMag.std.."          
- "tBodyGyroMag.std.."             
- "tBodyGyroJerkMag.std.."         
- "fBodyAcc.std...X"               
- "fBodyAcc.std...Y"               
- "fBodyAcc.std...Z"               
- "fBodyAccJerk.std...X"           
- "fBodyAccJerk.std...Y"           
- "fBodyAccJerk.std...Z"           
- "fBodyGyro.std...X"              
- "fBodyGyro.std...Y"              
- "fBodyGyro.std...Z"              
- "fBodyAccMag.std.."              
- "fBodyBodyAccJerkMag.std.."      
- "fBodyBodyGyroMag.std.."         
- "fBodyBodyGyroJerkMag.std.."     
- "tBodyAcc.mean...X"              
- "tBodyAcc.mean...Y"              
- "tBodyAcc.mean...Z"              
- "tGravityAcc.mean...X"           
- "tGravityAcc.mean...Y"           
- "tGravityAcc.mean...Z"           
- "tBodyAccJerk.mean...X"          
- "tBodyAccJerk.mean...Y"          
- "tBodyAccJerk.mean...Z"          
- "tBodyGyro.mean...X"             
- "tBodyGyro.mean...Y"             
- "tBodyGyro.mean...Z"             
- "tBodyGyroJerk.mean...X"         
- "tBodyGyroJerk.mean...Y"         
- "tBodyGyroJerk.mean...Z"         
- "tBodyAccMag.mean.."             
- "tGravityAccMag.mean.."          
- "tBodyAccJerkMag.mean.."         
- "tBodyGyroMag.mean.."            
- "tBodyGyroJerkMag.mean.."        
- "fBodyAcc.mean...X"              
- "fBodyAcc.mean...Y"              
- "fBodyAcc.mean...Z"              
- "fBodyAcc.meanFreq...X"          
- "fBodyAcc.meanFreq...Y"          
- "fBodyAcc.meanFreq...Z"          
- "fBodyAccJerk.mean...X"          
- "fBodyAccJerk.mean...Y"          
- "fBodyAccJerk.mean...Z"          
- "fBodyAccJerk.meanFreq...X"      
- "fBodyAccJerk.meanFreq...Y"      
- "fBodyAccJerk.meanFreq...Z"      
- "fBodyGyro.mean...X"             
- "fBodyGyro.mean...Y"             
- "fBodyGyro.mean...Z"             
- "fBodyGyro.meanFreq...X"         
- "fBodyGyro.meanFreq...Y"         
- "fBodyGyro.meanFreq...Z"         
- "fBodyAccMag.mean.."             
- "fBodyAccMag.meanFreq.."         
- "fBodyBodyAccJerkMag.mean.."     
- "fBodyBodyAccJerkMag.meanFreq.." 
- "fBodyBodyGyroMag.mean.."        
- "fBodyBodyGyroMag.meanFreq.."    
- "fBodyBodyGyroJerkMag.mean.."    
- "fBodyBodyGyroJerkMag.meanFreq.."
