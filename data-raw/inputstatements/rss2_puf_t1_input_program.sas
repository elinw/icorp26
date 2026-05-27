
/*
RSS PUF Input Program: This program imports RSS CSV file into SAS working directory as a SAS dataset:
 - Loads formats to the working directory
 - Imports the RSS CSV data file as a SAS dataset
 - Applies labels and formats to the SAS dataset

 Before running this program, please download the CSV file or SAS dataset to a folder called 
 C:\RSS2 (on a machine running Windows).

 If importing the SAS dataset, please change the filename statement below, as well as replace 
 the data step below with: 
      data &dsn. ;
      	set in.&filename ;
      run ;

*/

%let folderpath = C:\RSS2; *folder location of CSV file;
%let filename = RSS2_PUF_T1.csv; *CSV file name to import into sas;
%let dsn = rss2; *SAS dataset name for output dataset;
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
VALUE ADHD_AGE_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "11 years old or younger"
 	2= "12-17 years old"
 	3= "18-24 years old"
 	4= "25-44 years old"
 	5= "45 years old or older";
VALUE ADHD_CNSEL3M_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE ADHD_COUNSEL_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE ADHD_DIAG_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Telehealth visits"
 	2= "In-person visits"
 	3= "Both telehealth and in-person visits";
VALUE ADHD_EVER_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE ADHD_FIRST_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE ADHD_INSPAY_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE ADHD_INS_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE ADHD_MEDDIFF_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE ADHD_MEDS_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE ADHD_NOW_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE ADHD_RX3M_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE ADHD_TELERX_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE ADHD_TELE_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE ADHD_TREAT_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE ADHD_WM_NA_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
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
VALUE CON_BCCHANGE_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CON_BCEC_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CON_BCIUD_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CON_BCNONE_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CON_BCOTHER_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CON_BCPILLS12M_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Did not try to obtain birth control pills in the last 12 months"
 	1= "More difficult"
 	2= "Less difficult"
 	3= "Stayed the same";
VALUE CON_BCPILL_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CON_BCSHOT_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CON_BCSTERIL_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CON_CHNGEWHYA_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CON_CHNGEWHYA_O_	-9= "Don't know"
 	-8= "Legitimate Skip"
 	-7= "Refused"
 	-6= "Skipped on web"
 	1= "Displayed 1st"
 	2= "Displayed 2nd"
 	3= "Displayed 3rd"
 	4= "Displayed 4th"
 	5= "Displayed 5th"
 	6= "Displayed 6th"
 	7= "Displayed 7th"
 	8= "Displayed 8th";
VALUE CON_CHNGEWHYB_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CON_CHNGEWHYB_O_	-9= "Don't know"
 	-8= "Legitimate Skip"
 	-7= "Refused"
 	-6= "Skipped on web"
 	1= "Displayed 1st"
 	2= "Displayed 2nd"
 	3= "Displayed 3rd"
 	4= "Displayed 4th"
 	5= "Displayed 5th"
 	6= "Displayed 6th"
 	7= "Displayed 7th"
 	8= "Displayed 8th";
VALUE CON_CHNGEWHYC_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CON_CHNGEWHYC_O_	-9= "Don't know"
 	-8= "Legitimate Skip"
 	-7= "Refused"
 	-6= "Skipped on web"
 	1= "Displayed 1st"
 	2= "Displayed 2nd"
 	3= "Displayed 3rd"
 	4= "Displayed 4th"
 	5= "Displayed 5th"
 	6= "Displayed 6th"
 	7= "Displayed 7th"
 	8= "Displayed 8th";
VALUE CON_CHNGEWHYD_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CON_CHNGEWHYD_O_	-9= "Don't know"
 	-8= "Legitimate Skip"
 	-7= "Refused"
 	-6= "Skipped on web"
 	1= "Displayed 1st"
 	2= "Displayed 2nd"
 	3= "Displayed 3rd"
 	4= "Displayed 4th"
 	5= "Displayed 5th"
 	6= "Displayed 6th"
 	7= "Displayed 7th"
 	8= "Displayed 8th";
VALUE CON_CHNGEWHYE_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CON_CHNGEWHYE_O_	-9= "Don't know"
 	-8= "Legitimate Skip"
 	-7= "Refused"
 	-6= "Skipped on web"
 	1= "Displayed 1st"
 	2= "Displayed 2nd"
 	3= "Displayed 3rd"
 	4= "Displayed 4th"
 	5= "Displayed 5th"
 	6= "Displayed 6th"
 	7= "Displayed 7th"
 	8= "Displayed 8th";
VALUE CON_CHNGEWHYF_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CON_CHNGEWHYF_O_	-9= "Don't know"
 	-8= "Legitimate Skip"
 	-7= "Refused"
 	-6= "Skipped on web"
 	1= "Displayed 1st"
 	2= "Displayed 2nd"
 	3= "Displayed 3rd"
 	4= "Displayed 4th"
 	5= "Displayed 5th"
 	6= "Displayed 6th"
 	7= "Displayed 7th"
 	8= "Displayed 8th";
VALUE CON_CHNGEWHYG_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CON_CHNGEWHYG_O_	-9= "Don't know"
 	-8= "Legitimate Skip"
 	-7= "Refused"
 	-6= "Skipped on web"
 	1= "Displayed 1st"
 	2= "Displayed 2nd"
 	3= "Displayed 3rd"
 	4= "Displayed 4th"
 	5= "Displayed 5th"
 	6= "Displayed 6th"
 	7= "Displayed 7th"
 	8= "Displayed 8th";
VALUE CON_CHNGEWHYH_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CON_CHNGEWHYH_O_	-9= "Don't know"
 	-8= "Legitimate Skip"
 	-7= "Refused"
 	-6= "Skipped on web"
 	1= "Displayed 1st"
 	2= "Displayed 2nd"
 	3= "Displayed 3rd"
 	4= "Displayed 4th"
 	5= "Displayed 5th"
 	6= "Displayed 6th"
 	7= "Displayed 7th"
 	8= "Displayed 8th";
VALUE CON_EMERG12M_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Did not try to obtain emergency contraception in the last 12 months"
 	1= "More difficult"
 	2= "Less difficult"
 	3= "Stayed the same";
VALUE CON_IUD12M_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Did not try to obtain an IUD or implant in the last 12 months"
 	1= "More difficult"
 	2= "Less difficult"
 	3= "Stayed the same";
VALUE CON_SEX12M_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CON_SHOTS12M_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Did not try to obtain birth control shots in the last 12 months"
 	1= "More difficult"
 	2= "Less difficult"
 	3= "Stayed the same";
VALUE CPN_LISTEN_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Never"
 	1= "Sometimes"
 	2= "Usually"
 	3= "Always";
VALUE CPN_MEDCARE_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	-4= "Lost or corrupted data"
 	0= "No"
 	1= "Yes";
VALUE CPN_OPINION_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Never"
 	1= "Sometimes"
 	2= "Usually"
 	3= "Always";
VALUE CPN_RESPECT_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Never"
 	1= "Sometimes"
 	2= "Usually"
 	3= "Always";
VALUE CPN_TRTDEC_	-9= "Don't know"
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
VALUE EMP_DAYMISS_	-9= "Don't know"
 	-8= "Legitimate Skip"
 	-7= "Refused"
 	-6= "Skipped on web";
VALUE EMP_EMPLOY_	-9= "Don't know"
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
 	1= "Within the past 12 months"
 	2= "1-5 years ago"
 	3= "Over 5 years ago"
 	4= "Never worked";
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
VALUE GAD2SCREEN_	-8= "Question not asked"
 	1= "Positive"
 	2= "Negative";
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
VALUE HHSIZE_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	1= "1"
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
VALUE HOMEOWN_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	1= "Owned or being bought by someone in your household"
 	2= "Rented"
 	3= "Occupied without payment of cash rent";
