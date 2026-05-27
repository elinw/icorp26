/*
RSS PUF Input Program: This program imports RSS CSV file into SAS working directory as a SAS dataset:
 - Loads formats to the working directory
 - Imports the RSS CSV data file as a SAS dataset
 - Applies labels and formats to the SAS dataset

 Before running this program, please download the CSV file or SAS dataset to a folder called 
 C:\RSS5 (on a machine running Windows).

 If importing the SAS dataset, please change the filename statement below, as well as replace 
 the data step below with: 
      data &dsn. ;
      	set in.&filename ;
      run ;

*/

%let folderpath = C:\RSS5; *folder location of CSV file;
%let filename = RSS5_PUF.csv; *CSV file name to import into sas;
%let dsn = rss5_puf; *SAS dataset name for output dataset;
%let formatcat= work.formats; *SAS formats name in temp working folder;

libname in "&folderpath";

PROC FORMAT library = &formatcat;	 
VALUE ACS_BLIND_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE ACS_CONCEN_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE ACS_DEAF_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE ACS_DISABLED_	-8= "Not ascertained"
 	0= "Without a disability"
 	1= "With a disability";
VALUE ACS_DRESS_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE ACS_ERRANDS_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE ACS_WALKING_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CAD_ANXIOUS_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Never"
 	1= "Daily"
 	2= "Weekly"
 	3= "Monthly"
 	4= "A few times a year";
VALUE CAD_DEPRESS_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Never"
 	1= "Daily"
 	2= "Weekly"
 	3= "Monthly"
 	4= "A few times a year";
VALUE CAL_HHDINC_	1= "$0-49,999"
 	2= "$50,000 - 99,999"
 	3= "$100,000+";
VALUE CAL_HOMEOWN_R_	1= "Own or being bought"
 	2= "Rent/other arrangement";
VALUE CAL_REGION_	1= "Northeast"
 	2= "Midwest"
 	3= "South"
 	4= "West";
VALUE CAU_DELAYED_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CAU_DELAYRX_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CAU_EYEEXAM_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CAU_HTHLASTA_	-9= "Don't know"
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
VALUE CAU_HTHLASTA_R_	-8= "Not ascertained"
 	0= "No"
 	1= "Yes";
VALUE CAU_HTHLASTB_	-9= "Don't know"
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
VALUE CAU_HTHTYPE_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Does not go to one place most often"
 	1= "A doctor’s office or health center"
 	2= "Urgent care center or clinic in a drug store or grocery store"
 	3= "Hospital emergency room"
 	4= "Some other place";
VALUE CAU_HTHUSUAL_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Yes, there is a single place"
 	2= "No, there is no place"
 	3= "Yes, there is more than one place";
VALUE CAU_NOCARE_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CAU_NORX_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CAU_NUMHOSER_R_	-6= "Skipped/Implied refusal"
 	1= "1"
 	2= "2"
 	3= "3"
 	4= "4"
 	5= "5+";
VALUE CAU_NUMURGNT_R_	-6= "Skipped/Implied refusal"
 	1= "1"
 	2= "2"
 	3= "3"
 	4= "4"
 	5= "5"
 	6= "6+";
VALUE CAU_PRESCRIP_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CAU_PRESCRIP_R_	-8= "Not ascertained"
 	0= "No"
 	1= "Yes";
VALUE CAU_THERAPY_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CAU_VISITTYP_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CCC_ASTHMA_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CCC_ASTHMA_R_	-8= "Not ascertained"
 	0= "No"
 	1= "Yes";
VALUE CDD_DEVDELAY_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CDD_DEVDELNW_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CDD_INTDISNW_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CDD_INTDIS_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CDS_DIFHEAR_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "No difficulty"
 	2= "Some difficulty"
 	3= "A lot of difficulty"
 	4= "Cannot do at all";
VALUE CDS_DIFLEARN_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "No difficulty"
 	2= "Some difficulty"
 	3= "A lot of difficulty"
 	4= "Cannot do this at all";
VALUE CDS_DIFMILEA_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "No difficulty"
 	2= "Some difficulty"
 	3= "A lot of difficulty"
 	4= "Cannot do this at all";
VALUE CDS_DIFMILEB_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "No difficulty"
 	2= "Some difficulty"
 	3= "A lot of difficulty"
 	4= "Cannot do this at all";
VALUE CDS_DIFMILEC_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "No difficulty"
 	2= "Some difficulty"
 	3= "A lot of difficulty"
 	4= "Cannot do this at all";
VALUE CDS_DIFPIKUP_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "No difficulty"
 	2= "Some difficulty"
 	3= "A lot of difficulty"
 	4= "Cannot do this at all";
VALUE CDS_DIFREM_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "No difficulty"
 	2= "Some difficulty"
 	3= "A lot of difficulty"
 	4= "Cannot do this at all";
VALUE CDS_DIFSEE_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "No difficulty"
 	2= "Some difficulty"
 	3= "A lot of difficulty"
 	4= "Cannot do this at all";
VALUE CDS_DIFSELF_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "No difficulty"
 	2= "Some difficulty"
 	3= "A lot of difficulty"
 	4= "Cannot do this at all";
VALUE CDS_DIFSPEAK_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "No difficulty"
 	2= "Some difficulty"
 	3= "A lot of difficulty"
 	4= "Cannot do this at all";
VALUE CDS_DIFSPKOT_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "No difficulty"
 	2= "Some difficulty"
 	3= "A lot of difficulty"
 	4= "Cannot do this at all";
VALUE CDS_DIFUNDER_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "No difficulty"
 	2= "Some difficulty"
 	3= "A lot of difficulty"
 	4= "Cannot do this at all";
VALUE CDS_DIFUNDOT_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "No difficulty"
 	2= "Some difficulty"
 	3= "A lot of difficulty"
 	4= "Cannot do this at all";
VALUE CDS_DIFWALKA_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "No difficulty"
 	2= "Some difficulty"
 	3= "A lot of difficulty"
 	4= "Cannot do this at all";
VALUE CDS_DIFWALKB_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "No difficulty"
 	2= "Some difficulty"
 	3= "A lot of difficulty"
 	4= "Cannot do this at all";
VALUE CDS_DIFWALKC_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "No difficulty"
 	2= "Some difficulty"
 	3= "A lot of difficulty"
 	4= "Cannot do at all";
VALUE CDS_DIFYRDSA_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "No difficulty"
 	2= "Some difficulty"
 	3= "A lot of difficulty"
 	4= "Cannot do this at all";
VALUE CDS_DIFYRDSB_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "No difficulty"
 	2= "Some difficulty"
 	3= "A lot of difficulty"
 	4= "Cannot do this at all";
VALUE CDS_DIFYRDSC_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "No difficulty"
 	2= "Some difficulty"
 	3= "A lot of difficulty"
 	4= "Cannot do this at all";
VALUE CDS_EQUIP_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CDS_GLASSES_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CDS_HEARAID_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CHI_INSURA_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes"
 	2= "Upcoded: Yes";
VALUE CHI_INSURB_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes"
 	2= "Upcoded: Yes";
VALUE CHI_INSURD_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes"
 	2= "Upcoded: Yes";
VALUE CHI_INSURED_	-8= "Not ascertained"
 	0= "Not insured"
 	1= "Insured";
VALUE CHI_INSURE_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes"
 	2= "Upcoded: Yes";
VALUE CHI_INSURF_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes"
 	2= "Upcoded: Yes";
VALUE CHI_INSURG_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes"
 	2= "Upcoded: Yes";
VALUE CHI_INSURH_OTH_	-8= "Not ascertained"
 	0= "No"
 	2= "Upcoded: Yes";
VALUE CHI_INSURH_R_	-8= "Not ascertained"
 	0= "No"
 	1= "Yes";
VALUE CHI_INSURH_UNK_	-8= "Not ascertained"
 	0= "No"
 	2= "Upcoded: Yes";
VALUE CHR_CHLEV_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE CHS_HEALTH_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Excellent"
 	2= "Very good"
 	3= "Good"
 	4= "Fair"
 	5= "Poor";
VALUE CITIZEN2_	0= "Not a U.S. citizen"
 	1= "U.S. citizen";
VALUE CIV_MEET_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE COMMDIFF217_	-8= "Not ascertained"
 	1= "Communication difficulty (a lot of difficulty, cannot do at all)"
 	2= "No communication difficulty";
VALUE COV_EVCOVID_	-9= "Don't know"
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
 	4= "Very low food security";
VALUE GROUP_	1= "Group 1"
 	2= "Group 2";
VALUE HHR_HHNUM_R_	1= "1"
 	2= "2"
 	3= "3"
 	4= "4"
 	5= "5"
 	6= "6+";
