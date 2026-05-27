/*
RSS PUF Input Program: This program imports RSS CSV file into SAS working directory as a SAS dataset:
 - Loads formats to the working directory
 - Imports the RSS CSV data file as a SAS dataset
 - Applies labels and formats to the SAS dataset

 Before running this program, please download the CSV file or SAS dataset to a folder called 
 C:\RSS7 (on a machine running Windows).

 If importing the SAS dataset, please change the filename statement below, as well as replace 
 the data step below with: 
      data &dsn. ;
      	set in.&filename ;
      run ;

*/


%let folderpath = C:\RSS7; *folder location of CSV file;
%let filename = RSS7_PUF.csv; *CSV file name to import into sas;
%let dsn = rss7_puf; *SAS dataset name for output dataset;
%let formatcat= work.formats; *SAS formats name in temp working folder;

PROC FORMAT library = &formatcat;	 
VALUE ACC_HTHLAST_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Never"
 	1= "Less than 12 months ago"
 	2= "More than 1 year but less than 2 years ago"
 	3= "More than 2 years but less than 3 years ago"
 	4= "More than 3 years but less than 5 years ago"
 	5= "More than 5 years but less than 10 years ago"
 	6= "10 years ago or more";
VALUE ACC_HTHTYPE_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "I do not go to one place most often"
 	1= "A doctor's office or health center"
 	2= "Urgent care center or clinic in a drug store or grocery store"
 	3= "Hospital emergency room"
 	4= "A VA medical center or VA outpatient clinic"
 	5= "Some other place";
VALUE ACC_HTHUSUAL_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Yes, there is a single place"
 	2= "No, there is no place"
 	3= "Yes, there is more than one place";
VALUE ACC_RETAIL_R_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	0= "0"
 	1= "1"
 	2= "2"
 	3= "3"
 	4= "4"
 	5= "5"
 	6= "6"
 	7= "7"
 	8= "8"
 	9= "9"
 	10= "10"
 	11= "11"
 	12= "12+";
VALUE ACC_URGENT_R_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	0= "0"
 	1= "1"
 	2= "2"
 	3= "3"
 	4= "4"
 	5= "5"
 	6= "6"
 	7= "7"
 	8= "8+";
VALUE AVG_PACKSPERDAY_R_	-8= "Question not asked"
 	0= "0"
 	1= "1"
 	2= "2+";
VALUE BMICAT6_	-9= "Don't know"
 	-8= "Not Ascertained"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Underweight"
 	2= "Healthy weight"
 	3= "Overweight"
 	4= "Class 1 Obesity"
 	5= "Class 2 Obesity"
 	6= "Class 3 Obesity";
VALUE CHR_AS12M_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CHR_ASEV_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CHR_ASTILL_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CHR_CANEV_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CHR_CAREV_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CHR_CARSTILL_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CHR_CHLEV_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CHR_CHLSTILL_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CHR_COPDEV_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CHR_HYPEV_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CHR_HYPSTILL_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CHR_OBEV_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CHR_OBSTILL_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CHR_SLAPEV_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CHR_SLAPSTILL_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CIG_AGE1_R_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-4= "Have never smoked cigarettes regularly"
 	1= "Less than age 16"
 	2= "Age 16 or older, less than age 20"
 	3= "Age 20 or older, less than age 25"
 	4= "Age 25 or older, less than age 30"
 	5= "Age 30 or older";
VALUE CIG_AGE2_R_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	1= "Less than age 16"
 	2= "Age 16 or older, less than age 20"
 	3= "Age 20 or older, less than age 25"
 	4= "Age 25 or older, less than age 30"
 	5= "Age 30 or older, less than age 35"
 	6= "Age 35 or older, less than age 40"
 	7= "Age 40 or older, less than age 45"
 	8= "Age 45 or older, less than age 50"
 	9= "Age 50 or older, less than age 55"
 	10= "Age 55 or older, less than age 60"
 	11= "Age 60 or older, less than age 65"
 	12= "Age 65 or older, less than age 70"
 	13= "Age 70 or older";
VALUE CIG_SMKEV_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CIG_SMKNOW_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Every day"
 	2= "Some days"
 	3= "Not at all";
VALUE CIG_YEARS_SMOKED_R_	-8= "Question not asked"
 	1= "Less than 5"
 	2= "5 or more, less than 10"
 	3= "10 or more, less than 15"
 	4= "15 or more, less than 20"
 	5= "20 or more, less than 25"
 	6= "25 or more, less than 30"
 	7= "30 or more, less than 35"
 	8= "35 or more, less than 40"
 	9= "40 or more, less than 45"
 	10= "45 or more, less than 50"
 	11= "50 or more";
VALUE CIH_ACU12M_R_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	1= "Only one time"
 	2= "2-5 times"
 	3= "6-10 times"
 	4= "11+ times";
VALUE CIH_ACUCOST_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CIH_ACUPUN_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CIH_HLTH12M_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CIH_HOMEO_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CIH_MUSART_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CIH_QIGONG_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CIH_REIKI_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CIH_TAICHI_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CITIZEN2_	0= "Not a U.S. citizen"
 	1= "U.S. citizen";
VALUE CIVIC_ENGAGE_	-8= "Unknown"
 	1= "Yes"
 	2= "No";
VALUE CIV_MEET_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CIV_VOL12M_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CIV_VOLOTH_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CIV_VOTELOCL_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE DEM_RACEETH_	1= "American Indian or Alaska Native alone"
 	2= "Asian alone"
 	3= "Black alone"
 	4= "Hispanic or Latino alone"
 	5= "Middle Eastern alone"
 	6= "Native Hawaiian or Pacific Islander alone"
 	7= "White alone"
 	8= "Multiracial and/or Multiethnic";
VALUE DEVICE_	1= "Desktop/Laptop/netbook"
 	2= "Smartphone"
 	3= "Tablet"
 	4= "Other device (book reader, game console, etc.)"
 	5= "Phone interview (not online)";
VALUE DIB_DIBEV_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE DIB_DIBSTILL_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE DIB_DIBTYPE_R_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	1= "Type 1 or some other type"
 	2= "Type 2";
VALUE DIB_GESDIB_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE DIB_PDIBSTILL_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE DIB_PREDIB_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE DOCVIS_P12M_	-8= "Not ascertained"
 	1= "Yes"
 	2= "No";
VALUE EMPWRKLSWK_	-8= "Unknown"
 	0= "Did not work"
 	1= "Worked, Temp Absent, Seasonal, Family Job-no pay";
VALUE EMP_ABSENTWK_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE EMP_EMPLOY_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE EMP_INSA_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes"
 	2= "Upcoded: Yes";
VALUE EMP_INSB_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes"
 	2= "Upcoded: Yes";
VALUE EMP_INSC_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes"
 	2= "Upcoded: Yes";
VALUE EMP_INSD_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes"
 	2= "Upcoded: Yes";
VALUE EMP_INSE_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes"
 	2= "Upcoded: Yes";
VALUE EMP_INSF_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes"
 	2= "Upcoded: Yes";
VALUE EMP_INSG_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes"
 	2= "Upcoded: Yes";
VALUE EMP_INSH_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE EMP_INSH_OTH_	-8= "Not ascertained"
 	0= "No"
 	2= "Upcoded: Yes";
VALUE EMP_INSH_UNK_	-8= "Not ascertained"
 	0= "No"
 	2= "Upcoded: Yes";
VALUE EMP_WHYNOWRK_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Unemployed, laid off, looking for work"
 	1= "Seasonal/contract work"
 	2= "Retired"
 	3= "Unable to work for health reasons/disabled"
 	4= "Taking care of house or family"
 	5= "Going to school"
 	6= "Working at a family-owned job or business, but not for pay"
 	7= "Other";
VALUE FER_BCDOC_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE FER_DOCPREV_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE FER_EXPECT_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Within the next 2 years"
 	2= "2-5 years from now"
 	3= "More than 5 years from now";
