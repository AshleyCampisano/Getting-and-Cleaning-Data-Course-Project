---
output:
  pdf_document: default
  html_document: default
---
#**Code Book**

This code book describes and summarizes the variables and any transformations done to clean up the data.

#**Identifiers**

1. subjectId: Test subject identifier
2. activityId: Identifier for the type of activity that was done when the associated measurements were taken

#Activity Labels
1. Walking (Id 1): test subject walked during test
2. Walking Upstairs (Id 2): test subject walked up a set of stairs during test
3. Walking Downstairs (Id 3): test subject walked down a set of stairs during test
4. Sitting (Id 4): test subject set during the test
5. Standing (Id 5): test subject was standing during the test
6. Laying (Id 6): test subject was laying during the test

#**Test Measurements**
"subjectId"                                        
"activityId"                                       
"TimeBodyAccelerometerMean()-X"                    
"TimeBodyAccelerometerMean()-Y"                    
"TimeBodyAccelerometerMean()-Z"                    
"TimeBodyAccelerometerSTD()-X"                     
"TimeBodyAccelerometerSTD()-Y"                     
"TimeBodyAccelerometerSTD()-Z"                     
"TimeGravityAccelerometerMean()-X"                 
"TimeGravityAccelerometerMean()-Y"                 
"TimeGravityAccelerometerMean()-Z"                 
"TimeGravityAccelerometerSTD()-X"                  
"TimeGravityAccelerometerSTD()-Y"                  
"TimeGravityAccelerometerSTD()-Z"                  
"TimeBodyAccelerometerJerkMean()-X"                
"TimeBodyAccelerometerJerkMean()-Y"                
"TimeBodyAccelerometerJerkMean()-Z"                
"TimeBodyAccelerometerJerkSTD()-X"                 
"TimeBodyAccelerometerJerkSTD()-Y"                 
"TimeBodyAccelerometerJerkSTD()-Z"                 
"TimeBodyGyroscopeMean()-X"                        
"TimeBodyGyroscopeMean()-Y"                        
"TimeBodyGyroscopeMean()-Z"                        
"TimeBodyGyroscopeSTD()-X"                         
"TimeBodyGyroscopeSTD()-Y"                         
"TimeBodyGyroscopeSTD()-Z"                         
"TimeBodyGyroscopeJerkMean()-X"                    
"TimeBodyGyroscopeJerkMean()-Y"                    
"TimeBodyGyroscopeJerkMean()-Z"                    
"TimeBodyGyroscopeJerkSTD()-X"                     
"TimeBodyGyroscopeJerkSTD()-Y"                     
"TimeBodyGyroscopeJerkSTD()-Z"                     
"TimeBodyAccelerometerMagnitudeMean()"             
"TimeBodyAccelerometerMagnitudeSTD()"              
"TimeGravityAccelerometerMagnitudeMean()"          
"TimeGravityAccelerometerMagnitudeSTD()"           
"TimeBodyAccelerometerJerkMagnitudeMean()"         
"TimeBodyAccelerometerJerkMagnitudeSTD()"          
"TimeBodyGyroscopeMagnitudeMean()"                 
"TimeBodyGyroscopeMagnitudeSTD()"                  
"TimeBodyGyroscopeJerkMagnitudeMean()"             
"TimeBodyGyroscopeJerkMagnitudeSTD()"              
"FrequencyBodyAccelerometerMean()-X"               
"FrequencyBodyAccelerometerMean()-Y"               
"FrequencyBodyAccelerometerMean()-Z"               
"FrequencyBodyAccelerometerSTD()-X"                
"FrequencyBodyAccelerometerSTD()-Y"                
"FrequencyBodyAccelerometerSTD()-Z"                
"FrequencyBodyAccelerometerMeanFreq()-X"           
"FrequencyBodyAccelerometerMeanFreq()-Y"           
"FrequencyBodyAccelerometerMeanFreq()-Z"           
"FrequencyBodyAccelerometerJerkMean()-X"           
"FrequencyBodyAccelerometerJerkMean()-Y"           
"FrequencyBodyAccelerometerJerkMean()-Z"           
"FrequencyBodyAccelerometerJerkSTD()-X"            
"FrequencyBodyAccelerometerJerkSTD()-Y"            
"FrequencyBodyAccelerometerJerkSTD()-Z"            
"FrequencyBodyAccelerometerJerkMeanFreq()-X"       
"FrequencyBodyAccelerometerJerkMeanFreq()-Y"       
"FrequencyBodyAccelerometerJerkMeanFreq()-Z"       
"FrequencyBodyGyroscopeMean()-X"                   
"FrequencyBodyGyroscopeMean()-Y"                   
"FrequencyBodyGyroscopeMean()-Z"                   
"FrequencyBodyGyroscopeSTD()-X"                    
"FrequencyBodyGyroscopeSTD()-Y"                    
"FrequencyBodyGyroscopeSTD()-Z"                    
"FrequencyBodyGyroscopeMeanFreq()-X"               
"FrequencyBodyGyroscopeMeanFreq()-Y"               
"FrequencyBodyGyroscopeMeanFreq()-Z"               
"FrequencyBodyAccelerometerMagnitudeMean()"        
"FrequencyBodyAccelerometerMagnitudeSTD()"         
"FrequencyBodyAccelerometerMagnitudeMeanFreq()"    
"FrequencyBodyAccelerometerJerkMagnitudeMean()"    
"FrequencyBodyAccelerometerJerkMagnitudeSTD()"     
"FrequencyBodyAccelerometerJerkMagnitudeMeanFreq()"
"FrequencyBodyGyroscopeMagnitudeMean()"            
"FrequencyBodyGyroscopeMagnitudeSTD()"             
"FrequencyBodyGyroscopeMagnitudeMeanFreq()"        
"FrequencyBodyGyroscopeJerkMagnitudeMean()"        
"FrequencyBodyGyroscopeJerkMagnitudeSTD()"         
"FrequencyBodyGyroscopeJerkMagnitudeMeanFreq()"    
"activitytype" 

#**Data Transformations**

1. The train and test data sets were merged to create a single set of data.
2. A subset of the data was created that extracted the mean and the standard deviation of each measurement.
3. Descriptive activity labels were added to the activities (e.g. walking)
4. Some measurement variable names were modified to be more appropriate and descriptive (e.g. changed "BodyBody" to "Body")
5. A final tidy data set was created with the average of variable for every activity and subject.
