
/*
RSS PUF Input Program: This program imports RSS CSV file into SAS working directory as a SAS dataset:
 - Loads formats to the working directory
 - Imports the RSS CSV data file as a SAS dataset
 - Applies labels and formats to the SAS dataset

 Before running this program, please download the CSV file or SAS dataset to a folder called 
 C:\RSS3 (on a machine running Windows).

 If importing the SAS dataset, please change the filename statement below, as well as replace 
 the data step below with: 
      data &dsn. ;
      	set in.&filename ;
      run ;

*/

%let folderpath = C:\RSS3 ; *folder location of CSV file;
%let filename = RSS3_PUF.csv ; *CSV file name to import into sas;
%let dsn = RSS3_PUF; *SAS dataset name for output dataset;
%let formatcat= work.formats; *SAS formats name in temp working folder;

libname in "&folderpath";

proc format library=&formatcat;
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
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "0"
 	1= "1"
 	2= "2"
 	3= "3"
 	4= "4 or more";
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
 	1= "A doctor’s office or health center"
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
VALUE ACC_URGENT_R_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "0"
 	1= "1"
 	2= "2"
 	3= "3"
 	4= "4"
 	5= "5 or more";
VALUE CAL_METRO_	1= "Metropolitan"
 	2= "Non-Metropolitan";
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
VALUE CHR_HRTEV_	-9= "Don't know"
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
VALUE CHR_RCANEV_	-9= "I don’t know"
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
VALUE EMP_HRSMORE_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "More hours"
 	2= "About the same number of hours"
 	3= "Fewer hours";
VALUE EMP_HRS_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	1= "1-20 hours"
 	2= "21-40 hours"
 	3= "41-60 hours"
 	4= "60+ hours";
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
VALUE EMP_INSEMP_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE EMP_INSE_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes"
 	2= "Upcoded: Yes";
VALUE EMP_INSFAM_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
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
VALUE EMP_LOOK_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE EMP_NUMJOB_R_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "1"
 	2= "2"
 	3= "3"
 	4= "4"
 	5= "5+";
VALUE EMP_OFFER_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE EMP_PDLEAVE_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE EMP_TAX_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE EMP_TYPE_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Employed directly by a business, company, government, or nonprofit organization"
 	2= "Employed by a temporary employment agency"
 	3= "Employed by a contract firm, other than a temporary employment agency"
 	4= "An independent contractor?"
 	5= "Self-employed, not an independent contractor"
 	6= "Other";
VALUE EMP_UPLEAVE_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE EMP_WHENWRK_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Less than 3 months ago"
 	2= "More than 3 months but less than 6 months ago"
 	3= "More than 6 months but less than 12 months ago"
 	4= "More than 12 months but less than 18 months ago"
 	5= "More than 18 months but less than 5 years ago"
 	6= "Five years or more"
 	7= "Never worked";
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
VALUE FHH_COLLECT_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE FHH_DIFCOL_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Not at all difficult"
 	1= "Somewhat difficult"
 	2= "Very difficult";
VALUE FHH_DIFOTHER_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE FHH_FATH_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Nothing at all"
 	1= "Some"
 	2= "A lot";
VALUE FHH_HCP_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE FHH_HISTIMP_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Not at all important"
 	1= "Somewhat important"
 	2= "Very important";
VALUE FHH_KNWCOL_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE FHH_MATGP_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Nothing at all"
 	1= "Some"
 	2= "A lot";
VALUE FHH_MOM_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Nothing at all"
 	1= "Some"
 	2= "A lot";
VALUE FHH_NOCONT_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE FHH_ORG_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE FHH_OTHER_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE FHH_PATGP_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Nothing at all"
 	1= "Some"
 	2= "A lot";
VALUE FHH_UNCOMF_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
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
VALUE GEN_CANINT_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE GEN_CANKNW_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE GEN_CANTST_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE GEN_COST_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE GEN_DRREC1_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE GEN_DRREC2_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE GEN_HRTINT_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE GEN_HRTKNW_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE GEN_HRTTST_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE GEN_KEEP_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE GEN_KNWCHG1_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE GEN_KNWCHG2_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE GEN_KNWDIFF1_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE GEN_KNWDIFF2_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE GEN_MISUSE_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE GEN_NOHELP_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE GEN_NOREC_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE GEN_RHRTEV_	-9= "I don’t know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE GEN_RSTREV_	-9= "I don’t know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE GEN_SHRSLT1_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE GEN_SHRSLT2_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE GEN_STRESS_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
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
VALUE ONEVISIT_	0= "Multiple session or did not complete"
 	1= "Completed survey in single session";
VALUE OUTCOME_	1= "Never accessed the instrument"
 	2= "Accessed instrument but dropped off (did not reach last question of the survey)"
 	3= "Complete (reached last question)"
 	4= "Completed interview but case dropped due to quality concerns (e.g., speeding, excessive item nonresponse)";
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
VALUE P_GENDERID_	1= "Cis-gender Male"
 	2= "Cis-gender Female"
 	3= "Transgender"
 	4= "None of these";
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
VALUE SEX_	1= "Male"
 	2= "Female";
VALUE SEX_BC_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Never"
 	1= "Rarely"
 	2= "Sometimes"
 	3= "Usually"
 	4= "Always";
VALUE SEX_BNDRS_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Never"
 	1= "Rarely"
 	2= "Sometimes"
 	3= "Usually"
 	4= "Always";
VALUE SEX_CLINIC_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SEX_COMFTLK_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SEX_CONDOM_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Never"
 	1= "Rarely"
 	2= "Sometimes"
 	3= "Usually"
 	4= "Always";
