/*
RSS PUF Input Program: This program imports RSS CSV file into SAS working directory as a SAS dataset:
 - Loads formats to the working directory
 - Imports the RSS CSV data file as a SAS dataset
 - Applies labels and formats to the SAS dataset

 Before running this program, please download the CSV file or SAS dataset to a folder called 
 C:\RSS6 (on a machine running Windows).

 If importing the SAS dataset, please change the filename statement below, as well as replace 
 the data step below with: 
      data &dsn. ;
      	set in.&filename ;
      run ;

*/
%let folderpath = C:\RSS6 ; *folder location of CSV file;
%let filename = RSS6_PUF.csv; *CSV file name to import into sas;
%let dsn = rss6_puf; *SAS dataset name for output dataset;
%let formatcat= work.formats; *SAS formats name in temp working folder;

libname in "&folderpath";

PROC FORMAT library = &formatcat;	 
VALUE ACC_HOSP12M_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE ACC_HOSP_R_	-9= "Don't know"
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
 	7= "7+";
VALUE ACC_HTHLASTB_	-9= "Don't know"
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
VALUE ACC_VIDPHN_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE ACC_VISITTYP_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CAL_METRO_	1= "Metropolitan"
 	2= "Non-Metropolitan";
VALUE CHR_ANGEV_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
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
VALUE CHR_CHDEV_	-9= "Don't know"
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
VALUE CHR_HYPEV_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CHR_MIEV_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CHR_STREV_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CIG_CIGAR30D_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier";
VALUE CIG_CIGARCUR_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Every day"
 	2= "Some days"
 	3= "Not at all";
VALUE CIG_CIGAREV_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CIG_ECIGEV_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CIG_ECIGNOW_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Every day"
 	2= "Some days"
 	3= "Not at all";
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
VALUE CIG_SMOKELSCR1_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Every day"
 	2= "Some days"
 	3= "Not at all";
VALUE CIG_SMOKELSEV1_	-9= "Don't know"
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
VALUE CWD_ANYHRVEST_	0= "Did not harvest a deer or elk in a state where CWD was identified"
 	1= "Harvested a deer or elk in a state where CWD was identified";
VALUE CWD_ANYHUNT_	0= "Did not hunt in a state where CWD was identified"
 	1= "Hunted in a state where CWD was identified";
VALUE CWD_CONHLTH_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Not at all concerned"
 	2= "Slightly concerned"
 	3= "Moderately concerned"
 	4= "Very concerned";
VALUE CWD_CONPOS_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Not at all concerned"
 	2= "Slightly concerned"
 	3= "Moderately concerned"
 	4= "Very concerned";
VALUE CWD_CONTEST_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Not at all concerned"
 	2= "Slightly concerned"
 	3= "Moderately concerned"
 	4= "Very concerned";
VALUE CWD_COWYNE_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CWD_EVEATEN_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CWD_EVHEARD_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CWD_EVHUNT_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CWD_HRVEST00_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CWD_HRVEST05_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CWD_HRVEST10_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CWD_HRVEST12M_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CWD_HRVEST15_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CWD_HRVEST20_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CWD_HUNTST05_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CWD_HUNTST10_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CWD_HUNTST12M_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CWD_HUNTST15_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CWD_HUNTST20_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CWD_KNWMUCH_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Hardly anything"
 	2= "A little bit"
 	3= "A fair amount"
 	4= "A lot";
VALUE CWD_HUNTAGE_R_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	6= "<=6"
 	45= "+45";
VALUE CWD_OFTHUNT_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Every year"
 	2= "Most years"
 	3= "Some years"
 	4= "Hardly ever";
VALUE CWD_PROCESSA_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CWD_PROCESSB_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CWD_PROCESSC_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CWD_PROCESSD_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CWD_PROCESSE_	-9= "Don't know"
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
VALUE DIB_GESDIB_	-9= "Don't know"
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
VALUE FSC_AFFORD_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Often true"
 	2= "Sometimes true"
 	3= "Never true";
VALUE FSC_EATLESS_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE FSC_LOSEWT_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE FSC_NOEATDAY_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE FSC_NOEATNUM_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier";
VALUE FSC_NOTEAT_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE FSC_NOTLAST_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Often true"
 	2= "Sometimes true"
 	3= "Never true";
VALUE FSC_SKIPNUM_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier";
VALUE FSC_SKIP_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE FSC_WORRY_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Often true"
 	2= "Sometimes true"
 	3= "Never true";
VALUE FSSTATD_	-8= "Not ascertained"
 	1= "High food security"
 	2= "Marginal food security"
 	3= "Low food security"
 	4= "Very Low food security";
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
VALUE HHSIZE_	1= "1"
 	2= "2"
 	3= "3"
 	4= "4"
 	5= "5"
 	6= "6+";
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
VALUE HPV_ACCURACY_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE HPV_CONTROL_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE HPV_CONVEN_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE HPV_DOCRN_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE HPV_EMBARRASS_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE HPV_LASTPAP_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "I have never had a Pap test"
 	1= "Less than 12 months ago"
 	2= "More than 1 year but less than 2 years ago"
 	3= "More than 2 years but less than 3 years ago"
 	4= "More than 3 years but less than 5 years ago"
 	5= "More than 5 years but less than 10 years ago"
 	6= "10 years ago or more";
VALUE HPV_LOCATION_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Home"
 	2= "Clinic or doctor's office"
 	3= "Have no preference";
VALUE HPV_LOCCLEAN_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE HPV_LOCCOMF_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE HPV_LOCCONV_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE HPV_LOCDOC_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE HPV_LOCHELP_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE HPV_LOCKNOW_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE HPV_LOCMAIL_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE HPV_LOCNEED_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE HPV_LOCOTHA_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE HPV_LOCOTHB_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE HPV_LOCPRIV_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE HPV_LOCTIME_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE HPV_LOCTRAV_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE HPV_OTHBEN_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE HPV_OTHCONC_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE HPV_PAININJ_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE HPV_PAIN_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE HPV_PREFTEST_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Yes, prefer testing myself"
 	2= "No, prefer doctor or nurse testing me"
 	3= "Have no preference";
VALUE HPV_PRIVACY_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE HPV_SELFEMB_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE HPV_STRESS_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE HPV_SWABEV_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE HPV_TESTERR_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE IFLG_	0= "No imputation"
 	1= "Logical assignment"
 	2= "Statistical imputation";
