# getandclean
This repository contains the R code and the codebook for an analysis of the data provided as part of the "Human Activity Recognition Using Smartphones Data Set" and this README.md file. The analysis is based upon the instructions provided in the course project of the "Getting and Cleaning Data" class by John Hopkins University available on the Coursera platform.

A full description of the raw data and the process of collecting the raw data is available at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The R script defines a function "run_analysis" that merges the data available into one data set and performs an analysis by calculating the mean value of certain variables by subject and by activity. The function takes on (optional) parameter "nrows" to allow for testing the function with a smaller set of data. If no value is provided for this parameter, all data will be read and analyzed. 
