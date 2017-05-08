# Project Name: divorce-prediction
## Predicting American Divorce
___

### Overview/Synopsis

The goal of this project is to find a model that accurately predicts if a person is divorced, single or married. We think that there are a series of social, economic, racial, religious and geographic variables that relate to a certain person being divorced.


### Use

We are ceating a tool that accurate predicts if your are marriage status. Wether you are divorced, single or married, this tool will predict with an accuracy in the 80s percentage, given certain characteristics.  

We use decision trees model to predict the outcomes (divorced, single or married). We create a prediction with CP = 0 (most precise and really high computing power). After it, we create a loop and start "pruning" the tree with it, in order to get the highest mean F1 and CP possible. As it turns out, our mean F1 on the the test sample is around 81% with a CP = XXx10^(-5).


### Data Used

We use the Current Population Survey (http://thedataweb.rm.census.gov/ftp/cps_ftp.html). We downloaded the data using a parsing script written within DOC and given by Prof Jeff Chen for public use. We modified it to get the data for the twelve months of 2016.

We have approximately 1.8 million observations and 389 variables. From those 389 variables available in the dataset we use 35 variables to predict the outcome. These are the variables used with their importance:


***varname*** |	***importance*** | ***DESCRIPTION***
--- | --- | ---
prtage |	48027.2043 |	PERSONS AGE  
hrnumhou |	19580.93662 |	TOTAL NUMBER OF PERSONS LIVING 
prnmchld |	10172.78591 |	Number of own children < 18 years of age 
prchld |	10130.38892 |	PRESENCE OF OWN CHILDREN < 18 YEARS 
pemlr |	4419.647807 |	MONTHLY LABOR FORCE RECODE
hefaminc |	4143.967869 |	FAMILY INCOME
puwk |	3366.378441 |	LAST WEEK, DID YOU DO ANY WORK
prtfage |	2525.231903 |	TOP CODE FLAG FOR AGE
peeduca |	2101.682639 |	HIGHEST LEVEL OF SCHOOL 
prwksch |	1873.531408 |	LABOR FORCE BY TIME 
prcivlf |	1733.776621 |	CIVILIAN LABOR FORCE
ptdtrace |	1521.411985 |	RACE
prinusyr |	1411.366186 |	IMMIGRANT'S YEAR OF ENTRY
prwkstat |	1346.103785 |	FULL/PART-TIME WORK STATUS
prmjind1 |	762.5797876 |	MAJOR INDUSTRY RECODE - JOB 1
gediv |	726.3161318 |	DIVISION
gtcbsasz |	656.6140444 |	Metropolitan Area (CBSA) SIZE
gtindvpc |	554.5695261 |	INDIVIDUAL PRINCIPAL CITY
prcitshp |	543.2361561 |	CITIZENSHIP STATUS
prmjocc1 |	533.5237143 |	MAJOR OCCUPATION RECODE
pesex |	530.7090073 |	SEX
gereg |	389.8060756 |	REGION
gtcbsast |	383.5875216 |	PRINCIPAL CITY/BALANCE STATUS
hehousut |	268.7665871 |	TYPE OF HOUSING UNIT
hurespli |	256.9704462 |	LINE NUMBER OF THE CURRENT
gtmetsta |	183.9798964 |	METROPOLITAN STATUS
peafever |	181.6559453 |	DID YOU EVER SERVE ON ACTIVE 
huspnish |	125.2598896 |	IS SPANISH THE ONLY LANGUAGE SPOKEN 
peafnow |	109.5453365 |	ARE YOU NOW IN THE ARMED FORCES 
penlfact |	106.0165516 |	WHAT BEST DESCRIBES YOUR SITUATION AT 
pehspnon |	85.31919456 |	HISPANIC OR NON-HISPANIC
pedisrem |	65.85950161 |	BECAUSE OF A PHYSICAL, MENTAL, OR 
hubus |	49.12820317 |	DOES ANYONE IN THIS HOUSEHOLD
pedisear |	17.44051162 |	IS...DEAF OR DOES...HAVE SERIOUS DIFFICULTY HEARING?
prftlf |	9.76262516 |	FULL TIME LABOR FORCE

The parsing script also creates a dictonary for these variables.

### Usage

Our project can be checked in the divorce-prediction.Rmd file.

This file project was broken down into 7 main parts

- 1 Installing all the libraries needed.
- 2 Declaring functions that will be used in other parts of the project.
- 3 Creating a Data Dictionary.
- 4 Downloading the data.
- 5 Culling and cleaning the data.
- 6 Training the model.
- 7 Optimizing the model.
- 8 Iterating to find the best mean F1.



***NOTE:*** in order for this script to work working directory and paths in the files must be updated to fit the user



### Progress Log
- April 17, 2017: We started wrinting our read-me file and gathering the data.
- April 20, 2017: Updates on Read-me file.
- April 24, 2017: Finishing Read-me file.
- April 30, 2017: Finishing the code.
- May 8, 2017: Code Finished and Read-Me Finished.

### Credits

Credits of this work go out to Carlos Delgado and Christian Ueland.

### License

No license needed.