VALUE HPF_EVERFIT_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE HPF_EVERUSE_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes"
 	2= "I have never worked around loud noises";
VALUE HPF_IMPORTDK_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Not at all important"
 	2= "Somewhat important"
 	3= "Very important";
VALUE HPF_IMPORT_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Not at all important"
 	2= "Somewhat important"
 	3= "Very important";
VALUE HPF_KNOWFIT_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE HRD_BLAME_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Strongly agree"
 	2= "Somewhat agree"
 	3= "Somewhat disagree"
 	4= "Strongly disagree";
VALUE HRD_CARRYNAL_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE HRD_CONCERNA_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Not at all concerned"
 	2= "A little concerned"
 	3= "Somewhat concerned"
 	4= "Very concerned";
VALUE HRD_CONCERNB_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Not at all concerned"
 	2= "A little concerned"
 	3= "Somewhat concerned"
 	4= "Very concerned";
VALUE HRD_DKUSE_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE HRD_DKWHERE_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE HRD_DKWRK_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE HRD_GETNACOM_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE HRD_GETNADR_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE HRD_GETNAHD_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE HRD_GETNARX_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE HRD_JOBDRUG_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Strongly agree"
 	2= "Somewhat agree"
 	3= "Somewhat disagree"
 	4= "Strongly disagree";
VALUE HRD_NABUS_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE HRD_NACOL_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE HRD_NAELMMD_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE HRD_NAHS_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE HRD_NALIB_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE HRD_NALOTC_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE HRD_NALOXONE_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE HRD_NAWRSHP_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE HRD_ONLPILLS_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE HRD_RELDRUG_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Strongly agree"
 	2= "Somewhat agree"
 	3= "Somewhat disagree"
 	4= "Strongly disagree";
VALUE IFLG_	0= "No imputation"
 	1= "Logical assignment"
 	2= "Statistical imputation";
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
VALUE INCOME_I_R_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	1= "Less than $5,000"
 	2= "$5,000 to $9,999"
 	3= "$10,000 to $14,999"
 	4= "$15,000 to $19,999"
 	5= "$20,000 to $24,999"
 	6= "$25,000 to $29,999"
 	7= "$30,000 to $34,999"
 	8= "$35,000 to $39,999"
 	9= "$40,000 to $49,999"
 	10= "$50,000 to $59,999"
 	11= "$60,000 to $74,999"
 	12= "$75,000 to $84,999"
 	13= "$85,000 to $99,999"
 	14= "$100,000 to $124,999"
 	15= "$125,000 to $149,999"
 	16= "$150,000 or more";
VALUE INSUR2_	0= "Does not have health insurance"
 	1= "Has health insurance";
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
VALUE MODE2_	1= "Web"
 	2= "CATI";
VALUE MTH_PHQ41_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Not at all"
 	1= "Several days"
 	2= "More than half the days"
 	3= "Nearly every day";
VALUE MTH_PHQ42_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Not at all"
 	1= "Several days"
 	2= "More than half the days"
 	3= "Nearly every day";
VALUE MTH_PHQ43_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Not at all"
 	1= "Several days"
 	2= "More than half the days"
 	3= "Nearly every day";
VALUE MTH_PHQ44_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Not at all"
 	1= "Several days"
 	2= "More than half the days"
 	3= "Nearly every day";
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
VALUE ONL_GAMESCOM_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Strongly agree"
 	2= "Somewhat agree"
 	3= "Somewhat disagree"
 	4= "Strongly disagree";
VALUE ONL_GAMESISO_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Strongly agree"
 	2= "Somewhat agree"
 	3= "Somewhat disagree"
 	4= "Strongly disagree";
VALUE ONL_GAMES_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Never"
 	1= "Daily"
 	2= "Weekly"
 	3= "Monthly";
VALUE ONL_MSGBOARD_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Never"
 	1= "Daily"
 	2= "Weekly"
 	3= "Monthly";
VALUE ONL_MSGCOM_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Strongly agree"
 	2= "Somewhat agree"
 	3= "Somewhat disagree"
 	4= "Strongly disagree";
VALUE ONL_MSGISO_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Strongly agree"
 	2= "Somewhat agree"
 	3= "Somewhat disagree"
 	4= "Strongly disagree";
VALUE ONL_SOCCOM_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	-4= "Lost or corrupted data"
 	1= "Strongly agree"
 	2= "Somewhat agree"
 	3= "Somewhat disagree"
 	4= "Strongly disagree";
VALUE ONL_SOCISO_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Strongly agree"
 	2= "Somewhat agree"
 	3= "Somewhat disagree"
 	4= "Strongly disagree";
VALUE ONL_SOCMED_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Never"
 	1= "Daily"
 	2= "Weekly"
 	3= "Monthly";
VALUE OUTCOME_	1= "Never accessed the instrument"
 	2= "Accessed instrument but dropped off (did not reach last question of the survey)"
 	3= "Complete (reached last question)"
 	4= "Completed interview but case dropped due to quality concerns (e.g., speeding, excessive item nonresponse)";
VALUE PAI_AMNT_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "A little"
 	2= "A lot"
 	3= "Somewhere in between a little and a lot";
VALUE PAI_FREQ3M_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Never"
 	1= "Some days"
 	2= "Most days"
 	3= "Every day";
VALUE PAI_WKLM3M_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	-4= "Lost or corrupted data"
 	0= "Never"
 	1= "Some days"
 	2= "Most days"
 	3= "Every day";
VALUE PAY_BILL12M_	-9= "Don't know"
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
VALUE PHQ2SCREEN_	-8= "Question not asked"
 	1= "Positive"
 	2= "Negative";
VALUE POVERTY_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	1= "< 0.50"
 	2= "0.50 - < 1.00"
 	3= "1.00 - < 1.50"
 	4= "1.50 - < 2.00"
 	5= "2.00 - < 2.50"
 	6= "2.50 - < 3.00"
 	7= "3.00 - < 3.50"
 	8= "3.50 - < 4.00"
 	9= "4.00 +";
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
VALUE P_GENDERID_	1= "Cis-gender Male"
 	2= "Cis-gender Female"
 	3= "Transgender"
 	4= "None of these";
VALUE P_MARITAL_	1= "Married"
 	2= "Divorced/Seperated"
 	3= "Widowed"
 	4= "Never married";
VALUE P_ORIENT_	1= "Gay or lesbian"
 	2= "Straight, that is not lesbian/gay"
 	3= "Bisexual"
 	4= "Something else";
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
VALUE SOCWRKLMT_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
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
VALUE SUI_KNOWSUI_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SUI_THKSUI12_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SWM_ALCBOAT_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Never"
 	1= "Every time"
 	2= "More than half the time"
 	3= "Less than half the time";
VALUE SWM_ALCPOOL_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Never"
 	1= "Every time"
 	2= "More than half the time"
 	3= "Less than half the time";
VALUE SWM_CPR2Y_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SWM_CPR_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SWM_DAYSBOAT_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Never"
 	1= "1-6 days"
 	2= "7-12 days"
 	3= "13 or more days";
VALUE SWM_DAYSPOOL_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Never"
 	1= "1-6 days"
 	2= "7-12 days"
 	3= "13 or more days";
VALUE SWM_EVERLESS_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SWM_FRREL_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SWM_GRPLESS_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SWM_HELPDRWN_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SWM_PRVLESS_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SWM_SKILLLVL_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "I do not know how to swim"
 	2= "I am comfortable in water where I can stand up"
 	3= "I can swim in water over my head"
 	4= "I can swim multiple strokes efficiently";