VALUE FER_FERTILITY_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE FER_FERTNOW_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE FER_INFOBC_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE FER_INFOSTER_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE FER_INTEND_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE FER_LIVENUM_R_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	0= "0"
 	1= "1"
 	2= "2"
 	3= "3"
 	4= "4"
 	5= "5+";
VALUE FER_PAPTEST_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE FER_PELVEXAM_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE FER_PERAGE_R_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-4= "I have never had a menstrual period"
 	9= "<=9"
 	18= "18+";
VALUE FER_PHYSPOS_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE FER_PLANB_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE FER_PLANS_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Definitely yes"
 	2= "Probably yes"
 	3= "Probably no"
 	4= "Definitely no";
VALUE FER_PREGNUM_R_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	0= "0"
 	1= "1"
 	2= "2"
 	3= "3"
 	4= "4"
 	5= "5+";
VALUE FER_PREG_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE FER_PREVENT_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE FER_SEXM12M_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE FER_SEXMALE_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE FER_STDTEST_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE FER_SURGERY_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE FER_TESTBC_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE FER_WANTPREG_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE FER_WHYNOBC_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "You did not expect to have sex"
 	1= "You did not think you could get pregnant"
 	2= "You didn't really mind if you got pregnant"
 	3= "You were worried about the side effects of birth control"
 	4= "Your male partner did not want you to use a birth control method"
 	5= "Your male partner himself did not want to use a birth control method"
 	6= "Other reason";
VALUE GLP_COMPMED_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE GLP_DELAYA_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE GLP_DELAYB_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE GLP_DOSEA_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE GLP_DOSEB_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE GLP_DOSEC_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE GLP_DOSED_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE GLP_DOSEWHYA_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE GLP_DOSEWHYB_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE GLP_DOSE_	-9= "Don't know"
 	-8= "Not ascertained"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE GLP_INSPAY_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "None of the cost"
 	2= "Part of the cost"
 	3= "All of the cost";
VALUE GLP_LESSWHYA_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE GLP_LESSWHYB_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE GLP_LOSEWT_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE GLP_MED12M_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE GLP_MEDACT_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE GLP_MEDINFO_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE GLP_MEDNOW_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE GLP_MEDRX_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE GLP_RX12MA_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE GLP_RX12MB_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE GLP_RX12MC_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE GLP_RX12MD_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE GLP_RX12ME_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE GLP_STOPA_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE GLP_STOPB_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE GLP_SYMPTOMS_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE GLP_WEIGHT_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Very overweight"
 	2= "Slightly overweight"
 	3= "About the right weight"
 	4= "Slightly underweight"
 	5= "Very underweight";
VALUE HCA_DLYCOST_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE HCA_DNTCOST_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE HIS_GENERAL_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Excellent"
 	2= "Very good"
 	3= "Good"
 	4= "Fair"
 	5= "Poor";
VALUE IFLG_	0= "No imputation"
 	1= "Logical assignment"
 	2= "Statistical imputation";
VALUE INSURED_	-8= "Not ascertained"
 	0= "Not insured"
 	1= "Insured";
VALUE INT_ACCESS_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE INT_HOMEACC_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE INT_USEDOC_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE INT_USEHIT_R_	-8= "Not ascertained"
 	1= "Yes"
 	2= "No";
VALUE INT_USEMED_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE INT_USETEST_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE LAN_DOCTOR_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "English"
 	2= "Spanish"
 	3= "Another language";
VALUE LAN_MEDIA_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "English"
 	2= "Spanish"
 	3= "Another language";
VALUE LAN_OTHERLAN_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE LAN_SOCIAL_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "English"
 	2= "Spanish"
 	3= "Another language";
VALUE LEGMSTAT_	-8= "Unknown"
 	1= "Separated"
 	2= "Divorced"
 	3= "Married"
 	4= "Single/Never Married"
 	5= "Widowed";
VALUE LIF_GENERAL_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Very satisfied"
 	2= "Satisfied"
 	3= "Dissatisfied"
 	4= "Very dissatisfied";
VALUE LUNG_SCR_ELIG_	-9= "Don't know"
 	-8= "Not ascertained"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Not eligible"
 	1= "Eligible";
VALUE LUN_ANXIOUS_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE LUN_ASHAME_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE LUN_ASSUME_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Strongly agree"
 	2= "Somewhat agree"
 	3= "Somewhat disagree"
 	4= "Strongly disagree";
VALUE LUN_AVGCIG_R_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	1= "1-9"
 	2= "10-29"
 	3= "30+";
VALUE LUN_AVGPACK_R_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	1= "1"
 	2= "2+";
VALUE LUN_BENEFIT_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE LUN_BLAMED_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE LUN_BLAME_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Strongly agree"
 	2= "Somewhat agree"
 	3= "Somewhat disagree"
 	4= "Strongly disagree";
VALUE LUN_CANCER_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE LUN_CHOICES_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Strongly agree"
 	2= "Somewhat agree"
 	3= "Somewhat disagree"
 	4= "Strongly disagree";
VALUE LUN_CONCERN_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE LUN_COST_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE LUN_CTSCREEN_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE LUN_DOCASK_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE LUN_EXPOSE_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE LUN_HARMS_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE LUN_HEALTHY_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE LUN_INSUR_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE LUN_JUDGED_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE LUN_LCSCREEN_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE LUN_LECTURE_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE LUN_LOWDOCT_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE LUN_NOREC_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE LUN_NORISK_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE LUN_NOTIME_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE LUN_NOTSHARE_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE LUN_READY_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE LUN_SCOTHER_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE LUN_SHOTHER_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE LUN_STILLRISK_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Strongly agree"
 	2= "Somewhat agree"
 	3= "Somewhat disagree"
 	4= "Strongly disagree";
VALUE LUN_TRANSPO_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE LUN_TREAT_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE LYME_REGION_	-9= "Don't know"
 	-8= "Not ascertained"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "High Lyme disease incidence"
 	2= "Emerging Lyme disease incidence"
 	3= "Low Lyme disease incidence";
VALUE LYM_PREVA_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Definitely"
 	2= "Very likely"
 	3= "Somewhat likely"
 	4= "Somewhat unlikely"
 	5= "Very unlikely"
 	6= "Definitely not";
VALUE LYM_PREVB_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Definitely"
 	2= "Very likely"
 	3= "Somewhat likely"
 	4= "Somewhat unlikely"
 	5= "Very unlikely"
 	6= "Definitely not";
VALUE LYM_PREVC_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Definitely"
 	2= "Very likely"
 	3= "Somewhat likely"
 	4= "Somewhat unlikely"
 	5= "Very unlikely"
 	6= "Definitely not";
VALUE LYM_PREVD_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Definitely"
 	2= "Very likely"
 	3= "Somewhat likely"
 	4= "Somewhat unlikely"
 	5= "Very unlikely"
 	6= "Definitely not";
VALUE MARITAL_	-8= "Unknown"
 	1= "Married"
 	2= "Not married";
VALUE MARSTAT_	-8= "Unknown"
 	1= "Married"
 	2= "Widowed"
 	3= "Divorced"
 	4= "Separated"
 	5= "Never Married"
 	6= "Living with partner";
VALUE MAR_EVMARRY_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE MAR_LEGAL_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Married"
 	2= "Widowed"
 	3= "Divorced"
 	4= "Separated";
VALUE MAR_MARITAL_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Married"
 	2= "Living with a partner together as an unmarried couple"
 	3= "Neither";
VALUE MAR_WIDIVSEP_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Widowed"
 	2= "Divorced"
 	3= "Separated";
VALUE MED_RX12MA_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE MED_RXDG12MA_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE MED_RXDL12MA_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE MED_RXLS12MA_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE MED_RXSK12MA_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE MTL_ANXIETY_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Never"
 	1= "Daily"
 	2= "Weekly"
 	3= "Monthly"
 	4= "A few times a year";
