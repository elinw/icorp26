/*
RSS PUF Input Program: This program imports RSS CSV file into SAS working directory as a SAS dataset:
 - Loads formats to the working directory
 - Imports the RSS CSV data file as a SAS dataset
 - Applies labels and formats to the SAS dataset

 Before running this program, please download the CSV file or SAS dataset to a folder called 
 C:\RSS4 (on a machine running Windows).

 If importing the SAS dataset, please change the filename statement below, as well as replace 
 the data step below with: 
      data &dsn. ;
      	set in.&filename ;
      run ;

*/

%let folderpath = C:\RSS4; *folder location of CSV file;
%let filename = RSS4_PUF.csv; *CSV file name to import into sas;
%let dsn = rss4; *SAS dataset name for output dataset;
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
VALUE ADO_START_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CAL_EMPLOY_	1= "Yes"
 	2= "No";
VALUE CAL_METRO_	1= "Metropolitan"
 	2= "Non-Metropolitan";
VALUE CHR_ASEV_	-9= "Don't know"
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
VALUE CHR_CHLEV_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CHR_CHLEV_R_	-8= "Unknown"
 	0= "No"
 	1= "Yes";
VALUE CHR_HYPEV_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
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
VALUE CON_CLUBORG_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Less than once a week"
 	2= "1 or 2 times a week"
 	3= "3 or 4 times a week"
 	4= "5 or more times a week";
VALUE CON_GETTOG_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Less than once a week"
 	2= "1 or 2 times a week"
 	3= "3 or 4 times a week"
 	4= "5 or more times a week";
VALUE CON_RELSERV_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Never or less than once a year"
 	2= "1 to 3 times per year"
 	3= "4 to 11 times per year"
 	4= "12 or more times per year";
VALUE CON_TELWK_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Less than once a week"
 	2= "1 or 2 times a week"
 	3= "3 or 4 times a week"
 	4= "5 or more times a week";
VALUE DEVICE_	1= "Desktop/Laptop/netbook"
 	2= "Smartphone"
 	3= "Tablet"
 	4= "Other device (book reader, game console, etc.)"
 	5= "Phone interview (not online)";
VALUE DISABILITY_	-8= "Not ascertained"
 	1= "With a disability"
 	2= "Without a disability";
VALUE DIS_AID_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE DIS_DIFCARE_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "No difficulty"
 	2= "Some difficulty"
 	3= "A lot of difficulty"
 	4= "Cannot do this at all";
VALUE DIS_DIFCOM_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "No difficulty"
 	2= "Some difficulty"
 	3= "A lot of difficulty"
 	4= "Cannot do this at all";
VALUE DIS_DIFHEAR_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "No difficulty"
 	2= "Some difficulty"
 	3= "A lot of difficulty"
 	4= "Cannot do this at all";
VALUE DIS_DIFREM_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "No difficulty"
 	2= "Some difficulty"
 	3= "A lot of difficulty"
 	4= "Cannot do this at all";
VALUE DIS_DIFSEE_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "No difficulty"
 	2= "Some difficulty"
 	3= "A lot of difficulty"
 	4= "Cannot do this at all";
VALUE DIS_DIFWLK_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "No difficulty"
 	2= "Some difficulty"
 	3= "A lot of difficulty"
 	4= "Cannot do this at all";
VALUE DIS_GLASS_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE ECC_FINEVA_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE ECC_FINEVB_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE ECC_FINEVC_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE ECC_FINEVD_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE ECC_FINEVE_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE ECC_FINEVF_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE ECC_FINEVG_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE ECC_PARTEVA_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE ECC_PARTEVB_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE ECC_PARTEVC_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE ECC_PARTEVD_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE ECC_PARTEVE_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE ECC_PARTEVF_	-9= "Don't know"
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
 	1= "Yes"
 	2= "Upcoded: Yes";
VALUE EMP_INSH_OTH_	-8= "Not ascertained"
 	0= "No"
 	2= "Upcoded: Yes";
VALUE EMP_INSH_UNK_	-8= "Not ascertained"
 	0= "No"
 	2= "Upcoded: Yes";
VALUE GEN_CURGENA_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Not selected"
 	1= "Selected"
 	2= "Upcoded: Yes";
VALUE GEN_CURGENB_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Not selected"
 	1= "Selected"
 	2= "Upcoded: Yes";
VALUE GEN_CURGENC_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Not selected"
 	1= "Selected"
 	2= "Upcoded: Yes";
VALUE GEN_CURGEND_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Not selected"
 	1= "Selected"
 	2= "Upcoded: Yes";
VALUE GEN_CURGENE_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Not selected"
 	1= "Selected"
 	2= "Upcoded: Yes";
VALUE GROUP_	1= "Group 1"
 	2= "Group 2";
VALUE HCA_MHTHDLY_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE HCA_MHTND_	-9= "Don't know"
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
VALUE HIT_USE_	1= "Yes"
 	2= "No";
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
VALUE INT_EXTENT_	1= "Internet access at home"
 	2= "Internet access, but not at home"
 	3= "No internet access";
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
VALUE MODE2_	1= "Web"
 	2= "CATI";
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
VALUE MTL_MHRXA_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE MTL_MHTHRPY_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE MTL_MHTPYNOW_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE ONEVISIT_	0= "Multiple session or did not complete"
 	1= "Completed survey in single session";
VALUE OUTCOME_	1= "Never accessed the instrument"
 	2= "Accessed instrument but dropped off (did not reach last question of the survey)"
 	3= "Complete (reached last question)"
 	4= "Completed interview but case dropped due to quality concerns (e.g., speeding, excessive item nonresponse)";
VALUE PAA_PARTEVA_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE PAA_PARTEVB_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE PAA_PARTEVC_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE PAA_PARTEVD_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE PAA_PARTEVE_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE PAA_PARTEVF_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE PAA_PARTEVG_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE PAA_PARTEVH_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE PAA_PRT12M_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE PAB_HUMIL12M_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE PAB_HUMILEV_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE PAB_PSYCH12M_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE PAB_PSYCHEV_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
value PRG_NUMPRG_R_
	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"	
	 1= "1"
	 2= "2"
	 3= "3"
	 4= "4"
	 5= "5+";
VALUE PRG_PRBPRG_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Probably not pregnant"
 	1= "Probably pregnant";
VALUE PRG_PRGNOW_	-9= "Don't know"
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
VALUE P_EDUCATION_I_R_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	1= "High school graduate or less"
 	2= "Some college"
 	3= "Bachelor's degree or above";
VALUE P_EMPLOY_	1= "Working"
 	2= "Not working--unable to work for health reasons/disabled"
 	3= "Not working--retired"
 	4= "Not working--other";
VALUE P_HOMEOWN_R_	1= "Own or being bought"
 	2= "Rent/other arrangement";