VALUE SWM_TCHSELF_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
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
VALUE THC_HOUSCOST_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE THC_TRANSPOR_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE TSV_FAKEPORN_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE TSV_PHOTOEV_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE TSV_THREATEV_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE TSV_THRTOTH_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE TSV_THRTPAY_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE TSV_THRTPIC_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE TSV_THRTREL_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE TSV_THRTSEX_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE USBORN2_
 	0= "No"
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
run;

data &dsn.;
infile "&folderpath./&filename" dlm="," missover firstobs =2 DSD;
LENGTH HIS_GENERAL  8
CHR_HYPEV  8
CHR_CHLEV  8
CHR_CHLEV_R  8
CHR_ASEV  8
CHR_CANEV  8
ADHD_EVER  8
ADHD_AGE  8
ADHD_NOW  8
ADHD_TREAT  8
ADHD_MEDS  8
ADHD_MEDDIFF  8
ADHD_MED_NSTM  8
ADHD_MED_STM  8
ADHD_MED_OLD  8
ADHD_MED_OTH  8
ADHD_RXMED_C1  8
ADHD_RXMED_C2  8
ADHD_RXMED_C3  8
ADHD_RXMED_C4  8
ADHD_RXMED_C5  8
ADHD_RXMED_C6  8
ADHD_RXMED_C7  8
ADHD_RXMED_C8  8
ADHD_RXMED_C9  8
ADHD_RXMED_C10  8
ADHD_OLD_C1  8
ADHD_OLD_C2  8
ADHD_OLD_C3  8
ADHD_OLD_C4  8
ADHD_WM_NA  8
ADHD_INS  8
ADHD_TELE  8
ADHD_DIAG  8
ADHD_FIRST  8
ADHD_TELERX  8
ADHD_COUNSEL  8
ADHD_INSPAY  8
ADHD_RX3M  8
ADHD_CNSEL3M  8
SOC_ERRANDS  8
SOC_PARACTIV  8
SOC_PARACTIV_R  8
SOC_SCWRKLIM  8
SOCWRKLMT  8
PAY_BILL12M  8
PAY_PAYWORRY  8
THC_TRANSPOR  8
THC_HOUSCOST  8
INT_ACCESS  8
INT_HOMEACC  8
INT_USEMED  8
INT_USEDOC  8
INT_USETEST  8
ONL_SOCMED  8
ONL_GAMES  8
ONL_MSGBOARD  8
ONL_SOCISO  8
ONL_SOCCOM  8
ONL_GAMESISO  8
ONL_GAMESCOM  8
ONL_MSGISO  8
ONL_MSGCOM  8
ACC_HTHLAST  8
ACC_HTHUSUAL  8
ACC_HTHTYPE  8
ACC_HOSP12M  8
MED_RX12MA  8
MED_RXSK12MA  8
MED_RXLS12MA  8
MED_RXDL12MA  8
MED_RXDG12MA  8
CON_SEX12M  8
CON_BCIUD  8
CON_BCSHOT  8
CON_BCPILL  8
CON_BCEC  8
CON_BCSTERIL  8
CON_BCOTHER  8
CON_BCNONE  8
CON_BCCHANGE  8
CON_CHNGEWHYA  8
CON_CHNGEWHYA_O  8
CON_CHNGEWHYB  8
CON_CHNGEWHYB_O  8
CON_CHNGEWHYC  8
CON_CHNGEWHYC_O  8
CON_CHNGEWHYD  8
CON_CHNGEWHYD_O  8
CON_CHNGEWHYE  8
CON_CHNGEWHYE_O  8
CON_CHNGEWHYF  8
CON_CHNGEWHYF_O  8
CON_CHNGEWHYG  8
CON_CHNGEWHYG_O  8
CON_CHNGEWHYH  8
CON_CHNGEWHYH_O  8
CON_IUD12M  8
CON_SHOTS12M  8
CON_BCPILLS12M  8
CON_EMERG12M  8
PAI_FREQ3M  8
PAI_AMNT  8
PAI_WKLM3M  8
CPN_MEDCARE  8
CPN_TRTDEC  8
CPN_RESPECT  8
CPN_LISTEN  8
CPN_OPINION  8
HRD_ONLPILLS  8
HRD_CONCERNA  8
HRD_CONCERNB  8
HRD_NALOXONE  8
HRD_NALOTC  8
HRD_GETNACOM  8
HRD_GETNADR  8
HRD_GETNAHD  8
HRD_GETNARX  8
HRD_CARRYNAL  8
HRD_DKWRK  8
HRD_DKUSE  8
HRD_DKWHERE  8
HRD_NABUS  8
HRD_NACOL  8
HRD_NAELMMD  8
HRD_NAHS  8
HRD_NAWRSHP  8
HRD_NALIB  8
HRD_RELDRUG  8
HRD_BLAME  8
HRD_JOBDRUG  8
IMM_SHTPNUEV  8
IMM_SHTFLU12  8
MTL_MHRXA  8
MTL_MHTHRPY  8
MTL_MHTPYNOW  8
HCA_MHTHDLY  8
HCA_MHTND  8
MTH_PHQ41  8
MTH_PHQ42  8
MTH_PHQ43  8
MTH_PHQ44  8
GAD2SCREEN  8
PHQ2SCREEN  8
CIG_SMKEV  8
CIG_SMKNOW  8
SWM_SKILLLVL  8
SWM_PRVLESS  8
SWM_GRPLESS  8
SWM_FRREL  8
SWM_TCHSELF  8
SWM_EVERLESS  8
SWM_DAYSPOOL  8
SWM_ALCPOOL  8
SWM_DAYSBOAT  8
SWM_ALCBOAT  8
SWM_CPR  8
SWM_CPR2Y  8
SWM_HELPDRWN  8
SUI_THKSUI12  8
SUI_KNOWSUI  8
TSV_PHOTOEV  8
TSV_THREATEV  8
TSV_THRTPIC  8
TSV_THRTSEX  8
TSV_THRTPAY  8
TSV_THRTREL  8
TSV_THRTOTH  8
TSV_FAKEPORN  8
EMP_EMPLOY  8
EMP_ABSENTWK  8
EMP_DAYMISS_R  8
EMP_WHYNOWRK  8
EMP_WHENWRK  8
EMPWRKLSWK  8
HPF_EVERUSE  8
HPF_KNOWFIT  8
HPF_EVERFIT  8
HPF_IMPORT  8
HPF_IMPORTDK  8
MAR_MARITAL  8
MAR_EVMARRY  8
MAR_LEGAL  8
MAR_WIDIVSEP  8
MARSTAT  8
LEGMSTAT  8
MARITAL  8
CIV_VOL12M  8
CIV_VOLOTH  8
CIV_MEET  8
CIV_VOTELOCL  8
CIVIC_ENGAGE  8
LAN_OTHERLAN  8
LAN_MEDIA  8
LAN_DOCTOR  8
LAN_SOCIAL  8
TEL_NONCELL  8
TEL_CELL  8
TEL_HHCELL  8
START_DATE_R $5
END_DATE_R $5
ID_R  8
SOURCE  8
QUEX_LANG  8
P_OUTCOME  8
P_AGEC_R  8
P_HHSIZE_R  8
P_GENDER  8
P_EDUCATION_I_R  8
P_EDUCATION_I_IFLG  8
P_INCOME_I_R  8
P_INCOME_I_R_IFLG  8
P_ONEVISIT  8
P_RACE_R  8
P_REMIND  8
P_CATIATT  8
P_DEVICE  8
P_MODE  8
P_VISIT  8
P_POVERTY  8
P_EMPLOY  8
P_MARITAL  8
P_REGION  8
P_HOMEOWN  8
P_CITIZEN  8
P_VETERAN  8
P_INSUR  8
P_USBORN  8
P_GENDERID  8
P_ORIENT  8
P_METRO_R  8
P_METRO_R_IFLG  8
P1_CALWT_M1  8
P2_CALWT_M1  8
WEIGHT_M1  8
P_STRATA_R  8
P_PSU_R  8;
INPUT HIS_GENERAL
CHR_HYPEV
CHR_CHLEV
CHR_CHLEV_R
CHR_ASEV
CHR_CANEV
ADHD_EVER
ADHD_AGE
ADHD_NOW
ADHD_TREAT
ADHD_MEDS
ADHD_MEDDIFF
ADHD_MED_NSTM
ADHD_MED_STM
ADHD_MED_OLD
ADHD_MED_OTH
ADHD_RXMED_C1
ADHD_RXMED_C2
ADHD_RXMED_C3
ADHD_RXMED_C4
ADHD_RXMED_C5
ADHD_RXMED_C6
ADHD_RXMED_C7
ADHD_RXMED_C8
ADHD_RXMED_C9
ADHD_RXMED_C10
ADHD_OLD_C1
ADHD_OLD_C2
ADHD_OLD_C3
ADHD_OLD_C4
ADHD_WM_NA
ADHD_INS
ADHD_TELE
ADHD_DIAG
ADHD_FIRST
ADHD_TELERX
ADHD_COUNSEL
ADHD_INSPAY
ADHD_RX3M
ADHD_CNSEL3M
SOC_ERRANDS
SOC_PARACTIV
SOC_PARACTIV_R
SOC_SCWRKLIM
SOCWRKLMT
PAY_BILL12M
PAY_PAYWORRY
THC_TRANSPOR
THC_HOUSCOST
INT_ACCESS
INT_HOMEACC
INT_USEMED
INT_USEDOC
INT_USETEST
ONL_SOCMED
ONL_GAMES
ONL_MSGBOARD
ONL_SOCISO
ONL_SOCCOM
ONL_GAMESISO
ONL_GAMESCOM
ONL_MSGISO
ONL_MSGCOM
ACC_HTHLAST
ACC_HTHUSUAL
ACC_HTHTYPE
ACC_HOSP12M
MED_RX12MA
MED_RXSK12MA
MED_RXLS12MA
MED_RXDL12MA
MED_RXDG12MA
CON_SEX12M
CON_BCIUD
CON_BCSHOT
CON_BCPILL
CON_BCEC
CON_BCSTERIL
CON_BCOTHER
CON_BCNONE
CON_BCCHANGE
CON_CHNGEWHYA
CON_CHNGEWHYA_O
CON_CHNGEWHYB
CON_CHNGEWHYB_O
CON_CHNGEWHYC
CON_CHNGEWHYC_O
CON_CHNGEWHYD
CON_CHNGEWHYD_O
CON_CHNGEWHYE
CON_CHNGEWHYE_O
CON_CHNGEWHYF
CON_CHNGEWHYF_O
CON_CHNGEWHYG
CON_CHNGEWHYG_O
CON_CHNGEWHYH
CON_CHNGEWHYH_O
CON_IUD12M
CON_SHOTS12M
CON_BCPILLS12M
CON_EMERG12M
PAI_FREQ3M
PAI_AMNT
PAI_WKLM3M
CPN_MEDCARE
CPN_TRTDEC
CPN_RESPECT
CPN_LISTEN
CPN_OPINION
HRD_ONLPILLS
HRD_CONCERNA
HRD_CONCERNB
HRD_NALOXONE
HRD_NALOTC
HRD_GETNACOM
HRD_GETNADR
HRD_GETNAHD
HRD_GETNARX
HRD_CARRYNAL
HRD_DKWRK
HRD_DKUSE
HRD_DKWHERE
HRD_NABUS
HRD_NACOL
HRD_NAELMMD
HRD_NAHS
HRD_NAWRSHP
HRD_NALIB
HRD_RELDRUG
HRD_BLAME
HRD_JOBDRUG
IMM_SHTPNUEV
IMM_SHTFLU12
MTL_MHRXA
MTL_MHTHRPY
MTL_MHTPYNOW
HCA_MHTHDLY
HCA_MHTND
MTH_PHQ41
MTH_PHQ42
MTH_PHQ43
MTH_PHQ44
GAD2SCREEN
PHQ2SCREEN
CIG_SMKEV
CIG_SMKNOW
SWM_SKILLLVL
SWM_PRVLESS
SWM_GRPLESS
SWM_FRREL
SWM_TCHSELF
SWM_EVERLESS
SWM_DAYSPOOL
SWM_ALCPOOL
SWM_DAYSBOAT
SWM_ALCBOAT
SWM_CPR
SWM_CPR2Y
SWM_HELPDRWN
SUI_THKSUI12
SUI_KNOWSUI
TSV_PHOTOEV
TSV_THREATEV
TSV_THRTPIC
TSV_THRTSEX
TSV_THRTPAY
TSV_THRTREL
TSV_THRTOTH
TSV_FAKEPORN
EMP_EMPLOY
EMP_ABSENTWK
EMP_DAYMISS_R
EMP_WHYNOWRK
EMP_WHENWRK
EMPWRKLSWK
HPF_EVERUSE
HPF_KNOWFIT
HPF_EVERFIT
HPF_IMPORT
HPF_IMPORTDK
MAR_MARITAL
MAR_EVMARRY
MAR_LEGAL
MAR_WIDIVSEP
MARSTAT
LEGMSTAT
MARITAL
CIV_VOL12M
CIV_VOLOTH
CIV_MEET
CIV_VOTELOCL
CIVIC_ENGAGE
LAN_OTHERLAN
LAN_MEDIA
LAN_DOCTOR
LAN_SOCIAL
TEL_NONCELL
TEL_CELL
TEL_HHCELL
START_DATE_R $
END_DATE_R $
ID_R
SOURCE
QUEX_LANG
P_OUTCOME
P_AGEC_R
P_HHSIZE_R
P_GENDER
P_EDUCATION_I_R
P_EDUCATION_I_IFLG
P_INCOME_I_R
P_INCOME_I_R_IFLG
P_ONEVISIT
P_RACE_R
P_REMIND
P_CATIATT
P_DEVICE
P_MODE
P_VISIT
P_POVERTY
P_EMPLOY
P_MARITAL
P_REGION
P_HOMEOWN
P_CITIZEN
P_VETERAN
P_INSUR
P_USBORN
P_GENDERID
P_ORIENT
P_METRO_R
P_METRO_R_IFLG
P1_CALWT_M1
P2_CALWT_M1
WEIGHT_M1
P_STRATA_R
P_PSU_R  ;
FORMAT HIS_GENERAL                      HIS_GENERAL_.
CHR_HYPEV                        CHR_HYPEV_.
CHR_CHLEV                        CHR_CHLEV_.
CHR_CHLEV_R                      CHR_CHLEV_R_.
CHR_ASEV                         CHR_ASEV_.
CHR_CANEV                        CHR_CANEV_.
ADHD_EVER                        ADHD_EVER_.
ADHD_AGE                         ADHD_AGE_.
ADHD_NOW                         ADHD_NOW_.
ADHD_TREAT                       ADHD_TREAT_.
ADHD_MEDS                        ADHD_MEDS_.
ADHD_MEDDIFF                     ADHD_MEDDIFF_.
ADHD_MED_NSTM                    YESNO_.
ADHD_MED_STM                     YESNO_.
ADHD_MED_OLD                     YESNO_.
ADHD_MED_OTH                     YESNO_.
ADHD_RXMED_C1                    YESNO_.
ADHD_RXMED_C2                    YESNO_.
ADHD_RXMED_C3                    YESNO_.
ADHD_RXMED_C4                    YESNO_.
ADHD_RXMED_C5                    YESNO_.
ADHD_RXMED_C6                    YESNO_.
ADHD_RXMED_C7                    YESNO_.
ADHD_RXMED_C8                    YESNO_.
ADHD_RXMED_C9                    YESNO_.
ADHD_RXMED_C10                   YESNO_.
ADHD_OLD_C1                      YESNO_.
ADHD_OLD_C2                      YESNO_.
ADHD_OLD_C3                      YESNO_.
ADHD_OLD_C4                      YESNO_.
ADHD_WM_NA                       ADHD_WM_NA_.
ADHD_INS                         ADHD_INS_.
ADHD_TELE                        ADHD_TELE_.
ADHD_DIAG                        ADHD_DIAG_.
ADHD_FIRST                       ADHD_FIRST_.
ADHD_TELERX                      ADHD_TELERX_.
ADHD_COUNSEL                     ADHD_COUNSEL_.
ADHD_INSPAY                      ADHD_INSPAY_.
ADHD_RX3M                        ADHD_RX3M_.
ADHD_CNSEL3M                     ADHD_CNSEL3M_.
SOC_ERRANDS                      SOC_ERRANDS_.
SOC_PARACTIV                     SOC_PARACTIV_.
SOC_PARACTIV_R                   SOC_PARACTIV_R_.
SOC_SCWRKLIM                     SOC_SCWRKLIM_.
SOCWRKLMT                        SOCWRKLMT_.
PAY_BILL12M                      PAY_BILL12M_.
PAY_PAYWORRY                     PAY_PAYWORRY_.
THC_TRANSPOR                     THC_TRANSPOR_.
THC_HOUSCOST                     THC_HOUSCOST_.
INT_ACCESS                       INT_ACCESS_.
INT_HOMEACC                      INT_HOMEACC_.
INT_USEMED                       INT_USEMED_.
INT_USEDOC                       INT_USEDOC_.
INT_USETEST                      INT_USETEST_.
ONL_SOCMED                       ONL_SOCMED_.
ONL_GAMES                        ONL_GAMES_.
ONL_MSGBOARD                     ONL_MSGBOARD_.
ONL_SOCISO                       ONL_SOCISO_.
ONL_SOCCOM                       ONL_SOCCOM_.
ONL_GAMESISO                     ONL_GAMESISO_.
ONL_GAMESCOM                     ONL_GAMESCOM_.
ONL_MSGISO                       ONL_MSGISO_.
ONL_MSGCOM                       ONL_MSGCOM_.
ACC_HTHLAST                      ACC_HTHLAST_.
ACC_HTHUSUAL                     ACC_HTHUSUAL_.
ACC_HTHTYPE                      ACC_HTHTYPE_.
ACC_HOSP12M                      ACC_HOSP12M_.
MED_RX12MA                       MED_RX12MA_.
MED_RXSK12MA                     MED_RXSK12MA_.
MED_RXLS12MA                     MED_RXLS12MA_.
MED_RXDL12MA                     MED_RXDL12MA_.
MED_RXDG12MA                     MED_RXDG12MA_.
CON_SEX12M                       CON_SEX12M_.
CON_BCIUD                        CON_BCIUD_.
CON_BCSHOT                       CON_BCSHOT_.
CON_BCPILL                       CON_BCPILL_.
CON_BCEC                         CON_BCEC_.
CON_BCSTERIL                     CON_BCSTERIL_.
CON_BCOTHER                      CON_BCOTHER_.
CON_BCNONE                       CON_BCNONE_.
CON_BCCHANGE                     CON_BCCHANGE_.
CON_CHNGEWHYA                    CON_CHNGEWHYA_.
CON_CHNGEWHYA_O                  CON_CHNGEWHYA_O_.
CON_CHNGEWHYB                    CON_CHNGEWHYB_.
CON_CHNGEWHYB_O                  CON_CHNGEWHYB_O_.
CON_CHNGEWHYC                    CON_CHNGEWHYC_.
CON_CHNGEWHYC_O                  CON_CHNGEWHYC_O_.
CON_CHNGEWHYD                    CON_CHNGEWHYD_.
CON_CHNGEWHYD_O                  CON_CHNGEWHYD_O_.
CON_CHNGEWHYE                    CON_CHNGEWHYE_.
CON_CHNGEWHYE_O                  CON_CHNGEWHYE_O_.
CON_CHNGEWHYF                    CON_CHNGEWHYF_.
CON_CHNGEWHYF_O                  CON_CHNGEWHYF_O_.
CON_CHNGEWHYG                    CON_CHNGEWHYG_.
CON_CHNGEWHYG_O                  CON_CHNGEWHYG_O_.
CON_CHNGEWHYH                    CON_CHNGEWHYH_.
CON_CHNGEWHYH_O                  CON_CHNGEWHYH_O_.
CON_IUD12M                       CON_IUD12M_.
CON_SHOTS12M                     CON_SHOTS12M_.
CON_BCPILLS12M                   CON_BCPILLS12M_.
CON_EMERG12M                     CON_EMERG12M_.
PAI_FREQ3M                       PAI_FREQ3M_.
PAI_AMNT                         PAI_AMNT_.
PAI_WKLM3M                       PAI_WKLM3M_.
CPN_MEDCARE                      CPN_MEDCARE_.
CPN_TRTDEC                       CPN_TRTDEC_.
CPN_RESPECT                      CPN_RESPECT_.
CPN_LISTEN                       CPN_LISTEN_.
CPN_OPINION                      CPN_OPINION_.
HRD_ONLPILLS                     HRD_ONLPILLS_.
HRD_CONCERNA                     HRD_CONCERNA_.
HRD_CONCERNB                     HRD_CONCERNB_.
HRD_NALOXONE                     HRD_NALOXONE_.
HRD_NALOTC                       HRD_NALOTC_.
HRD_GETNACOM                     HRD_GETNACOM_.
HRD_GETNADR                      HRD_GETNADR_.
HRD_GETNAHD                      HRD_GETNAHD_.
HRD_GETNARX                      HRD_GETNARX_.
HRD_CARRYNAL                     HRD_CARRYNAL_.
HRD_DKWRK                        HRD_DKWRK_.
HRD_DKUSE                        HRD_DKUSE_.
HRD_DKWHERE                      HRD_DKWHERE_.
HRD_NABUS                        HRD_NABUS_.
HRD_NACOL                        HRD_NACOL_.
HRD_NAELMMD                      HRD_NAELMMD_.
HRD_NAHS                         HRD_NAHS_.
HRD_NAWRSHP                      HRD_NAWRSHP_.
HRD_NALIB                        HRD_NALIB_.
HRD_RELDRUG                      HRD_RELDRUG_.
HRD_BLAME                        HRD_BLAME_.
HRD_JOBDRUG                      HRD_JOBDRUG_.
IMM_SHTPNUEV                     IMM_SHTPNUEV_.
IMM_SHTFLU12                     IMM_SHTFLU12_.
MTL_MHRXA                        MTL_MHRXA_.
MTL_MHTHRPY                      MTL_MHTHRPY_.
MTL_MHTPYNOW                     MTL_MHTPYNOW_.
HCA_MHTHDLY                      HCA_MHTHDLY_.
HCA_MHTND                        HCA_MHTND_.
MTH_PHQ41                        MTH_PHQ41_.
MTH_PHQ42                        MTH_PHQ42_.
MTH_PHQ43                        MTH_PHQ43_.
MTH_PHQ44                        MTH_PHQ44_.
GAD2SCREEN                       GAD2SCREEN_.
PHQ2SCREEN                       PHQ2SCREEN_.
CIG_SMKEV                        CIG_SMKEV_.
CIG_SMKNOW                       CIG_SMKNOW_.
SWM_SKILLLVL                     SWM_SKILLLVL_.
SWM_PRVLESS                      SWM_PRVLESS_.
SWM_GRPLESS                      SWM_GRPLESS_.
SWM_FRREL                        SWM_FRREL_.
SWM_TCHSELF                      SWM_TCHSELF_.
SWM_EVERLESS                     SWM_EVERLESS_.
SWM_DAYSPOOL                     SWM_DAYSPOOL_.
SWM_ALCPOOL                      SWM_ALCPOOL_.
SWM_DAYSBOAT                     SWM_DAYSBOAT_.
SWM_ALCBOAT                      SWM_ALCBOAT_.
SWM_CPR                          SWM_CPR_.
SWM_CPR2Y                        SWM_CPR2Y_.
SWM_HELPDRWN                     SWM_HELPDRWN_.
SUI_THKSUI12                     SUI_THKSUI12_.
SUI_KNOWSUI                      SUI_KNOWSUI_.
TSV_PHOTOEV                      TSV_PHOTOEV_.
TSV_THREATEV                     TSV_THREATEV_.
TSV_THRTPIC                      TSV_THRTPIC_.
TSV_THRTSEX                      TSV_THRTSEX_.
TSV_THRTPAY                      TSV_THRTPAY_.
TSV_THRTREL                      TSV_THRTREL_.
TSV_THRTOTH                      TSV_THRTOTH_.
TSV_FAKEPORN                     TSV_FAKEPORN_.
EMP_EMPLOY                       EMP_EMPLOY_.
EMP_ABSENTWK                     EMP_ABSENTWK_.
EMP_DAYMISS_R                    EMP_DAYMISS_.
EMP_WHYNOWRK                     EMP_WHYNOWRK_.
EMP_WHENWRK                      EMP_WHENWRK_.
EMPWRKLSWK                       EMPWRKLSWK_.
HPF_EVERUSE                      HPF_EVERUSE_.
HPF_KNOWFIT                      HPF_KNOWFIT_.
HPF_EVERFIT                      HPF_EVERFIT_.
HPF_IMPORT                       HPF_IMPORT_.
HPF_IMPORTDK                     HPF_IMPORTDK_.
MAR_MARITAL                      MAR_MARITAL_.
MAR_EVMARRY                      MAR_EVMARRY_.
MAR_LEGAL                        MAR_LEGAL_.
MAR_WIDIVSEP                     MAR_WIDIVSEP_.
MARSTAT                          MARSTAT_.
LEGMSTAT                         LEGMSTAT_.
MARITAL                          MARITAL_.
CIV_VOL12M                       CIV_VOL12M_.
CIV_VOLOTH                       CIV_VOLOTH_.
CIV_MEET                         CIV_MEET_.
CIV_VOTELOCL                     CIV_VOTELOCL_.
CIVIC_ENGAGE                     CIVIC_ENGAGE_.
LAN_OTHERLAN                     LAN_OTHERLAN_.
LAN_MEDIA                        LAN_MEDIA_.
LAN_DOCTOR                       LAN_DOCTOR_.
LAN_SOCIAL                       LAN_SOCIAL_.
TEL_NONCELL                      TEL_NONCELL_.
TEL_CELL                         TEL_CELL_.
TEL_HHCELL                       TEL_HHCELL_.
SOURCE                           SOURCE_.
QUEX_LANG                        QUEX_LANG_.
P_OUTCOME                        OUTCOME_.
P_HHSIZE_R                       HHSIZE_.
P_GENDER                         SEX_.
P_EDUCATION_I_R                  P_EDUCATION_I_R_.
P_EDUCATION_I_IFLG               IFLG_.
P_INCOME_I_R                     INCOME_I_R_.
P_INCOME_I_R_IFLG                IFLG_.
P_ONEVISIT                       ONEVISIT_.
P_RACE_R                         P_RACE_R_.
P_DEVICE                         DEVICE_.
P_MODE                           MODE2_.
P_POVERTY                        POVERTY_.
P_EMPLOY                         P_EMPLOY_.
P_MARITAL                        P_MARITAL_.
P_REGION                         REGION_.
P_HOMEOWN                        HOMEOWN_.
P_CITIZEN                        CITIZEN2_.
P_VETERAN                        VETERAN_.
P_INSUR                          INSUR2_.
P_USBORN                         USBORN2_.
P_GENDERID                       P_GENDERID_.
P_ORIENT                         P_ORIENT_.
P_METRO_R                        CAL_METRO_.
P_METRO_R_IFLG                   IFLG_.;
LABEL HIS_GENERAL = "Self-reported health status"
CHR_HYPEV = "Ever been told you had hypertension"
CHR_CHLEV = "Ever told you had high cholesterol"
CHR_CHLEV_R = "RECODE: Ever diagnosed high cholesterol"
CHR_ASEV = "Ever been told you had asthma"
CHR_CANEV = "Ever been told you had cancer"
ADHD_EVER = "Ever been diagnosed with ADHD"
ADHD_AGE = "How old when first diagnosed with ADHD"
ADHD_NOW = "Currently have ADHD"
ADHD_TREAT = "Past 12 months, had counseling/therapy to treat ADHD"
ADHD_MEDS = "Past 12 months, had prescribed medication to treat ADHD"
ADHD_MEDDIFF = "Past 12 months, had difficulty getting ADHD prescription (not available)"
ADHD_MED_NSTM = "ADHD medication type: Non Stimulant"
ADHD_MED_STM = "ADHD medication type: Stimulant"
ADHD_MED_OLD = "ADHD medication type: Off label"
ADHD_MED_OTH = "ADHD medication type: Other medication not used for the treatment of ADHD"
ADHD_RXMED_C1 = "Past 12 months, prescription medications taken for ADHD: Atoxometine"
ADHD_RXMED_C2 = "Past 12 months, prescription medications taken for ADHD: Clonidine"
ADHD_RXMED_C3 = "Past 12 months, prescription medications taken for ADHD: Guanfacine"
ADHD_RXMED_C4 = "Past 12 months, prescription medications taken for ADHD: Viloxazine"
ADHD_RXMED_C5 = "Past 12 months, prescription medications taken for ADHD: Dextroamphetamine"
ADHD_RXMED_C6 = "Past 12 months, prescription medications taken for ADHD: Dexmethylphenidate"
ADHD_RXMED_C7 = "Past 12 months, prescription medications taken for ADHD: Lisdexamfetamine"
ADHD_RXMED_C8 = "Past 12 months, prescription medications taken for ADHD: Methylphenidate"
ADHD_RXMED_C9 = "Past 12 months, prescription medications taken for ADHD: Methamphetamine"
ADHD_RXMED_C10 = "Past 12 months, prescription medications taken for ADHD: Mixed amphetamine salts/amphetamine"
ADHD_OLD_C1 = "Past 12 months, prescription medications taken for ADHD: Armodafinil"
ADHD_OLD_C2 = "Past 12 months, prescription medications taken for ADHD: Bupropion"
ADHD_OLD_C3 = "Past 12 months, prescription medications taken for ADHD: Modafinil"
ADHD_OLD_C4 = "Past 12 months, prescription medications taken for ADHD: Venlafaxine"
ADHD_WM_NA = "Did take prescription for ADHD"
ADHD_INS = "Past 12 months, insurance paid any diagnostic or treatment costs for ADHD"
ADHD_TELE = "Ever received telehealth services for ADHD"
ADHD_DIAG = "Diagnosed ADHD during telehealth, in-person, or both"
ADHD_FIRST = "Since March 2020, used telehealth for first-time visit for ADHD"
ADHD_TELERX = "Since March 2020, used telehealth for ADHD prescription"
ADHD_COUNSEL = "Since March 2020, used telehealth for visit for counseling or therapy for ADHD"
ADHD_INSPAY = "Any time since March 2020, insurance paid any costs for telehealth ADHD visits"
ADHD_RX3M = "In next 3 months, plan another telehealth visit for ADHD prescription"
ADHD_CNSEL3M = "In next 3 months, plan another telehealth visit for ADHD counseling/therapy"
SOC_ERRANDS = "Difficulty doing errands alone"
SOC_PARACTIV = "Difficulty participating in social activities"
SOC_PARACTIV_R = "RECODE: Difficulty participating in social activities due to physical, mental, or emotional condition"
SOC_SCWRKLIM = "Work limited due to health problem"
SOCWRKLMT = "Any social/work limitation"
PAY_BILL12M = "Past 12 months, you or family have problems paying medical bills"
PAY_PAYWORRY = "Get sick or have accident, how worried about ability to pay bills"
THC_TRANSPOR = "Past 12 months, lack of reliable transportation"
THC_HOUSCOST = "Past 12 months, unable to pay mortgage/rent/bills"
INT_ACCESS = "Access to internet"
INT_HOMEACC = "Access to internet from home"
INT_USEMED = "Past 12 months, use internet to look for health or medical information"
INT_USEDOC = "Past 12 months, use internet to communicate with doctor/doctor's office"
INT_USETEST = "Past 12 months, use internet to look up medical test results"
ONL_SOCMED = "How often use social media"
ONL_GAMES = "How often play online games"
ONL_MSGBOARD = "How often use forums and message boards"
ONL_SOCISO = "Agree/disagree: feel socially isolated when use social media"
ONL_SOCCOM = "Agree/disagree: feel member of community when use social media"
ONL_GAMESISO = "Agree/disagree: feel socially isolated when play online games"
ONL_GAMESCOM = "Agree/disagree: feel member of community when play online games"
ONL_MSGISO = "Agree/disagree: feel socially isolated when use online message boards"
ONL_MSGCOM = "Agree/disagree: feel member of community when use online message boards"
ACC_HTHLAST = "Time since last saw doctor about your health"
ACC_HTHUSUAL = "Have a usual place to go for care"
ACC_HTHTYPE = "Type of place for usual care"
ACC_HOSP12M = "Past 12 months, hospitalized overnight"
MED_RX12MA = "Past 12 months, took prescription medicine"
MED_RXSK12MA = "Past 12 months, skipped medication doses to save money"
MED_RXLS12MA = "Past 12 months, took less medication to save money"
MED_RXDL12MA = "Past 12 months, delayed filling prescription to save money"
MED_RXDG12MA = "Past 12 months, didn't get prescription due to cost"
CON_SEX12M = "Past 12 months, sexual intercourse male partner"
CON_BCIUD = "Past 12 months, you/male partner used: IUD or implant"
CON_BCSHOT = "Past 12 months, you/male partner used: Birth control shot"
CON_BCPILL = "Past 12 months, you/male partner used: Birth control pill"
CON_BCEC = "Past 12 months, you/male partner used: Emergency contraception"
CON_BCSTERIL = "Past 12 months, you/male partner used: Sterilization"
CON_BCOTHER = "Past 12 months, you/male partner used: Other methods"
CON_BCNONE = "Past 12 months, you/male partner used: No birth control methods"
CON_BCCHANGE = "Past 12 months, changed or stopped birth control method"
CON_CHNGEWHYA = "Past 12 months, why changed or stopped: Wanted more effective method"
CON_CHNGEWHYA_O = "Order of questionnaire appearance: CON_CHNGEWHYA_O"
CON_CHNGEWHYB = "Past 12 months, why changed or stopped: Wanted less expensive method"
CON_CHNGEWHYB_O = "Order of questionnaire appearance: CON_CHNGEWHYB_O"
CON_CHNGEWHYC = "Past 12 months, why changed or stopped: Did not like method"
CON_CHNGEWHYC_O = "Order of questionnaire appearance: CON_CHNGEWHYC_O"
CON_CHNGEWHYD = "Past 12 months, why changed or stopped: Changes in access to method"
CON_CHNGEWHYD_O = "Order of questionnaire appearance: CON_CHNGEWHYD_O"
CON_CHNGEWHYE = "Past 12 months, why changed or stopped: Concerns about access to method"
CON_CHNGEWHYE_O = "Order of questionnaire appearance: CON_CHNGEWHYE_O"
CON_CHNGEWHYF = "Past 12 months, why changed or stopped: Concerns about privacy"
CON_CHNGEWHYF_O = "Order of questionnaire appearance: CON_CHNGEWHYF_O"
CON_CHNGEWHYG = "Past 12 months, why changed or stopped: Wanted to become pregnant"
CON_CHNGEWHYG_O = "Order of questionnaire appearance: CON_CHNGEWHYG_O"
CON_CHNGEWHYH = "Past 12 months, why changed or stopped: For another reason"
CON_CHNGEWHYH_O = "Order of questionnaire appearance: CON_CHNGEWHYH_O"
CON_IUD12M = "Past 12 months, how difficult to obtain IUD"
CON_SHOTS12M = "Past 12 months, how difficult to obtain birth control shots"
CON_BCPILLS12M = "Past 12 months, how difficult to obtain birth control pills"
CON_EMERG12M = "Past 12 months, how difficult to obtain emergency contraception"
PAI_FREQ3M = "Past 3 months, how often pain"
PAI_AMNT = "Last time, how much pain"
PAI_WKLM3M = "Past 3 months, pain limit activities"
CPN_MEDCARE = "Receiving care for chronic pain"
CPN_TRTDEC = "Past 12 months, provider made treatment decisions for chronic pain"
CPN_RESPECT = "Past 12 months, provider treated with respect"
CPN_LISTEN = "Past 12 months, provider listened"
CPN_OPINION = "Past 12 months, provider asked your opinion"
HRD_ONLPILLS = "Ever ordered prescription medications online without prescription"
HRD_CONCERNA = "Online prescriptions, concerned about ingredients"
HRD_CONCERNB = "Online prescriptions, would be concerned about ingredients"
HRD_NALOXONE = "Heard of Narcan"
HRD_NALOTC = "Know Narcan now OTC"
HRD_GETNACOM = "Know Narcan at community harm reduction organization"
HRD_GETNADR = "Know Narcan at doctor's office"
HRD_GETNAHD = "Know Narcan at health department"
HRD_GETNARX = "Know Narcan at pharmacy"
HRD_CARRYNAL = "Carries Narcan"
HRD_DKWRK = "Why think people don't carry Narcan: Do not think Narcan works"
HRD_DKUSE = "Why think people don't carry Narcan: Do not know how to use Narcan"
HRD_DKWHERE = "Why think people don't carry Narcan: Do not know where to get Narcan"
HRD_NABUS = "Narcan should be available at businesses"
HRD_NACOL = "Narcan should be available at college or university campuses"
HRD_NAELMMD = "Narcan should be available at elementary and middle schools"
HRD_NAHS = "Narcan should be available at high schools"
HRD_NAWRSHP = "Narcan should be available at places of worship"
HRD_NALIB = "Narcan should be available at public libraries"
HRD_RELDRUG = "Agree/disagree: would be comfortable in committed relationship with prescription misuse or illegal drug use"
HRD_BLAME = "Agree/disagree: person who misuses prescriptions or uses illegal drugs to blame"
HRD_JOBDRUG = "Agree/disagree: would work closely with person who misuses prescriptions or uses illegal drugs"
IMM_SHTPNUEV = "Ever had pneumonia shot"
IMM_SHTFLU12 = "Past 12 months, had flu vaccine"
MTL_MHRXA = "Past 12 months, took prescription medication for mental health"
MTL_MHTHRPY = "Past 12 months, received counseling/therapy from mental health professional"
MTL_MHTPYNOW = "Currently receiving counseling/therapy from mental health professional"
HCA_MHTHDLY = "Past 12 months, delayed getting counseling/therapy due to cost"
HCA_MHTND = "Past 12 months, did not get counseling/therapy due to cost"
MTH_PHQ41 = "Past 2 weeks, little interest or pleasure"
MTH_PHQ42 = "Past 2 weeks, down, depressed, or hopeless"
MTH_PHQ43 = "Past 2 weeks, nervous, anxious, or on edge"
MTH_PHQ44 = "Past 2 weeks, unable to stop/control worrying"
GAD2SCREEN = "GAD-2 screener result"
PHQ2SCREEN = "PHQ-2 screener result"
CIG_SMKEV = "Ever smoked 100 cigarettes in entire life"
CIG_SMKNOW = "How often now smoke cigarettes"
SWM_SKILLLVL = "Swimming skill level"
SWM_PRVLESS = "Ever taken private swim lessons from professional instructor"
SWM_GRPLESS = "Ever taken group swim lessons from professional instructor"
SWM_FRREL = "Learned to swim friend or relative"
SWM_TCHSELF = "Taught self to swim"
SWM_EVERLESS = "Ever taken swim lesson"
SWM_DAYSPOOL = "Past 6 months, days spent in or around swimming pool"
SWM_ALCPOOL = "For days at pool, how many drank alcohol"
SWM_DAYSBOAT = "Past 6 months, days on boat or water (not pool)"
SWM_ALCBOAT = "For days on boat or water, how many drank alcohol"
SWM_CPR = "Trained in CPR"
SWM_CPR2Y = "Past 2 years, CPR training"
SWM_HELPDRWN = "Ever trained to save drowning person"
SUI_THKSUI12 = "Past 12 months, seriously thought about suicide"
SUI_KNOWSUI = "Know someone that died by suicide"
TSV_PHOTOEV = "Someone has shared sexual content of me without consent"
TSV_THREATEV = "Someone has threatened to share sexual content of me without consent"
TSV_THRTPIC = "Nature of threat, take or send sexual content of self"
TSV_THRTSEX = "Nature of threat, have sexual relationship"
TSV_THRTPAY = "Nature of threat, pay money"
TSV_THRTREL = "Nature of threat, stay in relationship"
TSV_THRTOTH = "Nature of threat, other"
TSV_FAKEPORN = "Anyone ever used technology for fake porn of you without consent"
EMP_EMPLOY = "Last week worked for pay at job or business"
EMP_ABSENTWK = "Had a job/business last week but temporarily absent"
EMP_DAYMISS_R = "Past 12 months, number days missed health - topcoded"
EMP_WHYNOWRK = "Main reason not working for pay last week"
EMP_WHENWRK = "Last time worked"
EMPWRKLSWK = "DERIVED: Worked last week"
HPF_EVERUSE = "Ever used hearing protection for loud noise at work"
HPF_KNOWFIT = "Knew about fit-testing for hearing protection"
HPF_EVERFIT = "Ever had fit-testing for hearing protection"
HPF_IMPORT = "How important having hearing protection fit-tested: ever heard of before"
HPF_IMPORTDK = "How important having hearing protection fit-tested: not heard of before"
MAR_MARITAL = "Now married, living with a partner, or neither"
MAR_EVMARRY = "Ever been married"
MAR_LEGAL = "Current legal marital status"
MAR_WIDIVSEP = "Widowed, divorced or separated"
MARSTAT = "DERIVED: Current marital status"
LEGMSTAT = "DERIVED: Legal marital status"
MARITAL = "RECODE: Current Marriage Status - 2 levels"
CIV_VOL12M = "Past 12 months, volunteer activities"
CIV_VOLOTH = "Past 12 months, activities at schools or youth organizations"
CIV_MEET = "Past 12 months, attend local public meeting"
CIV_VOTELOCL = "Vote in last local elections"
CIVIC_ENGAGE = "RECODE: Civic engagement including volunteering"
LAN_OTHERLAN = "Speak language other than English at home"
LAN_MEDIA = "What language use most often when watching television, read news, listen to radio"
LAN_DOCTOR = "What language use most often when seeing a doctor"
LAN_SOCIAL = "What language use most often when participate in social activities"
TEL_NONCELL = "At least one telephone inside home, not cell phone"
TEL_CELL = "Have a working cell phone"
TEL_HHCELL = "Live with anyone with a working cell phone"
START_DATE_R = "Date the survey started"
END_DATE_R = "Date the survey was completed"
ID_R = "Survey ID"
SOURCE = "Paradata: Panel Provider"
QUEX_LANG = "Paradata: Language of interview"
P_OUTCOME = "Paradata: Outcome code"
P_AGEC_R = "Panel Profile: Respondent age - topcoded"
P_HHSIZE_R = "Panel Profile: Numeric household size, capped at 6+"
P_GENDER = "Panel Profile: Respondent gender"
P_EDUCATION_I_R = "Panel Profile: Education - 3 levels"
P_EDUCATION_I_IFLG = "Imputation flag for panel profile variable: <P_EDUCATION_I>"
P_INCOME_I_R = "Panel Profile: Household income - topcoded"
P_INCOME_I_R_IFLG = "Imputation flag for panel profile variable: <P_INCOME_I_R>"
P_ONEVISIT = "Paradata: Whether the survey was completed in a single session"
P_RACE_R = "Panel Profile: Single and multiple race/ethnicity groups (all adults)"
P_REMIND = "Paradata: Number of reminders sent"
P_CATIATT = "Paradata: Number of contact attempts (phone)"
P_DEVICE = "Paradata: Device used to complete survey (web only)"
P_MODE = "Paradata: Mode of interview"
P_VISIT = "Paradata: Number of times the questionnaire was accessed/login attempts (web)"
P_POVERTY = "Panel Profile: Poverty Status"
P_EMPLOY = "Panel Profile: Current Employment Status"
P_MARITAL = "Panel Profile: Marital status"
P_REGION = "Panel Profile: 4-level region"
P_HOMEOWN = "Home ownership - 3 level"
P_CITIZEN = "Panel Profile: Are you a US citizen?"
P_VETERAN = "Panel Profile: Have you ever served on active duty in the U.S. Armed Forces, military Reserves, or National Guard?"
P_INSUR = "Panel Profile: Covered by any form of health insurance or health plan?"
P_USBORN = "Panel Profile: Is respondent US born?"
P_GENDERID = "Panel Profile: Gender identity 4 Levels"
P_ORIENT = "Panel Profile: Sexual Orientation"
P_METRO_R = "NCHS 2013 Urban/Rural code"
P_METRO_R_IFLG = "Imputation flag for profile variable: <P_METRO_R>"
P1_CALWT_M1 = "Panel provider 1 weight for data collection methodology 1 calibrated to NHIS control totals"
P2_CALWT_M1 = "Panel provider 2 weight for data collection methodology 1 calibrated to NHIS control totals"
WEIGHT_M1 = "Final combined weight for data collection methodology 1 calibrated to NHIS control totals"
P_STRATA_R = "Panel Sample Strata"
P_PSU_R = "Panel PSU";
run;