VALUE SEX_DESCFEEL1_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SEX_DESCFEEL2_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SEX_DISCA_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SEX_DISCB_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SEX_DISCC_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SEX_DISCD_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SEX_DISCE_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SEX_DISCF_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SEX_DR_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SEX_FEEL_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Never"
 	1= "Rarely"
 	2= "Sometimes"
 	3= "Usually"
 	4= "Always";
VALUE SEX_FUL_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Strongly agree"
 	2= "Somewhat agree"
 	3= "Somewhat disagree"
 	4= "Strongly disagree";
VALUE SEX_GETOUT_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Never"
 	1= "Rarely"
 	2= "Sometimes"
 	3= "Usually"
 	4= "Always";
VALUE SEX_HADSEXA_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SEX_HADSEXB_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SEX_HADSEXC_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SEX_HADSEXD_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SEX_HCPUST_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SEX_HIVPREP_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Never"
 	1= "Rarely"
 	2= "Sometimes"
 	3= "Usually"
 	4= "Always";
VALUE SEX_HIVTST_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Never"
 	1= "Rarely"
 	2= "Sometimes"
 	3= "Usually"
 	4= "Always";
VALUE SEX_HLTSVS_	-9= "I don’t know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SEX_HONEST_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SEX_HOSP_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SEX_HURTPTR_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SEX_JUDGE_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SEX_LIKE_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Never"
 	1= "Rarely"
 	2= "Sometimes"
 	3= "Usually"
 	4= "Always";
VALUE SEX_NEWPTR_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SEX_PUNDSTD_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SEX_RELST2A_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SEX_RELST2B_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SEX_RELST2C_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SEX_RELST3A_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SEX_RELST3B_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SEX_RELST3C_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SEX_RELST_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Not in a sexual relationship"
 	1= "In a sexual relationship with one person"
 	2= "In a sexual relationship with more than one person";
VALUE SEX_REL_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "I have never had a sexual relationship"
 	1= "Strongly agree"
 	2= "Somewhat agree"
 	3= "Somewhat disagree"
 	4= "Strongly disagree";
VALUE SEX_SOURCEA_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SEX_SOURCEB_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SEX_SOURCEC_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SEX_SOURCED_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SEX_SOURCEE_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SEX_SOURCEF_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SEX_SOURCEG_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SEX_STITST_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Never"
 	1= "Rarely"
 	2= "Sometimes"
 	3= "Usually"
 	4= "Always";
VALUE SEX_TELHLTH_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SEX_TLKDR_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SEX_TRUST_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SEX_URGCLIN_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
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
VALUE TEL_CELL_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE TEL_HHCEL_	-9= "Don't know"
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
VALUE USBORN2_	0= "No"
 	1= "Yes";
VALUE VETERAN_	0= "Not a veteran"
 	1= "Veteran";
run;