VALUE HHR_LEGALG_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE HHR_RELAT_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Parent, stepparent, foster parent"
 	2= "Sibling"
 	3= "Grandparent"
 	4= "Aunt or uncle"
 	5= "Other family member"
 	6= "Other non-family member";
VALUE IFLG_	0= "No imputation"
 	1= "Logical assignment"
 	2= "Statistical imputation";
VALUE INJ_INJURY3M_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE KNW_CONFIDNT_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Very confident"
 	2= "Somewhat confident"
 	3= "Not very confident"
 	4= "Not at all confident";
VALUE KNW_HELP_	-9= "Don't know"
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
VALUE METRO_	1= "Metropolitan"
 	2= "Nonmetropolitan";
VALUE MODE2_	1= "Web"
 	2= "CATI";
VALUE NUMCHILD_R_	1= "1"
 	2= "2"
 	3= "3+";
VALUE ONEVISIT_	0= "Multiple session or did not complete"
 	1= "Completed survey in single session";
VALUE PCE_ACTIVE_	-8= "Not ascertained";
VALUE PCE_ACTIVITYA_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Not selected"
 	1= "Selected";
VALUE PCE_ACTIVITYB_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Not selected"
 	1= "Selected";
VALUE PCE_ACTIVITYC_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Not selected"
 	1= "Selected";
VALUE PCE_ACTIVITYD_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Not selected"
 	1= "Selected";
VALUE PCE_ACTIVITYE_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Not selected"
 	1= "Selected";
VALUE PCE_ACTIVITYF_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Not selected"
 	1= "Selected";
VALUE PCE_ACTIVITYG_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Not selected"
 	1= "Selected";
VALUE PCE_ACTIVITYH_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Not selected"
 	1= "Selected";
VALUE PCE_ARTS_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE PCE_CLOSENEI_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Strongly agree"
 	2= "Somewhat agree"
 	3= "Somewhat disagree"
 	4= "Strongly disagree";
VALUE PCE_CLOSESCH_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Strongly agree"
 	2= "Somewhat agree"
 	3= "Somewhat disagree"
 	4= "Strongly disagree";
VALUE PCE_CLUBS_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE PCE_EMSUPP_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE PCE_EXERCISE_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "0 days"
 	2= "1-3 days"
 	3= "4-6 days"
 	4= "Every day";
VALUE PCE_FRIENDS_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "No difficulty"
 	2= "Some difficulty"
 	3= "A lot of difficulty"
 	4= "Cannot do this at all";
VALUE PCE_HELPOTH_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Strongly agree"
 	2= "Somewhat agree"
 	3= "Somewhat disagree"
 	4= "Strongly disagree";
VALUE PCE_NEIGHBOR_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Strongly agree"
 	2= "Somewhat agree"
 	3= "Somewhat disagree"
 	4= "Strongly disagree";
VALUE PCE_OPENFRND_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "A lot"
 	2= "Some"
 	3= "A little"
 	4= "Not at all";
VALUE PCE_OUTDOORS_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Less than 1 hour per day"
 	2= "1-2 hours per day"
 	3= "2-3 hours per day"
 	4= "3-4 hours per day"
 	5= "4 or more hours per day";
VALUE PCE_PARK_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE PCE_PARTNEI_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Strongly agree"
 	2= "Somewhat agree"
 	3= "Somewhat disagree"
 	4= "Strongly disagree";
VALUE PCE_PARTSCH_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Strongly agree"
 	2= "Somewhat agree"
 	3= "Somewhat disagree"
 	4= "Strongly disagree";
VALUE PCE_PATHS_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE PCE_PLAYDAY_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Very safe"
 	2= "Somewhat safe"
 	3= "Not at all safe";
VALUE PCE_PLAYFRND_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "4 or more days per week"
 	2= "1-3 days per week"
 	3= "Less than 1 day per week"
 	4= "Never";
VALUE PCE_READING_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE PCE_RECCOMM_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE PCE_RELA_	-8= "Not ascertained";
VALUE PCE_RELYADLT_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE PCE_RELYFRND_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "A lot"
 	2= "Some"
 	3= "A little"
 	4= "Not at all";
VALUE PCE_RELYHELP_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Strongly agree"
 	2= "Somewhat agree"
 	3= "Somewhat disagree"
 	4= "Strongly disagree";
VALUE PCE_SAFE_	-8= "Not ascertained";
VALUE PCE_SERVICE_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE PCE_SHARE_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Very well"
 	2= "Somewhat well"
 	3= "Not very well"
 	4= "Not well at all";
VALUE PCE_SOC_	-8= "Not ascertained";
VALUE PCE_SPORTS_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE PCE_TEACHERS_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Strongly agree"
 	2= "Somewhat agree"
 	3= "Somewhat disagree"
 	4= "Strongly disagree";
VALUE PCE_TOTAL_	-8= "Not ascertained";
VALUE PCE_VIDEOFRN_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "7 or more hours per week, or an hour or more per day"
 	2= "Between 5 and 7 hours per week"
 	3= "Between 1 and 4 hour(s) per week"
 	4= "Less than 1 hour per week"
 	5= "Never";
VALUE PCRACEMATCH_	-8= "Not ascertained"
 	1= "Same"
 	2= "Not the same";
VALUE PMB_NOPAYNOW_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE PMB_NOPAY_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE PMB_WORRYPAY_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Very worried"
 	2= "Somewhat worried"
 	3= "Not at all worried";
VALUE PMB_WORRYPAY_R_	1= "Very worried"
 	2= "Somewhat/not at all worried"
	-8="Not ascertained";
VALUE P_AGE_10R_	1= "18-24"
 	2= "25-29"
 	3= "30-34"
 	4= "35-39"
 	5= "40-44"
 	6= "45-49"
 	7= "50-54"
 	8= "55-59"
 	9= "60-64"
 	10= "65+";
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
VALUE P_OUTCOME_	0= "Never accessed instrument"
 	1= "Did not complete roster, eligibility status unknown"
 	2= "Completed roster, screened in, but did not complete the full interview"
 	3= "Completed roster, screened in, fully completed interview, and retained"
 	4= "Completed roster, screened in, fully completed interview, but subsequently removed due to speeding/excessive item nonresponse"
 	5= "Completed roster, screened out because the adult panelist is not the parent/legal guardian of any eligible children in the household"
 	6= "Completed roster, screened out because there are no children 0-17 in the household";
VALUE P_POVERTY4_R_	1= "0 - < 1.00"
 	2= "1.00 - < 2.00"
 	3= "2.00 - < 4.00"
 	4= "4.00 +";
VALUE QUEX_LANG_	1= "English"
 	2= "Spanish";
VALUE REGION_	1= "Northeast"
 	2= "Midwest"
 	3= "South"
 	4= "West";
VALUE SCAGEY_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "0 months -11 months"
 	1= "1 year"
 	2= "2 years"
 	3= "3 years"
 	4= "4 years"
 	5= "5 years"
 	6= "6 years"
 	7= "7 years"
 	8= "8 years"
 	9= "9 years"
 	10= "10 years"
 	11= "11 years"
 	12= "12 years"
 	13= "13 years"
 	14= "14 years"
 	15= "15 years"
 	16= "16 years"
 	17= "17 years"
 	18= "18 years";
VALUE SCC_DAYCARE_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SCC_ENROLL_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Had not yet started school"
 	2= "Attended a public, private, or charter school in-person for grades Pre-K to 12"
 	3= "Was homeschooled full-time"
 	4= "Attended a virtual school full-time"
 	5= "Attended a college or university";
VALUE SCC_GENDER_R_	-8= "Not ascertained"
 	1= "Male"
 	2= "Female";
VALUE SCC_RACEETH_	-8= "Not ascertained"
 	1= "American Indian or Alaskan Native alone"
 	2= "Asian alone"
 	3= "Black or African American alone"
 	4= "Hispanic or Latino alone"
 	5= "Middle Eastern or North African alone"
 	6= "Native Hawaiian or Pacific Islander alone"
 	7= "White alone"
 	8= "Multiracial and/or Multiethnic";
VALUE SCC_RACE_R_	-8= "Not ascertained"
 	1= "Hispanic"
 	2= "Non-Hispanic, White Only"
 	3= "Non-Hispanic, Black Only"
 	4= "Non-Hispanic, Other";
VALUE SLE_BASNEEDS_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SLE_INSULT_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SLE_SEVDEPRS_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SLE_VIOLENCE_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SNP_SNAPBEN_	-9= "Don't know"
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
VALUE SOC_SCWRKLIM_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE SOURCE_	1= "Panel Provider 1"
 	2= "Panel Provider 2";
VALUE USBORN2_	0= "No"
 	1= "Yes";
VALUE VAX_ALLREC_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE VAX_CONCOVID_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Very confident"
 	2= "Somewhat confident"
 	3= "Not at all confident";