VALUE IMM_FLUMNTH_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "January"
 	2= "February"
 	3= "March"
 	4= "April"
 	5= "May"
 	6= "June"
 	7= "July"
 	8= "August"
 	9= "September"
 	10= "October"
 	11= "November"
 	12= "December";
VALUE IMM_FLUYR_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "2024"
 	2= "2025";
VALUE IMM_SHTFLU12_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE IMM_SHTPNUEV_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
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
VALUE NOCARE_COST_	-8= "Not ascertained"
 	1= "Yes"
 	2= "No";
VALUE ONEVISIT_	0= "Multiple session or did not complete"
 	1= "Completed survey in single session";
VALUE PAY_BILL12M_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE PAY_MEDBILL_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE PAY_PAYWORRY_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Very worried"
 	2= "Somewhat worried"
 	3= "Not at all worried";
VALUE PPP_BANKHELP_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE PPP_BANKINFO_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE PPP_COMPHELP_	0= "Did not received help"
 	1= "Received help";
VALUE PPP_COMPINFO_	0= "Did not receive information"
 	1= "Received information";
VALUE PPP_HLTHCARE_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE PPP_HLTHFOOD_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE PPP_MEDHELP_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE PPP_MEDUSE_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE PPP_NOTLAST_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE PPP_PRODHELP_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE PPP_PRODUSE_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE PPP_RUNOUT_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE PPP_WHELHELP_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE PPP_WHELINFO_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE PPP_WICHELP_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE PPP_WICINFO_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
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
VALUE P_EMPLOY_	1= "Working"
 	2= "Not working--unable to work for health reasons/disabled"
 	3= "Not working--retired"
 	4= "Not working--other";
VALUE P_EMPLOY_R_	1= "Employed"
 	2= "Not Employed";
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
VALUE P_POVERTY3_R_	1= "0 - <1.00"
 	2= "1.00 - <2.00"
 	3= "2.00+";
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
 	8= "8";
VALUE P_SEX_	1= "Male"
 	2= "Female";
VALUE QUEX_LANG_	1= "English"
 	2= "Spanish";
VALUE REGION_	1= "Northeast"
 	2= "Midwest"
 	3= "South"
 	4= "West";
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
 	1= "No difficulty/some difficulty"
 	2= "A lot of difficulty/cannot do this at all";
VALUE SOC_SCWRKLIM_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SOURCE_	1= "Panel Provider 1"
 	2= "Panel Provider 2";
VALUE SSS_BALANCE_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Wait 1 day, then decide"
 	2= "Wait 1 hour, then decide"
 	3= "Call doctor's office immediately"
 	4= "Call 911 or another emergency number immediately";
VALUE SSS_DROOP_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Wait 1 day, then decide"
 	2= "Wait 1 hour, then decide"
 	3= "Call doctor's office immediately"
 	4= "Call 911 or another emergency number immediately";
VALUE SSS_FAST_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SSS_HTLTHJOBSA_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Not selected"
 	1= "Selected";
VALUE SSS_HTLTHJOBSB_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Not selected"
 	1= "Selected";
VALUE SSS_HTLTHJOBSC_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Not selected"
 	1= "Selected";
VALUE SSS_HTLTHJOBSD_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Not selected"
 	1= "Selected";
VALUE SSS_HTLTHJOBSE_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Not selected"
 	1= "Selected";
VALUE SSS_HTLTHJOBSF_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Not selected"
 	1= "Selected";
VALUE SSS_MUSCLES_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Wait 1 day, then decide"
 	2= "Wait 1 hour, then decide"
 	3= "Call doctor's office immediately"
 	4= "Call 911 or another emergency number immediately";
VALUE SSS_NUMB_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Wait 1 day, then decide"
 	2= "Wait 1 hour, then decide"
 	3= "Call doctor's office immediately"
 	4= "Call 911 or another emergency number immediately";
VALUE SSS_RELSTR_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SSS_SEENSTR_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SSS_SIGHT_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Wait 1 day, then decide"
 	2= "Wait 1 hour, then decide"
 	3= "Call doctor's office immediately"
 	4= "Call 911 or another emergency number immediately";
VALUE SSS_SPEECH_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Wait 1 day, then decide"
 	2= "Wait 1 hour, then decide"
 	3= "Call doctor's office immediately"
 	4= "Call 911 or another emergency number immediately";
VALUE SSS_STRKACT_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Wait and monitor their symptoms"
 	2= "Call 911 or another emergency number"
 	3= "Call their doctor or health professional"
 	4= "You or someone else drive them to the hospital"
 	5= "Have them drive themselves to the hospital";
VALUE SSS_URINE_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Wait 1 day, then decide"
 	2= "Wait 1 hour, then decide"
 	3= "Call doctor's office immediately"
 	4= "Call 911 or another emergency number immediately";
VALUE TEL_CELL_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
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
VALUE URGCARE_P12M_	-8= "Not ascertained"
 	1= "Yes"
 	2= "No";
VALUE USBORN2_	0= "No"
 	1= "Yes";
VALUE VETERAN_	0= "Not a veteran"
 	1= "Veteran";
RUN;	 


