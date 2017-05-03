# Project Name: divorce-prediction
## Predicting American Divorce
___

### Overview/Synopsis

The goal of this project is to find a model that accurately predicts if a person is divorced, single or married. We think that there are a series of social, economic, racial, religious and geographic variables that relate to a certain person being divorced.


### Use

We are ceating a tool that accurate predicts if your are divorced or not.

We use decision trees model to predict the outcomes (divorced, single or married). We create 3 different predictions. The first one is a decision model tree with CP = 0.01, the second one we use CP = 0, and the third one we use optimal CP.


### Data Used

We use the Current Population Survey (http://thedataweb.rm.census.gov/ftp/cps_ftp.html). We downloaded the data using a parsing script written within DOC and given by Prof Jeff Chen for public use. We modified it to get the data for the twelve months of 2016.

We have approximately 1.8 million observations and 389 variables. From those 389 variables available in the dataset we use XX variables to predict the outcome. Among the most important variables we have:

-
-
-
-
-

The parsing script also creates a dictonary for these variables.

### Usage
Open the .R file and run the script.


### Progress Log
-April 17, 2017: We started wrinting our read-me file and gathering the data.
-April 20, 2017: Updates on Read-me file.
-April 24, 2017: Finishing Read-me file.

### Credits

Credits of this work go out to Carlos Delgado and Christian Ueland.

### License

No license needed.
