# jh-datascience-gettingandcleaningdata-assignment

Includes

1. **run_analysis.R**: Script that produces tidy_data.txt
2. **tidy_data.txt**: Clean dataset, produced from raw wearable computing data collected from the accelerometers from the Samsung Galaxy S smartphone: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
 3. **Codebook.md** : Information about the tidy_data dataset
 
 ## Instructions
 1. Install the packages "dplyr" and "data.table".
 2. Run the script


## Steps
1. Downloads the raw dataset.
2. Extracts feature labels (variable names) of relevant features (only mean and std)
3. Combines training and test set. 
4. Applies descriptive activity names. 
5. Table from 4 is grouped by subject and activity (in this order) and the mean is taken for each subject and each activity. 
6. A tidy data set is created (txt file).