data &dsn.;
infile "&folderpath./&filename" dlm="," missover firstobs =2 DSD;
LENGTH HIS_GENERAL  8
CHR_HYPEV  8
CHR_CHLEV  8
CHR_ASEV  8
CHR_ASTILL  8
CHR_AS12M  8
CHR_CANEV  8
CHR_CHDEV  8
CHR_ANGEV  8
CHR_MIEV  8
DIB_PREDIB  8
DIB_GESDIB  8
DIB_DIBEV  8
SSS_DROOP  8
SSS_NUMB  8
SSS_SPEECH  8
SSS_MUSCLES  8
SSS_BALANCE  8
SSS_SIGHT  8
SSS_URINE  8
SSS_STRKACT  8
CHR_STREV  8
SSS_SEENSTR  8
SSS_RELSTR  8
SSS_HTLTHJOBSA  8
SSS_HTLTHJOBSB  8
SSS_HTLTHJOBSC  8
SSS_HTLTHJOBSD  8
SSS_HTLTHJOBSE  8
SSS_HTLTHJOBSF  8
SSS_FAST  8
CIG_SMKEV  8
CIG_SMKNOW  8
CIG_ECIGEV  8
CIG_ECIGNOW  8
CIG_CIGAREV  8
CIG_CIGARCUR  8
CIG_CIGAR30D  8
CIG_SMOKELSEV1  8
CIG_SMOKELSCR1  8
PPP_HLTHCARE  8
PPP_HLTHFOOD  8
PPP_RUNOUT  8
PPP_NOTLAST  8
PPP_BANKINFO  8
PPP_WHELINFO  8
PPP_WICINFO  8
PPP_COMPINFO  8
PPP_BANKHELP  8
PPP_WHELHELP  8
PPP_WICHELP  8
PPP_COMPHELP  8
PPP_PRODHELP  8
PPP_PRODUSE  8
PPP_MEDHELP  8
PPP_MEDUSE  8
ACC_HTHLAST  8
DOCVIS_P12M  8
ACC_VISITTYP  8
ACC_HTHLASTB  8
ACC_HTHUSUAL  8
ACC_HTHTYPE  8
ACC_RETAIL_R  8
ACC_URGENT_R  8
URGCARE_P12M  8
ACC_HOSP_R  8
ACC_HOSP12M  8
ACC_VIDPHN  8
HCA_DLYCOST  8
HCA_DNTCOST  8
NOCARE_COST  8
IMM_SHTFLU12  8
IMM_FLUMNTH  8
IMM_FLUYR  8
IMM_SHTPNUEV  8
HPV_LASTPAP  8
HPV_SWABEV  8
HPV_PREFTEST  8
HPV_PRIVACY  8
HPV_EMBARRASS  8
HPV_PAIN  8
HPV_STRESS  8
HPV_CONVEN  8
HPV_CONTROL  8
HPV_DOCRN  8
HPV_OTHBEN  8
HPV_TESTERR  8
HPV_SELFEMB  8
HPV_PAININJ  8
HPV_ACCURACY  8
HPV_OTHCONC  8
HPV_LOCATION  8
HPV_LOCCONV  8
HPV_LOCPRIV  8
HPV_LOCTIME  8
HPV_LOCTRAV  8
HPV_LOCCOMF  8
HPV_LOCDOC  8
HPV_LOCOTHA  8
HPV_LOCMAIL  8
HPV_LOCKNOW  8
HPV_LOCCLEAN  8
HPV_LOCHELP  8
HPV_LOCNEED  8
HPV_LOCOTHB  8
SOC_ERRANDS  8
SOC_PARACTIV  8
SOC_PARACTIV_R  8
SOC_SCWRKLIM  8
SOCWRKLMT  8
PAY_BILL12M  8
PAY_MEDBILL  8
PAY_PAYWORRY  8
CWD_EVEATEN  8
CWD_EVHUNT  8
CWD_HUNTAGE_R  8
CWD_OFTHUNT  8
CWD_COWYNE  8
CWD_HRVEST00  8
CWD_HUNTST05  8
CWD_HRVEST05  8
CWD_HUNTST10  8
CWD_HRVEST10  8
CWD_HUNTST15  8
CWD_HRVEST15  8
CWD_HUNTST20  8
CWD_HRVEST20  8
CWD_HUNTST12M  8
CWD_HRVEST12M  8
CWD_ANYHUNT  8
CWD_ANYHRVEST  8
CWD_PROCESSA  8
CWD_PROCESSB  8
CWD_PROCESSC  8
CWD_PROCESSD  8
CWD_PROCESSE  8
CWD_EVHEARD  8
CWD_KNWMUCH  8
CWD_CONTEST  8
CWD_CONPOS  8
CWD_CONHLTH  8
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
MAR_MARITAL  8
MAR_EVMARRY  8
MAR_LEGAL  8
MAR_WIDIVSEP  8
MARITAL  8
MARSTAT  8
LEGMSTAT  8
CIV_VOL12M  8
CIV_VOLOTH  8
CIV_MEET  8
CIV_VOTELOCL  8
CIVIC_ENGAGE  8
FSC_WORRY  8
FSC_NOTLAST  8
FSC_AFFORD  8
FSC_SKIP  8
FSC_SKIPNUM  8
FSC_EATLESS  8
FSC_NOTEAT  8
FSC_LOSEWT  8
FSC_NOEATDAY  8
FSC_NOEATNUM  8
FSSTATD  8
LAN_OTHERLAN  8
LAN_MEDIA  8
LAN_DOCTOR  8
LAN_SOCIAL  8
DEM_RACEETH  8
INT_ACCESS  8
INT_HOMEACC  8
INT_USEMED  8
INT_USEDOC  8
INT_USETEST  8
TEL_NONCELL  8
TEL_CELL  8
TEL_HHCELL  8
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
P_POVERTY3_R  8
P_POVERTY4_R  8
P_EMPLOY  8
P_EMPLOY_R  8
CAL_METRO_I  8
CAL_METRO_I_IFLG  8
P_REGION  8
P_HOMEOWN_R  8
P_CITIZEN  8
P_VETERAN  8
P_USBORN  8
P_ORIENT  8
P1_CALWT  8
P2_CALWT  8
WEIGHT  8
P_STRATA_R  8
P_PSU_R  8;
INPUT HIS_GENERAL
CHR_HYPEV
CHR_CHLEV
CHR_ASEV
CHR_ASTILL
CHR_AS12M
CHR_CANEV
CHR_CHDEV
CHR_ANGEV
CHR_MIEV
DIB_PREDIB
DIB_GESDIB
DIB_DIBEV
SSS_DROOP
SSS_NUMB
SSS_SPEECH
SSS_MUSCLES
SSS_BALANCE
SSS_SIGHT
SSS_URINE
SSS_STRKACT
CHR_STREV
SSS_SEENSTR
SSS_RELSTR
SSS_HTLTHJOBSA
SSS_HTLTHJOBSB
SSS_HTLTHJOBSC
SSS_HTLTHJOBSD
SSS_HTLTHJOBSE
SSS_HTLTHJOBSF
SSS_FAST
CIG_SMKEV
CIG_SMKNOW
CIG_ECIGEV
CIG_ECIGNOW
CIG_CIGAREV
CIG_CIGARCUR
CIG_CIGAR30D
CIG_SMOKELSEV1
CIG_SMOKELSCR1
PPP_HLTHCARE
PPP_HLTHFOOD
PPP_RUNOUT
PPP_NOTLAST
PPP_BANKINFO
PPP_WHELINFO
PPP_WICINFO
PPP_COMPINFO
PPP_BANKHELP
PPP_WHELHELP
PPP_WICHELP
PPP_COMPHELP
PPP_PRODHELP
PPP_PRODUSE
PPP_MEDHELP
PPP_MEDUSE
ACC_HTHLAST
DOCVIS_P12M
ACC_VISITTYP
ACC_HTHLASTB
ACC_HTHUSUAL
ACC_HTHTYPE
ACC_RETAIL_R
ACC_URGENT_R
URGCARE_P12M
ACC_HOSP_R
ACC_HOSP12M
ACC_VIDPHN
HCA_DLYCOST
HCA_DNTCOST
NOCARE_COST
IMM_SHTFLU12
IMM_FLUMNTH
IMM_FLUYR
IMM_SHTPNUEV
HPV_LASTPAP
HPV_SWABEV
HPV_PREFTEST
HPV_PRIVACY
HPV_EMBARRASS
HPV_PAIN
HPV_STRESS
HPV_CONVEN
HPV_CONTROL
HPV_DOCRN
HPV_OTHBEN
HPV_TESTERR
HPV_SELFEMB
HPV_PAININJ
HPV_ACCURACY
HPV_OTHCONC
HPV_LOCATION
HPV_LOCCONV
HPV_LOCPRIV
HPV_LOCTIME
HPV_LOCTRAV
HPV_LOCCOMF
HPV_LOCDOC
HPV_LOCOTHA
HPV_LOCMAIL
HPV_LOCKNOW
HPV_LOCCLEAN
HPV_LOCHELP
HPV_LOCNEED
HPV_LOCOTHB
SOC_ERRANDS
SOC_PARACTIV
SOC_PARACTIV_R
SOC_SCWRKLIM
SOCWRKLMT
PAY_BILL12M
PAY_MEDBILL
PAY_PAYWORRY
CWD_EVEATEN
CWD_EVHUNT
CWD_HUNTAGE_R
CWD_OFTHUNT
CWD_COWYNE
CWD_HRVEST00
CWD_HUNTST05
CWD_HRVEST05
CWD_HUNTST10
CWD_HRVEST10
CWD_HUNTST15
CWD_HRVEST15
CWD_HUNTST20
CWD_HRVEST20
CWD_HUNTST12M
CWD_HRVEST12M
CWD_ANYHUNT
CWD_ANYHRVEST
CWD_PROCESSA
CWD_PROCESSB
CWD_PROCESSC
CWD_PROCESSD
CWD_PROCESSE
CWD_EVHEARD
CWD_KNWMUCH
CWD_CONTEST
CWD_CONPOS
CWD_CONHLTH
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
MAR_MARITAL
MAR_EVMARRY
MAR_LEGAL
MAR_WIDIVSEP
MARITAL
MARSTAT
LEGMSTAT
CIV_VOL12M
CIV_VOLOTH
CIV_MEET
CIV_VOTELOCL
CIVIC_ENGAGE
FSC_WORRY
FSC_NOTLAST
FSC_AFFORD
FSC_SKIP
FSC_SKIPNUM
FSC_EATLESS
FSC_NOTEAT
FSC_LOSEWT
FSC_NOEATDAY
FSC_NOEATNUM
FSSTATD
LAN_OTHERLAN
LAN_MEDIA
LAN_DOCTOR
LAN_SOCIAL
DEM_RACEETH
INT_ACCESS
INT_HOMEACC
INT_USEMED
INT_USEDOC
INT_USETEST
TEL_NONCELL
TEL_CELL
TEL_HHCELL
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
P_POVERTY3_R
P_POVERTY4_R
P_EMPLOY
P_EMPLOY_R
CAL_METRO_I
CAL_METRO_I_IFLG
P_REGION
P_HOMEOWN_R
P_CITIZEN
P_VETERAN
P_USBORN
P_ORIENT
P1_CALWT
P2_CALWT
WEIGHT
P_STRATA_R
P_PSU_R  ;
FORMAT HIS_GENERAL                      HIS_GENERAL_.
CHR_HYPEV                        CHR_HYPEV_.
CHR_CHLEV                        CHR_CHLEV_.
CHR_ASEV                         CHR_ASEV_.
CHR_ASTILL                       CHR_ASTILL_.
CHR_AS12M                        CHR_AS12M_.
CHR_CANEV                        CHR_CANEV_.
CHR_CHDEV                        CHR_CHDEV_.
CHR_ANGEV                        CHR_ANGEV_.
CHR_MIEV                         CHR_MIEV_.
DIB_PREDIB                       DIB_PREDIB_.
DIB_GESDIB                       DIB_GESDIB_.
DIB_DIBEV                        DIB_DIBEV_.
SSS_DROOP                        SSS_DROOP_.
SSS_NUMB                         SSS_NUMB_.
SSS_SPEECH                       SSS_SPEECH_.
SSS_MUSCLES                      SSS_MUSCLES_.
SSS_BALANCE                      SSS_BALANCE_.
SSS_SIGHT                        SSS_SIGHT_.
SSS_URINE                        SSS_URINE_.
SSS_STRKACT                      SSS_STRKACT_.
CHR_STREV                        CHR_STREV_.
SSS_SEENSTR                      SSS_SEENSTR_.
SSS_RELSTR                       SSS_RELSTR_.
SSS_HTLTHJOBSA                   SSS_HTLTHJOBSA_.
SSS_HTLTHJOBSB                   SSS_HTLTHJOBSB_.
SSS_HTLTHJOBSC                   SSS_HTLTHJOBSC_.
SSS_HTLTHJOBSD                   SSS_HTLTHJOBSD_.
SSS_HTLTHJOBSE                   SSS_HTLTHJOBSE_.
SSS_HTLTHJOBSF                   SSS_HTLTHJOBSF_.
SSS_FAST                         SSS_FAST_.
CIG_SMKEV                        CIG_SMKEV_.
CIG_SMKNOW                       CIG_SMKNOW_.
CIG_ECIGEV                       CIG_ECIGEV_.
CIG_ECIGNOW                      CIG_ECIGNOW_.
CIG_CIGAREV                      CIG_CIGAREV_.
CIG_CIGARCUR                     CIG_CIGARCUR_.
CIG_CIGAR30D                     CIG_CIGAR30D_.
CIG_SMOKELSEV1                   CIG_SMOKELSEV1_.
CIG_SMOKELSCR1                   CIG_SMOKELSCR1_.
PPP_HLTHCARE                     PPP_HLTHCARE_.
PPP_HLTHFOOD                     PPP_HLTHFOOD_.
PPP_RUNOUT                       PPP_RUNOUT_.
PPP_NOTLAST                      PPP_NOTLAST_.
PPP_BANKINFO                     PPP_BANKINFO_.
PPP_WHELINFO                     PPP_WHELINFO_.
PPP_WICINFO                      PPP_WICINFO_.
PPP_COMPINFO                     PPP_COMPINFO_.
PPP_BANKHELP                     PPP_BANKHELP_.
PPP_WHELHELP                     PPP_WHELHELP_.
PPP_WICHELP                      PPP_WICHELP_.
PPP_COMPHELP                     PPP_COMPHELP_.
PPP_PRODHELP                     PPP_PRODHELP_.
PPP_PRODUSE                      PPP_PRODUSE_.
PPP_MEDHELP                      PPP_MEDHELP_.
PPP_MEDUSE                       PPP_MEDUSE_.
ACC_HTHLAST                      ACC_HTHLAST_.
DOCVIS_P12M                      DOCVIS_P12M_.
ACC_VISITTYP                     ACC_VISITTYP_.
ACC_HTHLASTB                     ACC_HTHLASTB_.
ACC_HTHUSUAL                     ACC_HTHUSUAL_.
ACC_HTHTYPE                      ACC_HTHTYPE_.
ACC_RETAIL_R                     ACC_RETAIL_R_.
ACC_URGENT_R                     ACC_URGENT_R_.
URGCARE_P12M                     URGCARE_P12M_.
ACC_HOSP_R                       ACC_HOSP_R_.
ACC_HOSP12M                      ACC_HOSP12M_.
ACC_VIDPHN                       ACC_VIDPHN_.
HCA_DLYCOST                      HCA_DLYCOST_.
HCA_DNTCOST                      HCA_DNTCOST_.
NOCARE_COST                      NOCARE_COST_.
IMM_SHTFLU12                     IMM_SHTFLU12_.
IMM_FLUMNTH                      IMM_FLUMNTH_.
IMM_FLUYR                        IMM_FLUYR_.
IMM_SHTPNUEV                     IMM_SHTPNUEV_.
HPV_LASTPAP                      HPV_LASTPAP_.
HPV_SWABEV                       HPV_SWABEV_.
HPV_PREFTEST                     HPV_PREFTEST_.
HPV_PRIVACY                      HPV_PRIVACY_.
HPV_EMBARRASS                    HPV_EMBARRASS_.
HPV_PAIN                         HPV_PAIN_.
HPV_STRESS                       HPV_STRESS_.
HPV_CONVEN                       HPV_CONVEN_.
HPV_CONTROL                      HPV_CONTROL_.
HPV_DOCRN                        HPV_DOCRN_.
HPV_OTHBEN                       HPV_OTHBEN_.
HPV_TESTERR                      HPV_TESTERR_.
HPV_SELFEMB                      HPV_SELFEMB_.
HPV_PAININJ                      HPV_PAININJ_.
HPV_ACCURACY                     HPV_ACCURACY_.
HPV_OTHCONC                      HPV_OTHCONC_.
HPV_LOCATION                     HPV_LOCATION_.
HPV_LOCCONV                      HPV_LOCCONV_.
HPV_LOCPRIV                      HPV_LOCPRIV_.
HPV_LOCTIME                      HPV_LOCTIME_.
HPV_LOCTRAV                      HPV_LOCTRAV_.
HPV_LOCCOMF                      HPV_LOCCOMF_.
HPV_LOCDOC                       HPV_LOCDOC_.
HPV_LOCOTHA                      HPV_LOCOTHA_.
HPV_LOCMAIL                      HPV_LOCMAIL_.
HPV_LOCKNOW                      HPV_LOCKNOW_.
HPV_LOCCLEAN                     HPV_LOCCLEAN_.
HPV_LOCHELP                      HPV_LOCHELP_.
HPV_LOCNEED                      HPV_LOCNEED_.
HPV_LOCOTHB                      HPV_LOCOTHB_.
SOC_ERRANDS                      SOC_ERRANDS_.
SOC_PARACTIV                     SOC_PARACTIV_.
SOC_PARACTIV_R                   SOC_PARACTIV_R_.
SOC_SCWRKLIM                     SOC_SCWRKLIM_.
SOCWRKLMT                        SOCWRKLMT_.
PAY_BILL12M                      PAY_BILL12M_.
PAY_MEDBILL                      PAY_MEDBILL_.
PAY_PAYWORRY                     PAY_PAYWORRY_.
CWD_EVEATEN                      CWD_EVEATEN_.
CWD_EVHUNT                       CWD_EVHUNT_.
CWD_HUNTAGE_R                    CWD_HUNTAGE_R_.
CWD_OFTHUNT                      CWD_OFTHUNT_.
CWD_COWYNE                       CWD_COWYNE_.
CWD_HRVEST00                     CWD_HRVEST00_.
CWD_HUNTST05                     CWD_HUNTST05_.
CWD_HRVEST05                     CWD_HRVEST05_.
CWD_HUNTST10                     CWD_HUNTST10_.
CWD_HRVEST10                     CWD_HRVEST10_.
CWD_HUNTST15                     CWD_HUNTST15_.
CWD_HRVEST15                     CWD_HRVEST15_.
CWD_HUNTST20                     CWD_HUNTST20_.
CWD_HRVEST20                     CWD_HRVEST20_.
CWD_HUNTST12M                    CWD_HUNTST12M_.
CWD_HRVEST12M                    CWD_HRVEST12M_.
CWD_ANYHUNT                      CWD_ANYHUNT_.
CWD_ANYHRVEST                    CWD_ANYHRVEST_.
CWD_PROCESSA                     CWD_PROCESSA_.
CWD_PROCESSB                     CWD_PROCESSB_.
CWD_PROCESSC                     CWD_PROCESSC_.
CWD_PROCESSD                     CWD_PROCESSD_.
CWD_PROCESSE                     CWD_PROCESSE_.
CWD_EVHEARD                      CWD_EVHEARD_.
CWD_KNWMUCH                      CWD_KNWMUCH_.
CWD_CONTEST                      CWD_CONTEST_.
CWD_CONPOS                       CWD_CONPOS_.
CWD_CONHLTH                      CWD_CONHLTH_.
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
MAR_MARITAL                      MAR_MARITAL_.
MAR_EVMARRY                      MAR_EVMARRY_.
MAR_LEGAL                        MAR_LEGAL_.
MAR_WIDIVSEP                     MAR_WIDIVSEP_.
MARITAL                          MARITAL_.
MARSTAT                          MARSTAT_.
LEGMSTAT                         LEGMSTAT_.
CIV_VOL12M                       CIV_VOL12M_.
CIV_VOLOTH                       CIV_VOLOTH_.
CIV_MEET                         CIV_MEET_.
CIV_VOTELOCL                     CIV_VOTELOCL_.
CIVIC_ENGAGE                     CIVIC_ENGAGE_.
FSC_WORRY                        FSC_WORRY_.
FSC_NOTLAST                      FSC_NOTLAST_.
FSC_AFFORD                       FSC_AFFORD_.
FSC_SKIP                         FSC_SKIP_.
FSC_SKIPNUM                      FSC_SKIPNUM_.
FSC_EATLESS                      FSC_EATLESS_.
FSC_NOTEAT                       FSC_NOTEAT_.
FSC_LOSEWT                       FSC_LOSEWT_.
FSC_NOEATDAY                     FSC_NOEATDAY_.
FSC_NOEATNUM                     FSC_NOEATNUM_.
FSSTATD                          FSSTATD_.
LAN_OTHERLAN                     LAN_OTHERLAN_.
LAN_MEDIA                        LAN_MEDIA_.
LAN_DOCTOR                       LAN_DOCTOR_.
LAN_SOCIAL                       LAN_SOCIAL_.
DEM_RACEETH                      DEM_RACEETH_.
INT_ACCESS                       INT_ACCESS_.
INT_HOMEACC                      INT_HOMEACC_.
INT_USEMED                       INT_USEMED_.
INT_USEDOC                       INT_USEDOC_.
INT_USETEST                      INT_USETEST_.
TEL_NONCELL                      TEL_NONCELL_.
TEL_CELL                         TEL_CELL_.
TEL_HHCELL                       TEL_HHCELL_.
SOURCE                           SOURCE_.
QUEX_LANG                        QUEX_LANG_.
P_OUTCOME                        P_OUTCOME_.
P_HHSIZE_R                       HHSIZE_.
P_AGE5YRS_R                      P_AGE5YRS_R_.
P_SEX                            P_SEX_.
P_EDUCATION_I_R                  P_EDUCATION_I_R_.
P_EDUCATION_I_R_IFLG             IFLG_.
P_ONEVISIT                       ONEVISIT_.
P_REMIND                         P_REMIND_.
P_DEVICE                         DEVICE_.
P_MODE                           P_MODE_.
P_POVERTY3_R                     P_POVERTY3_R_.
P_POVERTY4_R                     P_POVERTY4_R_.
P_EMPLOY                         P_EMPLOY_.
P_EMPLOY_R                       P_EMPLOY_R_.
CAL_METRO_I                      CAL_METRO_.
CAL_METRO_I_IFLG                 IFLG_.
P_REGION                         REGION_.
P_HOMEOWN_R                      P_HOMEOWN_R_.
P_CITIZEN                        CITIZEN2_.
P_VETERAN                        VETERAN_.
P_USBORN                         USBORN2_.
P_ORIENT                         P_ORIENT_.
P1_CALWT                         BEST.
P2_CALWT                         BEST.
WEIGHT                           BEST.;
LABEL HIS_GENERAL = "Self-reported health status"
CHR_HYPEV = "Ever been told you had hypertension"
CHR_CHLEV = "Ever been told you had high cholesterol"
CHR_ASEV = "Ever been told you had asthma"
CHR_ASTILL = "Still have asthma"
CHR_AS12M = "Past 12 months, asthma attack"
CHR_CANEV = "Ever been told you had cancer"
CHR_CHDEV = "Ever been told you had coronary heart disease"
CHR_ANGEV = "Ever been told you had angina, also called angina pectoris"
CHR_MIEV = "Ever been told you had a heart attack, also called myocardial infarction"
DIB_PREDIB = "Ever been told you had prediabetes"
DIB_GESDIB = "Ever been told you had gestational diabetes"
DIB_DIBEV = "Ever been told you had diabetes"
SSS_DROOP = "Best action for sudden facial drooping"
SSS_NUMB = "Best action for sudden one-sided arm/leg numbness or weakness"
SSS_SPEECH = "Best action for sudden slurred or garbled speech"
SSS_MUSCLES = "Best action for cramping or locking of muscles of hand or fingers"
SSS_BALANCE = "Best action for sudden trouble walking, dizziness, or loss of balance"
SSS_SIGHT = "Best action for sudden trouble seeing in one or both eyes"
SSS_URINE = "Best action for burning feeling during urination and cloudy urine"
SSS_STRKACT = "Best action for observing a stroke"
CHR_STREV = "Ever been told you had a stroke"
SSS_SEENSTR = "Seen another person having a stroke"
SSS_RELSTR = "Have close friends or relatives who have had a stroke"
SSS_HTLTHJOBSA = "Had job: First responder, including as a firefighter, paramedic, or EMT"
SSS_HTLTHJOBSB = "Had job: Medical doctor"
SSS_HTLTHJOBSC = "Had job: Nurse, including as a registered nurse or nurse practitioner"
SSS_HTLTHJOBSD = "Had job: Aide in a hospital, assisted living facility, or other nursing facility"
SSS_HTLTHJOBSE = "Had job: Other healthcare professional"
SSS_HTLTHJOBSF = "Had job: None of these"
SSS_FAST = "Heard of the FAST acronym for recognizing stroke symptoms"
CIG_SMKEV = "Ever smoked at least 100 cigarettes in entire life"
CIG_SMKNOW = "How often now smoke cigarettes"
CIG_ECIGEV = "Ever used an e-cigarette even once in entire life"
CIG_ECIGNOW = "How often now use e-cigarettes"
CIG_CIGAREV = "Ever smoked a regular cigar, cigarillo, or a little filtered cigar even one time"
CIG_CIGARCUR = "How often now smoke regular cigars, cigarillos, or little filtered cigars"
CIG_CIGAR30D = "Past 30 days, number of cigar smoking days"
CIG_SMOKELSEV1 = "Ever used smokeless tobacco products even one time"
CIG_SMOKELSCR1 = "How often now use smokeless tobacco products"
PPP_HLTHCARE = "Past 12 months, received any health care"
PPP_HLTHFOOD = "During health care visits, asked if family could afford enough food"
PPP_RUNOUT = "Ever answered worried food would run out"
PPP_NOTLAST = "Ever answered purchased food didn't last and didn't have money for more"
PPP_BANKINFO = "During health care visits, provided information on food pantry, food bank and other places that provides free food"
PPP_WHELINFO = "During health care visits, provided information on home-delivered free meals"
PPP_WICINFO = "During health care visits, provided information on a food assistance program"
PPP_COMPINFO = "DERIVED: Received information on food services or assistance"
PPP_BANKHELP = "During or after health care visits, was assisted in signing up for food pantry, food bank or other places that provide free food"
PPP_WHELHELP = "During or after health care visits, was assisted in signing up for home-delivered free meals service"
PPP_WICHELP = "During or after health care visits, was assisted in signing up for a food assistance program"
PPP_COMPHELP = "DERIVED: Received help initiating food services or assistance"
PPP_PRODHELP = "During or after health care visits, was assisted in signing up for a fruit and vegetable prescription program"
PPP_PRODUSE = "Used the coupons/gift card from a fruit and vegetable prescription program"
PPP_MEDHELP = "During or after health care visits, was assisted in signing up for medically tailored meals/groceries"
PPP_MEDUSE = "Used medically tailored meals or groceries offered to you"
ACC_HTHLAST = "Time since you last saw doctor about your health"
DOCVIS_P12M = "RECODE: Doctor visit in past 12 months"
ACC_VISITTYP = "Was this a wellness visit, physical, or general purpose check-up"
ACC_HTHLASTB = "Time since last wellness visit"
ACC_HTHUSUAL = "Have a usual place you go to for health care"
ACC_HTHTYPE = "Type of place for usual care"
ACC_RETAIL_R = "RECODE: Past 12 months, number of retail health clinic visits - topcoded"
ACC_URGENT_R = "RECODE: Past 12 months, number of urgent care visits - topcoded"
URGCARE_P12M = "RECODE: Urgent care center visit in past 12 months"
ACC_HOSP_R = "RECODE: Past 12 months, number of hospital emergency room visits - topcoded"
ACC_HOSP12M = "Past 12 months, hospitalized overnight"
ACC_VIDPHN = "Past 12 months, had a telehealth appointment"
HCA_DLYCOST = "Past 12 months, delayed medical care due to cost"
HCA_DNTCOST = "Past 12 months, did not get medical care due to cost"
NOCARE_COST = "RECODE: Did not receive care due to cost in past 12 months"
IMM_SHTFLU12 = "Past 12 months, had flu vaccine"
IMM_FLUMNTH = "Month of last flu vaccine"
IMM_FLUYR = "Year of last flu vaccine"
IMM_SHTPNUEV = "Ever had pneumonia shot"
HPV_LASTPAP = "How long since last pap smear"
HPV_SWABEV = "Ever had an HPV test"
HPV_PREFTEST = "Preference for self-administered HPV test"
HPV_PRIVACY = "Benefit of doing a self-administered HPV test: privacy"
HPV_EMBARRASS = "Benefit of doing a self-administered HPV test: less embarrassing"
HPV_PAIN = "Benefit of doing a self-administered HPV test: less painful"
HPV_STRESS = "Benefit of doing a self-administered HPV test: less stressful"
HPV_CONVEN = "Benefit of doing a self-administered HPV test: more convenient"
HPV_CONTROL = "Benefit of doing a self-administered HPV test: more in control"
HPV_DOCRN = "Benefit of doing a self-administered HPV test: don't like physical exams by doctors or nurses"
HPV_OTHBEN = "Benefit of doing a self-administered HPV test: another benefit"
HPV_TESTERR = "Concern about self-administered HPV test: might do it wrong"
HPV_SELFEMB = "Concern about self-administered HPV test: embarrassed doing it myself"
HPV_PAININJ = "Concern about self-administered HPV test: pain or injury"
HPV_ACCURACY = "Concern about self-administered HPV test: less accurate results"
HPV_OTHCONC = "Concern about self-administered HPV test: another concern"
HPV_LOCATION = "Location preference for self-administered HPV test"
HPV_LOCCONV = "Prefer at home HPV test: more convenient"
HPV_LOCPRIV = "Prefer at home HPV test: privacy"
HPV_LOCTIME = "Prefer at home HPV test: take it on own time"
HPV_LOCTRAV = "Prefer at home HPV test: hard to get to a clinic or doctor's office"
HPV_LOCCOMF = "Prefer at home HPV test: more comfortable at home"
HPV_LOCDOC = "Prefer at home HPV test: don't like going to the doctor"
HPV_LOCOTHA = "Prefer at home HPV test: another reason"
HPV_LOCMAIL = "Prefer in-clinic HPV test: do not want to use mail for medical tests"
HPV_LOCKNOW = "Prefer in-clinic HPV test: other people I live with may find out"
HPV_LOCCLEAN = "Prefer in-clinic HPV test: doctor's office would be a cleaner place"
HPV_LOCHELP = "Prefer in-clinic HPV test: staff would be available to help me or answer questions"
HPV_LOCNEED = "Prefer in-clinic HPV test: have to go to the doctor anyway"
HPV_LOCOTHB = "Prefer in-clinic HPV test: another reason"
SOC_ERRANDS = "Difficulty doing errands alone due to physical, mental, or emotional condition"
SOC_PARACTIV = "Difficulty participating in social activities due to physical, mental, or emotional condition"
SOC_PARACTIV_R = "RECODE: Difficulty participating in social activities due to physical, mental, or emotional condition"
SOC_SCWRKLIM = "Work limited due to physical, mental, or emotional problem"
SOCWRKLMT = "DERIVED: Any social/work limitation"
PAY_BILL12M = "Past 12 months, you or family have problems paying medical bills"
PAY_MEDBILL = "Inability to pay current medical bills"
PAY_PAYWORRY = "If get sick or have accident, how worried about ability to pay medical bills"
CWD_EVEATEN = "Ever eaten deer or elk meat"
CWD_EVHUNT = "Ever gone hunting for deer or elk"
CWD_HUNTAGE_R = "RECODE: Age when first time hunting for deer or elk - topcoded and bottomcoded"
CWD_OFTHUNT = "Frequency of deer or elk hunting since first time"
CWD_COWYNE = "Since 2000, hunted deer or elk in CO, WY, or NE"
CWD_HRVEST00 = "Since 2000, harvested any deer or elk while hunting in CO, WY, or NE"
CWD_HUNTST05 = "Since 2005, hunted for deer or elk in SD, WI, IL, UT, NM, KS, WV, or NY"
CWD_HRVEST05 = "Since 2005, harvested any deer or elk while hunting in SD, WI, IL, UT, NM, KS, WV, or NY"
CWD_HUNTST10 = "Since 2010, hunted for deer or elk in VA or ND"
CWD_HRVEST10 = "Since 2010, harvested any deer or elk while hunting in VA or ND"
CWD_HUNTST15 = "Since 2015, hunted for deer or elk in MN, MD, MO, PA, TX, IA, or MI"
CWD_HRVEST15 = "Since 2015, harvested any deer or elk while hunting in MN, MD, MO, PA, TX, IA, or MI"
CWD_HUNTST20 = "Since 2020, hunted for deer or elk in AR, MT, MS, TN, or OH"
CWD_HRVEST20 = "Since 2020, harvested any deer or elk while hunting in AR, MT, MS, TN, or OH"
CWD_HUNTST12M = "Past 12 months, hunted for deer or elk in ID, AL, LA, NC, OK, FL, KY, IN, or CA"
CWD_HRVEST12M = "Past 12 months, harvested any deer or elk while hunting in ID, AL, LA, NC, OK, FL, KY, IN, or CA"
CWD_ANYHUNT = "DERIVED: Hunted a deer or elk in a state where chronic wasting disease was identified"
CWD_ANYHRVEST = "DERIVED: Harvested a deer or elk in a state where chronic wasting disease was identified"
CWD_PROCESSA = "Since 2000, processed deer or elk meat myself"
CWD_PROCESSB = "Since 2000, someone I know processed the deer or elk meat"
CWD_PROCESSC = "Since 2000, took the meat to a commercial meat processor"
CWD_PROCESSD = "Since 2000, donated the whole animal to a charity"
CWD_PROCESSE = "Since 2000, did something else"
CWD_EVHEARD = "Ever heard of chronic wasting disease, also called zombie deer disease"
CWD_KNWMUCH = "Prior knowledge about chronic wasting disease"
CWD_CONTEST = "Concern about eating untested deer/elk meat from a chronic wasting disease area"
CWD_CONPOS = "Concern about eating deer/elk meat that tested positive for chronic wasting disease"
CWD_CONHLTH = "Concern about chronic wasting disease affecting human health"
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
MAR_MARITAL = "Now married, living with a partner, or neither"
MAR_EVMARRY = "Ever been married"
MAR_LEGAL = "Current legal marital status"
MAR_WIDIVSEP = "Widowed, divorced or separated"
MARITAL = "DERIVED: Current Marriage Status - 2 levels"
MARSTAT = "DERIVED: Current marital status"
LEGMSTAT = "DERIVED: Legal marital status"
CIV_VOL12M = "Past 12 months, volunteer activities"
CIV_VOLOTH = "Past 12 months, activities at schools or youth organizations"
CIV_MEET = "Past 12 months, attend local public meeting"
CIV_VOTELOCL = "Vote in last local elections"
CIVIC_ENGAGE = "DERIVED: Civic engagement including volunteering"
FSC_WORRY = "Worried food would run out before got money to buy more"
FSC_NOTLAST = "Food bought did not last, no money to buy more"
FSC_AFFORD = "Couldn't afford to eat balanced meals"
FSC_SKIP = "Last 30 days, cut meal size or skipped meals"
FSC_SKIPNUM = "Last 30 days, number of days cut meal size or skipped meals"
FSC_EATLESS = "Last 30 days, ate less than felt should"
FSC_NOTEAT = "Last 30 days, hungry but didn't eat"
FSC_LOSEWT = "Last 30 days, lost weight because not enough food"
FSC_NOEATDAY = "Last 30 days, didn't eat for a whole day"
FSC_NOEATNUM = "Last 30 days, number of days didn't eat whole day"
FSSTATD = "DERIVED: Food Security Scale 4 category recode"
LAN_OTHERLAN = "Speak language other than English at home"
LAN_MEDIA = "Language used most often when watching television, reading news, or listening to radio"
LAN_DOCTOR = "Language used most often when seeing a doctor"
LAN_SOCIAL = "Language used most often when participating in social activities"
DEM_RACEETH = "DERIVED: Race/ethnicity"
INT_ACCESS = "Access to internet"
INT_HOMEACC = "Access to internet from home"
INT_USEMED = "Past 12 months, use internet to look for health or medical information"
INT_USEDOC = "Past 12 months, use internet to communicate with doctor/doctor's office"
INT_USETEST = "Past 12 months, use internet to look up medical test results"
TEL_NONCELL = "At least one telephone inside home, not cell phone"
TEL_CELL = "Have a working cell phone"
TEL_HHCELL = "Live with anyone with a working cell phone"
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
P_DEVICE = "Paradata: Device used to complete survey (web only)"
P_MODE = "Paradata: Mode of interview"
P_VISIT = "Paradata: Number of times the questionnaire was accessed/login attempts (web)"
P_POVERTY3_R = "Panel Profile: Poverty Status Recode (ratio of household income to the federal poverty level) - 3 levels"
P_POVERTY4_R = "Panel Profile: Poverty Status Recode (ratio of household income to the federal poverty level) - 4 levels"
P_EMPLOY = "Panel Profile: Current Employment Status"
P_EMPLOY_R = "Panel Profile: Employment Status Recode - 2 Levels"
CAL_METRO_I = "Calibration Variable: IMPUTED: Panel Metropolitan Status derived from FIPS"
CAL_METRO_I_IFLG = "Imputation flag for profile variable: <CAL_METRO_I>"
P_REGION = "Panel Profile: 4-level region"
P_HOMEOWN_R = "Panel Profile: Home Ownership Recode - 2 levels"
P_CITIZEN = "Panel Profile: Are you a US citizen"
P_VETERAN = "Panel Profile: Have you ever served on active duty in the U.S. Armed Forces, military Reserves, or National Guard"
P_USBORN = "Panel Profile: Is respondent US born"
P_ORIENT = "Panel Profile: Sexual Orientation"
P1_CALWT = "Panel Variable: Panel provider 1 weight calibrated to NHIS control totals"
P2_CALWT = "Panel Variable: Panel provider 2 weight calibrated to NHIS control totals"
WEIGHT = "Final combined weight calibrated to NHIS control totals"
P_STRATA_R = "Panel Sample Strata"
P_PSU_R = "Panel PSU";
run;