VALUE VAX_CONOTH_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Very confident"
 	2= "Somewhat confident"
 	3= "Not at all confident";
VALUE VAX_CONVCOV_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "I do not have conversations with friends or family about the COVID-19 vaccine for children."
 	1= "Mostly positive"
 	2= "Mostly negative"
 	3= "A mix, that is, both positive and negative"
 	4= "Mostly Neutral";
VALUE VAX_CONVOTH_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "I do not have conversations with friends or family about other childhood vaccines."
 	1= "Mostly positive"
 	2= "Mostly negative"
 	3= "A mix, that is, both positive and negative"
 	4= "Mostly Neutral";
VALUE VAX_COST_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Strongly agree"
 	2= "Somewhat agree"
 	3= "Somewhat disagree"
 	4= "Strongly disagree";
VALUE VAX_COVID_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE VAX_DECISIONA_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Not selected"
 	1= "Selected";
VALUE VAX_DECISIONB_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Not selected"
 	1= "Selected";
VALUE VAX_DECISIONC_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Not selected"
 	1= "Selected";
VALUE VAX_DECISIOND_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Not selected"
 	1= "Selected";
VALUE VAX_DECISIONE_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Not selected"
 	1= "Selected";
VALUE VAX_DIFFICULT_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "I have not tried to get my child vaccinated"
 	1= "Not at all difficult"
 	2= "Somewhat difficult"
 	3= "Very difficult";
VALUE VAX_EXEMPT_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE VAX_FLU_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE VAX_GARDASIL_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE VAX_HESCOVID_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Not at all hesitant"
 	2= "Not that hesitant"
 	3= "Somewhat hesitant"
 	4= "Very hesitant";
VALUE VAX_HESOTH_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Not at all hesitant"
 	2= "Not that hesitant"
 	3= "Somewhat hesitant"
 	4= "Very hesitant";
VALUE VAX_HOWCOMMA_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Not selected"
 	1= "Selected";
VALUE VAX_HOWCOMMB_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Not selected"
 	1= "Selected";
VALUE VAX_HOWCOMMC_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Not selected"
 	1= "Selected";
VALUE VAX_HOWCOMMD_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Not selected"
 	1= "Selected";
VALUE VAX_HOWCOMME_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Not selected"
 	1= "Selected";
VALUE VAX_HOWCOMMF_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Not selected"
 	1= "Selected";
VALUE VAX_IMPCOVID_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Very important"
 	2= "Somewhat important"
 	3= "Not at all important";
VALUE VAX_IMPOTH_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Very important"
 	2= "Somewhat important"
 	3= "Not at all important";
VALUE VAX_INFOSCHA_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "I would appreciate receiving this information."
 	2= "I would not appreciate receiving this information."
 	3= "Not sure";
VALUE VAX_INFOSCHB_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "I appreciated receiving this information."
 	2= "I did not appreciate receiving this information"
 	3= "Not sure";
VALUE VAX_KNOWEFF_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE VAX_MMREDU_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Very concerned"
 	2= "Somewhat concerned"
 	3= "Not at all concerned";
VALUE VAX_MMRLOCAL_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Strongly agree"
 	2= "Somewhat agree"
 	3= "Somewhat disagree"
 	4= "Strongly disagree";
VALUE VAX_MMROUTB_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE VAX_MMRUS_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Strongly agree"
 	2= "Somewhat agree"
 	3= "Somewhat disagree"
 	4= "Strongly disagree";
VALUE VAX_MMR_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE VAX_NEWSCOV_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "I have not seen discussions on television news about the COVID-19 vaccine for children."
 	1= "Mostly positive"
 	2= "Mostly negative"
 	3= "A mix, that is, both positive and negative"
 	4= "Mostly Neutral";
VALUE VAX_NEWSOTH_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "I have not seen discussions on television news about other childhood vaccines."
 	1= "Mostly positive"
 	2= "Mostly negative"
 	3= "A mix, that is, both positive and negative"
 	4= "Mostly Neutral";
VALUE VAX_RECVACCA_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Not selected"
 	1= "Selected";
VALUE VAX_RECVACCB_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Not selected"
 	1= "Selected";
VALUE VAX_RECVACCC_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Not selected"
 	1= "Selected";
VALUE VAX_RECVACCD_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Not selected"
 	1= "Selected";
VALUE VAX_SAFECOV_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Very confident"
 	2= "Somewhat confident"
 	3= "Not at all confident";
VALUE VAX_SAFEOTH_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Very confident"
 	2= "Somewhat confident"
 	3= "Not at all confident";
VALUE VAX_SIDEEFF_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE VAX_SOCCOVID_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "I have not seen discussions on social media about the COVID-19 vaccine for children."
 	1= "Mostly positive"
 	2= "Mostly negative"
 	3= "A mix, that is, both positive and negative"
 	4= "Mostly Neutral";
VALUE VAX_SOCOTH_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "I have not seen discussions on social media about other childhood vaccines."
 	1= "Mostly positive"
 	2= "Mostly negative"
 	3= "A mix, that is, both positive and negative"
 	4= "Mostly Neutral";
VALUE VAX_TIME_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Strongly agree"
 	2= "Somewhat agree"
 	3= "Somewhat disagree"
 	4= "Strongly disagree";
VALUE VAX_TOOMANY_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE VAX_TRANSPO_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "Strongly agree"
 	2= "Somewhat agree"
 	3= "Somewhat disagree"
 	4= "Strongly disagree";
VALUE VAX_TRUSTDOC_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "No"
 	1= "Yes";
VALUE VAX_WHOCOMMA_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Not selected"
 	1= "Selected";
VALUE VAX_WHOCOMMB_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Not selected"
 	1= "Selected";
VALUE VAX_WHOCOMMC_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Not selected"
 	1= "Selected";
VALUE VAX_WHOCOMMD_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Not selected"
 	1= "Selected";
VALUE VETERAN_	0= "Not a veteran"
 	1= "Veteran";
VALUE WALKDIFF217_	-8= "Not ascertained"
 	1= "Ambulatory difficulty (having serious difficulty walking or climbing stairs)"
 	2= "No ambulatory difficulty";
RUN;	 