data &dsn.;
infile "&folderpath./&filename" dlm="," missover firstobs =2 DSD;
LENGTH HIS_GENERAL  8
CHR_HYPEV  8
CHR_CHLEV  8
CHR_CHLEV_R  8
CHR_HRTEV  8
CHR_STREV  8
CHR_CANEV  8
CHR_ASEV  8
CHR_ASTILL  8
CHR_AS12M  8
GEN_RHRTEV  8
GEN_RSTREV  8
CHR_RCANEV  8
DIS_GLASS  8
DIS_DIFSEE  8
DIS_AID  8
DIS_DIFHEAR  8
DIS_DIFWLK  8
DIS_DIFCOM  8
DIS_DIFREM  8
DIS_DIFCARE  8
DISABILITY  8
SOC_ERRANDS  8
SOC_PARACTIV  8
SOC_PARACTIV_R  8
SOC_SCWRKLIM  8
SOCWRKLMT  8
ACC_HTHLAST  8
ACC_HTHUSUAL  8
ACC_HTHTYPE  8
ACC_URGENT_R  8
ACC_HOSP_R  8
ACC_HOSP12M  8
HCA_DLYCOST  8
HCA_DNTCOST  8
CIG_SMKEV  8
CIG_SMKNOW  8
CIG_ECIGEV  8
CIG_ECIGNOW  8
FHH_HISTIMP  8
FHH_MOM  8
FHH_FATH  8
FHH_MATGP  8
FHH_PATGP  8
FHH_COLLECT  8
FHH_OTHER  8
FHH_HCP  8
FHH_DIFCOL  8
FHH_KNWCOL  8
FHH_ORG  8
FHH_NOCONT  8
FHH_UNCOMF  8
FHH_DIFOTHER  8
GEN_CANTST  8
GEN_HRTTST  8
GEN_CANKNW  8
GEN_HRTKNW  8
GEN_CANINT  8
GEN_HRTINT  8
GEN_SHRSLT1  8
GEN_KNWDIFF1  8
GEN_KNWCHG1  8
GEN_DRREC1  8
GEN_SHRSLT2  8
GEN_KNWDIFF2  8
GEN_KNWCHG2  8
GEN_DRREC2  8
GEN_STRESS  8
GEN_NOHELP  8
GEN_NOREC  8
GEN_KEEP  8
GEN_MISUSE  8
GEN_COST  8
EMP_EMPLOY  8
EMP_ABSENTWK  8
EMP_WHYNOWRK  8
EMPWRKLSWK  8
EMP_LOOK  8
EMP_NUMJOB_R  8
EMP_ALLHRS_R  8
EMP_HRSMAIN_R  8
EMP_HRSMORE  8
EMP_TYPE  8
EMP_TAX  8
EMP_PDLEAVE  8
EMP_UPLEAVE  8
EMP_WHENWRK  8
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
EMP_INSEMP  8
EMP_INSFAM  8
EMP_OFFER  8
FSC_WORRY  8
FSC_NOTLAST  8
FSC_AFFORD  8
FSC_SKIP  8
FSC_EATLESS  8
FSC_NOTEAT  8
FSC_LOSEWT  8
FSC_NOEATDAY  8
FSSTATD  8
CIV_VOL12M  8
CIV_VOLOTH  8
CIV_MEET  8
CIV_VOTELOCL  8
CIVIC_ENGAGE  8
LAN_OTHERLAN  8
LAN_MEDIA  8
LAN_DOCTOR  8
LAN_SOCIAL  8
INT_ACCESS  8
INT_HOMEACC  8
INT_USEMED  8
INT_USEDOC  8
INT_USETEST  8
TEL_NONCELL  8
TEL_CELL  8
TEL_HHCEL  8
SEX_REL  8
SEX_FUL  8
SEX_GETOUT  8
SEX_LIKE  8
SEX_BNDRS  8
SEX_FEEL  8
SEX_COMFTLK  8
SEX_HURTPTR  8
SEX_HONEST  8
SEX_DESCFEEL1  8
SEX_PUNDSTD  8
SEX_HLTSVS  8
SEX_DR  8
SEX_CLINIC  8
SEX_HOSP  8
SEX_URGCLIN  8
SEX_TELHLTH  8
SEX_TLKDR  8
SEX_JUDGE  8
SEX_TRUST  8
SEX_DESCFEEL2  8
SEX_HCPUST  8
SEX_SOURCEA  8
SEX_SOURCEB  8
SEX_SOURCEC  8
SEX_SOURCED  8
SEX_SOURCEE  8
SEX_SOURCEF  8
SEX_SOURCEG  8
SEX_RELST  8
SEX_RELST2A  8
SEX_RELST2B  8
SEX_RELST2C  8
SEX_RELST3A  8
SEX_RELST3B  8
SEX_RELST3C  8
SEX_HADSEXA  8
SEX_HADSEXB  8
SEX_HADSEXC  8
SEX_HADSEXD  8
SEX_NEWPTR  8
SEX_DISCA  8
SEX_DISCB  8
SEX_DISCC  8
SEX_DISCD  8
SEX_DISCE  8
SEX_DISCF  8
SEX_CONDOM  8
SEX_BC  8
SEX_HIVPREP  8
SEX_HIVTST  8
SEX_STITST  8
MAR_MARITAL  8
MAR_EVMARRY  8
MAR_LEGAL  8
MAR_WIDIVSEP  8
MARSTAT  8
LEGMSTAT  8
MARITAL  8
START_DATE_R $5
END_DATE_R $5
ID_R  8
SOURCE  8
QUEX_LANG  8
P_OUTCOME  8
P_HHSIZE_R  8
P_AGE5YRS_R  8
P_GENDER  8
P_EDUCATION_I_R  8
P_EDUCATION_I_R_IFLG  8
P_ONEVISIT  8
P_REMIND  8
P_CATIATT  8
P_DEVICE  8
P_MODE  8
P_VISIT  8
P_POVERTY4_R  8
P_REGION  8
P_HOMEOWN_R  8
P_CITIZEN  8
P_VETERAN  8
P_USBORN  8
P_RACE_R  8
P_GENDERID  8
P_ORIENT  8
P_METRO_R  8
P_METRO_R_IFLG  8
P1_CALWT  8
P2_CALWT  8
WEIGHT  8
P_STRATA_R  8
P_PSU_R  8;
INPUT HIS_GENERAL
CHR_HYPEV
CHR_CHLEV
CHR_CHLEV_R
CHR_HRTEV
CHR_STREV
CHR_CANEV
CHR_ASEV
CHR_ASTILL
CHR_AS12M
GEN_RHRTEV
GEN_RSTREV
CHR_RCANEV
DIS_GLASS
DIS_DIFSEE
DIS_AID
DIS_DIFHEAR
DIS_DIFWLK
DIS_DIFCOM
DIS_DIFREM
DIS_DIFCARE
DISABILITY
SOC_ERRANDS
SOC_PARACTIV
SOC_PARACTIV_R
SOC_SCWRKLIM
SOCWRKLMT
ACC_HTHLAST
ACC_HTHUSUAL
ACC_HTHTYPE
ACC_URGENT_R
ACC_HOSP_R
ACC_HOSP12M
HCA_DLYCOST
HCA_DNTCOST
CIG_SMKEV
CIG_SMKNOW
CIG_ECIGEV
CIG_ECIGNOW
FHH_HISTIMP
FHH_MOM
FHH_FATH
FHH_MATGP
FHH_PATGP
FHH_COLLECT
FHH_OTHER
FHH_HCP
FHH_DIFCOL
FHH_KNWCOL
FHH_ORG
FHH_NOCONT
FHH_UNCOMF
FHH_DIFOTHER
GEN_CANTST
GEN_HRTTST
GEN_CANKNW
GEN_HRTKNW
GEN_CANINT
GEN_HRTINT
GEN_SHRSLT1
GEN_KNWDIFF1
GEN_KNWCHG1
GEN_DRREC1
GEN_SHRSLT2
GEN_KNWDIFF2
GEN_KNWCHG2
GEN_DRREC2
GEN_STRESS
GEN_NOHELP
GEN_NOREC
GEN_KEEP
GEN_MISUSE
GEN_COST
EMP_EMPLOY
EMP_ABSENTWK
EMP_WHYNOWRK
EMPWRKLSWK
EMP_LOOK
EMP_NUMJOB_R
EMP_ALLHRS_R
EMP_HRSMAIN_R
EMP_HRSMORE
EMP_TYPE
EMP_TAX
EMP_PDLEAVE
EMP_UPLEAVE
EMP_WHENWRK
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
EMP_INSEMP
EMP_INSFAM
EMP_OFFER
FSC_WORRY
FSC_NOTLAST
FSC_AFFORD
FSC_SKIP
FSC_EATLESS
FSC_NOTEAT
FSC_LOSEWT
FSC_NOEATDAY
FSSTATD
CIV_VOL12M
CIV_VOLOTH
CIV_MEET
CIV_VOTELOCL
CIVIC_ENGAGE
LAN_OTHERLAN
LAN_MEDIA
LAN_DOCTOR
LAN_SOCIAL
INT_ACCESS
INT_HOMEACC
INT_USEMED
INT_USEDOC
INT_USETEST
TEL_NONCELL
TEL_CELL
TEL_HHCEL
SEX_REL
SEX_FUL
SEX_GETOUT
SEX_LIKE
SEX_BNDRS
SEX_FEEL
SEX_COMFTLK
SEX_HURTPTR
SEX_HONEST
SEX_DESCFEEL1
SEX_PUNDSTD
SEX_HLTSVS
SEX_DR
SEX_CLINIC
SEX_HOSP
SEX_URGCLIN
SEX_TELHLTH
SEX_TLKDR
SEX_JUDGE
SEX_TRUST
SEX_DESCFEEL2
SEX_HCPUST
SEX_SOURCEA
SEX_SOURCEB
SEX_SOURCEC
SEX_SOURCED
SEX_SOURCEE
SEX_SOURCEF
SEX_SOURCEG
SEX_RELST
SEX_RELST2A
SEX_RELST2B
SEX_RELST2C
SEX_RELST3A
SEX_RELST3B
SEX_RELST3C
SEX_HADSEXA
SEX_HADSEXB
SEX_HADSEXC
SEX_HADSEXD
SEX_NEWPTR
SEX_DISCA
SEX_DISCB
SEX_DISCC
SEX_DISCD
SEX_DISCE
SEX_DISCF
SEX_CONDOM
SEX_BC
SEX_HIVPREP
SEX_HIVTST
SEX_STITST
MAR_MARITAL
MAR_EVMARRY
MAR_LEGAL
MAR_WIDIVSEP
MARSTAT
LEGMSTAT
MARITAL
START_DATE_R $
END_DATE_R $
ID_R
SOURCE
QUEX_LANG
P_OUTCOME
P_HHSIZE_R
P_AGE5YRS_R
P_GENDER
P_EDUCATION_I_R
P_EDUCATION_I_R_IFLG
P_ONEVISIT
P_REMIND
P_CATIATT
P_DEVICE
P_MODE
P_VISIT
P_POVERTY4_R
P_REGION
P_HOMEOWN_R
P_CITIZEN
P_VETERAN
P_USBORN
P_RACE_R
P_GENDERID
P_ORIENT
P_METRO_R
P_METRO_R_IFLG
P1_CALWT
P2_CALWT
WEIGHT
P_STRATA_R
P_PSU_R  ;
FORMAT HIS_GENERAL                      HIS_GENERAL_.
CHR_HYPEV                        CHR_HYPEV_.
CHR_CHLEV                        CHR_CHLEV_.
CHR_CHLEV_R                      CHR_CHLEV_R_.
CHR_HRTEV                        CHR_HRTEV_.
CHR_STREV                        CHR_STREV_.
CHR_CANEV                        CHR_CANEV_.
CHR_ASEV                         CHR_ASEV_.
CHR_ASTILL                       CHR_ASTILL_.
CHR_AS12M                        CHR_AS12M_.
GEN_RHRTEV                       GEN_RHRTEV_.
GEN_RSTREV                       GEN_RSTREV_.
CHR_RCANEV                       CHR_RCANEV_.
DIS_GLASS                        DIS_GLASS_.
DIS_DIFSEE                       DIS_DIFSEE_.
DIS_AID                          DIS_AID_.
DIS_DIFHEAR                      DIS_DIFHEAR_.
DIS_DIFWLK                       DIS_DIFWLK_.
DIS_DIFCOM                       DIS_DIFCOM_.
DIS_DIFREM                       DIS_DIFREM_.
DIS_DIFCARE                      DIS_DIFCARE_.
DISABILITY                       DISABILITY_.
SOC_ERRANDS                      SOC_ERRANDS_.
SOC_PARACTIV                     SOC_PARACTIV_.
SOC_PARACTIV_R                   SOC_PARACTIV_R_.
SOC_SCWRKLIM                     SOC_SCWRKLIM_.
SOCWRKLMT                        SOCWRKLMT_.
ACC_HTHLAST                      ACC_HTHLAST_.
ACC_HTHUSUAL                     ACC_HTHUSUAL_.
ACC_HTHTYPE                      ACC_HTHTYPE_.
ACC_URGENT_R                     ACC_URGENT_R_.
ACC_HOSP_R                       ACC_HOSP_R_.
ACC_HOSP12M                      ACC_HOSP12M_.
HCA_DLYCOST                      HCA_DLYCOST_.
HCA_DNTCOST                      HCA_DNTCOST_.
CIG_SMKEV                        CIG_SMKEV_.
CIG_SMKNOW                       CIG_SMKNOW_.
CIG_ECIGEV                       CIG_ECIGEV_.
CIG_ECIGNOW                      CIG_ECIGNOW_.
FHH_HISTIMP                      FHH_HISTIMP_.
FHH_MOM                          FHH_MOM_.
FHH_FATH                         FHH_FATH_.
FHH_MATGP                        FHH_MATGP_.
FHH_PATGP                        FHH_PATGP_.
FHH_COLLECT                      FHH_COLLECT_.
FHH_OTHER                        FHH_OTHER_.
FHH_HCP                          FHH_HCP_.
FHH_DIFCOL                       FHH_DIFCOL_.
FHH_KNWCOL                       FHH_KNWCOL_.
FHH_ORG                          FHH_ORG_.
FHH_NOCONT                       FHH_NOCONT_.
FHH_UNCOMF                       FHH_UNCOMF_.
FHH_DIFOTHER                     FHH_DIFOTHER_.
GEN_CANTST                       GEN_CANTST_.
GEN_HRTTST                       GEN_HRTTST_.
GEN_CANKNW                       GEN_CANKNW_.
GEN_HRTKNW                       GEN_HRTKNW_.
GEN_CANINT                       GEN_CANINT_.
GEN_HRTINT                       GEN_HRTINT_.
GEN_SHRSLT1                      GEN_SHRSLT1_.
GEN_KNWDIFF1                     GEN_KNWDIFF1_.
GEN_KNWCHG1                      GEN_KNWCHG1_.
GEN_DRREC1                       GEN_DRREC1_.
GEN_SHRSLT2                      GEN_SHRSLT2_.
GEN_KNWDIFF2                     GEN_KNWDIFF2_.
GEN_KNWCHG2                      GEN_KNWCHG2_.
GEN_DRREC2                       GEN_DRREC2_.
GEN_STRESS                       GEN_STRESS_.
GEN_NOHELP                       GEN_NOHELP_.
GEN_NOREC                        GEN_NOREC_.
GEN_KEEP                         GEN_KEEP_.
GEN_MISUSE                       GEN_MISUSE_.
GEN_COST                         GEN_COST_.
EMP_EMPLOY                       EMP_EMPLOY_.
EMP_ABSENTWK                     EMP_ABSENTWK_.
EMP_WHYNOWRK                     EMP_WHYNOWRK_.
EMPWRKLSWK                       EMPWRKLSWK_.
EMP_LOOK                         EMP_LOOK_.
EMP_NUMJOB_R                     EMP_NUMJOB_R_.
EMP_ALLHRS_R                     EMP_HRS_.
EMP_HRSMAIN_R                    EMP_HRS_.
EMP_HRSMORE                      EMP_HRSMORE_.
EMP_TYPE                         EMP_TYPE_.
EMP_TAX                          EMP_TAX_.
EMP_PDLEAVE                      EMP_PDLEAVE_.
EMP_UPLEAVE                      EMP_UPLEAVE_.
EMP_WHENWRK                      EMP_WHENWRK_.
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
EMP_INSEMP                       EMP_INSEMP_.
EMP_INSFAM                       EMP_INSFAM_.
EMP_OFFER                        EMP_OFFER_.
FSC_WORRY                        FSC_WORRY_.
FSC_NOTLAST                      FSC_NOTLAST_.
FSC_AFFORD                       FSC_AFFORD_.
FSC_SKIP                         FSC_SKIP_.
FSC_EATLESS                      FSC_EATLESS_.
FSC_NOTEAT                       FSC_NOTEAT_.
FSC_LOSEWT                       FSC_LOSEWT_.
FSC_NOEATDAY                     FSC_NOEATDAY_.
FSSTATD                          FSSTATD_.
CIV_VOL12M                       CIV_VOL12M_.
CIV_VOLOTH                       CIV_VOLOTH_.
CIV_MEET                         CIV_MEET_.
CIV_VOTELOCL                     CIV_VOTELOCL_.
CIVIC_ENGAGE                     CIVIC_ENGAGE_.
LAN_OTHERLAN                     LAN_OTHERLAN_.
LAN_MEDIA                        LAN_MEDIA_.
LAN_DOCTOR                       LAN_DOCTOR_.
LAN_SOCIAL                       LAN_SOCIAL_.
INT_ACCESS                       INT_ACCESS_.
INT_HOMEACC                      INT_HOMEACC_.
INT_USEMED                       INT_USEMED_.
INT_USEDOC                       INT_USEDOC_.
INT_USETEST                      INT_USETEST_.
TEL_NONCELL                      TEL_NONCELL_.
TEL_CELL                         TEL_CELL_.
TEL_HHCEL                        TEL_HHCEL_.
SEX_REL                          SEX_REL_.
SEX_FUL                          SEX_FUL_.
SEX_GETOUT                       SEX_GETOUT_.
SEX_LIKE                         SEX_LIKE_.
SEX_BNDRS                        SEX_BNDRS_.
SEX_FEEL                         SEX_FEEL_.
SEX_COMFTLK                      SEX_COMFTLK_.
SEX_HURTPTR                      SEX_HURTPTR_.
SEX_HONEST                       SEX_HONEST_.
SEX_DESCFEEL1                    SEX_DESCFEEL1_.
SEX_PUNDSTD                      SEX_PUNDSTD_.
SEX_HLTSVS                       SEX_HLTSVS_.
SEX_DR                           SEX_DR_.
SEX_CLINIC                       SEX_CLINIC_.
SEX_HOSP                         SEX_HOSP_.
SEX_URGCLIN                      SEX_URGCLIN_.
SEX_TELHLTH                      SEX_TELHLTH_.
SEX_TLKDR                        SEX_TLKDR_.
SEX_JUDGE                        SEX_JUDGE_.
SEX_TRUST                        SEX_TRUST_.
SEX_DESCFEEL2                    SEX_DESCFEEL2_.
SEX_HCPUST                       SEX_HCPUST_.
SEX_SOURCEA                      SEX_SOURCEA_.
SEX_SOURCEB                      SEX_SOURCEB_.
SEX_SOURCEC                      SEX_SOURCEC_.
SEX_SOURCED                      SEX_SOURCED_.
SEX_SOURCEE                      SEX_SOURCEE_.
SEX_SOURCEF                      SEX_SOURCEF_.
SEX_SOURCEG                      SEX_SOURCEG_.
SEX_RELST                        SEX_RELST_.
SEX_RELST2A                      SEX_RELST2A_.
SEX_RELST2B                      SEX_RELST2B_.
SEX_RELST2C                      SEX_RELST2C_.
SEX_RELST3A                      SEX_RELST3A_.
SEX_RELST3B                      SEX_RELST3B_.
SEX_RELST3C                      SEX_RELST3C_.
SEX_HADSEXA                      SEX_HADSEXA_.
SEX_HADSEXB                      SEX_HADSEXB_.
SEX_HADSEXC                      SEX_HADSEXC_.
SEX_HADSEXD                      SEX_HADSEXD_.
SEX_NEWPTR                       SEX_NEWPTR_.
SEX_DISCA                        SEX_DISCA_.
SEX_DISCB                        SEX_DISCB_.
SEX_DISCC                        SEX_DISCC_.
SEX_DISCD                        SEX_DISCD_.
SEX_DISCE                        SEX_DISCE_.
SEX_DISCF                        SEX_DISCF_.
SEX_CONDOM                       SEX_CONDOM_.
SEX_BC                           SEX_BC_.
SEX_HIVPREP                      SEX_HIVPREP_.
SEX_HIVTST                       SEX_HIVTST_.
SEX_STITST                       SEX_STITST_.
MAR_MARITAL                      MAR_MARITAL_.
MAR_EVMARRY                      MAR_EVMARRY_.
MAR_LEGAL                        MAR_LEGAL_.
MAR_WIDIVSEP                     MAR_WIDIVSEP_.
MARSTAT                          MARSTAT_.
LEGMSTAT                         LEGMSTAT_.
MARITAL                          MARITAL_.
SOURCE                           SOURCE_.
QUEX_LANG                        QUEX_LANG_.
P_OUTCOME                        OUTCOME_.
P_HHSIZE_R                       HHSIZE_.
P_AGE5YRS_R                      P_AGE5YRS_R_.
P_GENDER                         SEX_.
P_EDUCATION_I_R                  P_EDUCATION_I_R_.
P_EDUCATION_I_R_IFLG             IFLG_.
P_ONEVISIT                       ONEVISIT_.
P_DEVICE                         DEVICE_.
P_MODE                           MODE2_.
P_POVERTY4_R                     P_POVERTY4_R_.
P_REGION                         REGION_.
P_HOMEOWN_R                      P_HOMEOWN_R_.
P_CITIZEN                        CITIZEN2_.
P_VETERAN                        VETERAN_.
P_USBORN                         USBORN2_.
P_RACE_R                         P_RACE_R_.
P_GENDERID                       P_GENDERID_.
P_ORIENT                         P_ORIENT_.
P_METRO_R                        CAL_METRO_.
P_METRO_R_IFLG                   IFLG_.;
LABEL HIS_GENERAL = "Self-reported health status"
CHR_HYPEV = "Ever been told you had hypertension"
CHR_CHLEV = "Ever told you had high cholesterol"
CHR_CHLEV_R = "RECODE: Ever diagnosed high cholesterol"
CHR_HRTEV = "Ever told you had a heart attack"
CHR_STREV = "Ever told you had a stroke"
CHR_CANEV = "Ever been told you had cancer"
CHR_ASEV = "Ever been told you had asthma"
CHR_ASTILL = "Still have asthma"
CHR_AS12M = "Past 12 months, asthma attack"
GEN_RHRTEV = "Have your biological relatives ever had: Heart attack"
GEN_RSTREV = "Have your biological relatives ever had: Stroke"
CHR_RCANEV = "Have your biological relatives ever had: Cancer"
DIS_GLASS = "Wear glasses or contacts"
DIS_DIFSEE = "Difficulty seeing (even wearing glasses)"
DIS_AID = "Use a hearing aid"
DIS_DIFHEAR = "Difficulty hearing (even using hearing aid)"
DIS_DIFWLK = "Difficulty walking or climbing steps"
DIS_DIFCOM = "Difficulty communicating"
DIS_DIFREM = "Difficulty remembering or concentrating"
DIS_DIFCARE = "Difficulty with self-care"
DISABILITY = "Washington Group short set composite disability indicator"
SOC_ERRANDS = "Difficulty doing errands alone"
SOC_PARACTIV = "Difficulty participating in social activities"
SOC_PARACTIV_R = "RECODE: Difficulty participating in social activities due to physical, mental, or emotional condition"
SOC_SCWRKLIM = "Work limited due to health problem"
SOCWRKLMT = "Any social/work limitation"
ACC_HTHLAST = "Time since last saw doctor about your health"
ACC_HTHUSUAL = "Have a usual place to go for care"
ACC_HTHTYPE = "Type of place for usual care"
ACC_URGENT_R = "DERIVED: Number of urgent care or store clinic visits, past 12 months"
ACC_HOSP_R = "DERIVED: Number of hospital emergency room visits, past 12 months"
ACC_HOSP12M = "Past 12 months, hospitalized overnight"
HCA_DLYCOST = "Past 12 months, delayed medical care due to cost"
HCA_DNTCOST = "Past 12 months, did not get medical care due to cost"
CIG_SMKEV = "Ever smoked 100 cigarettes in entire life"
CIG_SMKNOW = "How often now smoke cigarettes"
CIG_ECIGEV = "Ever used an e-cigarette even once in entire life"
CIG_ECIGNOW = "How often now use e-cigarette"
FHH_HISTIMP = "How important knowing family health history to own health"
FHH_MOM = "How much health history known about: Mother"
FHH_FATH = "How much health history known about: Father"
FHH_MATGP = "How much health history known about: Maternal grandparents"
FHH_PATGP = "How much health history known about: Paternal grandparents"
FHH_COLLECT = "Ever collected family health history"
FHH_OTHER = "Ever shared family health history with other relatives"
FHH_HCP = "Ever shared family health history with healthcare provider"
FHH_DIFCOL = "How difficult to collect family health history"
FHH_KNWCOL = "Reason difficult to collect: Do not know what information to collect"
FHH_ORG = "Reason difficult to collect: Hard to organize or store"
FHH_NOCONT = "Reason difficult to collect: No contact or no longer alive"
FHH_UNCOMF = "Reason difficult to collect: Uncomfortable asking"
FHH_DIFOTHER = "Reason difficult to collect: Some other reason"
GEN_CANTST = "Had genetic testing to determine: Cancer risk"
GEN_HRTTST = "Had genetic testing to determine: Heart disease risk"
GEN_CANKNW = "Knew genetic testing can determine: Cancer risk"
GEN_HRTKNW = "Knew genetic testing can determine: Heart disease risk"
GEN_CANINT = "Knew genetic testing can determine: Cancer risk"
GEN_HRTINT = "Interested in genetic testing: Heart disease risk"
GEN_SHRSLT1 = "Why have genetic testing: Share with relatives"
GEN_KNWDIFF1 = "Why have genetic testing: Would make difference in healthcare decisions"
GEN_KNWCHG1 = "Why have genetic testing: Would encourage change in habits"
GEN_DRREC1 = "Why have genetic testing: Doctor recommended"
GEN_SHRSLT2 = "Why interested in genetic testing: Share with relatives"
GEN_KNWDIFF2 = "Why interested in genetic testing: Would make difference in healthcare decisions"
GEN_KNWCHG2 = "Why interested in genetic testing: Would encourage change in habits"
GEN_DRREC2 = "Why interested in genetic testing: Doctor recommended"
GEN_STRESS = "Why not interested in genetic testing: Would cause stress"
GEN_NOHELP = "Why not interested in genetic testing: Do not think knowing would be helpful"
GEN_NOREC = "Why not interested in genetic testing: Doctor does not recommend"
GEN_KEEP = "Why not interested in genetic testing: Could impact keeping job or insurance"
GEN_MISUSE = "Why not interested in genetic testing: Could be misused or shared without permission"
GEN_COST = "Why not interested in genetic testing: Cost"
EMP_EMPLOY = "Last week worked for pay at job or business"
EMP_ABSENTWK = "Had a job/business last week but temporarily absent"
EMP_WHYNOWRK = "Main reason not working for pay last week"
EMPWRKLSWK = "DERIVED: Worked last week"
EMP_LOOK = "Actively looking for work"
EMP_NUMJOB_R = "RECODE: Number of jobs currently work"
EMP_ALLHRS_R = "RECODE: Number of hours currently work: All jobs"
EMP_HRSMAIN_R = "RECODE: Number of hours currently work: Main job"
EMP_HRSMORE = "At main job, would like to work how many hours"
EMP_TYPE = "Employment type"
EMP_TAX = "At main job, taxes are deducted"
EMP_PDLEAVE = "At main job, receive paid leave"
EMP_UPLEAVE = "At main job, allowed unpaid leave"
EMP_WHENWRK = "Last time worked"
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
EMP_INSEMP = "Insurance through own employer or union"
EMP_INSFAM = "Insurance through family member employer or union"
EMP_OFFER = "Employer or union offer health insurance"
FSC_WORRY = "Worried food would run out before got money to buy more"
FSC_NOTLAST = "Food bought did not last, no money to buy more"
FSC_AFFORD = "Couldn't afford to eat balanced meals"
FSC_SKIP = "Last 30 days, cut meal size or skipped meals"
FSC_EATLESS = "Last 30 days, ate less than felt should"
FSC_NOTEAT = "Last 30 days, hungry but didn't eat"
FSC_LOSEWT = "Last 30 days, lost weight because not enough food"
FSC_NOEATDAY = "Last 30 days, didn't eat for a whole day"
FSSTATD = "Food Security Scale 4 category recode"
CIV_VOL12M = "Past 12 months, volunteer activities"
CIV_VOLOTH = "Past 12 months, activities at schools or youth organizations"
CIV_MEET = "Past 12 months, attend local public meetings"
CIV_VOTELOCL = "Vote in last local elections"
CIVIC_ENGAGE = "RECODE: Civic engagement including volunteering"
LAN_OTHERLAN = "Speak language other than English at home"
LAN_MEDIA = "What language use most often when watching television, read news, listen to radio"
LAN_DOCTOR = "What language use most often when seeing a doctor"
LAN_SOCIAL = "What language use most often when participate in social activities"
INT_ACCESS = "Access to internet"
INT_HOMEACC = "Access to internet from home"
INT_USEMED = "Past 12 months, use internet to look for health or medical information"
INT_USEDOC = "Past 12 months, use internet to communicate with doctor/doctor's office"
INT_USETEST = "Past 12 months, use internet to look up medical test results"
TEL_NONCELL = "At least one telephone inside home, not cell phone"
TEL_CELL = "Have a working cell phone"
TEL_HHCEL = "Live with anyone with a working cell phone"
SEX_REL = "Sexual relationship: Safe and supportive"
SEX_FUL = "Sexual relationship: Fulfilling"
SEX_GETOUT = "Sexual relationship how often: Talk about thoughts and feelings"
SEX_LIKE = "Sexual relationship how often: Talk about likes and dislikes sexually"
SEX_BNDRS = "Sexual relationship how often: Talk about sexual boundaries"
SEX_FEEL = "Sexual relationship how often: Talk about feelings about certain sexual situations made you both feel"
SEX_COMFTLK = "Comfortable talking to partner about sexual health"
SEX_HURTPTR = "Ever hesitated talking about sexual health: To avoid offending/hurting feelings"
SEX_HONEST = "Ever hesitated talking about sexual health: Do not trust partner to be honest"
SEX_DESCFEEL1 = "Ever hesitated talking about sexual health: Do not know how to describe feelings"
SEX_PUNDSTD = "Ever hesitated talking about sexual health: Do not think partner will understand"
SEX_HLTSVS = "Past 12 months, received sexual health services"
SEX_DR = "Received sexual health services: Doctor's office"
SEX_CLINIC = "Received sexual health services: Community or public health clinic"
SEX_HOSP = "Received sexual health services: Hospital"
SEX_URGCLIN = "Received sexual health services: Urgent care or store clinic"
SEX_TELHLTH = "Received sexual health services: Telehealth"
SEX_TLKDR = "Sexual health providers: Comfortable talking about sexual health"
SEX_JUDGE = "Ever hesitant to talk with health providers because: Fear will judge"
SEX_TRUST = "Ever hesitant to talk with health providers because: Do not trust"
SEX_DESCFEEL2 = "Ever hesitant to talk with health providers because: Do not know how to describe feelings"
SEX_HCPUST = "Ever hesitant to talk with health providers because: Do not think will understand"
SEX_SOURCEA = "Sexual health information source: Family"
SEX_SOURCEB = "Sexual health information source: Partner"
SEX_SOURCEC = "Sexual health information source: Peers or friends"
SEX_SOURCED = "Sexual health information source: Therapist"
SEX_SOURCEE = "Sexual health information source: Doctor or healthcare provider"
SEX_SOURCEF = "Sexual health information source: Internet or social media"
SEX_SOURCEG = "Sexual health information source: Other"
SEX_RELST = "Currently in sexual relationship"
SEX_RELST2A = "Casual sexual relationship, one person"
SEX_RELST2B = "Committed sexual relationship, one person"
SEX_RELST2C = "Open sexual relationship, one person"
SEX_RELST3A = "Casual sexual relationship, more than one person"
SEX_RELST3B = "Committed sexual relationship, more than one person"
SEX_RELST3C = "Open sexual relationship, more than one person"
SEX_HADSEXA = "Past 12 months, had sex with man"
SEX_HADSEXB = "Past 12 months, had sex with woman"
SEX_HADSEXC = "Past 12 months, had sex with someone nonbinary, genderqueer, transgender, or did not identify as only male or only female"
SEX_HADSEXD = "Past 12 months, did not have sex"
SEX_NEWPTR = "Past 12 months, sex with new partner"
SEX_DISCA = "Before sex with new partner, discussed using condoms"
SEX_DISCB = "Before sex with new partner, discussed hormonal birth control or IUDs"
SEX_DISCC = "Before sex with new partner, discussed HIV PrEP"
SEX_DISCD = "Before sex with new partner, discussed HIV testing"
SEX_DISCE = "Before sex with new partner, discussed STI testing"
SEX_DISCF = "Before sex with new partner, discussed none of these"
SEX_CONDOM = "Past 12 months, how often discussed condoms with new sex partners"
SEX_BC = "Past 12 months, how often discussed hormonal birth control or IUDs with new sex partners"
SEX_HIVPREP = "Past 12 months, how often discussed HIV PrEP with new sex partners"
SEX_HIVTST = "Past 12 months, how often discussed HIV testing with new sex partners"
SEX_STITST = "Past 12 months, how often discussed STI testing with new sex partners"
MAR_MARITAL = "Now married, living with a partner, or neither"
MAR_EVMARRY = "Ever been married"
MAR_LEGAL = "Current legal marital status"
MAR_WIDIVSEP = "Widowed, divorced, or separated"
MARSTAT = "DERIVED: Current marital status"
LEGMSTAT = "DERIVED: Legal marital status"
MARITAL = "RECODE: Current Marriage Status - 2 levels"
START_DATE_R = "Date the survey started"
END_DATE_R = "Date the survey was completed"
ID_R = "Respondent Survey ID"
SOURCE = "Paradata: Panel Provider"
QUEX_LANG = "Paradata: Language of interview"
P_OUTCOME = "Paradata: Outcome code"
P_HHSIZE_R = "Panel Profile: Numeric household size, capped at 6+"
P_AGE5YRS_R = "DERIVED: Age - 12 levels"
P_GENDER = "Panel Profile: Respondent gender"
P_EDUCATION_I_R = "Panel Profile: Education - 3 levels"
P_EDUCATION_I_R_IFLG = "Imputation flag for panel profile variable: <P_EDUCATION_I>"
P_ONEVISIT = "Paradata: Whether the survey was completed in a single session"
P_REMIND = "Paradata: Number of reminders sent"
P_CATIATT = "Paradata: Number of contact attempts (phone)"
P_DEVICE = "Paradata: Device used to complete survey (web only)"
P_MODE = "Paradata: Mode of interview"
P_VISIT = "Paradata: Number of times the questionnaire was accessed/login attempts (web)"
P_POVERTY4_R = "Panel Profile: Poverty Status (ratio of household income to the federal poverty level) - 4 levels"
P_REGION = "Panel Profile: 4-level region"
P_HOMEOWN_R = "DERIVED: Home ownership - 2 levels"
P_CITIZEN = "Panel Profile: Are you a US citizen?"
P_VETERAN = "Panel Profile: Have you ever served on active duty in the U.S. Armed Forces, military Reserves, or National Guard?"
P_USBORN = "Panel Profile: Is respondent US born?"
P_RACE_R = "Panel Profile: Single and multiple race/ethnicity groups (all adults)"
P_GENDERID = "Panel Profile: Gender identity 4 Levels"
P_ORIENT = "Panel Profile: Sexual Orientation"
P_METRO_R = "NCHS 2013 Urban/Rural code"
P_METRO_R_IFLG = "Imputation flag for profile variable: <P_METRO_R>"
P1_CALWT = "Panel provider 1 weight calibrated to NHIS control totals"
P2_CALWT = "Panel provider 2 weight calibrated to NHIS control totals"
WEIGHT = "Final combined weight calibrated to NHIS control totals"
P_STRATA_R = "Panel Sample Strata"
P_PSU_R = "Panel PSU";
run;