VALUE MTL_ANXLVL_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "A little"
 	2= "A lot"
 	3= "Somewhere in between a little and a lot";
VALUE MTL_ANXMEDS_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE MTL_DEPLVL_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "A little"
 	2= "A lot"
 	3= "Somewhere in between a little and a lot";
VALUE MTL_DEPMEDS_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE MTL_DEPRESS_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Never"
 	1= "Daily"
 	2= "Weekly"
 	3= "Monthly"
 	4= "A few times a year";
VALUE NCHS_METRO_	1= "Metro Area"
 	2= "Non-Metro Area";
VALUE ONEVISIT_	0= "Multiple session or did not complete"
 	1= "Completed survey in single session";
VALUE P_AGE5YRS_R_	1= "18-19"
 	2= "20-24"
 	3= "25-29"
 	4= "30-34"
 	5= "35-39"
 	6= "40-44"
 	7= "45-49"
 	8= "50-54"
 	9= "55-59"
 	10= "60-64"
 	11= "65-69"
 	12= "70+";
VALUE P_EDUCATION_I_R_	1= "High school graduate or less"
 	2= "Some college"
 	3= "Bachelor's degree or above";
VALUE P_HHSIZE_R_	1= "1"
 	2= "2"
 	3= "3"
 	4= "4"
 	5= "5"
 	6= "6+";
VALUE P_HOMEOWN_R_	1= "Own or being bought"
 	2= "Rent/other arrangement";
VALUE P_MODE_	1= "Web"
 	2= "CATI";
VALUE P_ORIENT_	1= "Gay or lesbian"
 	2= "Straight, that is not lesbian/gay"
 	3= "Bisexual"
 	4= "Something else";
VALUE P_OUTCOME_	1= "Never accessed the instrument"
 	2= "Accessed instrument but dropped off (did not reach last question of the survey)"
 	3= "Complete (reached last question)"
 	4= "Completed interview but case dropped due to quality concerns (e.g., speeding, excessive item nonresponse)";
VALUE P_POVERTY4_R_	1= "0 - < 1.00"
 	2= "1.00 - < 2.00"
 	3= "2.00 - < 4.00"
 	4= "4.00 +";
VALUE P_REMIND_	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "0"
 	1= "1"
 	2= "2"
 	3= "3"
 	4= "4"
 	5= "5"
 	6= "6"
 	7= "7"
 	8= "8"
 	9= "9";
VALUE P_SEX_	1= "Male"
 	2= "Female";
VALUE QUEX_LANG_	1= "English"
 	2= "Spanish";
VALUE REGION_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Northeast"
 	2= "Midwest"
 	3= "South"
 	4= "West";
VALUE SMOKE_STATUS_	-9= "Don't know"
 	-8= "Not ascertained"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Smoked 100+ cigarettes and currently smokes"
 	2= "Smoked 100+ cigarettes but does not currently smoke"
 	3= "Has not smoked 100 cigarettes in their lifetime";
VALUE SOCWRKLMT_	-8= "Not ascertained"
 	0= "No"
 	1= "Yes";
VALUE SOC_ERRANDS_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "No difficulty"
 	2= "Some difficulty"
 	3= "A lot of difficulty"
 	4= "Cannot do this at all";
VALUE SOC_PARACTIV_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "No difficulty"
 	2= "Some difficulty"
 	3= "A lot of difficulty"
 	4= "Cannot do this at all";
VALUE SOC_PARACTIV_R_	-8= "Unknown"
 	1= "No difficulty"
 	2= "Some difficulty/A lot of difficulty/Cannot do this at all";
VALUE SOC_SCWRKLIM_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SOURCE_	1= "Panel Provider 1"
 	2= "Panel Provider 2";
VALUE TEL_CELL_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE TEL_CELL_R_	-8= "Not ascertained"
 	1= "Yes"
 	2= "No";
VALUE TEL_HHCELL_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE TEL_NONCELL_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE URGENTCARE_P12M_	-8= "Not ascertained"
 	1= "Yes"
 	2= "No";
VALUE USBORN2_	0= "No"
 	1= "Yes";
VALUE VET_AFVETTRN_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE VET_AFVET_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE VET_COMBAT_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
RUN;	 
	 