data &dsn.;
infile "&folderpath./&filename" dlm="," missover firstobs =2 DSD;
LENGTH HHR_HHNUM_R  8
NUMCHILD_R  8
HHR_RELAT_SC  8
HHR_LEGALG_SC  8
SCAGEY  8
SCC_GENDER_R  8
SCC_ENROLL  8
SCC_DAYCARE  8
SCC_RACE_R  8
SCC_RACEETH  8
CHS_HEALTH  8
CCC_ASTHMA  8
CCC_ASTHMA_R  8
COV_EVCOVID  8
CDD_INTDIS  8
CDD_INTDISNW  8
CDD_DEVDELAY  8
CDD_DEVDELNW  8
CDS_GLASSES  8
CDS_DIFSEE  8
CDS_HEARAID  8
CDS_DIFHEAR  8
CDS_EQUIP  8
CDS_DIFWALKA  8
CDS_DIFWALKB  8
CDS_DIFWALKC  8
CDS_DIFYRDSA  8
CDS_DIFMILEA  8
CDS_DIFYRDSB  8
CDS_DIFMILEB  8
CDS_DIFYRDSC  8
CDS_DIFMILEC  8
CDS_DIFUNDER  8
CDS_DIFSPEAK  8
CDS_DIFSPKOT  8
CDS_DIFUNDOT  8
CDS_DIFLEARN  8
CDS_DIFREM  8
CDS_DIFPIKUP  8
CDS_DIFSELF  8
CAD_ANXIOUS  8
CAD_DEPRESS  8
INJ_INJURY3M  8
CAU_HTHLASTA  8
CAU_HTHLASTA_R  8
CAU_VISITTYP  8
CAU_HTHLASTB  8
CAU_HTHUSUAL  8
CAU_HTHTYPE  8
CAU_NUMURGNT_R  8
CAU_NUMHOSER_R  8
CAU_DELAYED  8
CAU_NOCARE  8
CAU_PRESCRIP  8
CAU_PRESCRIP_R  8
CAU_DELAYRX  8
CAU_NORX  8
CAU_EYEEXAM  8
CAU_THERAPY  8
CHI_INSURA  8
CHI_INSURB  8
CHI_INSURD  8
CHI_INSURE  8
CHI_INSURF  8
CHI_INSURG  8
CHI_INSURH_R  8
CHI_INSURH_UNK  8
CHI_INSURH_OTH  8
CHI_INSURED  8
SLE_VIOLENCE  8
SLE_SEVDEPRS  8
SLE_INSULT  8
SLE_BASNEEDS  8
PMB_NOPAY  8
PMB_NOPAYNOW  8
PMB_WORRYPAY  8
PMB_WORRYPAY_R  8
SNP_SNAPBEN  8
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
PCE_EMSUPP  8
PCE_RELYHELP  8
PCE_HELPOTH  8
PCE_PATHS  8
PCE_PARK  8
PCE_RECCOMM  8
PCE_PLAYDAY  8
PCE_OUTDOORS  8
PCE_FRIENDS  8
PCE_PLAYFRND  8
PCE_VIDEOFRN  8
PCE_RELYFRND  8
PCE_OPENFRND  8
PCE_SHARE  8
PCE_RELYADLT  8
PCE_ACTIVITYA  8
PCE_ACTIVITYB  8
PCE_ACTIVITYC  8
PCE_ACTIVITYD  8
PCE_ACTIVITYE  8
PCE_ACTIVITYF  8
PCE_ACTIVITYG  8
PCE_ACTIVITYH  8
PCE_SPORTS  8
PCE_CLUBS  8
PCE_SERVICE  8
PCE_ARTS  8
PCE_READING  8
PCE_EXERCISE  8
PCE_CLOSESCH  8
PCE_TEACHERS  8
PCE_PARTSCH  8
PCE_CLOSENEI  8
PCE_NEIGHBOR  8
PCE_PARTNEI  8
PCE_ACTIVE  8
PCE_TOTAL  8
PCE_RELA  8
PCE_SAFE  8
PCE_SOC  8
VAX_ALLREC  8
VAX_FLU  8
VAX_COVID  8
VAX_GARDASIL  8
VAX_MMR  8
VAX_HESCOVID  8
VAX_HESOTH  8
VAX_CONCOVID  8
VAX_CONOTH  8
VAX_IMPCOVID  8
VAX_IMPOTH  8
VAX_SAFECOV  8
VAX_SAFEOTH  8
VAX_EXEMPT  8
VAX_TOOMANY  8
VAX_SIDEEFF  8
VAX_DECISIONA  8
VAX_DECISIONB  8
VAX_DECISIONC  8
VAX_DECISIOND  8
VAX_DECISIONE  8
VAX_KNOWEFF  8
VAX_WHOCOMMA  8
VAX_WHOCOMMB  8
VAX_WHOCOMMC  8
VAX_WHOCOMMD  8
VAX_HOWCOMMA  8
VAX_HOWCOMMB  8
VAX_HOWCOMMC  8
VAX_HOWCOMMD  8
VAX_HOWCOMME  8
VAX_HOWCOMMF  8
VAX_RECVACCA  8
VAX_RECVACCB  8
VAX_RECVACCC  8
VAX_RECVACCD  8
VAX_TRUSTDOC  8
VAX_INFOSCHA  8
VAX_INFOSCHB  8
VAX_DIFFICULT  8
VAX_TRANSPO  8
VAX_COST  8
VAX_TIME  8
VAX_SOCCOVID  8
VAX_SOCOTH  8
VAX_NEWSCOV  8
VAX_NEWSOTH  8
VAX_CONVCOV  8
VAX_CONVOTH  8
VAX_MMRUS  8
VAX_MMRLOCAL  8
VAX_MMROUTB  8
VAX_MMREDU  8
ACS_DEAF  8
ACS_BLIND  8
ACS_CONCEN  8
ACS_WALKING  8
ACS_DRESS  8
ACS_ERRANDS  8
ACS_DISABLED  8
WALKDIFF217  8
COMMDIFF217  8
KNW_CONFIDNT  8
KNW_HELP  8
CHR_CHLEV  8
SOC_ERRANDS  8
SOC_PARACTIV  8
SOC_SCWRKLIM  8
CIV_MEET  8
LAN_OTHERLAN  8
LAN_MEDIA  8
LAN_DOCTOR  8
LAN_SOCIAL  8
MAR_MARITAL  8
MAR_EVMARRY  8
MAR_LEGAL  8
MAR_WIDIVSEP  8
MARITAL  8
MARSTAT  8
LEGMSTAT  8
GROUP  8
START_DATE_R $5
END_DATE_R $5
ID_R  8
SOURCE  8
QUEX_LANG  8
P_OUTCOME  8
P_AGE_10R  8
P_EDUCATION_I_R  8
P_EDUCATION_I_R_IFLG  8
P_ONEVISIT  8
P_REMIND  8
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
PCRACEMATCH  8
P_ORIENT  8
P_METRO_R  8
CAL_HHDINC  8
CAL_REGION  8
CAL_HOMEOWN_R  8
P1_CALWT_CH  8
P2_CALWT_CH  8
WEIGHT_CH  8
P_STRATA_R  8
P_PSU_R  8;
INPUT HHR_HHNUM_R
NUMCHILD_R
HHR_RELAT_SC
HHR_LEGALG_SC
SCAGEY
SCC_GENDER_R
SCC_ENROLL
SCC_DAYCARE
SCC_RACE_R
SCC_RACEETH
CHS_HEALTH
CCC_ASTHMA
CCC_ASTHMA_R
COV_EVCOVID
CDD_INTDIS
CDD_INTDISNW
CDD_DEVDELAY
CDD_DEVDELNW
CDS_GLASSES
CDS_DIFSEE
CDS_HEARAID
CDS_DIFHEAR
CDS_EQUIP
CDS_DIFWALKA
CDS_DIFWALKB
CDS_DIFWALKC
CDS_DIFYRDSA
CDS_DIFMILEA
CDS_DIFYRDSB
CDS_DIFMILEB
CDS_DIFYRDSC
CDS_DIFMILEC
CDS_DIFUNDER
CDS_DIFSPEAK
CDS_DIFSPKOT
CDS_DIFUNDOT
CDS_DIFLEARN
CDS_DIFREM
CDS_DIFPIKUP
CDS_DIFSELF
CAD_ANXIOUS
CAD_DEPRESS
INJ_INJURY3M
CAU_HTHLASTA
CAU_HTHLASTA_R
CAU_VISITTYP
CAU_HTHLASTB
CAU_HTHUSUAL
CAU_HTHTYPE
CAU_NUMURGNT_R
CAU_NUMHOSER_R
CAU_DELAYED
CAU_NOCARE
CAU_PRESCRIP
CAU_PRESCRIP_R
CAU_DELAYRX
CAU_NORX
CAU_EYEEXAM
CAU_THERAPY
CHI_INSURA
CHI_INSURB
CHI_INSURD
CHI_INSURE
CHI_INSURF
CHI_INSURG
CHI_INSURH_R
CHI_INSURH_UNK
CHI_INSURH_OTH
CHI_INSURED
SLE_VIOLENCE
SLE_SEVDEPRS
SLE_INSULT
SLE_BASNEEDS
PMB_NOPAY
PMB_NOPAYNOW
PMB_WORRYPAY
PMB_WORRYPAY_R
SNP_SNAPBEN
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
PCE_EMSUPP
PCE_RELYHELP
PCE_HELPOTH
PCE_PATHS
PCE_PARK
PCE_RECCOMM
PCE_PLAYDAY
PCE_OUTDOORS
PCE_FRIENDS
PCE_PLAYFRND
PCE_VIDEOFRN
PCE_RELYFRND
PCE_OPENFRND
PCE_SHARE
PCE_RELYADLT
PCE_ACTIVITYA
PCE_ACTIVITYB
PCE_ACTIVITYC
PCE_ACTIVITYD
PCE_ACTIVITYE
PCE_ACTIVITYF
PCE_ACTIVITYG
PCE_ACTIVITYH
PCE_SPORTS
PCE_CLUBS
PCE_SERVICE
PCE_ARTS
PCE_READING
PCE_EXERCISE
PCE_CLOSESCH
PCE_TEACHERS
PCE_PARTSCH
PCE_CLOSENEI
PCE_NEIGHBOR
PCE_PARTNEI
PCE_ACTIVE
PCE_TOTAL
PCE_RELA
PCE_SAFE
PCE_SOC
VAX_ALLREC
VAX_FLU
VAX_COVID
VAX_GARDASIL
VAX_MMR
VAX_HESCOVID
VAX_HESOTH
VAX_CONCOVID
VAX_CONOTH
VAX_IMPCOVID
VAX_IMPOTH
VAX_SAFECOV
VAX_SAFEOTH
VAX_EXEMPT
VAX_TOOMANY
VAX_SIDEEFF
VAX_DECISIONA
VAX_DECISIONB
VAX_DECISIONC
VAX_DECISIOND
VAX_DECISIONE
VAX_KNOWEFF
VAX_WHOCOMMA
VAX_WHOCOMMB
VAX_WHOCOMMC
VAX_WHOCOMMD
VAX_HOWCOMMA
VAX_HOWCOMMB
VAX_HOWCOMMC
VAX_HOWCOMMD
VAX_HOWCOMME
VAX_HOWCOMMF
VAX_RECVACCA
VAX_RECVACCB
VAX_RECVACCC
VAX_RECVACCD
VAX_TRUSTDOC
VAX_INFOSCHA
VAX_INFOSCHB
VAX_DIFFICULT
VAX_TRANSPO
VAX_COST
VAX_TIME
VAX_SOCCOVID
VAX_SOCOTH
VAX_NEWSCOV
VAX_NEWSOTH
VAX_CONVCOV
VAX_CONVOTH
VAX_MMRUS
VAX_MMRLOCAL
VAX_MMROUTB
VAX_MMREDU
ACS_DEAF
ACS_BLIND
ACS_CONCEN
ACS_WALKING
ACS_DRESS
ACS_ERRANDS
ACS_DISABLED
WALKDIFF217
COMMDIFF217
KNW_CONFIDNT
KNW_HELP
CHR_CHLEV
SOC_ERRANDS
SOC_PARACTIV
SOC_SCWRKLIM
CIV_MEET
LAN_OTHERLAN
LAN_MEDIA
LAN_DOCTOR
LAN_SOCIAL
MAR_MARITAL
MAR_EVMARRY
MAR_LEGAL
MAR_WIDIVSEP
MARITAL
MARSTAT
LEGMSTAT
GROUP
START_DATE_R $
END_DATE_R $
ID_R
SOURCE
QUEX_LANG
P_OUTCOME
P_AGE_10R
P_EDUCATION_I_R
P_EDUCATION_I_R_IFLG
P_ONEVISIT
P_REMIND
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
PCRACEMATCH
P_ORIENT
P_METRO_R
CAL_HHDINC
CAL_REGION
CAL_HOMEOWN_R
P1_CALWT_CH
P2_CALWT_CH
WEIGHT_CH
P_STRATA_R
P_PSU_R  ;
FORMAT HHR_HHNUM_R                      HHR_HHNUM_R_.
NUMCHILD_R                       NUMCHILD_R_.
HHR_RELAT_SC                     HHR_RELAT_.
HHR_LEGALG_SC                    HHR_LEGALG_.
SCAGEY                           SCAGEY_.
SCC_GENDER_R                     SCC_GENDER_R_.
SCC_ENROLL                       SCC_ENROLL_.
SCC_DAYCARE                      SCC_DAYCARE_.
SCC_RACE_R                       SCC_RACE_R_.
SCC_RACEETH                      SCC_RACEETH_.
CHS_HEALTH                       CHS_HEALTH_.
CCC_ASTHMA                       CCC_ASTHMA_.
CCC_ASTHMA_R                     CCC_ASTHMA_R_.
COV_EVCOVID                      COV_EVCOVID_.
CDD_INTDIS                       CDD_INTDIS_.
CDD_INTDISNW                     CDD_INTDISNW_.
CDD_DEVDELAY                     CDD_DEVDELAY_.
CDD_DEVDELNW                     CDD_DEVDELNW_.
CDS_GLASSES                      CDS_GLASSES_.
CDS_DIFSEE                       CDS_DIFSEE_.
CDS_HEARAID                      CDS_HEARAID_.
CDS_DIFHEAR                      CDS_DIFHEAR_.
CDS_EQUIP                        CDS_EQUIP_.
CDS_DIFWALKA                     CDS_DIFWALKA_.
CDS_DIFWALKB                     CDS_DIFWALKB_.
CDS_DIFWALKC                     CDS_DIFWALKC_.
CDS_DIFYRDSA                     CDS_DIFYRDSA_.
CDS_DIFMILEA                     CDS_DIFMILEA_.
CDS_DIFYRDSB                     CDS_DIFYRDSB_.
CDS_DIFMILEB                     CDS_DIFMILEB_.
CDS_DIFYRDSC                     CDS_DIFYRDSC_.
CDS_DIFMILEC                     CDS_DIFMILEC_.
CDS_DIFUNDER                     CDS_DIFUNDER_.
CDS_DIFSPEAK                     CDS_DIFSPEAK_.
CDS_DIFSPKOT                     CDS_DIFSPKOT_.
CDS_DIFUNDOT                     CDS_DIFUNDOT_.
CDS_DIFLEARN                     CDS_DIFLEARN_.
CDS_DIFREM                       CDS_DIFREM_.
CDS_DIFPIKUP                     CDS_DIFPIKUP_.
CDS_DIFSELF                      CDS_DIFSELF_.
CAD_ANXIOUS                      CAD_ANXIOUS_.
CAD_DEPRESS                      CAD_DEPRESS_.
INJ_INJURY3M                     INJ_INJURY3M_.
CAU_HTHLASTA                     CAU_HTHLASTA_.
CAU_HTHLASTA_R                   CAU_HTHLASTA_R_.
CAU_VISITTYP                     CAU_VISITTYP_.
CAU_HTHLASTB                     CAU_HTHLASTB_.
CAU_HTHUSUAL                     CAU_HTHUSUAL_.
CAU_HTHTYPE                      CAU_HTHTYPE_.
CAU_NUMURGNT_R                   CAU_NUMURGNT_R_.
CAU_NUMHOSER_R                   CAU_NUMHOSER_R_.
CAU_DELAYED                      CAU_DELAYED_.
CAU_NOCARE                       CAU_NOCARE_.
CAU_PRESCRIP                     CAU_PRESCRIP_.
CAU_PRESCRIP_R                   CAU_PRESCRIP_R_.
CAU_DELAYRX                      CAU_DELAYRX_.
CAU_NORX                         CAU_NORX_.
CAU_EYEEXAM                      CAU_EYEEXAM_.
CAU_THERAPY                      CAU_THERAPY_.
CHI_INSURA                       CHI_INSURA_.
CHI_INSURB                       CHI_INSURB_.
CHI_INSURD                       CHI_INSURD_.
CHI_INSURE                       CHI_INSURE_.
CHI_INSURF                       CHI_INSURF_.
CHI_INSURG                       CHI_INSURG_.
CHI_INSURH_R                     CHI_INSURH_R_.
CHI_INSURH_UNK                   CHI_INSURH_UNK_.
CHI_INSURH_OTH                   CHI_INSURH_OTH_.
CHI_INSURED                      CHI_INSURED_.
SLE_VIOLENCE                     SLE_VIOLENCE_.
SLE_SEVDEPRS                     SLE_SEVDEPRS_.
SLE_INSULT                       SLE_INSULT_.
SLE_BASNEEDS                     SLE_BASNEEDS_.
PMB_NOPAY                        PMB_NOPAY_.
PMB_NOPAYNOW                     PMB_NOPAYNOW_.
PMB_WORRYPAY                     PMB_WORRYPAY_.
PMB_WORRYPAY_R                   PMB_WORRYPAY_R_.
SNP_SNAPBEN                      SNP_SNAPBEN_.
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
PCE_EMSUPP                       PCE_EMSUPP_.
PCE_RELYHELP                     PCE_RELYHELP_.
PCE_HELPOTH                      PCE_HELPOTH_.
PCE_PATHS                        PCE_PATHS_.
PCE_PARK                         PCE_PARK_.
PCE_RECCOMM                      PCE_RECCOMM_.
PCE_PLAYDAY                      PCE_PLAYDAY_.
PCE_OUTDOORS                     PCE_OUTDOORS_.
PCE_FRIENDS                      PCE_FRIENDS_.
PCE_PLAYFRND                     PCE_PLAYFRND_.
PCE_VIDEOFRN                     PCE_VIDEOFRN_.
PCE_RELYFRND                     PCE_RELYFRND_.
PCE_OPENFRND                     PCE_OPENFRND_.
PCE_SHARE                        PCE_SHARE_.
PCE_RELYADLT                     PCE_RELYADLT_.
PCE_ACTIVITYA                    PCE_ACTIVITYA_.
PCE_ACTIVITYB                    PCE_ACTIVITYB_.
PCE_ACTIVITYC                    PCE_ACTIVITYC_.
PCE_ACTIVITYD                    PCE_ACTIVITYD_.
PCE_ACTIVITYE                    PCE_ACTIVITYE_.
PCE_ACTIVITYF                    PCE_ACTIVITYF_.
PCE_ACTIVITYG                    PCE_ACTIVITYG_.
PCE_ACTIVITYH                    PCE_ACTIVITYH_.
PCE_SPORTS                       PCE_SPORTS_.
PCE_CLUBS                        PCE_CLUBS_.
PCE_SERVICE                      PCE_SERVICE_.
PCE_ARTS                         PCE_ARTS_.
PCE_READING                      PCE_READING_.
PCE_EXERCISE                     PCE_EXERCISE_.
PCE_CLOSESCH                     PCE_CLOSESCH_.
PCE_TEACHERS                     PCE_TEACHERS_.
PCE_PARTSCH                      PCE_PARTSCH_.
PCE_CLOSENEI                     PCE_CLOSENEI_.
PCE_NEIGHBOR                     PCE_NEIGHBOR_.
PCE_PARTNEI                      PCE_PARTNEI_.
PCE_ACTIVE                       PCE_ACTIVE_.
PCE_TOTAL                        PCE_TOTAL_.
PCE_RELA                         PCE_RELA_.
PCE_SAFE                         PCE_SAFE_.
PCE_SOC                          PCE_SOC_.
VAX_ALLREC                       VAX_ALLREC_.
VAX_FLU                          VAX_FLU_.
VAX_COVID                        VAX_COVID_.
VAX_GARDASIL                     VAX_GARDASIL_.
VAX_MMR                          VAX_MMR_.
VAX_HESCOVID                     VAX_HESCOVID_.
VAX_HESOTH                       VAX_HESOTH_.
VAX_CONCOVID                     VAX_CONCOVID_.
VAX_CONOTH                       VAX_CONOTH_.
VAX_IMPCOVID                     VAX_IMPCOVID_.
VAX_IMPOTH                       VAX_IMPOTH_.
VAX_SAFECOV                      VAX_SAFECOV_.
VAX_SAFEOTH                      VAX_SAFEOTH_.
VAX_EXEMPT                       VAX_EXEMPT_.
VAX_TOOMANY                      VAX_TOOMANY_.
VAX_SIDEEFF                      VAX_SIDEEFF_.
VAX_DECISIONA                    VAX_DECISIONA_.
VAX_DECISIONB                    VAX_DECISIONB_.
VAX_DECISIONC                    VAX_DECISIONC_.
VAX_DECISIOND                    VAX_DECISIOND_.
VAX_DECISIONE                    VAX_DECISIONE_.
VAX_KNOWEFF                      VAX_KNOWEFF_.
VAX_WHOCOMMA                     VAX_WHOCOMMA_.
VAX_WHOCOMMB                     VAX_WHOCOMMB_.
VAX_WHOCOMMC                     VAX_WHOCOMMC_.
VAX_WHOCOMMD                     VAX_WHOCOMMD_.
VAX_HOWCOMMA                     VAX_HOWCOMMA_.
VAX_HOWCOMMB                     VAX_HOWCOMMB_.
VAX_HOWCOMMC                     VAX_HOWCOMMC_.
VAX_HOWCOMMD                     VAX_HOWCOMMD_.
VAX_HOWCOMME                     VAX_HOWCOMME_.
VAX_HOWCOMMF                     VAX_HOWCOMMF_.
VAX_RECVACCA                     VAX_RECVACCA_.
VAX_RECVACCB                     VAX_RECVACCB_.
VAX_RECVACCC                     VAX_RECVACCC_.
VAX_RECVACCD                     VAX_RECVACCD_.
VAX_TRUSTDOC                     VAX_TRUSTDOC_.
VAX_INFOSCHA                     VAX_INFOSCHA_.
VAX_INFOSCHB                     VAX_INFOSCHB_.
VAX_DIFFICULT                    VAX_DIFFICULT_.
VAX_TRANSPO                      VAX_TRANSPO_.
VAX_COST                         VAX_COST_.
VAX_TIME                         VAX_TIME_.
VAX_SOCCOVID                     VAX_SOCCOVID_.
VAX_SOCOTH                       VAX_SOCOTH_.
VAX_NEWSCOV                      VAX_NEWSCOV_.
VAX_NEWSOTH                      VAX_NEWSOTH_.
VAX_CONVCOV                      VAX_CONVCOV_.
VAX_CONVOTH                      VAX_CONVOTH_.
VAX_MMRUS                        VAX_MMRUS_.
VAX_MMRLOCAL                     VAX_MMRLOCAL_.
VAX_MMROUTB                      VAX_MMROUTB_.
VAX_MMREDU                       VAX_MMREDU_.
ACS_DEAF                         ACS_DEAF_.
ACS_BLIND                        ACS_BLIND_.
ACS_CONCEN                       ACS_CONCEN_.
ACS_WALKING                      ACS_WALKING_.
ACS_DRESS                        ACS_DRESS_.
ACS_ERRANDS                      ACS_ERRANDS_.
ACS_DISABLED                     ACS_DISABLED_.
WALKDIFF217                      WALKDIFF217_.
COMMDIFF217                      COMMDIFF217_.
KNW_CONFIDNT                     KNW_CONFIDNT_.
KNW_HELP                         KNW_HELP_.
CHR_CHLEV                        CHR_CHLEV_.
SOC_ERRANDS                      SOC_ERRANDS_.
SOC_PARACTIV                     SOC_PARACTIV_.
SOC_SCWRKLIM                     SOC_SCWRKLIM_.
CIV_MEET                         CIV_MEET_.
LAN_OTHERLAN                     LAN_OTHERLAN_.
LAN_MEDIA                        LAN_MEDIA_.
LAN_DOCTOR                       LAN_DOCTOR_.
LAN_SOCIAL                       LAN_SOCIAL_.
MAR_MARITAL                      MAR_MARITAL_.
MAR_EVMARRY                      MAR_EVMARRY_.
MAR_LEGAL                        MAR_LEGAL_.
MAR_WIDIVSEP                     MAR_WIDIVSEP_.
MARITAL                          MARITAL_.
MARSTAT                          MARSTAT_.
LEGMSTAT                         LEGMSTAT_.
GROUP                            GROUP_.
SOURCE                           SOURCE_.
QUEX_LANG                        QUEX_LANG_.
P_OUTCOME                        P_OUTCOME_.
P_AGE_10R                        P_AGE_10R_.
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
PCRACEMATCH                      PCRACEMATCH_.
P_ORIENT                         P_ORIENT_.
P_METRO_R                        METRO_.
CAL_HHDINC                       CAL_HHDINC_.
CAL_REGION                       CAL_REGION_.
CAL_HOMEOWN_R                    CAL_HOMEOWN_R_.;
LABEL HHR_HHNUM_R = "Household size - topcoded"
NUMCHILD_R = "Number of children under 18 years old in household - topcoded"
HHR_RELAT_SC = "Relationship to this child? (Selected Child)"
HHR_LEGALG_SC = "Child's legal guardian? (Selected Child)"
SCAGEY = "DERIVED: Child's age"
SCC_GENDER_R = "RECODE: Selected child gender for weighting"
SCC_ENROLL = "Type of child's schooling attended"
SCC_DAYCARE = "Does child attend daycare at least once a week?"
SCC_RACE_R = "RECODE: Selected child race groupings for weighting"
SCC_RACEETH = "RECODE: Selected Child Race/Ethnicity"
CHS_HEALTH = "How would you rate your child's health?"
CCC_ASTHMA = "Has doctor ever informed you that your child has asthma?"
CCC_ASTHMA_R = "RECODE: Child ever diagnosed with asthma"
COV_EVCOVID = "Has your child ever had COVID-19?"
CDD_INTDIS = "Informed of your child's intellectual disability by a doctor?"
CDD_INTDISNW = "Does your child currently have an intellectual disability?"
CDD_DEVDELAY = "Doctor informed you of any other developmental delay of your child?"
CDD_DEVDELNW = "Does your child still have this other developmental delay?"
CDS_GLASSES = "Does your child wear glasses or contacts?"
CDS_DIFSEE = "Does your child have difficulty seeing?"
CDS_HEARAID = "Does your child use a hearing aid?"
CDS_DIFHEAR = "Does your child have difficulty hearing?"
CDS_EQUIP = "Does your child receive any assistance for walking?"
CDS_DIFWALKA = "Without using equipment or assistance, does your child have difficulty walking?"
CDS_DIFWALKB = "When using equipment or assistance, does your child have difficulty walking?"
CDS_DIFWALKC = "Compared with children of the same age, does your child have difficulty walking?"
CDS_DIFYRDSA = "Without using assistance, does your child have difficulty walking 100 yards?"
CDS_DIFMILEA = "Without using assistance, does your child have difficulty walking a third of a mile?"
CDS_DIFYRDSB = "When using assistance, does your child have difficulty walking 100 yards?"
CDS_DIFMILEB = "When using assistance, does your child have difficulty walking a third of a mile?"
CDS_DIFYRDSC = "Compared with children of the same age, does your child have difficulty walking 100 yards?"
CDS_DIFMILEC = "Compared with children of the same age, does your child have difficulty walking a third of a mile?"
CDS_DIFUNDER = "Does your child have difficulty understanding you?"
CDS_DIFSPEAK = "Do you have difficulty understanding your child?"
CDS_DIFSPKOT = "Your child has difficulty being understood by people inside of this household?"
CDS_DIFUNDOT = "Your child has difficulty being understood by people outside of this household?"
CDS_DIFLEARN = "Does your child have difficulty learning compared with other children?"
CDS_DIFREM = "Does your child have difficulty remembering compared with other children?"
CDS_DIFPIKUP = "Does your child have difficulty picking up small objects compared with other children?"
CDS_DIFSELF = "Does your child have difficulty with self-care?"
CAD_ANXIOUS = "How often does your child seem very anxious, nervous, or worried?"
CAD_DEPRESS = "How often does your child seem very sad or depressed?"
INJ_INJURY3M = "Past 3 months, did your child have an accident or an injury?"
CAU_HTHLASTA = "How long since your child last saw a doctor?"
CAU_HTHLASTA_R = "RECODE: Child saw doctor in past 12 months"
CAU_VISITTYP = "Was this a physical, or general purpose check-up for your child?"
CAU_HTHLASTB = "About how long has it been since your child last went for a physical?"
CAU_HTHUSUAL = "Is there a place that your child usually goes to when sick?"
CAU_HTHTYPE = "Usual place of child health care"
CAU_NUMURGNT_R = "Past 12 months, number of times child has gone to an urgent care center or clinic in a drug store - topcoded"
CAU_NUMHOSER_R = "Past 12 months, number of times child has gone to a hospital emergency room - topcoded"
CAU_DELAYED = "Past 12 months child's medical care delayed because of the cost"
CAU_NOCARE = "Past 12 months child didn't receive medical care because of the cost"
CAU_PRESCRIP = "Did child take prescription meds during the past 12 months?"
CAU_PRESCRIP_R = "RECODE: Child took prescription medication in past 12 months"
CAU_DELAYRX = "Past 12 months, did you delay filling a prescription to save money?"
CAU_NORX = "Past 12 months, did you need a prescription medication for your child, but did not get it because of the cost?"
CAU_EYEEXAM = "Child had an eye exam during the past 12 months"
CAU_THERAPY = "Past 12 months, did your child receive physical, speech, rehabilitative, or occupational therapy?"
CHI_INSURA = "Child insurance coverage: Self/family member employer, union"
CHI_INSURB = "Child insurance coverage: Self/family member purchased directly"
CHI_INSURD = "Child insurance coverage: Medicaid or government assistance plan"
CHI_INSURE = "Child insurance coverage: TRICARE or other military"
CHI_INSURF = "Child insurance coverage: VA"
CHI_INSURG = "Child insurance coverage: Indian Health Service"
CHI_INSURH_R = "Child insurance coverage: Medicare or any other insurance"
CHI_INSURH_UNK = "Child has private health insurance, Other/Unknown Source"
CHI_INSURH_OTH = "Other child health insurance reported"
CHI_INSURED = "DERIVED: Children's health insurance status"
SLE_VIOLENCE = "Child has been a victim of or witnessed violence in neighborhood"
SLE_SEVDEPRS = "Child ever lived with someone mentally ill/ severely depressed?"
SLE_INSULT = "Child ever lived with adult who frequently swore or insulted them"
SLE_BASNEEDS = "Child ever had basic needs not met such as needing food, doctor, or a safe place to stay"
PMB_NOPAY = "Past 12 months, any of your family members unable to pay medical bills"
PMB_NOPAYNOW = "Any of your family members currently unable to pay medical bills"
PMB_WORRYPAY = "Level of concern of ability to pay child's medical bills"
PMB_WORRYPAY_R = "RECODE: Very worried about being able to pay medical bills of child if you become sick/have accident"
SNP_SNAPBEN = "Last 30 days, any of your family members received food stamps"
FSC_WORRY = "Family worried food would run out before got money to buy more"
FSC_NOTLAST = "Food family bought did not last, no money to buy more"
FSC_AFFORD = "Family couldn't afford to eat balanced meals"
FSC_SKIP = "Last 30 days, you cut meal size or skipped meals"
FSC_SKIPNUM = "Last 30 days, number of days you cut meal size or skipped meals"
FSC_EATLESS = "Last 30 days, you ate less than felt should"
FSC_NOTEAT = "Last 30 days, you were hungry but didn't eat"
FSC_LOSEWT = "Last 30 days, you lost weight because not enough food"
FSC_NOEATDAY = "Last 30 days, you didn't eat for a whole day"
FSC_NOEATNUM = "Last 30 days, number of days you didn't eat whole day"
FSSTATD = "DERIVED: Food Security Scale 4 category recode"
PCE_EMSUPP = "Past 12 months, availability of day-to-day emotional support with your parenting"
PCE_RELYHELP = "Your family has relatives that they can count on"
PCE_HELPOTH = "Your family has non-relative members of your community that they can count on"
PCE_PATHS = "There are sidewalks in your neighborhood"
PCE_PARK = "There is a park/ playground in your neighborhood"
PCE_RECCOMM = "There is a recreation/ community center in your neighborhood"
PCE_PLAYDAY = "How safe is it for children to play outside during the day in your neighborhood?"
PCE_OUTDOORS = "How much time does your child spend outdoors on a weekend day?"
PCE_FRIENDS = "Does your child have difficulty making friends?"
PCE_PLAYFRND = "How many days does your child spend playing or hanging out with friends in person, weekly?"
PCE_VIDEOFRN = "Number of hours per week your child spends talking with friends on the phone/ video/ voice chat"
PCE_RELYFRND = "How much can your child rely on friends for help?"
PCE_OPENFRND = "How much can your child open up to friends?"
PCE_SHARE = "How well can you and your child share ideas or talk about things that really matter?"
PCE_RELYADLT = "Other adult besides you in the neighborhood/ community your child can rely on for guidance/ advice"
PCE_ACTIVITYA = "Activity with your child within past 7 days: Read books or told stories together"
PCE_ACTIVITYB = "Activity with your child within past 7 days: Cooked or enjoyed meals together"
PCE_ACTIVITYC = "Activity with your child within past 7 days: Educational activities"
PCE_ACTIVITYD = "Activity with your child within past 7 days: Spent time outdoors, including walks and sports"
PCE_ACTIVITYE = "Activity with your child within past 7 days: Watched TV or other media together"
PCE_ACTIVITYF = "Activity with your child within past 7 days: Played video games together"
PCE_ACTIVITYG = "Activity with your child within past 7 days: Played board or card games together"
PCE_ACTIVITYH = "Activity with your child within past 7 days: None of the above"
PCE_SPORTS = "Child currently participating in activities: Organized sports"
PCE_CLUBS = "Child currently participating in activities: Clubs, organizations, organized lessons"
PCE_SERVICE = "Child currently participating in activities: Community service or volunteer work"
PCE_ARTS = "Child spends free time doing: Music, visual, or performing arts"
PCE_READING = "Child spends free time doing: Reading books or listening to audiobooks"
PCE_EXERCISE = "Past week, number of days your child participated in a physical activity for at least 1 hour"
PCE_CLOSESCH = "Agree/Disagree: Your child feels close to people at school."
PCE_TEACHERS = "Agree/Disagree: Teachers care about your child"
PCE_PARTSCH = "Agree/Disagree: Your child feels like a part of the school."
PCE_CLOSENEI = "Agree/Disagree: Your child feels close to people in your neighborhood"
PCE_NEIGHBOR = "Agree/Disagree: Your neighbors care about your child"
PCE_PARTNEI = "Agree/Disagree: Your child feels like a part of the neighborhood"
PCE_ACTIVE = "DERIVED: Child Positive Childhood Experience Activity Score"
PCE_TOTAL = "DERIVED: Child Total Positive Childhood Experience Score"
PCE_RELA = "DERIVED: Child PCE Sub-category Score - Being in nurturing, supportive relationships"
PCE_SAFE = "DERIVED: Child PCE Sub-category Score - Living, developing, playing, and learning in safe, stable, nurturing environments"
PCE_SOC = "DERIVED: Child PCE Sub-category Score - Having opportunities for constructive social engagement and developing connectedness"
VAX_ALLREC = "Child received all recommended childhood vaccines"
VAX_FLU = "Past 12 months, has child had a flu vaccination?"
VAX_COVID = "Child had at least one dose of a COVID-19 vaccination"
VAX_GARDASIL = "Child had at least one dose of the human papillomavirus (HPV) vaccine"
VAX_MMR = "Child had the measles vaccine, sometimes called MMR"
VAX_HESCOVID = "Hesitance about COVID-19 vaccines for children?"
VAX_HESOTH = "Hesitance about other childhood vaccines (besides the COVID-19 vaccine)?"
VAX_CONCOVID = "Confidence that the COVID-19 vaccine benefits child?"
VAX_CONOTH = "Confidence that other childhood vaccines benefit child (besides the COVID-19 vaccine)?"
VAX_IMPCOVID = "Importance of the COVID-19 vaccine is for child's health?"
VAX_IMPOTH = "Importance of other childhood vaccines are for child's health (besides the COVID-19 vaccine)?"
VAX_SAFECOV = "Confidence that the COVID-19 vaccine is safe for child?"
VAX_SAFEOTH = "Confidence that other childhood vaccines are safe for child (besides the COVID-19 vaccine)?"
VAX_EXEMPT = "Ever requested permission or an exemption for child to attend daycare or school without required vaccination?"
VAX_TOOMANY = "Ever been concerned about child receiving too many vaccines at one time?"
VAX_SIDEEFF = "Ever been concerned about child experiencing serious, long term side effects from getting vaccinated?"
VAX_DECISIONA = "Because concerned getting child vaccinated: You delayed vaccinations"
VAX_DECISIONB = "Because concerned getting child vaccinated: You reduced number of vaccinations given in a single visit"
VAX_DECISIONC = "Because concerned getting child vaccinated: You declined some vaccinations"
VAX_DECISIOND = "Because concerned getting child vaccinated: You declined all vaccinations"
VAX_DECISIONE = "Because concerned getting child vaccinated: None of the above"
VAX_KNOWEFF = "Personally know anyone who has had a serious, long-term side effect from a vaccine?"
VAX_WHOCOMMA = "Communicated getting vaccine for your child: Doctor or other health care providers"
VAX_WHOCOMMB = "Communicated getting vaccine for your child: School or daycare"
VAX_WHOCOMMC = "Communicated getting vaccine for your child: Some other source"
VAX_WHOCOMMD = "Communicated getting vaccine for your child: Nobody has communicated with me about my child"
VAX_HOWCOMMA = "How doctors have communicated about your child getting vaccines: Face to Face"
VAX_HOWCOMMB = "How doctors have communicated about your child getting vaccines: Email or other electronic messages"
VAX_HOWCOMMC = "How doctors have communicated about your child getting vaccines: Text message"
VAX_HOWCOMMD = "How doctors have communicated about your child getting vaccines: Phone"
VAX_HOWCOMME = "How doctors have communicated about your child getting vaccines: Information sheets"
VAX_HOWCOMMF = "How doctors have communicated about your child getting vaccines: Other"
VAX_RECVACCA = "Doctor recommended your child get vaccine: Influenza"
VAX_RECVACCB = "Doctor recommended your child get vaccine: COVID-19"
VAX_RECVACCC = "Doctor recommended your child get vaccine: HPV or Gardasil"
VAX_RECVACCD = "Doctor recommended your child get vaccine: None of the above"
VAX_TRUSTDOC = "Child's doctor or health care provider is your most trusted source of information about childhood vaccines"
VAX_INFOSCHA = "Feelings about receiving information on vaccines from child's school or daycare"
VAX_INFOSCHB = "Feelings about the information on vaccines you received from child's school or daycare"
VAX_DIFFICULT = "Difficulty getting your child vaccinated"
VAX_TRANSPO = "Agree/Disagree: Getting your child vaccinated is difficult because of a lack of reliable transportation."
VAX_COST = "Agree/Disagree: Getting your child vaccinated is difficult because of the cost."
VAX_TIME = "Agree/Disagree: It is hard to find the time to take your child to get vaccinated."
VAX_SOCCOVID = "Sentiment of discussions seen on social media about the COVID-19 vaccine for children"
VAX_SOCOTH = "Sentiment of discussions seen on social media about other childhood vaccines (besides the COVID-19 vaccine)"
VAX_NEWSCOV = "Sentiment of discussions seen on television news about the COVID-19 vaccine for children"
VAX_NEWSOTH = "Sentiment of discussions seen on television news about other childhood vaccines (besides the COVID-19 vaccine)"
VAX_CONVCOV = "Sentiment of conversations you have with friends or family about the COVID-19 vaccine for children"
VAX_CONVOTH = "Sentiment of conversations with friends or family about other childhood vaccines (besides the COVID-19 vaccine)"
VAX_MMRUS = "Agree/Disagree: Measles poses a health risk in the United States."
VAX_MMRLOCAL = "Agree/Disagree: Measles poses a health risk in my city or town."
VAX_MMROUTB = "Past 6 months, heard or seen anything about recent measles outbreaks in the United States?"
VAX_MMREDU = "How concerned are you about 21 day unvaccinated measles quarantine causing a disruption to your child's education?"
ACS_DEAF = "Is your child deaf or have serious difficulty hearing?"
ACS_BLIND = "Is your child blind or have serious difficulty seeing even when wearing glasses?"
ACS_CONCEN = "Does your child have serious difficulty concentrating, remembering, or making decisions?"
ACS_WALKING = "Does your child have serious difficulty walking or climbing stairs?"
ACS_DRESS = "Does your child have difficulty dressing or bathing?"
ACS_ERRANDS = "Does your child have difficulty doing errands alone such as visiting a doctor's office or shopping?"
ACS_DISABLED = "DERIVED: Child's ACS disability status"
WALKDIFF217 = "DERIVED: Child's walking difficulty"
COMMDIFF217 = "DERIVED: Child's communication difficulty"
KNW_CONFIDNT = "Confidence in your responses about your child"
KNW_HELP = "Received help answer questions about child"
CHR_CHLEV = "Ever told you had high cholesterol (adult)"
SOC_ERRANDS = "You have difficulty doing errands alone (adult)"
SOC_PARACTIV = "You have difficulty participating in social activities (adult)"
SOC_SCWRKLIM = "Work limited due to your health problem (adult)"
CIV_MEET = "Past 12 months, you attended local public meeting (adult)"
LAN_OTHERLAN = "You speak language other than English at home (adult)"
LAN_MEDIA = "Language you use most often when watching TV, read news, listen to radio (adult)"
LAN_DOCTOR = "What language you use most often when seeing a doctor (adult)"
LAN_SOCIAL = "What language you use most often when participating in social activities (adult)"
MAR_MARITAL = "Are you now married, living with a partner, or neither (adult)"
MAR_EVMARRY = "Have you ever been married (adult)"
MAR_LEGAL = "Your current legal marital status (adult)"
MAR_WIDIVSEP = "Are you widowed, divorced or separated (adult)"
MARITAL = "RECODE: Your current Marriage Status - 2 levels (adult)"
MARSTAT = "DERIVED: Your current marital status (adult)"
LEGMSTAT = "DERIVED: Your legal marital status (adult)"
GROUP = "Paradata: Randomize group assignment"
START_DATE_R = "Date the survey started"
END_DATE_R = "Date the survey was completed"
ID_R = "Respondent Survey ID"
SOURCE = "Paradata: Panel Provider"
QUEX_LANG = "Language of interview"
P_OUTCOME = "Paradata: Outcome code"
P_AGE_10R = "DERIVED: Age - 10 levels"
P_EDUCATION_I_R = "Panel Profile: Education - 3 levels"
P_EDUCATION_I_R_IFLG = "Imputation flag for panel profile variable: <P_EDUCATION_I_R>"
P_ONEVISIT = "Paradata: Whether the survey was completed in a single session"
P_REMIND = "Paradata: Number of reminders sent"
P_DEVICE = "Paradata: Device used to complete survey (web)"
P_MODE = "Paradata: Mode of interview"
P_VISIT = "Paradata: Number of times the questionnaire was accessed/login attempts (web)"
P_POVERTY4_R = "RECODE: Poverty Status (ratio of household income to the federal poverty level) - 4 levels"
P_EMPLOY = "Panel Profile: Employment status"
P_REGION = "Panel Profile: Region"
P_HOMEOWN_R = "DERIVED: Home ownership - 2 levels"
P_CITIZEN = "Panel Profile: Citizenship status"
P_VETERAN = "Panel Profile: Veteran status"
P_USBORN = "Panel Profile: Is respondent US born"
PCRACEMATCH = "DERIVED: Child race/ethnicity same as parent/guardian"
P_ORIENT = "Panel Profile: Sexual Orientation"
P_METRO_R = "Calibration Variable: Metropolitan status derived from panel profile for calibration"
CAL_HHDINC = "Calibration Variable: Income - 3 levels"
CAL_REGION = "Calibration Variable: Region"
CAL_HOMEOWN_R = "Calibration Variable: Home ownership - 2 levels"
P1_CALWT_CH = "Panel provider 1 weight calibrated to NHIS control totals"
P2_CALWT_CH = "Panel provider 2 weight calibrated to NHIS control totals"
WEIGHT_CH = "Final combined weight calibrated to NHIS control totals"
P_STRATA_R = "Panel Sample Strata"
P_PSU_R = "Panel PSU";
run;