VALUE P_ORIENT_	1= "Gay or lesbian"
 	2= "Straight, that is not lesbian/gay"
 	3= "Bisexual"
 	4= "Something else";
VALUE P_POVERTY4_R_	1= "0 - < 1.00"
 	2= "1.00 - < 2.00"
 	3= "2.00 - < 4.00"
 	4= "4.00 +";
VALUE P_RACE_R_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	1= "White, non-Hispanic"
 	2= "Black, non-Hispanic"
 	3= "Other, non-Hispanic"
 	4= "Hispanic";
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
VALUE SVA_ANY12MF_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SVA_ANY12MM_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SVA_FINGEVF_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SVA_FINGEVM_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SVA_FNGHIGHF_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SVA_FNGHIGHM_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SVA_FORCEEV_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SVA_ORLEV_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SVA_ORLHIGH_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SVA_ORLPHYS_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SVA_PEN12M_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SVA_PENEVF_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SVA_PENEVM_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SVA_PENHIGHF_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SVA_PENHIGHM_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SVA_PENPHYS_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SVA_PREG_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SVA_SEX_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Male set of questions"
 	1= "Female set of questions";
VALUE SVA_VAGPHYS_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SVA_VGOREV_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SVA_VGORHIGH_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SVB_ANY12M_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SVB_ANYPREG_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SVB_FINGEVM_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SVB_FINGEV_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SVB_FNGHIGHM_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SVB_FNGHIGH_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SVB_FNGPHYSM_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SVB_FNGPHYS_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SVB_FORCEEV_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SVB_FORCEORL_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SVB_FORCEPEN_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SVB_FORCEVG_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SVB_ORLEVM_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SVB_ORLEV_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SVB_ORLHIGHM_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SVB_ORLHIGH_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SVB_ORLPHYSM_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SVB_ORLPHYS_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SVB_PEN12M_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SVB_PENEVM_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SVB_PENEV_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SVB_PENHIGHM_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SVB_PENHIGH_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SVB_PENPHYSM_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SVB_PENPHYS_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SVB_PHYS12M_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SVB_SEX_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Male set of questions"
 	1= "Female set of questions";
VALUE SVB_VGSXEVM_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SVB_VGSXEV_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SVB_VGSXHIGH_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SVB_VGSXHIM_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SVB_VGSXPHYM_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SVB_VGSXPHYS_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE TBI_CONCEN_	-9= "Not sure/Don't remember"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE TBI_DAZED_	-9= "Not sure/Don't remember"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE TBI_DIZZY_	-9= "Not sure/Don't remember"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE TBI_EXDOC_	-9= "Not sure/Don't remember"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE TBI_HARMEVA_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE TBI_HARMEVB_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE TBI_HARMEVC_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE TBI_HARMEVD_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE TBI_HARMEVE_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE TBI_HARMPREG_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE TBI_HEADACHE_	-9= "Not sure/Don't remember"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE TBI_INJFACE_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE TBI_KNOCKOUT_	-9= "Not sure/Don't remember"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE TBI_LEARN_	-9= "Not sure/Don't remember"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE TBI_MOOD_	-9= "Not sure/Don't remember"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE TBI_REMEMBER_	-9= "Not sure/Don't remember"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE TBI_SENSE_	-9= "Not sure/Don't remember"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE TBI_SICK_	-9= "Not sure/Don't remember"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE TBI_SLEEP_	-9= "Not sure/Don't remember"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE TBI_VISION_	-9= "Not sure/Don't remember"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE TBI_WHENINJ_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Within the last 12 months"
 	2= "1-3 years ago"
 	3= "4-7 years ago"
 	4= "8 or more years ago";
VALUE TBI_WHYNODOCA_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Not selected"
 	1= "Selected";
VALUE TBI_WHYNODOCB_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Not selected"
 	1= "Selected";
VALUE TBI_WHYNODOCC_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Not selected"
 	1= "Selected";
VALUE TBI_WHYNODOCD_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Not selected"
 	1= "Selected";
VALUE TBI_WHYNODOCE_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Not selected"
 	1= "Selected";
VALUE TBI_WHYNODOCF_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Not selected"
 	1= "Selected";
VALUE TBI_WHYNODOCG_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Not selected"
 	1= "Selected";
VALUE TEL_CELL_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE TEL_CELL_R_	1= "Yes"
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
VALUE TSV_EXP12M_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE TSV_EXPEV_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE TSV_POST12M_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE TSV_POSTEV_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE USBORN2_	0= "No"
 	1= "Yes";
VALUE VETERAN_	0= "Not a veteran"
 	1= "Veteran";