data &dsn.;
infile "&folderpath./&filename" dlm="," missover firstobs =2 DSD;
LENGTH HIS_GENERAL  8
LIF_GENERAL  8
CHR_HYPEV  8
CHR_HYPSTILL  8
CHR_CHLEV  8
CHR_CHLSTILL  8
CHR_CAREV  8
CHR_CARSTILL  8
CHR_OBEV  8
CHR_OBSTILL  8
CHR_SLAPEV  8
CHR_SLAPSTILL  8
CHR_CANEV  8
CHR_COPDEV  8
CHR_ASEV  8
CHR_ASTILL  8
CHR_AS12M  8
DIB_PREDIB  8
DIB_GESDIB  8
DIB_DIBEV  8
DIB_DIBSTILL  8
DIB_PDIBSTILL  8
DIB_DIBTYPE_R  8
SOC_ERRANDS  8
SOC_PARACTIV  8
SOC_PARACTIV_R  8
SOC_SCWRKLIM  8
SOCWRKLMT  8
EMP_EMPLOY  8
EMP_ABSENTWK  8
EMP_WHYNOWRK  8
EMPWRKLSWK  8
EMP_INSA  8
EMP_INSB  8
EMP_INSC  8
EMP_INSD  8
EMP_INSE  8
EMP_INSF  8
EMP_INSG  8
EMP_INSH  8
EMP_INSH_UNK  8
EMP_INSH_OTH  8
INSURED  8
VET_AFVET  8
VET_AFVETTRN  8
VET_COMBAT  8
LYM_PREVA  8
LYM_PREVB  8
LYM_PREVC  8
LYM_PREVD  8
ACC_HTHLAST  8
DOCVIS_P12M  8
ACC_HTHUSUAL  8
ACC_HTHTYPE  8
ACC_RETAIL_R  8
ACC_URGENT_R  8
URGENTCARE_P12M  8
CIH_HLTH12M  8
CIH_HOMEO  8
CIH_REIKI  8
CIH_ACUPUN  8
CIH_ACU12M_R  8
CIH_ACUCOST  8
CIH_TAICHI  8
CIH_QIGONG  8
CIH_MUSART  8
GLP_WEIGHT  8
GLP_LOSEWT  8
GLP_MED12M  8
GLP_MEDNOW  8
GLP_MEDRX  8
GLP_MEDINFO  8
GLP_MEDACT  8
GLP_RX12MA  8
GLP_RX12MB  8
GLP_RX12MC  8
GLP_RX12MD  8
GLP_RX12ME  8
GLP_COMPMED  8
GLP_DOSEA  8
GLP_DOSEB  8
GLP_DOSEC  8
GLP_DOSED  8
GLP_DOSE  8
GLP_DOSEWHYA  8
GLP_DOSEWHYB  8
GLP_LESSWHYA  8
GLP_LESSWHYB  8
GLP_DELAYA  8
GLP_DELAYB  8
GLP_STOPA  8
GLP_STOPB  8
GLP_INSPAY  8
GLP_SYMPTOMS  8
CIG_SMKEV  8
CIG_AGE1_R  8
CIG_SMKNOW  8
SMK_STATUS  8
CIG_AGE2_R  8
CIG_YEARS_SMOKED_R  8
LUN_AVGCIG_R  8
LUN_AVGCIG2_R  8
LUN_AVGPACK_R  8
LUN_AVGPACK2_R  8
AVG_PACKSPERDAY_R  8
LUNG_SCR_ELIG  8
LUN_DOCASK  8
LUN_NOTSHARE  8
LUN_INSUR  8
LUN_JUDGED  8
LUN_TREAT  8
LUN_LECTURE  8
LUN_ASHAME  8
LUN_READY  8
LUN_SHOTHER  8
LUN_CANCER  8
LUN_LCSCREEN  8
LUN_BENEFIT  8
LUN_HARMS  8
LUN_LOWDOCT  8
LUN_CTSCREEN  8
LUN_NOREC  8
LUN_HEALTHY  8
LUN_BLAMED  8
LUN_NOTIME  8
LUN_TRANSPO  8
LUN_EXPOSE  8
LUN_CONCERN  8
LUN_NORISK  8
LUN_ANXIOUS  8
LUN_COST  8
LUN_SCOTHER  8
LUN_BLAME  8
LUN_CHOICES  8
LUN_STILLRISK  8
LUN_ASSUME  8
HCA_DLYCOST  8
HCA_DNTCOST  8
MED_RX12MA  8
MED_RXSK12MA  8
MED_RXLS12MA  8
MED_RXDL12MA  8
MED_RXDG12MA  8
INT_ACCESS  8
INT_HOMEACC  8
INT_USEMED  8
INT_USEDOC  8
INT_USETEST  8
INT_USEHIT_R  8
TEL_NONCELL  8
TEL_CELL  8
TEL_CELL_R  8
TEL_HHCELL  8
MTL_ANXIETY  8
MTL_ANXMEDS  8
MTL_ANXLVL  8
MTL_DEPRESS  8
MTL_DEPMEDS  8
MTL_DEPLVL  8
FER_PERAGE_R  8
FER_PREG  8
FER_PREGNUM_R  8
FER_LIVENUM_R  8
FER_SURGERY  8
FER_PHYSPOS  8
FER_PLANS  8
FER_INTEND  8
FER_EXPECT  8
FER_SEXMALE  8
FER_SEXM12M  8
FER_PREVENT  8
FER_WANTPREG  8
FER_WHYNOBC  8
FER_BCDOC  8
FER_TESTBC  8
FER_INFOBC  8
FER_INFOSTER  8
FER_PLANB  8
FER_PAPTEST  8
FER_PELVEXAM  8
FER_STDTEST  8
FER_FERTILITY  8
FER_FERTNOW  8
FER_DOCPREV  8
BMICAT6  8
MAR_MARITAL  8
MAR_EVMARRY  8
MAR_LEGAL  8
MAR_WIDIVSEP  8
MARITAL  8
MARSTAT  8
LEGMSTAT  8
LAN_OTHERLAN  8
LAN_MEDIA  8
LAN_DOCTOR  8
LAN_SOCIAL  8
DEM_RACEETH  8
DEM_REGION  8
LYME_REGION  8
CIV_VOL12M  8
CIV_VOLOTH  8
CIV_MEET  8
CIV_VOTELOCL  8
CIVIC_ENGAGE  8
START_DATE_R $5
END_DATE_R $5
ID_R  8
SOURCE  8
QUEX_LANG  8
P_OUTCOME  8
P_HHSIZE_R  8
P_AGE5YRS_R  8
P_SEX  8
P_EDUCATION_I_R  8
P_EDUCATION_I_R_IFLG  8
P_ONEVISIT  8
P_REMIND  8
P_DEVICE  8
P_MODE  8
P_VISIT  8
P_POVERTY4_R  8
NCHS_METRO  8
P_HOMEOWN_R  8
P_CITIZEN  8
P_USBORN  8
P_ORIENT  8
P1_CALWT  8
P2_CALWT  8
WEIGHT  8
P_STRATA_R  8
P_PSU_R  8;
INPUT HIS_GENERAL
LIF_GENERAL
CHR_HYPEV
CHR_HYPSTILL
CHR_CHLEV
CHR_CHLSTILL
CHR_CAREV
CHR_CARSTILL
CHR_OBEV
CHR_OBSTILL
CHR_SLAPEV
CHR_SLAPSTILL
CHR_CANEV
CHR_COPDEV
CHR_ASEV
CHR_ASTILL
CHR_AS12M
DIB_PREDIB
DIB_GESDIB
DIB_DIBEV
DIB_DIBSTILL
DIB_PDIBSTILL
DIB_DIBTYPE_R
SOC_ERRANDS
SOC_PARACTIV
SOC_PARACTIV_R
SOC_SCWRKLIM
SOCWRKLMT
EMP_EMPLOY
EMP_ABSENTWK
EMP_WHYNOWRK
EMPWRKLSWK
EMP_INSA
EMP_INSB
EMP_INSC
EMP_INSD
EMP_INSE
EMP_INSF
EMP_INSG
EMP_INSH
EMP_INSH_UNK
EMP_INSH_OTH
INSURED
VET_AFVET
VET_AFVETTRN
VET_COMBAT
LYM_PREVA
LYM_PREVB
LYM_PREVC
LYM_PREVD
ACC_HTHLAST
DOCVIS_P12M
ACC_HTHUSUAL
ACC_HTHTYPE
ACC_RETAIL_R
ACC_URGENT_R
URGENTCARE_P12M
CIH_HLTH12M
CIH_HOMEO
CIH_REIKI
CIH_ACUPUN
CIH_ACU12M_R
CIH_ACUCOST
CIH_TAICHI
CIH_QIGONG
CIH_MUSART
GLP_WEIGHT
GLP_LOSEWT
GLP_MED12M
GLP_MEDNOW
GLP_MEDRX
GLP_MEDINFO
GLP_MEDACT
GLP_RX12MA
GLP_RX12MB
GLP_RX12MC
GLP_RX12MD
GLP_RX12ME
GLP_COMPMED
GLP_DOSEA
GLP_DOSEB
GLP_DOSEC
GLP_DOSED
GLP_DOSE
GLP_DOSEWHYA
GLP_DOSEWHYB
GLP_LESSWHYA
GLP_LESSWHYB
GLP_DELAYA
GLP_DELAYB
GLP_STOPA
GLP_STOPB
GLP_INSPAY
GLP_SYMPTOMS
CIG_SMKEV
CIG_AGE1_R
CIG_SMKNOW
SMK_STATUS
CIG_AGE2_R
CIG_YEARS_SMOKED_R
LUN_AVGCIG_R
LUN_AVGCIG2_R
LUN_AVGPACK_R
LUN_AVGPACK2_R
AVG_PACKSPERDAY_R
LUNG_SCR_ELIG
LUN_DOCASK
LUN_NOTSHARE
LUN_INSUR
LUN_JUDGED
LUN_TREAT
LUN_LECTURE
LUN_ASHAME
LUN_READY
LUN_SHOTHER
LUN_CANCER
LUN_LCSCREEN
LUN_BENEFIT
LUN_HARMS
LUN_LOWDOCT
LUN_CTSCREEN
LUN_NOREC
LUN_HEALTHY
LUN_BLAMED
LUN_NOTIME
LUN_TRANSPO
LUN_EXPOSE
LUN_CONCERN
LUN_NORISK
LUN_ANXIOUS
LUN_COST
LUN_SCOTHER
LUN_BLAME
LUN_CHOICES
LUN_STILLRISK
LUN_ASSUME
HCA_DLYCOST
HCA_DNTCOST
MED_RX12MA
MED_RXSK12MA
MED_RXLS12MA
MED_RXDL12MA
MED_RXDG12MA
INT_ACCESS
INT_HOMEACC
INT_USEMED
INT_USEDOC
INT_USETEST
INT_USEHIT_R
TEL_NONCELL
TEL_CELL
TEL_CELL_R
TEL_HHCELL
MTL_ANXIETY
MTL_ANXMEDS
MTL_ANXLVL
MTL_DEPRESS
MTL_DEPMEDS
MTL_DEPLVL
FER_PERAGE_R
FER_PREG
FER_PREGNUM_R
FER_LIVENUM_R
FER_SURGERY
FER_PHYSPOS
FER_PLANS
FER_INTEND
FER_EXPECT
FER_SEXMALE
FER_SEXM12M
FER_PREVENT
FER_WANTPREG
FER_WHYNOBC
FER_BCDOC
FER_TESTBC
FER_INFOBC
FER_INFOSTER
FER_PLANB
FER_PAPTEST
FER_PELVEXAM
FER_STDTEST
FER_FERTILITY
FER_FERTNOW
FER_DOCPREV
BMICAT6
MAR_MARITAL
MAR_EVMARRY
MAR_LEGAL
MAR_WIDIVSEP
MARITAL
MARSTAT
LEGMSTAT
LAN_OTHERLAN
LAN_MEDIA
LAN_DOCTOR
LAN_SOCIAL
DEM_RACEETH
DEM_REGION
LYME_REGION
CIV_VOL12M
CIV_VOLOTH
CIV_MEET
CIV_VOTELOCL
CIVIC_ENGAGE
START_DATE_R $
END_DATE_R $
ID_R
SOURCE
QUEX_LANG
P_OUTCOME
P_HHSIZE_R
P_AGE5YRS_R
P_SEX
P_EDUCATION_I_R
P_EDUCATION_I_R_IFLG
P_ONEVISIT
P_REMIND
P_DEVICE
P_MODE
P_VISIT
P_POVERTY4_R
NCHS_METRO
P_HOMEOWN_R
P_CITIZEN
P_USBORN
P_ORIENT
P1_CALWT
P2_CALWT
WEIGHT
P_STRATA_R
P_PSU_R  ;
FORMAT HIS_GENERAL                      HIS_GENERAL_.
LIF_GENERAL                      LIF_GENERAL_.
CHR_HYPEV                        CHR_HYPEV_.
CHR_HYPSTILL                     CHR_HYPSTILL_.
CHR_CHLEV                        CHR_CHLEV_.
CHR_CHLSTILL                     CHR_CHLSTILL_.
CHR_CAREV                        CHR_CAREV_.
CHR_CARSTILL                     CHR_CARSTILL_.
CHR_OBEV                         CHR_OBEV_.
CHR_OBSTILL                      CHR_OBSTILL_.
CHR_SLAPEV                       CHR_SLAPEV_.
CHR_SLAPSTILL                    CHR_SLAPSTILL_.
CHR_CANEV                        CHR_CANEV_.
CHR_COPDEV                       CHR_COPDEV_.
CHR_ASEV                         CHR_ASEV_.
CHR_ASTILL                       CHR_ASTILL_.
CHR_AS12M                        CHR_AS12M_.
DIB_PREDIB                       DIB_PREDIB_.
DIB_GESDIB                       DIB_GESDIB_.
DIB_DIBEV                        DIB_DIBEV_.
DIB_DIBSTILL                     DIB_DIBSTILL_.
DIB_PDIBSTILL                    DIB_PDIBSTILL_.
DIB_DIBTYPE_R                    DIB_DIBTYPE_R_.
SOC_ERRANDS                      SOC_ERRANDS_.
SOC_PARACTIV                     SOC_PARACTIV_.
SOC_PARACTIV_R                   SOC_PARACTIV_R_.
SOC_SCWRKLIM                     SOC_SCWRKLIM_.
SOCWRKLMT                        SOCWRKLMT_.
EMP_EMPLOY                       EMP_EMPLOY_.
EMP_ABSENTWK                     EMP_ABSENTWK_.
EMP_WHYNOWRK                     EMP_WHYNOWRK_.
EMPWRKLSWK                       EMPWRKLSWK_.
EMP_INSA                         EMP_INSA_.
EMP_INSB                         EMP_INSB_.
EMP_INSC                         EMP_INSC_.
EMP_INSD                         EMP_INSD_.
EMP_INSE                         EMP_INSE_.
EMP_INSF                         EMP_INSF_.
EMP_INSG                         EMP_INSG_.
EMP_INSH                         EMP_INSH_.
EMP_INSH_UNK                     EMP_INSH_UNK_.
EMP_INSH_OTH                     EMP_INSH_OTH_.
INSURED                          INSURED_.
VET_AFVET                        VET_AFVET_.
VET_AFVETTRN                     VET_AFVETTRN_.
VET_COMBAT                       VET_COMBAT_.
LYM_PREVA                        LYM_PREVA_.
LYM_PREVB                        LYM_PREVB_.
LYM_PREVC                        LYM_PREVC_.
LYM_PREVD                        LYM_PREVD_.
ACC_HTHLAST                      ACC_HTHLAST_.
DOCVIS_P12M                      DOCVIS_P12M_.
ACC_HTHUSUAL                     ACC_HTHUSUAL_.
ACC_HTHTYPE                      ACC_HTHTYPE_.
ACC_RETAIL_R                     ACC_RETAIL_R_.
ACC_URGENT_R                     ACC_URGENT_R_.
URGENTCARE_P12M                  URGENTCARE_P12M_.
CIH_HLTH12M                      CIH_HLTH12M_.
CIH_HOMEO                        CIH_HOMEO_.
CIH_REIKI                        CIH_REIKI_.
CIH_ACUPUN                       CIH_ACUPUN_.
CIH_ACU12M_R                     CIH_ACU12M_R_.
CIH_ACUCOST                      CIH_ACUCOST_.
CIH_TAICHI                       CIH_TAICHI_.
CIH_QIGONG                       CIH_QIGONG_.
CIH_MUSART                       CIH_MUSART_.
GLP_WEIGHT                       GLP_WEIGHT_.
GLP_LOSEWT                       GLP_LOSEWT_.
GLP_MED12M                       GLP_MED12M_.
GLP_MEDNOW                       GLP_MEDNOW_.
GLP_MEDRX                        GLP_MEDRX_.
GLP_MEDINFO                      GLP_MEDINFO_.
GLP_MEDACT                       GLP_MEDACT_.
GLP_RX12MA                       GLP_RX12MA_.
GLP_RX12MB                       GLP_RX12MB_.
GLP_RX12MC                       GLP_RX12MC_.
GLP_RX12MD                       GLP_RX12MD_.
GLP_RX12ME                       GLP_RX12ME_.
GLP_COMPMED                      GLP_COMPMED_.
GLP_DOSEA                        GLP_DOSEA_.
GLP_DOSEB                        GLP_DOSEB_.
GLP_DOSEC                        GLP_DOSEC_.
GLP_DOSED                        GLP_DOSED_.
GLP_DOSE                         GLP_DOSE_.
GLP_DOSEWHYA                     GLP_DOSEWHYA_.
GLP_DOSEWHYB                     GLP_DOSEWHYB_.
GLP_LESSWHYA                     GLP_LESSWHYA_.
GLP_LESSWHYB                     GLP_LESSWHYB_.
GLP_DELAYA                       GLP_DELAYA_.
GLP_DELAYB                       GLP_DELAYB_.
GLP_STOPA                        GLP_STOPA_.
GLP_STOPB                        GLP_STOPB_.
GLP_INSPAY                       GLP_INSPAY_.
GLP_SYMPTOMS                     GLP_SYMPTOMS_.
CIG_SMKEV                        CIG_SMKEV_.
CIG_AGE1_R                       CIG_AGE1_R_.
CIG_SMKNOW                       CIG_SMKNOW_.
SMK_STATUS                       SMOKE_STATUS_.
CIG_AGE2_R                       CIG_AGE2_R_.
CIG_YEARS_SMOKED_R               CIG_YEARS_SMOKED_R_.
LUN_AVGCIG_R                     LUN_AVGCIG_R_.
LUN_AVGCIG2_R                    LUN_AVGCIG_R_.
LUN_AVGPACK_R                    LUN_AVGPACK_R_.
LUN_AVGPACK2_R                   LUN_AVGPACK_R_.
AVG_PACKSPERDAY_R                AVG_PACKSPERDAY_R_.
LUNG_SCR_ELIG                    LUNG_SCR_ELIG_.
LUN_DOCASK                       LUN_DOCASK_.
LUN_NOTSHARE                     LUN_NOTSHARE_.
LUN_INSUR                        LUN_INSUR_.
LUN_JUDGED                       LUN_JUDGED_.
LUN_TREAT                        LUN_TREAT_.
LUN_LECTURE                      LUN_LECTURE_.
LUN_ASHAME                       LUN_ASHAME_.
LUN_READY                        LUN_READY_.
LUN_SHOTHER                      LUN_SHOTHER_.
LUN_CANCER                       LUN_CANCER_.
LUN_LCSCREEN                     LUN_LCSCREEN_.
LUN_BENEFIT                      LUN_BENEFIT_.
LUN_HARMS                        LUN_HARMS_.
LUN_LOWDOCT                      LUN_LOWDOCT_.
LUN_CTSCREEN                     LUN_CTSCREEN_.
LUN_NOREC                        LUN_NOREC_.
LUN_HEALTHY                      LUN_HEALTHY_.
LUN_BLAMED                       LUN_BLAMED_.
LUN_NOTIME                       LUN_NOTIME_.
LUN_TRANSPO                      LUN_TRANSPO_.
LUN_EXPOSE                       LUN_EXPOSE_.
LUN_CONCERN                      LUN_CONCERN_.
LUN_NORISK                       LUN_NORISK_.
LUN_ANXIOUS                      LUN_ANXIOUS_.
LUN_COST                         LUN_COST_.
LUN_SCOTHER                      LUN_SCOTHER_.
LUN_BLAME                        LUN_BLAME_.
LUN_CHOICES                      LUN_CHOICES_.
LUN_STILLRISK                    LUN_STILLRISK_.
LUN_ASSUME                       LUN_ASSUME_.
HCA_DLYCOST                      HCA_DLYCOST_.
HCA_DNTCOST                      HCA_DNTCOST_.
MED_RX12MA                       MED_RX12MA_.
MED_RXSK12MA                     MED_RXSK12MA_.
MED_RXLS12MA                     MED_RXLS12MA_.
MED_RXDL12MA                     MED_RXDL12MA_.
MED_RXDG12MA                     MED_RXDG12MA_.
INT_ACCESS                       INT_ACCESS_.
INT_HOMEACC                      INT_HOMEACC_.
INT_USEMED                       INT_USEMED_.
INT_USEDOC                       INT_USEDOC_.
INT_USETEST                      INT_USETEST_.
INT_USEHIT_R                     INT_USEHIT_R_.
TEL_NONCELL                      TEL_NONCELL_.
TEL_CELL                         TEL_CELL_.
TEL_CELL_R                       TEL_CELL_R_.
TEL_HHCELL                       TEL_HHCELL_.
MTL_ANXIETY                      MTL_ANXIETY_.
MTL_ANXMEDS                      MTL_ANXMEDS_.
MTL_ANXLVL                       MTL_ANXLVL_.
MTL_DEPRESS                      MTL_DEPRESS_.
MTL_DEPMEDS                      MTL_DEPMEDS_.
MTL_DEPLVL                       MTL_DEPLVL_.
FER_PERAGE_R                     FER_PERAGE_R_.
FER_PREG                         FER_PREG_.
FER_PREGNUM_R                    FER_PREGNUM_R_.
FER_LIVENUM_R                    FER_LIVENUM_R_.
FER_SURGERY                      FER_SURGERY_.
FER_PHYSPOS                      FER_PHYSPOS_.
FER_PLANS                        FER_PLANS_.
FER_INTEND                       FER_INTEND_.
FER_EXPECT                       FER_EXPECT_.
FER_SEXMALE                      FER_SEXMALE_.
FER_SEXM12M                      FER_SEXM12M_.
FER_PREVENT                      FER_PREVENT_.
FER_WANTPREG                     FER_WANTPREG_.
FER_WHYNOBC                      FER_WHYNOBC_.
FER_BCDOC                        FER_BCDOC_.
FER_TESTBC                       FER_TESTBC_.
FER_INFOBC                       FER_INFOBC_.
FER_INFOSTER                     FER_INFOSTER_.
FER_PLANB                        FER_PLANB_.
FER_PAPTEST                      FER_PAPTEST_.
FER_PELVEXAM                     FER_PELVEXAM_.
FER_STDTEST                      FER_STDTEST_.
FER_FERTILITY                    FER_FERTILITY_.
FER_FERTNOW                      FER_FERTNOW_.
FER_DOCPREV                      FER_DOCPREV_.
BMICAT6                          BMICAT6_.
MAR_MARITAL                      MAR_MARITAL_.
MAR_EVMARRY                      MAR_EVMARRY_.
MAR_LEGAL                        MAR_LEGAL_.
MAR_WIDIVSEP                     MAR_WIDIVSEP_.
MARITAL                          MARITAL_.
MARSTAT                          MARSTAT_.
LEGMSTAT                         LEGMSTAT_.
LAN_OTHERLAN                     LAN_OTHERLAN_.
LAN_MEDIA                        LAN_MEDIA_.
LAN_DOCTOR                       LAN_DOCTOR_.
LAN_SOCIAL                       LAN_SOCIAL_.
DEM_RACEETH                      DEM_RACEETH_.
DEM_REGION                       REGION_.
LYME_REGION                      LYME_REGION_.
CIV_VOL12M                       CIV_VOL12M_.
CIV_VOLOTH                       CIV_VOLOTH_.
CIV_MEET                         CIV_MEET_.
CIV_VOTELOCL                     CIV_VOTELOCL_.
CIVIC_ENGAGE                     CIVIC_ENGAGE_.
SOURCE                           SOURCE_.
QUEX_LANG                        QUEX_LANG_.
P_OUTCOME                        P_OUTCOME_.
P_HHSIZE_R                       P_HHSIZE_R_.
P_AGE5YRS_R                      P_AGE5YRS_R_.
P_SEX                            P_SEX_.
P_EDUCATION_I_R                  P_EDUCATION_I_R_.
P_EDUCATION_I_R_IFLG             IFLG_.
P_ONEVISIT                       ONEVISIT_.
P_REMIND                         P_REMIND_.
P_DEVICE                         DEVICE_.
P_MODE                           P_MODE_.
P_POVERTY4_R                     P_POVERTY4_R_.
NCHS_METRO                       NCHS_METRO_.
P_HOMEOWN_R                      P_HOMEOWN_R_.
P_CITIZEN                        CITIZEN2_.
P_USBORN                         USBORN2_.
P_ORIENT                         P_ORIENT_.
P1_CALWT                         BEST.
P2_CALWT                         BEST.
WEIGHT                           BEST.;
LABEL HIS_GENERAL = "Self-reported health status"
LIF_GENERAL = "Self-reported life satisfaction"
CHR_HYPEV = "Ever been told you had hypertension"
CHR_HYPSTILL = "Still have hypertension"
CHR_CHLEV = "Ever been told you had high cholesterol"
CHR_CHLSTILL = "Still have high cholesterol"
CHR_CAREV = "Ever been told you had cardiovascular disease"
CHR_CARSTILL = "Still have cardiovascular disease"
CHR_OBEV = "Ever been told you had obesity"
CHR_OBSTILL = "Still have obesity"
CHR_SLAPEV = "Ever been told you had sleep apnea"
CHR_SLAPSTILL = "Still have sleep apnea"
CHR_CANEV = "Ever been told you had cancer"
CHR_COPDEV = "Ever been told you had C.O.P.D."
CHR_ASEV = "Ever been told you had asthma"
CHR_ASTILL = "Still have asthma"
CHR_AS12M = "Past 12 months, asthma attack"
DIB_PREDIB = "Ever been told you had prediabetes"
DIB_GESDIB = "Ever been told you had gestational diabetes"
DIB_DIBEV = "Ever been told you had diabetes"
DIB_DIBSTILL = "Still have diabetes"
DIB_PDIBSTILL = "Still have prediabetes"
DIB_DIBTYPE_R = "RECODE: Diabetes Type"
SOC_ERRANDS = "Difficulty doing errands alone due to physical, mental, or emotional condition"
SOC_PARACTIV = "Difficulty participating in social activities due to physical, mental, or emotional condition"
SOC_PARACTIV_R = "RECODE: Difficulty participating in social activities due to physical, mental, or emotional condition"
SOC_SCWRKLIM = "Work limited due to physical, mental, or emotional problem"
SOCWRKLMT = "DERIVED: Any social/work limitation"
EMP_EMPLOY = "Last week worked for pay at job or business"
EMP_ABSENTWK = "Had a job/business last week but temporarily absent"
EMP_WHYNOWRK = "Main reason not working for pay last week"
EMPWRKLSWK = "DERIVED: Worked last week"
EMP_INSA = "Insurance coverage: Self/family member employer, union"
EMP_INSB = "Insurance coverage: Self/family member purchased directly"
EMP_INSC = "Insurance coverage: Medicare"
EMP_INSD = "Insurance coverage: Medicaid or government assistance plan"
EMP_INSE = "Insurance coverage: TRICARE or other military"
EMP_INSF = "Insurance coverage: VA health care"
EMP_INSG = "Insurance coverage: Indian Health Service"
EMP_INSH = "Insurance coverage: Any other"
EMP_INSH_UNK = "Private insurance, Other/Unknown Source"
EMP_INSH_OTH = "Other health insurance reported"
INSURED = "DERIVED: Health Insurance Status"
VET_AFVET = "Ever served on active duty"
VET_AFVETTRN = "Were on active duty only for training"
VET_COMBAT = "Served abroad during armed conflict or mission"
LYM_PREVA = "Likely to get annual Lyme vaccine for preventing Lyme disease"
LYM_PREVB = "Likely to take single dose antibiotics within 72 hours after tick bite"
LYM_PREVC = "Likely to use bug spray for preventing Lyme disease"
LYM_PREVD = "Likely to wear permethrin clothing for preventing Lyme disease"
ACC_HTHLAST = "Time since you last saw doctor about your health"
DOCVIS_P12M = "RECODE: Doctor visit in past 12 months"
ACC_HTHUSUAL = "Have a usual place to go for health care"
ACC_HTHTYPE = "Type of place for usual care"
ACC_RETAIL_R = "RECODE: Past 12 months, number of retail health clinic visits - topcoded"
ACC_URGENT_R = "RECODE: Past 12 months, number of urgent care visits - topcoded"
URGENTCARE_P12M = "RECODE: Urgent care visit in past 12 months"
CIH_HLTH12M = "Past 12 months, saw a traditional practitioner for health"
CIH_HOMEO = "Past 12 months, saw a practitioner of Homeopathy for health"
CIH_REIKI = "Past 12 months, saw a practitioner for energy healing/Reiki for health"
CIH_ACUPUN = "Past 12 months, saw a practitioner for acupuncture for health"
CIH_ACU12M_R = "RECODE: Past 12 months, number of acupuncture visits"
CIH_ACUCOST = "Past 12 months, acupuncture visits covered by insurance"
CIH_TAICHI = "Past 12 months, practiced Tai Chi for health"
CIH_QIGONG = "Past 12 months, practiced Qi Gong for health"
CIH_MUSART = "Past 3 months, practiced music/art for health"
GLP_WEIGHT = "Weight description"
GLP_LOSEWT = "Past 12 months, doctor talked to you about losing weight"
GLP_MED12M = "Past 12 months, took GLP-1 medication for diabetes or weight loss"
GLP_MEDNOW = "Currently taking GLP-1 medication"
GLP_MEDRX = "Past 12 months, had prescription for GLP-1 medication"
GLP_MEDINFO = "Prescribing professional provided nutrition information for GLP-1 medication"
GLP_MEDACT = "Prescribing professional provided exercise information for GLP-1 medication"
GLP_RX12MA = "Past 12 months, got GLP-1 medication from primary care doctor and filled at pharmacy"
GLP_RX12MB = "Past 12 months, got GLP-1 medication from online provider that also helps plan a diet and exercise routine"
GLP_RX12MC = "Past 12 months, got GLP-1 medication from online company that only provides medication"
GLP_RX12MD = "Past 12 months, got GLP-1 medication from medical spa or cosmetic medical center"
GLP_RX12ME = "Past 12 months, got GLP-1 medication from somewhere else"
GLP_COMPMED = "Past 12 months, used a generic, compounded version of GLP-1 medication"
GLP_DOSEA = "Past 12 months, skipped GLP-1 medication doses"
GLP_DOSEB = "Past 12 months, took less GLP-1 medication than prescribed"
GLP_DOSEC = "Past 12 months, delayed filling GLP-1 prescription"
GLP_DOSED = "Past 12 months, stopped taking GLP-1 medication entirely"
GLP_DOSE = "DERIVED: Any nonadherence with GLP-1 medication (skipped, reduced, delayed, or stopped dose)"
GLP_DOSEWHYA = "Skipped GLP-1 medication doses because of cost"
GLP_DOSEWHYB = "Skipped GLP-1 medication doses because not available"
GLP_LESSWHYA = "Took less of GLP-1 medication because of cost"
GLP_LESSWHYB = "Took less of GLP-1 medication because not available"
GLP_DELAYA = "Delayed filling GLP-1 prescription because of cost"
GLP_DELAYB = "Delayed filling GLP-1 prescription because not available"
GLP_STOPA = "Stopped GLP-1 medication entirely because of cost"
GLP_STOPB = "Stopped GLP-1 medication entirely because not available"
GLP_INSPAY = "Past 12 months, insurance coverage level for GLP-1 medication"
GLP_SYMPTOMS = "Reduced or stopped GLP-1 medication due to side effects"
CIG_SMKEV = "Smoked at least 100 cigarettes in entire life"
CIG_AGE1_R = "RECODE: Age when started smoking regularly"
CIG_SMKNOW = "How often now smoke cigarettes"
SMK_STATUS = "DERIVED: Smoking status: current, former, or never smoker"
CIG_AGE2_R = "RECODE: Age last time you smoked regularly"
CIG_YEARS_SMOKED_R = "DERIVED: Number of years smoked cigarettes among current or former smokers"
LUN_AVGCIG_R = "RECODE: Average cigarettes per day ever smoked"
LUN_AVGCIG2_R = "RECODE: Average cigarettes per day ever smoked - Follow up"
LUN_AVGPACK_R = "RECODE: Average packs per day ever smoked"
LUN_AVGPACK2_R = "RECODE: Average packs per day ever smoked - Follow up"
AVG_PACKSPERDAY_R = "DERIVED: Average number of packs of cigarettes smoked per day (1 pack = 20 cigarettes)"
LUNG_SCR_ELIG = "DERIVED: Eligible for lung cancer screening (based on age and smoking history)"
LUN_DOCASK = "Doctor ever asked if you smoke"
LUN_NOTSHARE = "Ever chose not to share smoking with doctor"
LUN_INSUR = "Did not share smoking to avoid negative effect on insurance cost"
LUN_JUDGED = "Did not share smoking to avoid being negatively judged by doctor"
LUN_TREAT = "Did not share smoking to avoid different treatment by doctor"
LUN_LECTURE = "Did not share smoking to avoid lecture from doctor"
LUN_ASHAME = "Did not share smoking because felt ashamed"
LUN_READY = "Did not share smoking because not ready to quit"
LUN_SHOTHER = "Did not share smoking for some other reason"
LUN_CANCER = "Doctor ever said you had lung cancer"
LUN_LCSCREEN = "Before survey, knew lung cancer screening recommendations"
LUN_BENEFIT = "Past 12 months, doctor discussed benefits of lung cancer scan"
LUN_HARMS = "Past 12 months, doctor discussed harms of lung cancer scan"
LUN_LOWDOCT = "Ever had low-dose CT scan of chest area"
LUN_CTSCREEN = "Recent low-dose CT scan was for lung cancer screening"
LUN_NOREC = "No low-dose CT scan because doctor never recommended it"
LUN_HEALTHY = "No low-dose CT scan because you are healthy"
LUN_BLAMED = "No low-dose CT scan because afraid of being judged for smoking"
LUN_NOTIME = "No low-dose CT scan because hard to find time to get screening"
LUN_TRANSPO = "No low-dose CT scan because hard to get transportation"
LUN_EXPOSE = "No low-dose CT scan because concerned about radiation exposure"
LUN_CONCERN = "No low-dose CT scan because concerned about other harms"
LUN_NORISK = "No low-dose CT scan because low lung cancer risk"
LUN_ANXIOUS = "No low-dose CT scan because knowing results would cause anxiety"
LUN_COST = "No low-dose CT scan because of cost"
LUN_SCOTHER = "No low-dose CT scan because some other reason"
LUN_BLAME = "Believe people with lung cancer are to blame for their illness"
LUN_CHOICES = "Believe people with lung cancer made poor lifestyle choices"
LUN_STILLRISK = "Believe nonsmokers are still at risk of getting lung cancer"
LUN_ASSUME = "Assume if someone had lung cancer it is because they smoked"
HCA_DLYCOST = "Past 12 months, delayed medical care due to cost"
HCA_DNTCOST = "Past 12 months, did not get medical care due to cost"
MED_RX12MA = "Past 12 months, took prescription medication"
MED_RXSK12MA = "Skipped medication to save money"
MED_RXLS12MA = "Took less medication to save money"
MED_RXDL12MA = "Delayed filling prescription to save money"
MED_RXDG12MA = "Past 12 months, needed but did not get medication because of cost"
INT_ACCESS = "Access to internet"
INT_HOMEACC = "Access to internet from home"
INT_USEMED = "Past 12 months, use internet to look for health or medical information"
INT_USEDOC = "Past 12 months, use internet to communicate with doctor/doctor's office"
INT_USETEST = "Past 12 months, use internet to look up medical test results"
INT_USEHIT_R = "DERIVED: Any health information technology (HIT) use"
TEL_NONCELL = "At least one telephone inside home, not cell phone"
TEL_CELL = "Have a working cell phone"
TEL_CELL_R = "RECODE: Adult has a working cell phone"
TEL_HHCELL = "Live with anyone with a working cell phone"
MTL_ANXIETY = "How often feel worried, nervous or anxious"
MTL_ANXMEDS = "Take prescription medications for worried, nervous or anxious feelings"
MTL_ANXLVL = "Last worried, nervous or anxious level"
MTL_DEPRESS = "How often feel depressed"
MTL_DEPMEDS = "Take prescription medication for depression"
MTL_DEPLVL = "Last depression level"
FER_PERAGE_R = "RECODE: Age of first menstrual period - topcoded and bottomcoded"
FER_PREG = "Pregnant now"
FER_PREGNUM_R = "RECODE: Number of times been pregnant - topcoded"
FER_LIVENUM_R = "RECODE: Number of live births you have had - topcoded"
FER_SURGERY = "Ever had medical procedures that make it impossible to get pregnant or carry"
FER_PHYSPOS = "Physically able to have baby"
FER_PLANS = "Want to have baby in future"
FER_INTEND = "Intend to have baby in future"
FER_EXPECT = "When expect your child to be born"
FER_SEXMALE = "Ever had sex with male"
FER_SEXM12M = "Past 12 months, had sex with male"
FER_PREVENT = "Used method to prevent pregnancy last time you had sex with male"
FER_WANTPREG = "No birth control method used because wanted to become pregnant"
FER_WHYNOBC = "Main reason did not use birth control"
FER_BCDOC = "Past 12 months, received method of birth control or prescription from a doctor"
FER_TESTBC = "Past 12 months, had checkup or medical test for birth control method"
FER_INFOBC = "Past 12 months, received birth control counseling or information"
FER_INFOSTER = "Past 12 months, received sterilization counseling or information"
FER_PLANB = "Past 12 months, received emergency contraception, counseling or information"
FER_PAPTEST = "Past 12 months, received a Pap test"
FER_PELVEXAM = "Past 12 months, received a pelvic exam"
FER_STDTEST = "Past 12 months, tested for a sexually transmitted disease"
FER_FERTILITY = "Ever gone to doctor to talk about ways to help get pregnant"
FER_FERTNOW = "Currently pursuing medical help to get pregnant"
FER_DOCPREV = "Ever gone to doctor to help prevent miscarriage"
BMICAT6 = "RECODE: Body Mass Index - 6 levels"
MAR_MARITAL = "Now married, living with a partner, or neither"
MAR_EVMARRY = "Ever been married"
MAR_LEGAL = "Current legal marital status"
MAR_WIDIVSEP = "Widowed, divorced, or separated"
MARITAL = "DERIVED: Current Marriage Status - 2 levels"
MARSTAT = "DERIVED: Current marital status"
LEGMSTAT = "DERIVED: Legal marital status"
LAN_OTHERLAN = "Speak language other than English at home"
LAN_MEDIA = "Language used most often when watching television, reading news, or listening to radio"
LAN_DOCTOR = "Language used most often when seeing a doctor"
LAN_SOCIAL = "Language used most often when participating in social activities"
DEM_RACEETH = "DERIVED: Race/ethnicity"
DEM_REGION = "DERIVED: Census Region"
LYME_REGION = "RECODE: Lyme disease incidence classification based on respondent's state"
CIV_VOL12M = "Past 12 months, spend any time volunteering"
CIV_VOLOTH = "Past 12 months, activities at schools or youth organizations"
CIV_MEET = "Past 12 months, attend local public meeting"
CIV_VOTELOCL = "Vote in last local elections"
CIVIC_ENGAGE = "DERIVED: Civic engagement including volunteering"
START_DATE_R = "Paradata: Date the survey was started"
END_DATE_R = "Paradata: Date the survey was completed"
ID_R = "Respondent Survey ID"
SOURCE = "Paradata: Panel Provider"
QUEX_LANG = "Paradata: Language of interview"
P_OUTCOME = "Paradata: Outcome code"
P_HHSIZE_R = "Panel Profile: Numeric Household Size Recode, capped at 6+"
P_AGE5YRS_R = "Panel Profile: Age Recode - 12 levels"
P_SEX = "Panel Profile: Respondent's sex"
P_EDUCATION_I_R = "Panel Profile: Education recode - 3 levels"
P_EDUCATION_I_R_IFLG = "Imputation flag for panel profile variable: <P_EDUCATION_I_R>"
P_ONEVISIT = "Paradata: Whether the survey was completed in a single session"
P_REMIND = "Paradata: Number of reminders sent"
P_DEVICE = "Paradata: Device used to complete survey"
P_MODE = "Paradata: Mode of interview"
P_VISIT = "Paradata: Number of times the questionnaire was accessed/login attempts (web)"
P_POVERTY4_R = "Panel Profile: Poverty Status Recode (ratio of household income to the federal poverty level) - 4 levels"
NCHS_METRO = "RECODE: Metropolitan status"
P_HOMEOWN_R = "Panel Profile: Home Ownership Recode - 2 levels"
P_CITIZEN = "Panel Profile: Are you a US citizen"
P_USBORN = "Panel Profile: Is respondent US born"
P_ORIENT = "Panel Profile: Sexual Orientation"
P1_CALWT = "Panel Variable: Panel provider 1 weight calibrated to NHIS control totals"
P2_CALWT = "Panel Variable: Panel provider 2 weight calibrated to NHIS control totals"
WEIGHT = "Final combined weight calibrated to NHIS control totals"
P_STRATA_R = "Panel Sample Strata"
P_PSU_R = "Panel PSU";
run;