VALUE YESNO_	-9= "Don't know"
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
CHR_HYPEV  8
CHR_CHLEV  8
CHR_CHLEV_R  8
CHR_ASEV  8
CHR_CANEV  8
PRG_PRGNOW  8
PRG_PRBPRG  8
PRG_NUMPRG_R  8
GEN_CURGENA  8
GEN_CURGENB  8
GEN_CURGENC  8
GEN_CURGEND  8
GEN_CURGENE  8
DIS_GLASS  8
DIS_DIFSEE  8
DIS_AID  8
DIS_DIFHEAR  8
DIS_DIFWLK  8
DIS_DIFCOM  8
DIS_DIFREM  8
DIS_DIFCARE  8
SOC_ERRANDS  8
SOC_PARACTIV  8
SOC_PARACTIV_R  8
SOC_SCWRKLIM  8
SOCWRKLMT  8
ADO_START  8
DISABILITY  8
DIS_COUNT  8
CON_TELWK  8
CON_GETTOG  8
CON_RELSERV  8
CON_CLUBORG  8
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
ACC_HTHLAST  8
ACC_HTHUSUAL  8
ACC_HTHTYPE  8
ACC_HOSP12M  8
MTL_ANXIETY  8
MTL_ANXMEDS  8
MTL_ANXLVL  8
MTL_DEPRESS  8
MTL_DEPMEDS  8
MTL_DEPLVL  8
MTL_MHRXA  8
MTL_MHTHRPY  8
MTL_MHTPYNOW  8
HCA_MHTHDLY  8
HCA_MHTND  8
CIG_SMKEV  8
CIG_SMKNOW  8
CIV_VOL12M  8
CIV_VOLOTH  8
CIV_MEET  8
CIV_VOTELOCL  8
CIVIC_ENGAGE  8
LAN_OTHERLAN  8
LAN_MEDIA  8
LAN_DOCTOR  8
LAN_SOCIAL  8
MAR_MARITAL  8
MAR_EVMARRY  8
MAR_LEGAL  8
MAR_WIDIVSEP  8
MARSTAT  8
LEGMSTAT  8
MARITAL  8
TSV_EXPEV  8
TSV_EXP12M  8
TSV_POSTEV  8
TSV_POST12M  8
TSV_LTANY  8
TSV_12MANY  8
ECC_PARTEVA  8
ECC_PARTEVB  8
ECC_PARTEVC  8
ECC_PARTEVD  8
ECC_PARTEVE  8
ECC_PARTEVF  8
ECC_FINEVA  8
ECC_FINEVB  8
ECC_FINEVC  8
ECC_FINEVD  8
ECC_FINEVE  8
ECC_FINEVF  8
ECC_FINEVG  8
ECC_ANYTIPV  8
ECC_ANYFIPV  8
PAA_PARTEVA  8
PAA_PARTEVB  8
PAA_PARTEVC  8
PAA_PARTEVD  8
PAA_PARTEVE  8
PAA_PARTEVF  8
PAA_PARTEVG  8
PAA_PARTEVH  8
PAA_PRT12M  8
SVA_SEX  8
SVA_ORLHIGH  8
SVA_FNGHIGHF  8
SVA_PENHIGHF  8
SVA_ORLEV  8
SVA_FINGEVF  8
SVA_PENEVF  8
SVA_FORCEEV  8
SVA_ANY12MF  8
SVA_PREG  8
SVA_VGORHIGH  8
SVA_FNGHIGHM  8
SVA_PENHIGHM  8
SVA_VGOREV  8
SVA_FINGEVM  8
SVA_PENEVM  8
SVA_ORLPHYS  8
SVA_VAGPHYS  8
SVA_PENPHYS  8
SVA_ANY12MM  8
SVA_PEN12M  8
PAB_HUMILEV  8
PAB_HUMIL12M  8
PAB_PSYCHEV  8
PAB_PSYCH12M  8
SVB_SEX  8
SVB_ORLEV  8
SVB_ORLPHYS  8
SVB_ORLHIGH  8
SVB_FINGEV  8
SVB_FNGPHYS  8
SVB_FNGHIGH  8
SVB_VGSXEV  8
SVB_VGSXPHYS  8
SVB_VGSXHIGH  8
SVB_PENEV  8
SVB_PENPHYS  8
SVB_PENHIGH  8
SVB_FORCEEV  8
SVB_ANY12M  8
SVB_ANYPREG  8
SVB_ORLEVM  8
SVB_ORLPHYSM  8
SVB_ORLHIGHM  8
SVB_FINGEVM  8
SVB_FNGPHYSM  8
SVB_FNGHIGHM  8
SVB_VGSXEVM  8
SVB_VGSXPHYM  8
SVB_VGSXHIM  8
SVB_PENEVM  8
SVB_PENPHYSM  8
SVB_PENHIGHM  8
SVB_FORCEORL  8
SVB_FORCEVG  8
SVB_FORCEPEN  8
SVB_PHYS12M  8
SVB_PEN12M  8
TBI_HARMEVA  8
TBI_HARMEVB  8
TBI_HARMEVC  8
TBI_HARMEVD  8
TBI_HARMEVE  8
TBI_HARMPREG  8
TBI_INJFACE  8
TBI_WHENINJ  8
TBI_DAZED  8
TBI_REMEMBER  8
TBI_KNOCKOUT  8
TBI_SICK  8
TBI_HEADACHE  8
TBI_DIZZY  8
TBI_VISION  8
TBI_CONCEN  8
TBI_LEARN  8
TBI_SENSE  8
TBI_MOOD  8
TBI_SLEEP  8
TBI_EXDOC  8
TBI_WHYNODOCA  8
TBI_WHYNODOCB  8
TBI_WHYNODOCC  8
TBI_WHYNODOCD  8
TBI_WHYNODOCE  8
TBI_WHYNODOCF  8
TBI_WHYNODOCG  8
TBI_ANYSYMP  8
INT_ACCESS  8
INT_HOMEACC  8
INT_EXTENT  8
INT_USEMED  8
INT_USEDOC  8
INT_USETEST  8
HIT_USE  8
TEL_NONCELL  8
TEL_CELL  8
TEL_CELL_R  8
TEL_HHCELL  8
GROUP  8
START_DATE_R $5
END_DATE_R $5
ID_R  8
SOURCE  8
QUEX_LANG  8
P_OUTCOME  8
P_HHSIZE_R  8
P_AGE5YRS_R  8
P_EDUCATION_I_R  8
P_EDUCATION_I_R_IFLG  8
P_ONEVISIT  8
P_REMIND  8
P_CATIATT  8
P_DEVICE  8
P_MODE  8
P_VISIT  8
P_POVERTY4_R  8
P_EMPLOY  8
P_REGION  8
P_HOMEOWN_R  8
P_CITIZEN  8
P_VETERAN  8
P_USBORN  8
P_RACE_R  8
P_ORIENT  8
P_METRO_R  8
CAL_EMPLOY  8
P1_CALWT  8
P2_CALWT  8
WEIGHT  8
P_STRATA_R  8
P_PSU_R  8;
INPUT HIS_GENERAL
CHR_HYPEV
CHR_CHLEV
CHR_CHLEV_R
CHR_ASEV
CHR_CANEV
PRG_PRGNOW
PRG_PRBPRG
PRG_NUMPRG_R
GEN_CURGENA
GEN_CURGENB
GEN_CURGENC
GEN_CURGEND
GEN_CURGENE
DIS_GLASS
DIS_DIFSEE
DIS_AID
DIS_DIFHEAR
DIS_DIFWLK
DIS_DIFCOM
DIS_DIFREM
DIS_DIFCARE
SOC_ERRANDS
SOC_PARACTIV
SOC_PARACTIV_R
SOC_SCWRKLIM
SOCWRKLMT
ADO_START
DISABILITY
DIS_COUNT
CON_TELWK
CON_GETTOG
CON_RELSERV
CON_CLUBORG
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
ACC_HTHLAST
ACC_HTHUSUAL
ACC_HTHTYPE
ACC_HOSP12M
MTL_ANXIETY
MTL_ANXMEDS
MTL_ANXLVL
MTL_DEPRESS
MTL_DEPMEDS
MTL_DEPLVL
MTL_MHRXA
MTL_MHTHRPY
MTL_MHTPYNOW
HCA_MHTHDLY
HCA_MHTND
CIG_SMKEV
CIG_SMKNOW
CIV_VOL12M
CIV_VOLOTH
CIV_MEET
CIV_VOTELOCL
CIVIC_ENGAGE
LAN_OTHERLAN
LAN_MEDIA
LAN_DOCTOR
LAN_SOCIAL
MAR_MARITAL
MAR_EVMARRY
MAR_LEGAL
MAR_WIDIVSEP
MARSTAT
LEGMSTAT
MARITAL
TSV_EXPEV
TSV_EXP12M
TSV_POSTEV
TSV_POST12M
TSV_LTANY
TSV_12MANY
ECC_PARTEVA
ECC_PARTEVB
ECC_PARTEVC
ECC_PARTEVD
ECC_PARTEVE
ECC_PARTEVF
ECC_FINEVA
ECC_FINEVB
ECC_FINEVC
ECC_FINEVD
ECC_FINEVE
ECC_FINEVF
ECC_FINEVG
ECC_ANYTIPV
ECC_ANYFIPV
PAA_PARTEVA
PAA_PARTEVB
PAA_PARTEVC
PAA_PARTEVD
PAA_PARTEVE
PAA_PARTEVF
PAA_PARTEVG
PAA_PARTEVH
PAA_PRT12M
SVA_SEX
SVA_ORLHIGH
SVA_FNGHIGHF
SVA_PENHIGHF
SVA_ORLEV
SVA_FINGEVF
SVA_PENEVF
SVA_FORCEEV
SVA_ANY12MF
SVA_PREG
SVA_VGORHIGH
SVA_FNGHIGHM
SVA_PENHIGHM
SVA_VGOREV
SVA_FINGEVM
SVA_PENEVM
SVA_ORLPHYS
SVA_VAGPHYS
SVA_PENPHYS
SVA_ANY12MM
SVA_PEN12M
PAB_HUMILEV
PAB_HUMIL12M
PAB_PSYCHEV
PAB_PSYCH12M
SVB_SEX
SVB_ORLEV
SVB_ORLPHYS
SVB_ORLHIGH
SVB_FINGEV
SVB_FNGPHYS
SVB_FNGHIGH
SVB_VGSXEV
SVB_VGSXPHYS
SVB_VGSXHIGH
SVB_PENEV
SVB_PENPHYS
SVB_PENHIGH
SVB_FORCEEV
SVB_ANY12M
SVB_ANYPREG
SVB_ORLEVM
SVB_ORLPHYSM
SVB_ORLHIGHM
SVB_FINGEVM
SVB_FNGPHYSM
SVB_FNGHIGHM
SVB_VGSXEVM
SVB_VGSXPHYM
SVB_VGSXHIM
SVB_PENEVM
SVB_PENPHYSM
SVB_PENHIGHM
SVB_FORCEORL
SVB_FORCEVG
SVB_FORCEPEN
SVB_PHYS12M
SVB_PEN12M
TBI_HARMEVA
TBI_HARMEVB
TBI_HARMEVC
TBI_HARMEVD
TBI_HARMEVE
TBI_HARMPREG
TBI_INJFACE
TBI_WHENINJ
TBI_DAZED
TBI_REMEMBER
TBI_KNOCKOUT
TBI_SICK
TBI_HEADACHE
TBI_DIZZY
TBI_VISION
TBI_CONCEN
TBI_LEARN
TBI_SENSE
TBI_MOOD
TBI_SLEEP
TBI_EXDOC
TBI_WHYNODOCA
TBI_WHYNODOCB
TBI_WHYNODOCC
TBI_WHYNODOCD
TBI_WHYNODOCE
TBI_WHYNODOCF
TBI_WHYNODOCG
TBI_ANYSYMP
INT_ACCESS
INT_HOMEACC
INT_EXTENT
INT_USEMED
INT_USEDOC
INT_USETEST
HIT_USE
TEL_NONCELL
TEL_CELL
TEL_CELL_R
TEL_HHCELL
GROUP
START_DATE_R $
END_DATE_R $
ID_R
SOURCE
QUEX_LANG
P_OUTCOME
P_HHSIZE_R
P_AGE5YRS_R
P_EDUCATION_I_R
P_EDUCATION_I_R_IFLG
P_ONEVISIT
P_REMIND
P_CATIATT
P_DEVICE
P_MODE
P_VISIT
P_POVERTY4_R
P_EMPLOY
P_REGION
P_HOMEOWN_R
P_CITIZEN
P_VETERAN
P_USBORN
P_RACE_R
P_ORIENT
P_METRO_R
CAL_EMPLOY
P1_CALWT
P2_CALWT
WEIGHT
P_STRATA_R
P_PSU_R  ;
FORMAT HIS_GENERAL                      HIS_GENERAL_.
CHR_HYPEV                        CHR_HYPEV_.
CHR_CHLEV                        CHR_CHLEV_.
CHR_CHLEV_R                      CHR_CHLEV_R_.
CHR_ASEV                         CHR_ASEV_.
CHR_CANEV                        CHR_CANEV_.
PRG_PRGNOW                       PRG_PRGNOW_.
PRG_PRBPRG                       PRG_PRBPRG_.
PRG_NUMPRG_R                     PRG_NUMPRG_R_.
GEN_CURGENA                      GEN_CURGENA_.
GEN_CURGENB                      GEN_CURGENB_.
GEN_CURGENC                      GEN_CURGENC_.
GEN_CURGEND                      GEN_CURGEND_.
GEN_CURGENE                      GEN_CURGENE_.
DIS_GLASS                        DIS_GLASS_.
DIS_DIFSEE                       DIS_DIFSEE_.
DIS_AID                          DIS_AID_.
DIS_DIFHEAR                      DIS_DIFHEAR_.
DIS_DIFWLK                       DIS_DIFWLK_.
DIS_DIFCOM                       DIS_DIFCOM_.
DIS_DIFREM                       DIS_DIFREM_.
DIS_DIFCARE                      DIS_DIFCARE_.
SOC_ERRANDS                      SOC_ERRANDS_.
SOC_PARACTIV                     SOC_PARACTIV_.
SOC_PARACTIV_R                   SOC_PARACTIV_R_.
SOC_SCWRKLIM                     SOC_SCWRKLIM_.
SOCWRKLMT                        SOCWRKLMT_.
ADO_START                        ADO_START_.
DISABILITY                       DISABILITY_.
CON_TELWK                        CON_TELWK_.
CON_GETTOG                       CON_GETTOG_.
CON_RELSERV                      CON_RELSERV_.
CON_CLUBORG                      CON_CLUBORG_.
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
ACC_HTHLAST                      ACC_HTHLAST_.
ACC_HTHUSUAL                     ACC_HTHUSUAL_.
ACC_HTHTYPE                      ACC_HTHTYPE_.
ACC_HOSP12M                      ACC_HOSP12M_.
MTL_ANXIETY                      MTL_ANXIETY_.
MTL_ANXMEDS                      MTL_ANXMEDS_.
MTL_ANXLVL                       MTL_ANXLVL_.
MTL_DEPRESS                      MTL_DEPRESS_.
MTL_DEPMEDS                      MTL_DEPMEDS_.
MTL_DEPLVL                       MTL_DEPLVL_.
MTL_MHRXA                        MTL_MHRXA_.
MTL_MHTHRPY                      MTL_MHTHRPY_.
MTL_MHTPYNOW                     MTL_MHTPYNOW_.
HCA_MHTHDLY                      HCA_MHTHDLY_.
HCA_MHTND                        HCA_MHTND_.
CIG_SMKEV                        CIG_SMKEV_.
CIG_SMKNOW                       CIG_SMKNOW_.
CIV_VOL12M                       CIV_VOL12M_.
CIV_VOLOTH                       CIV_VOLOTH_.
CIV_MEET                         CIV_MEET_.
CIV_VOTELOCL                     CIV_VOTELOCL_.
CIVIC_ENGAGE                     CIVIC_ENGAGE_.
LAN_OTHERLAN                     LAN_OTHERLAN_.
LAN_MEDIA                        LAN_MEDIA_.
LAN_DOCTOR                       LAN_DOCTOR_.
LAN_SOCIAL                       LAN_SOCIAL_.
MAR_MARITAL                      MAR_MARITAL_.
MAR_EVMARRY                      MAR_EVMARRY_.
MAR_LEGAL                        MAR_LEGAL_.
MAR_WIDIVSEP                     MAR_WIDIVSEP_.
MARSTAT                          MARSTAT_.
LEGMSTAT                         LEGMSTAT_.
MARITAL                          MARITAL_.
TSV_EXPEV                        TSV_EXPEV_.
TSV_EXP12M                       TSV_EXP12M_.
TSV_POSTEV                       TSV_POSTEV_.
TSV_POST12M                      TSV_POST12M_.
TSV_LTANY                        YESNO_.
TSV_12MANY                       YESNO_.
ECC_PARTEVA                      ECC_PARTEVA_.
ECC_PARTEVB                      ECC_PARTEVB_.
ECC_PARTEVC                      ECC_PARTEVC_.
ECC_PARTEVD                      ECC_PARTEVD_.
ECC_PARTEVE                      ECC_PARTEVE_.
ECC_PARTEVF                      ECC_PARTEVF_.
ECC_FINEVA                       ECC_FINEVA_.
ECC_FINEVB                       ECC_FINEVB_.
ECC_FINEVC                       ECC_FINEVC_.
ECC_FINEVD                       ECC_FINEVD_.
ECC_FINEVE                       ECC_FINEVE_.
ECC_FINEVF                       ECC_FINEVF_.
ECC_FINEVG                       ECC_FINEVG_.
ECC_ANYTIPV                      YESNO_.
ECC_ANYFIPV                      YESNO_.
PAA_PARTEVA                      PAA_PARTEVA_.
PAA_PARTEVB                      PAA_PARTEVB_.
PAA_PARTEVC                      PAA_PARTEVC_.
PAA_PARTEVD                      PAA_PARTEVD_.
PAA_PARTEVE                      PAA_PARTEVE_.
PAA_PARTEVF                      PAA_PARTEVF_.
PAA_PARTEVG                      PAA_PARTEVG_.
PAA_PARTEVH                      PAA_PARTEVH_.
PAA_PRT12M                       PAA_PRT12M_.
SVA_SEX                          SVA_SEX_.
SVA_ORLHIGH                      SVA_ORLHIGH_.
SVA_FNGHIGHF                     SVA_FNGHIGHF_.
SVA_PENHIGHF                     SVA_PENHIGHF_.
SVA_ORLEV                        SVA_ORLEV_.
SVA_FINGEVF                      SVA_FINGEVF_.
SVA_PENEVF                       SVA_PENEVF_.
SVA_FORCEEV                      SVA_FORCEEV_.
SVA_ANY12MF                      SVA_ANY12MF_.
SVA_PREG                         SVA_PREG_.
SVA_VGORHIGH                     SVA_VGORHIGH_.
SVA_FNGHIGHM                     SVA_FNGHIGHM_.
SVA_PENHIGHM                     SVA_PENHIGHM_.
SVA_VGOREV                       SVA_VGOREV_.
SVA_FINGEVM                      SVA_FINGEVM_.
SVA_PENEVM                       SVA_PENEVM_.
SVA_ORLPHYS                      SVA_ORLPHYS_.
SVA_VAGPHYS                      SVA_VAGPHYS_.
SVA_PENPHYS                      SVA_PENPHYS_.
SVA_ANY12MM                      SVA_ANY12MM_.
SVA_PEN12M                       SVA_PEN12M_.
PAB_HUMILEV                      PAB_HUMILEV_.
PAB_HUMIL12M                     PAB_HUMIL12M_.
PAB_PSYCHEV                      PAB_PSYCHEV_.
PAB_PSYCH12M                     PAB_PSYCH12M_.
SVB_SEX                          SVB_SEX_.
SVB_ORLEV                        SVB_ORLEV_.
SVB_ORLPHYS                      SVB_ORLPHYS_.
SVB_ORLHIGH                      SVB_ORLHIGH_.
SVB_FINGEV                       SVB_FINGEV_.
SVB_FNGPHYS                      SVB_FNGPHYS_.
SVB_FNGHIGH                      SVB_FNGHIGH_.
SVB_VGSXEV                       SVB_VGSXEV_.
SVB_VGSXPHYS                     SVB_VGSXPHYS_.
SVB_VGSXHIGH                     SVB_VGSXHIGH_.
SVB_PENEV                        SVB_PENEV_.
SVB_PENPHYS                      SVB_PENPHYS_.
SVB_PENHIGH                      SVB_PENHIGH_.
SVB_FORCEEV                      SVB_FORCEEV_.
SVB_ANY12M                       SVB_ANY12M_.
SVB_ANYPREG                      SVB_ANYPREG_.
SVB_ORLEVM                       SVB_ORLEVM_.
SVB_ORLPHYSM                     SVB_ORLPHYSM_.
SVB_ORLHIGHM                     SVB_ORLHIGHM_.
SVB_FINGEVM                      SVB_FINGEVM_.
SVB_FNGPHYSM                     SVB_FNGPHYSM_.
SVB_FNGHIGHM                     SVB_FNGHIGHM_.
SVB_VGSXEVM                      SVB_VGSXEVM_.
SVB_VGSXPHYM                     SVB_VGSXPHYM_.
SVB_VGSXHIM                      SVB_VGSXHIM_.
SVB_PENEVM                       SVB_PENEVM_.
SVB_PENPHYSM                     SVB_PENPHYSM_.
SVB_PENHIGHM                     SVB_PENHIGHM_.
SVB_FORCEORL                     SVB_FORCEORL_.
SVB_FORCEVG                      SVB_FORCEVG_.
SVB_FORCEPEN                     SVB_FORCEPEN_.
SVB_PHYS12M                      SVB_PHYS12M_.
SVB_PEN12M                       SVB_PEN12M_.
TBI_HARMEVA                      TBI_HARMEVA_.
TBI_HARMEVB                      TBI_HARMEVB_.
TBI_HARMEVC                      TBI_HARMEVC_.
TBI_HARMEVD                      TBI_HARMEVD_.
TBI_HARMEVE                      TBI_HARMEVE_.
TBI_HARMPREG                     TBI_HARMPREG_.
TBI_INJFACE                      TBI_INJFACE_.
TBI_WHENINJ                      TBI_WHENINJ_.
TBI_DAZED                        TBI_DAZED_.
TBI_REMEMBER                     TBI_REMEMBER_.
TBI_KNOCKOUT                     TBI_KNOCKOUT_.
TBI_SICK                         TBI_SICK_.
TBI_HEADACHE                     TBI_HEADACHE_.
TBI_DIZZY                        TBI_DIZZY_.
TBI_VISION                       TBI_VISION_.
TBI_CONCEN                       TBI_CONCEN_.
TBI_LEARN                        TBI_LEARN_.
TBI_SENSE                        TBI_SENSE_.
TBI_MOOD                         TBI_MOOD_.
TBI_SLEEP                        TBI_SLEEP_.
TBI_EXDOC                        TBI_EXDOC_.
TBI_WHYNODOCA                    TBI_WHYNODOCA_.
TBI_WHYNODOCB                    TBI_WHYNODOCB_.
TBI_WHYNODOCC                    TBI_WHYNODOCC_.
TBI_WHYNODOCD                    TBI_WHYNODOCD_.
TBI_WHYNODOCE                    TBI_WHYNODOCE_.
TBI_WHYNODOCF                    TBI_WHYNODOCF_.
TBI_WHYNODOCG                    TBI_WHYNODOCG_.
TBI_ANYSYMP                      YESNO_.
INT_ACCESS                       INT_ACCESS_.
INT_HOMEACC                      INT_HOMEACC_.
INT_EXTENT                       INT_EXTENT_.
INT_USEMED                       INT_USEMED_.
INT_USEDOC                       INT_USEDOC_.
INT_USETEST                      INT_USETEST_.
HIT_USE                          HIT_USE_.
TEL_NONCELL                      TEL_NONCELL_.
TEL_CELL                         TEL_CELL_.
TEL_CELL_R                       TEL_CELL_R_.
TEL_HHCELL                       TEL_HHCELL_.
GROUP                            GROUP_.
SOURCE                           SOURCE_.
QUEX_LANG                        QUEX_LANG_.
P_OUTCOME                        OUTCOME_.
P_HHSIZE_R                       HHSIZE_.
P_AGE5YRS_R                      P_AGE5YRS_R_.
P_EDUCATION_I_R                  P_EDUCATION_I_R_.
P_EDUCATION_I_R_IFLG             IFLG_.
P_ONEVISIT                       ONEVISIT_.
P_DEVICE                         DEVICE_.
P_MODE                           MODE2_.
P_POVERTY4_R                     P_POVERTY4_R_.
P_EMPLOY                         P_EMPLOY_.
P_REGION                         REGION_.
P_HOMEOWN_R                      P_HOMEOWN_R_.
P_CITIZEN                        CITIZEN2_.
P_VETERAN                        VETERAN_.
P_USBORN                         USBORN2_.
P_RACE_R                         P_RACE_R_.
P_ORIENT                         P_ORIENT_.
P_METRO_R                        CAL_METRO_.
CAL_EMPLOY                       CAL_EMPLOY_.;
LABEL HIS_GENERAL = "Self-reported health status"
CHR_HYPEV = "Ever been told you had hypertension"
CHR_CHLEV = "Ever told you had high cholesterol"
CHR_CHLEV_R = "RECODE: Ever diagnosed high cholesterol"
CHR_ASEV = "Ever been told you had asthma"
CHR_CANEV = "Ever been told you had cancer"
PRG_PRGNOW = "Pregnant now"
PRG_PRBPRG = "Probably pregnant"
PRG_NUMPRG_R = "Number of pregnancy in life - topcoded"
GEN_CURGENA = "Currently describe self as: Male"
GEN_CURGENB = "Currently describe self as: Female"
GEN_CURGENC = "Currently describe self as: Transgender"
GEN_CURGEND = "Currently describe self as: Nonbinary"
GEN_CURGENE = "Currently describe self as: Another gender"
DIS_GLASS = "Wear glasses or contacts"
DIS_DIFSEE = "Difficulty seeing (even wearing glasses)"
DIS_AID = "Use a hearing aid"
DIS_DIFHEAR = "Difficulty hearing (even using hearing aid)"
DIS_DIFWLK = "Difficulty walking or climbing steps"
DIS_DIFCOM = "Difficulty communicating"
DIS_DIFREM = "Difficulty remembering or concentrating"
DIS_DIFCARE = "Difficulty with self-care"
SOC_ERRANDS = "Difficulty doing errands alone"
SOC_PARACTIV = "Difficulty participating in social activities"
SOC_PARACTIV_R = "RECODE: Difficulty participating in social activities due to physical, mental, or emotional condition"
SOC_SCWRKLIM = "Work limited due to health problem"
SOCWRKLMT = "DERIVED: Any social/work limitation"
ADO_START = "Disability onset began before age 22"
DISABILITY = "DERIVED: Washington Group short set composite disability indicator"
DIS_COUNT = "RECODE: Number of variables for which respondent answers 3 or 4 among: DIS_DIFWLK - SOC_ERRANDS"
CON_TELWK = "Frequency of talking with family, friends, or neighbors"
CON_GETTOG = "Frequency of getting together with friends or relatives"
CON_RELSERV = "Frequency of attending church or religious services"
CON_CLUBORG = "Frequency of attending meetings of any clubs or organizations"
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
INSURED = "Health Insurance Status"
ACC_HTHLAST = "Time since last saw doctor about your health"
ACC_HTHUSUAL = "Have a usual place to go for care"
ACC_HTHTYPE = "Type of place for usual care"
ACC_HOSP12M = "Past 12 months, hospitalized overnight"
MTL_ANXIETY = "Frequency of feeling worried, nervous or anxious"
MTL_ANXMEDS = "Take medication for anxiety"
MTL_ANXLVL = "Level of anxiety"
MTL_DEPRESS = "Frequency of feeling depressed"
MTL_DEPMEDS = "Take medication for depression"
MTL_DEPLVL = "Level of depression"
MTL_MHRXA = "Past 12 months, took prescription medication to help with any other emotions or with your concentration, behavior, or mental health"
MTL_MHTHRPY = "Past 12 months, received counseling or therapy from a mental health professional"
MTL_MHTPYNOW = "Currently receiving counseling or therapy from a mental health professional"
HCA_MHTHDLY = "Past 12 months, delayed getting counseling or therapy from a mental health professional because of cost"
HCA_MHTND = "Past 12 months, did not get counseling or therapy from a mental health professional because of cost"
CIG_SMKEV = "Ever smoked 100 cigarettes in entire life"
CIG_SMKNOW = "How often now smoke cigarettes"
CIV_VOL12M = "Past 12 months, volunteer activities"
CIV_VOLOTH = "Past 12 months, activities at schools or youth organizations"
CIV_MEET = "Past 12 months, attend local public meetings"
CIV_VOTELOCL = "Vote in last local elections"
CIVIC_ENGAGE = "RECODE: Civic engagement including volunteering"
LAN_OTHERLAN = "Speak language other than English at home"
LAN_MEDIA = "What language use most often when watching television, read news, listen to radio"
LAN_DOCTOR = "What language use most often when seeing a doctor"
LAN_SOCIAL = "What language use most often when participate in social activities"
MAR_MARITAL = "Now married, living with a partner, or neither"
MAR_EVMARRY = "Ever been married"
MAR_LEGAL = "Current legal marital status"
MAR_WIDIVSEP = "Widowed, divorced, or separated"
MARSTAT = "DERIVED: Current marital status"
LEGMSTAT = "DERIVED: Legal marital status"
MARITAL = "RECODE: Current Marriage Status - 2 levels"
TSV_EXPEV = "Ever received unwanted sexually explicit message or image without your consent"
TSV_EXP12M = "Past 12 months, received unwanted sexually explicit message or image without your consent"
TSV_POSTEV = "Ever electronically sent or posted sexual photo or video without your consent"
TSV_POST12M = "Past 12 months, electronically sent or posted sexual photo or video without your consent"
TSV_LTANY = "DERIVED: Ever experienced lifetime technology-facilitated sexual violence"
TSV_12MANY = "DERIVED: Past 12 months, experienced technology-facilitated sexual violence"
ECC_PARTEVA = "Partner ever checked your phone without permission"
ECC_PARTEVB = "Partner sent harassing messages to you via text or social media"
ECC_PARTEVC = "Partner used your social media account to view your activity without permission"
ECC_PARTEVD = "Partner used GPS technology to track your location without permission"
ECC_PARTEVE = "Partner tried to make you talk about sex online when you did not want to"
ECC_PARTEVF = "Partner ignored your phone calls or text messages to hurt your feelings"
ECC_FINEVA = "Partner decided how you could spend your money"
ECC_FINEVB = "Partner kept you from having a job or going to work"
ECC_FINEVC = "Partner took out loan or bought something in your name without permission"
ECC_FINEVD = "Partner put bills in your name, leaving you to pay them"
ECC_FINEVE = "Partner forced or pressured you to give them your savings or other assets"
ECC_FINEVF = "Partner caused concerns about your finances, affecting decision to stay or leave"
ECC_FINEVG = "Partner negatively affected your credit card debt."
ECC_ANYTIPV = "DERIVED: Any technology-facilitated intimate partner violence"
ECC_ANYFIPV = "DERIVED: Any financial intimate partner violence"
PAA_PARTEVA = "Partner ever kept you from having your own money."
PAA_PARTEVB = "Partner ever tried to keep you from seeing or talking to family or friends."
PAA_PARTEVC = "Partner ever demand to know where you were and what you were doing."
PAA_PARTEVD = "Partner ever made threats to physically harm you."
PAA_PARTEVE = "Partner ever threatened self-harm because they were upset with you."
PAA_PARTEVF = "Partner ever made decisions that should have been yours to make."
PAA_PARTEVG = "Partner ever destroyed something that was important to you."
PAA_PARTEVH = "Partner ever insulted or humiliated you in front of others."
PAA_PRT12M = "Past 12 months, current or ex-partner did these things: [PAA_PARTEVA - PAA_PARTEVH]"
SVA_SEX = "Indicator for question type in SVA section: Female or male set of questions"
SVA_ORLHIGH = "Performed oral sex on you when you could not consent, female"
SVA_FNGHIGHF = "Penetrated vagina/anus with fingers/object when you could not consent, female"
SVA_PENHIGHF = "Penetrated vagina/mouth/anus with penis when you could not consent, female"
SVA_ORLEV = "Performed oral sex on you using physical force when you did not consent, female"
SVA_FINGEVF = "Penetrated vagina/anus with fingers/object using physical force without consent, female"
SVA_PENEVF = "Penetrated vagina/mouth/anus with penis using physical force without consent, female"
SVA_FORCEEV = "Used physical force/threats to try to penetrate vagina, mouth, or anus, female"
SVA_ANY12MF = "Past 12 months, experienced sexual violence, female"
SVA_PREG = "Ever experienced sexual violence while pregnant, female"
SVA_VGORHIGH = "Vaginal or oral sex with you when you could not consent, male"
SVA_FNGHIGHM = "Penetrated anus with fingers/object when you could not consent, male"
SVA_PENHIGHM = "Penetrated mouth/anus with penis when you could not consent, male"
SVA_VGOREV = "Vaginal or oral sex with you using physical force when you did not consent, male"
SVA_FINGEVM = "Penetrated anus with fingers/object using physical force without your consent, male"
SVA_PENEVM = "Penetrated mouth/anus with penis using physical force when you did not consent, male"
SVA_ORLPHYS = "Used physical force to try to perform oral sex or make you perform oral sex, male"
SVA_VAGPHYS = "Used physical force to try to make you perform vaginal sex, male"
SVA_PENPHYS = "Used physical force to try to penetrate your mouth or anus with their penis, male"
SVA_ANY12MM = "Past 12 months, experienced sexual violence (no penetration), male"
SVA_PEN12M = "Past 12 months, experienced sexual violence (penetration), male"
PAB_HUMILEV = "Ever experienced humiliation by a partner"
PAB_HUMIL12M = "Past 12 months, experienced humiliation by a partner"
PAB_PSYCHEV = "Ever experienced psychological aggression"
PAB_PSYCH12M = "Past 12 months, experienced psychological aggression"
SVB_SEX = "Indicator for question type in SVB section: Female or male set of questions"
SVB_ORLEV = "Performed oral sex on you when you did not consent, female"
SVB_ORLPHYS = "Oral sex happened because the person used physical force, female"
SVB_ORLHIGH = "Oral sex happened because you were unable to consent, female"
SVB_FINGEV = "Penetrated vagina/anus with fingers/object when you did not consent, female"
SVB_FNGPHYS = "Penetration by fingers/objects happened because the person used physical force, female"
SVB_FNGHIGH = "Penetration by fingers/objects happened because you were unable to consent, female"
SVB_VGSXEV = "Vaginal sex with you when you did not consent, female"
SVB_VGSXPHYS = "Vaginal sex happened because the person used physical force, female"
SVB_VGSXHIGH = "Vaginal sex happened because you were unable to consent, female"
SVB_PENEV = "Penetrated mouth/anus with penis when you did not consent, female"
SVB_PENPHYS = "Penetration of mouth/anus happened because person used physical force, female"
SVB_PENHIGH = "Penetration of mouth/anus happened because you were unable to consent, female"
SVB_FORCEEV = "Used physical force to try to penetrate vagina/mouth/anus with penis, female"
SVB_ANY12M = "Past 12 months, experienced sexual violence, female"
SVB_ANYPREG = "Ever experienced sexual violence while pregnant, female"
SVB_ORLEVM = "Performed oral sex on you when you did not consent, male"
SVB_ORLPHYSM = "Oral sex happened because the person used physical force, male"
SVB_ORLHIGHM = "Oral sex happened because you were unable to consent, male"
SVB_FINGEVM = "Penetrated anus with fingers/object when you did not consent, male"
SVB_FNGPHYSM = "Penetration with fingers/object happened because the person used physical force, male"
SVB_FNGHIGHM = "Penetration with fingers/object happened because you were unable to consent, male"
SVB_VGSXEVM = "Vaginal sex with you when you did not consent, male"
SVB_VGSXPHYM = "Vaginal sex happened because the person used physical force, male"
SVB_VGSXHIM = "Vaginal sex happened because you were unable to consent, male"
SVB_PENEVM = "Penetrated your mouth/anus with penis when you did not consent, male"
SVB_PENPHYSM = "Penetration with penis happened because person used physical force, male"
SVB_PENHIGHM = "Penetration with penis happened because you were unable to consent, male"
SVB_FORCEORL = "Used physical force to try to perform oral sex or make you perform oral sex, male"
SVB_FORCEVG = "Used physical force to try to make you perform vaginal sex, male"
SVB_FORCEPEN = "Used physical force to try to penetrate your mouth/anus with their penis, male"
SVB_PHYS12M = "Past 12 months, experienced sexual violence (no penetration), male"
SVB_PEN12M = "Past 12 months, experienced sexual violence (penetration), male"
TBI_HARMEVA = "Current or ex-romantic or sexual partner ever slapped, pushed, or shoved you?"
TBI_HARMEVB = "Current or ex-romantic or sexual partner ever hit you with fist/something hard?"
TBI_HARMEVC = "Current or ex-romantic or sexual partner ever kicked or stomped on you?"
TBI_HARMEVD = "Current or ex-romantic or sexual partner ever slammed you against something?"
TBI_HARMEVE = "Current or ex-romantic or sexual partner ever hit you in head/made you hit head?"
TBI_HARMPREG = "Partner did these things [TBI_HARMEVA - TBI_HARMEVE] while pregnant?"
TBI_INJFACE = "Ever have an injury to head or face because of things your partner did to you?"
TBI_WHENINJ = "When did most severe injury to head or face occur?"
TBI_DAZED = "After most severe injury, were you dazed, confused, or have trouble thinking?"
TBI_REMEMBER = "After most severe injury, did you have trouble remembering events before/after?"
TBI_KNOCKOUT = "After most severe injury, were you knocked out or lose consciousness?"
TBI_SICK = "After most severe injury, did you feel sick to your stomach or did you vomit?"
TBI_HEADACHE = "After most severe injury, did you have a headache?"
TBI_DIZZY = "After most severe injury, were you dizzy, clumsy, or have balance problems?"
TBI_VISION = "After most severe injury, did you have blurred or double vision?"
TBI_CONCEN = "After most severe injury, did you have trouble concentrating?"
TBI_LEARN = "After most severe injury, did you have trouble learning/remembering new things?"
TBI_SENSE = "After most severe injury, were you more sensitive to light or noise?"
TBI_MOOD = "After most severe injury, did you experience a change in mood or temperament?"
TBI_SLEEP = "After most severe injury, did you have trouble sleeping or were more tired?"
TBI_EXDOC = "After most severe injury, were you examined by doctor/nurse/health professional?"
TBI_WHYNODOCA = "Reason not examined: Didn't think the injury was serious"
TBI_WHYNODOCB = "Reason not examined: Difficulty paying for it"
TBI_WHYNODOCC = "Reason not examined: Did not have transportation"
TBI_WHYNODOCD = "Reason not examined: Could not take time off work"
TBI_WHYNODOCE = "Reason not examined: Prevented from seeking care by current or ex-partner"
TBI_WHYNODOCF = "Reason not examined: Unable to seek care because of COVID-19"
TBI_WHYNODOCG = "Reason not examined: Some other reason"
TBI_ANYSYMP = "DERIVED: Any TBI Symptoms"
INT_ACCESS = "Access to internet"
INT_HOMEACC = "Access to internet from home"
INT_EXTENT = "DERIVED: Extent of internet access"
INT_USEMED = "Past 12 months, use internet to look for health or medical information"
INT_USEDOC = "Past 12 months, use internet to communicate with doctor/doctor's office"
INT_USETEST = "Past 12 months, use internet to look up medical test results"
HIT_USE = "DERIVED: Any health information technology (HIT) use"
TEL_NONCELL = "At least one telephone inside home, not cell phone"
TEL_CELL = "Have a working cell phone"
TEL_CELL_R = "RECODE: Adult has a working cell phone"
TEL_HHCELL = "Live with anyone with a working cell phone"
GROUP = "Paradata: Randomize group assignment"
START_DATE_R = "Date the survey started"
END_DATE_R = "Date the survey was completed"
ID_R = "Respondent Survey ID"
SOURCE = "Paradata: Panel Provider"
QUEX_LANG = "Paradata: Language of interview"
P_OUTCOME = "Paradata: Outcome code"
P_HHSIZE_R = "Panel Profile: Numeric household size, capped at 6+"
P_AGE5YRS_R = "DERIVED: Age - 12 levels"
P_EDUCATION_I_R = "Panel Profile: Education - 3 levels"
P_EDUCATION_I_R_IFLG = "Imputation flag for panel profile variable: <P_EDUCATION_I_R>"
P_ONEVISIT = "Paradata: Whether the survey was completed in a single session"
P_REMIND = "Paradata: Number of reminders sent"
P_CATIATT = "Paradata: Number of contact attempts (phone)"
P_DEVICE = "Paradata: Device used to complete survey (web only)"
P_MODE = "Paradata: Mode of interview"
P_VISIT = "Paradata: Number of times the questionnaire was accessed/login attempts (web)"
P_POVERTY4_R = "RECODE: Poverty Status (ratio of household income to the federal poverty level) - 4 levels"
P_EMPLOY = "Panel Profile: Current Employment Status"
P_REGION = "Panel Profile: 4-level region"
P_HOMEOWN_R = "DERIVED: Home ownership - 2 levels"
P_CITIZEN = "Panel Profile: Are you a US citizen?"
P_VETERAN = "Panel Profile: Have you ever served on active duty in the U.S. Armed Forces, military Reserves, or National Guard?"
P_USBORN = "Panel Profile: Is respondent US born?"
P_RACE_R = "Panel Profile: Single and multiple race/ethnicity groups (all adults)"
P_ORIENT = "Panel Profile: Sexual Orientation"
P_METRO_R = "NCHS 2013 Urban/Rural code"
CAL_EMPLOY = "Calibration Variable: Panel profile for employment"
P1_CALWT = "Panel provider 1 weight calibrated to NHIS control totals"
P2_CALWT = "Panel provider 2 weight calibrated to NHIS control totals"
WEIGHT = "Final combined weight calibrated to NHIS control totals"
P_STRATA_R = "Panel Sample Strata"
P_PSU_R = "Panel PSU";
run;
