
/*
RSS T1 PUF Input Program: This program imports RSS CSV file or SAS dataset into SAS working directory as a SAS dataset:
 - Loads formats to the working directory
 - Imports the RSS data as a SAS dataset
 - Applies labels and formats to the SAS dataset

 Before running this program, please download the CSV file or SAS dataset to a folder called 
 C:\RSS1(on a machine running Windows).

 If importing the SAS dataset, please change the filename statement below, as well as replace 
 the data step below with: 
      data &dsn. ;
      	set in.&filename ;
      run ;

*/

%let folderpath = C:\RSS1; *folder location of CSV file;
%let filename = RSS1_PUF_T1.csv; *CSV file name to import into sas;
%let dsn = rss1; *SAS dataset name for output dataset;
%let formatcat= work.formats; *SAS formats name in temp working folder;

libname in "&folderpath";

proc format library=&formatcat;
VALUE AGREEDK_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	1= "Strongly disagree"
 	2= "Somewhat disagree"
 	3= "Somewhat agree"
 	4= "Strongly agree";
VALUE AGREE_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	1= "Strongly disagree"
 	2= "Somewhat disagree"
 	3= "Somewhat agree"
 	4= "Strongly agree";
VALUE ALCOHOL_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	1= "Decreases risk"
 	2= "No effect"
 	3= "Increases risk";
VALUE BMICAT_	1= "Underweight (BMI <18.50)"
 	2= "Healthy weight (18.50 <= BMI <  25.00)"
 	3= "Overweight (25.00 <= BMI <  30.00)"
 	4= "Obese (BMI >=  30.00)"
 	9= "Unknown";
VALUE CAL_METRO_	1= "Metropolitan"
 	2= "Non-metropolitan";
VALUE CAROFTEN_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "1-2 times a year"
 	2= "Every 3-4 months"
 	3= "Every 5-8 weeks"
 	4= "Once a month"
 	5= "More than once a month";
VALUE CIGOFTEN_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	1= "Every day"
 	2= "Some days"
 	3= "Not at all";
VALUE CITIZEN2_	-7= "Profile question refusal"
 	0= "Not a U.S. citizen"
 	1= "U.S. citizen";
VALUE CIVIC_ENGAGE_	-8= "Unknown"
 	1= "Yes"
 	2= "No";
VALUE CONCERNED_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	0= "Not at all concerned"
 	1= "A little concerned"
 	2= "Somewhat concerned"
 	3= "Very concerned";
VALUE DENSE_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Did not have dense breast tissue"
 	1= "Did have dense breast tissue";
VALUE DEVICE_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	1= "Desktop/Laptop/netbook"
 	2= "Smartphone"
 	3= "Tablet"
 	4= "Other device (book reader, game console, etc.)"
 	5= "Phone interview (not online)";
VALUE DIFFICULTY_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	1= "No difficulty"
 	2= "Some difficulty"
 	3= "A lot of difficulty"
 	4= "Cannot do this at all";
VALUE EMPWRKLSWK_	-8= "Unknown"
 	0= "Did not work"
 	1= "Worked, Temp Absent, Seasonal, Family Job-no pay";
VALUE GENHLTH_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	1= "Excellent"
 	2= "Very good"
 	3= "Good"
 	4= "Fair"
 	5= "Poor";
VALUE HEPAUSE_	-9= "I don’t know if I have a portable air cleaner or purifier that uses a HEPA filter"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	0= "No"
 	1= "Yes";
VALUE HHSIZE_	1= "1"
 	2= "2"
 	3= "3"
 	4= "4"
 	5= "5"
 	6= "6+";
VALUE HOMEOWN_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	1= "Owned or being bought by someone in your household"
 	2= "Rented"
 	3= "Occupied without payment of cash rent";
VALUE HOWLONG_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	0= "Never"
 	1= "Less than 12 months ago"
 	2= "More than 1 year but less than 2 years ago"
 	3= "More than 2 years but less than 3 years ago"
 	4= "More than 3 years but less than 5 years ago"
 	5= "More than 5 years but less than 10 years ago"
 	6= "10 years ago or more";
VALUE HTHTYPE_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	0= "I do not go to one place most often"
 	1= "A doctor's office or health center"
 	2= "Urgent care center or clinic in a drug store or grocery store"
 	3= "Hospital emergency room"
 	4= "A VA medical center or VA outpatient clinic"
 	5= "Some other place";
VALUE HTHUSUAL_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	1= "Yes, there is a single place"
 	2= "No, there is no place"
 	3= "Yes, there is more than one place";
VALUE IFLG_	0= "No imputation"
 	1= "Logical assignment"
 	2= "Statistical imputation";
VALUE IMPORTANT_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	0= "Not important at all"
 	1= "Slightly important"
 	2= "Moderately important"
 	3= "Very important";
VALUE INCOME_R_	1= "Less than $5,000"
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
VALUE INSUR2_	-7= "Profile question refusal"
 	0= "Does not have health insurance"
 	1= "Has health insurance";
VALUE LANG2_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	1= "English"
 	2= "Spanish"
 	3= "Another language";
VALUE LEARNMORE_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	1= "Talk with a doctor or other health care professional"
 	2= "Talk with family or friends"
 	3= "Get information from the CDC"
 	4= "Get information from your state or local health department"
 	5= "Search the internet"
 	6= "Something else";
VALUE LEGAL_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	1= "Married"
 	2= "Widowed"
 	3= "Divorced"
 	4= "Separated";
VALUE LEGMSTAT_	-8= "UNKNOWN"
 	1= "SEPARATED"
 	2= "DIVORCED"
 	3= "MARRIED"
 	4= "SINGLE/NEVER MARRIED"
 	5= "WIDOWED";
VALUE LEVEL_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	1= "A little"
 	2= "A lot"
 	3= "Somewhere in between a little and a lot";
VALUE LONGCOVID_	-8= "Unknown"
 	1= "Yes"
 	2= "No"
 	3= "Never had COVID";
VALUE MARITAL2_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	1= "Married"
 	2= "Living with a partner together as an unmarried couple"
 	3= "Neither";
VALUE MARITAL_	-8= "Unknown"
 	1= "Married"
 	2= "Not married";
VALUE MARSTAT_	-8= "UNKNOWN"
 	1= "MARRIED"
 	2= "WIDOWED"
 	3= "DIVORCED"
 	4= "SEPARATED"
 	5= "NEVER MARRIED"
 	6= "LIVING WITH PARTNER";
VALUE MODE2_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	1= "Web"
 	2= "CATI";
VALUE MTLOFTEN_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	0= "Never"
 	1= "Daily"
 	2= "Weekly"
 	3= "Monthly"
 	4= "A few times a year";
VALUE ONEVISIT_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	0= "Multiple sessions"
 	1= "Completed survey in single session";
VALUE ORDER_	-8= "Question not asked"
 	1= "Displayed 1st"
 	2= "Displayed 2nd"
 	3= "Displayed 3rd"
 	4= "Displayed 4th"
 	5= "Displayed 5th"
 	6= "Displayed 6th"
 	7= "Displayed 7th";
VALUE OUTCOME_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	1= "Never accessed the instrument"
 	2= "Accessed instrument but dropped off (did not reach last question of the survey)"
 	3= "Complete (reached last question)"
 	4= "Completed interview but case dropped due to quality concerns (e.g., speeding, excessive item nonresponse)";
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
VALUE P_AGEC_R_	70= "70+";
VALUE P_EDUC_R_	1= "High school graduate or less"
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
 	2= "Divorced/Separated"
 	3= "Widowed"
 	4= "Never married";
VALUE P_ORIENT_	1= "GAY OR LESBIAN"
 	2= "STRAIGHT, THAT IS NOT LESBIAN/GAY"
 	3= "BISEXUAL"
 	4= "SOMETHING ELSE";
VALUE P_RACE_R_	1= "White, non-Hispanic"
 	2= "Black, non-Hispanic"
 	3= "Other, non-Hispanic"
 	4= "Hispanic";
VALUE QUEX_LANG_	1= "ENGLISH"
 	2= "SPANISH";
VALUE REGION_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	1= "Northeast"
 	2= "Midwest"
 	3= "South"
 	4= "West";
VALUE SELECTALL_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	-5= "Edited response due to invalid logic, out of range responses, or identified outlier"
 	0= "Not selected"
 	1= "Selected";
VALUE SEX_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	1= "Male"
 	2= "Female";
VALUE SOURCE_	1= "Panel Provider 1"
 	2= "Panel Provider 2";
VALUE STOPPED_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	1= "Stopped use"
 	2= "Used less"
 	3= "My use of these products has not changed"
 	4= "Used more";
VALUE SUNOFTEN_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	0= "Never"
 	1= "Rarely"
 	2= "Sometimes"
 	3= "Most of the time"
 	4= "Always";
VALUE USBORN2_	
 	-7= "Explicit refusal/REF"
 	1= "Yes"
 	2= "No";
VALUE VENOFTEN_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	0= "Never"
 	1= "Rarely"
 	2= "Sometimes"
 	3= "Always";
VALUE VETERAN_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	0= "Not a veteran"
 	1= "Veteran";
VALUE WHYNOWRK_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	0= "Unemployed, laid off, looking for work"
 	1= "Seasonal/contract work"
 	2= "Retired"
 	3= "Unable to work for health reasons/disabled"
 	4= "Taking care of house or family"
 	5= "Going to school"
 	6= "Working at a family-owned job or business, but not for pay"
 	7= "Other";
VALUE WIDIVSEP_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	1= "Widowed"
 	2= "Divorced"
 	3= "Separated";
VALUE WORRIED_	-9= "Don't know"
 	-8= "Question not asked"
 	-7= "Explicit refusal/REF"
 	-6= "Skipped/Implied refusal"
 	1= "Very worried"
 	2= "Somewhat worried"
 	3= "Not at all worried";
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
length
HIS_GENERAL		8
CHR_HYPEV		8
CHR_HYPDIF		8
CHR_HYP12M		8
CHR_HYPMED		8
CHR_CHLEV		8
CHR_CHDEV		8
CHR_ASEV		8
CHR_CANEV		8
DIB_PREDIB		8
DIB_GESDIB		8
DIB_DIBEV		8
BMI_PREGNOW		8
BMICAT		8
SOC_ERRANDS		8
SOC_PARACTIV		8
SOC_SCWRKLIM		8
PAY_PAYWORRY		8
CVL_HEARDEV		8
CVL_REAL		8
CVL_REAL_O		8
CVL_SERIOUS		8
CVL_SERIOUS_O		8
CVL_DEPRESS		8
CVL_DEPRESS_O		8
CVL_NORMPAIN		8
CVL_NORMPAIN_O		8
CVL_EMPLOYER		8
CVL_EMPLOYER_O		8
CVL_MEDIA		8
CVL_MEDIA_O		8
CVL_PASSED		8
CVL_PASSED_O		8
CVL_COVIDEV		8
CVL_SYMPT3M		8
CVL_LONGCVEV		8
LONGCOVID		8
CVL_LONGOTH		8
CVL_LEARNMOR		8
ACC_DNCEXAM		8
ACC_DNCDELAY		8
ACC_DNCCOST		8
ACC_HTHLAST		8
ACC_HTHUSUAL		8
ACC_HTHTYPE		8
ACC_HOSP12M		8
ACC_EYE12M		8
ACC_THER12M		8
INT_ACCESS		8
INT_HOMEACC		8
INT_USEMED		8
INT_USEDOC		8
INT_USETEST		8
PRV_BPCHECK		8
PRV_CHLCHECK		8
PRV_DIBCHECK		8
CAN_MAMMEV		8
CAN_RECENTM		8
CAN_BDENSITY		8
CAN_BDENSINF_C1		8
CAN_BDENSINF_C2		8
CAN_BDENSINF_C3		8
CAN_BDENSINF_C4		8
CAN_DENSE		8
OVA_TUBETIED		8
OVA_TUBECUT		8
OVA_TUBEREM		8
OVA_OVARIES		8
GEN_INTRO		8
GEN_HLTHINS		8
GEN_LIFEINS		8
GEN_DISAINS		8
GEN_JOB		8
GEN_TESTEV		8
CRI_ALCOHOL		8
SUN_USEFACE		8
SUN_USESKIN		8
SUN_AFFORD		8
SUN_INGRED		8
SUN_SPRAY		8
SUN_FEEL		8
SUN_NOHARM		8
SUN_REAPPLY		8
SUN_SAFETY		8
SUN_CLOUDY		8
MTL_ANXIETY		8
MTL_ANXMEDS		8
MTL_ANXLVL		8
MTL_DEPRESS		8
MTL_DEPMEDS		8
MTL_DEPLVL		8
CIG_SMKEV		8
CIG_SMKNOW		8
CAR_USE		8
CAR_FREQUSE		8
CAR_STOPUSE		8
VEN_USE		8
VEN_ACDUST		8
VEN_ACSMOKE		8
VEN_ACVIRUS		8
VEN_ACOTHER		8
VEN_HEPAUSE		8
VEN_HPNOHEAR		8
VEN_HPNONEED		8
VEN_HPNOCOST		8
VEN_HPNOLOUD		8
VEN_HPNOFIND		8
VEN_HPNOOTH		8
VEN_ACNONEED		8
VEN_ACNOCOST		8
VEN_ACNOLOUD		8
VEN_ACNOOTH		8
IPV_PUSH		8
IPV_HIT		8
IPV_KICK		8
IPV_HAIR		8
IPV_SLAM		8
IPV_CHOKE		8
IPV_KNIFE		8
IPV_GUN		8
IPV_ANY		8
IPV_SEV		8
MAR_MARITAL		8
MAR_EVMARRY		8
MAR_LEGAL		8
MAR_WIDIVSEP		8
MARITAL		8
MARSTAT		8
LEGMSTAT		8
EMP_EMPLOY		8
EMP_ABSENTWK		8
EMP_WHYNOWRK		8
EMPWRKLSWK		8
CIV_VOL12M		8
CIV_VOLOTH		8
CIV_MEET		8
CIV_VOTELOCL		8
CIVIC_ENGAGE		8
LAN_OTHERLAN		8
LAN_MEDIA		8
LAN_DOCTOR		8
LAN_SOCIAL		8
TEL_NONCELL		8
TEL_CELL		8
TEL_HHCELL		8
START_DATE_R	$	5
END_DATE_R	$	5
ID_R		8
P_OUTCOME		8
SOURCE		8
QUEX_LANG		8
P_GENDER		8
P_GENDERID		8
P_ORIENT		8
P_EDUC_R		8
P_EDUC_R_IFLG		8
P_RACE_R		8
P_HHSIZE_R		8
P_AGEC_R		8
P_INCOME_R		8
P_INCOME_R_IFLG		8
P_POVERTY		8
P_EMPLOY		8
P_MARITAL		8
P_REGION		8
P_HOMEOWN		8
P_HOMEOWN_IFLG		8
P_METRO_R		8
P_METRO_R_IFLG		8
P_CITIZEN		8
P_VETERAN		8
P_INSUR		8
P_USBORN		8
P_VISIT		8
P_ONEVISIT		8
P_REMIND		8
P_CATIATT		8
P_MODE		8
P_DEVICE		8
P_STRATA		8
P_PSU		8
P1_CALWT_M1		8
P2_CALWT_M1		8
WEIGHT_M1		8
;
input
HIS_GENERAL	
CHR_HYPEV	
CHR_HYPDIF	
CHR_HYP12M	
CHR_HYPMED	
CHR_CHLEV	
CHR_CHDEV	
CHR_ASEV	
CHR_CANEV	
DIB_PREDIB	
DIB_GESDIB	
DIB_DIBEV	
BMI_PREGNOW	
BMICAT	
SOC_ERRANDS	
SOC_PARACTIV	
SOC_SCWRKLIM	
PAY_PAYWORRY	
CVL_HEARDEV	
CVL_REAL	
CVL_REAL_O	
CVL_SERIOUS	
CVL_SERIOUS_O	
CVL_DEPRESS	
CVL_DEPRESS_O	
CVL_NORMPAIN	
CVL_NORMPAIN_O	
CVL_EMPLOYER	
CVL_EMPLOYER_O	
CVL_MEDIA	
CVL_MEDIA_O	
CVL_PASSED	
CVL_PASSED_O	
CVL_COVIDEV	
CVL_SYMPT3M	
CVL_LONGCVEV	
LONGCOVID	
CVL_LONGOTH	
CVL_LEARNMOR	
ACC_DNCEXAM	
ACC_DNCDELAY	
ACC_DNCCOST	
ACC_HTHLAST	
ACC_HTHUSUAL	
ACC_HTHTYPE	
ACC_HOSP12M	
ACC_EYE12M	
ACC_THER12M	
INT_ACCESS	
INT_HOMEACC	
INT_USEMED	
INT_USEDOC	
INT_USETEST	
PRV_BPCHECK	
PRV_CHLCHECK	
PRV_DIBCHECK	
CAN_MAMMEV	
CAN_RECENTM	
CAN_BDENSITY	
CAN_BDENSINF_C1	
CAN_BDENSINF_C2	
CAN_BDENSINF_C3	
CAN_BDENSINF_C4	
CAN_DENSE	
OVA_TUBETIED	
OVA_TUBECUT	
OVA_TUBEREM	
OVA_OVARIES	
GEN_INTRO	
GEN_HLTHINS	
GEN_LIFEINS	
GEN_DISAINS	
GEN_JOB	
GEN_TESTEV	
CRI_ALCOHOL	
SUN_USEFACE	
SUN_USESKIN	
SUN_AFFORD	
SUN_INGRED	
SUN_SPRAY	
SUN_FEEL	
SUN_NOHARM	
SUN_REAPPLY	
SUN_SAFETY	
SUN_CLOUDY	
MTL_ANXIETY	
MTL_ANXMEDS	
MTL_ANXLVL	
MTL_DEPRESS	
MTL_DEPMEDS	
MTL_DEPLVL	
CIG_SMKEV	
CIG_SMKNOW	
CAR_USE	
CAR_FREQUSE	
CAR_STOPUSE	
VEN_USE	
VEN_ACDUST	
VEN_ACSMOKE	
VEN_ACVIRUS	
VEN_ACOTHER	
VEN_HEPAUSE	
VEN_HPNOHEAR	
VEN_HPNONEED	
VEN_HPNOCOST	
VEN_HPNOLOUD	
VEN_HPNOFIND	
VEN_HPNOOTH	
VEN_ACNONEED	
VEN_ACNOCOST	
VEN_ACNOLOUD	
VEN_ACNOOTH	
IPV_PUSH	
IPV_HIT	
IPV_KICK	
IPV_HAIR	
IPV_SLAM	
IPV_CHOKE	
IPV_KNIFE	
IPV_GUN	
IPV_ANY	
IPV_SEV	
MAR_MARITAL	
MAR_EVMARRY	
MAR_LEGAL	
MAR_WIDIVSEP	
MARITAL	
MARSTAT	
LEGMSTAT	
EMP_EMPLOY	
EMP_ABSENTWK	
EMP_WHYNOWRK	
EMPWRKLSWK	
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
START_DATE_R	$
END_DATE_R	$
ID_R	
P_OUTCOME	
SOURCE	
QUEX_LANG	
P_GENDER	
P_GENDERID	
P_ORIENT	
P_EDUC_R	
P_EDUC_R_IFLG	
P_RACE_R	
P_HHSIZE_R	
P_AGEC_R	
P_INCOME_R	
P_INCOME_R_IFLG	
P_POVERTY	
P_EMPLOY	
P_MARITAL	
P_REGION	
P_HOMEOWN	
P_HOMEOWN_IFLG	
P_METRO_R	
P_METRO_R_IFLG	
P_CITIZEN	
P_VETERAN	
P_INSUR	
P_USBORN	
P_VISIT	
P_ONEVISIT	
P_REMIND	
P_CATIATT	
P_MODE	
P_DEVICE	
P_STRATA	
P_PSU	
P1_CALWT_M1	
P2_CALWT_M1	
WEIGHT_M1	
;
format
ACC_DNCCOST	YESNO_.
ACC_DNCDELAY	YESNO_.
ACC_DNCEXAM	HOWLONG_.
ACC_EYE12M	YESNO_.
ACC_HOSP12M	YESNO_.
ACC_HTHLAST	HOWLONG_.
ACC_HTHTYPE	HTHTYPE_.
ACC_HTHUSUAL	HTHUSUAL_.
ACC_THER12M	YESNO_.
BMICAT	BMICAT_.
BMI_PREGNOW	YESNO_.
CAN_BDENSINF_C1	SELECTALL_.
CAN_BDENSINF_C2	SELECTALL_.
CAN_BDENSINF_C3	SELECTALL_.
CAN_BDENSINF_C4	SELECTALL_.
CAN_BDENSITY	YESNO_.
CAN_DENSE	DENSE_.
CAN_MAMMEV	YESNO_.
CAN_RECENTM	HOWLONG_.
CAR_FREQUSE	CAROFTEN_.
CAR_STOPUSE	STOPPED_.
CAR_USE	YESNO_.
CHR_ASEV	YESNO_.
CHR_CANEV	YESNO_.
CHR_CHDEV	YESNO_.
CHR_CHLEV	YESNO_.
CHR_HYP12M	YESNO_.
CHR_HYPDIF	YESNO_.
CHR_HYPEV	YESNO_.
CHR_HYPMED	YESNO_.
CIG_SMKEV	YESNO_.
CIG_SMKNOW	CIGOFTEN_.
CIVIC_ENGAGE	CIVIC_ENGAGE_.
CIV_MEET	YESNO_.
CIV_VOL12M	YESNO_.
CIV_VOLOTH	YESNO_.
CIV_VOTELOCL	YESNO_.
CRI_ALCOHOL	ALCOHOL_.
CVL_COVIDEV	YESNO_.
CVL_DEPRESS	AGREEDK_.
CVL_DEPRESS_O	ORDER_.
CVL_EMPLOYER	AGREEDK_.
CVL_EMPLOYER_O	ORDER_.
CVL_HEARDEV	YESNO_.
CVL_LEARNMOR	LEARNMORE_.
CVL_LONGCVEV	YESNO_.
CVL_LONGOTH	YESNO_.
CVL_MEDIA	AGREEDK_.
CVL_MEDIA_O	ORDER_.
CVL_NORMPAIN	AGREEDK_.
CVL_NORMPAIN_O	ORDER_.
CVL_PASSED	AGREEDK_.
CVL_PASSED_O	ORDER_.
CVL_REAL	AGREEDK_.
CVL_REAL_O	ORDER_.
CVL_SERIOUS	AGREEDK_.
CVL_SERIOUS_O	ORDER_.
CVL_SYMPT3M	YESNO_.
DIB_DIBEV	YESNO_.
DIB_GESDIB	YESNO_.
DIB_PREDIB	YESNO_.
EMPWRKLSWK	EMPWRKLSWK_.
EMP_ABSENTWK	YESNO_.
EMP_EMPLOY	YESNO_.
EMP_WHYNOWRK	WHYNOWRK_.
GEN_DISAINS	CONCERNED_.
GEN_HLTHINS	CONCERNED_.
GEN_INTRO	YESNO_.
GEN_JOB	CONCERNED_.
GEN_LIFEINS	CONCERNED_.
GEN_TESTEV	YESNO_.
HIS_GENERAL	GENHLTH_.
INT_ACCESS	YESNO_.
INT_HOMEACC	YESNO_.
INT_USEDOC	YESNO_.
INT_USEMED	YESNO_.
INT_USETEST	YESNO_.
IPV_ANY	YESNO_.
IPV_CHOKE	YESNO_.
IPV_GUN	YESNO_.
IPV_HAIR	YESNO_.
IPV_HIT	YESNO_.
IPV_KICK	YESNO_.
IPV_KNIFE	YESNO_.
IPV_PUSH	YESNO_.
IPV_SEV	YESNO_.
IPV_SLAM	YESNO_.
LAN_DOCTOR	LANG2_.
LAN_MEDIA	LANG2_.
LAN_OTHERLAN	YESNO_.
LAN_SOCIAL	LANG2_.
LEGMSTAT	LEGMSTAT_.
LONGCOVID	LONGCOVID_.
MARITAL	MARITAL_.
MARSTAT	MARSTAT_.
MAR_EVMARRY	YESNO_.
MAR_LEGAL	LEGAL_.
MAR_MARITAL	MARITAL2_.
MAR_WIDIVSEP	WIDIVSEP_.
MTL_ANXIETY	MTLOFTEN_.
MTL_ANXLVL	LEVEL_.
MTL_ANXMEDS	YESNO_.
MTL_DEPLVL	LEVEL_.
MTL_DEPMEDS	YESNO_.
MTL_DEPRESS	MTLOFTEN_.
OVA_OVARIES	YESNO_.
OVA_TUBECUT	YESNO_.
OVA_TUBEREM	YESNO_.
OVA_TUBETIED	YESNO_.
PAY_PAYWORRY	WORRIED_.
PRV_BPCHECK	HOWLONG_.
PRV_CHLCHECK	HOWLONG_.
PRV_DIBCHECK	HOWLONG_.
P_AGEC_R	P_AGEC_R_.
P_CITIZEN	CITIZEN2_.
P_DEVICE	DEVICE_.
P_EDUC_R	P_EDUC_R_.
P_EDUC_R_IFLG	IFLG_.
P_EMPLOY	P_EMPLOY_.
P_GENDER	SEX_.
P_GENDERID	P_GENDERID_.
P_HHSIZE_R	HHSIZE_.
P_HOMEOWN	HOMEOWN_.
P_HOMEOWN_IFLG	IFLG_.
P_INCOME_R	INCOME_R_.
P_INCOME_R_IFLG	IFLG_.
P_INSUR	INSUR2_.
P_MARITAL	P_MARITAL_.
P_METRO_R	CAL_METRO_.
P_METRO_R_IFLG	IFLG_.
P_MODE	MODE2_.
P_ONEVISIT	ONEVISIT_.
P_ORIENT	P_ORIENT_.
P_OUTCOME	OUTCOME_.
P_POVERTY	POVERTY_.
P_RACE_R	P_RACE_R_.
P_REGION	REGION_.
P_USBORN	USBORN2_.
P_VETERAN	VETERAN_.
QUEX_LANG	QUEX_LANG_.
SOC_ERRANDS	DIFFICULTY_.
SOC_PARACTIV	DIFFICULTY_.
SOC_SCWRKLIM	YESNO_.
SOURCE	SOURCE_.
SUN_AFFORD	IMPORTANT_.
SUN_CLOUDY	AGREE_.
SUN_FEEL	IMPORTANT_.
SUN_INGRED	IMPORTANT_.
SUN_NOHARM	AGREE_.
SUN_REAPPLY	AGREE_.
SUN_SAFETY	AGREE_.
SUN_SPRAY	IMPORTANT_.
SUN_USEFACE	SUNOFTEN_.
SUN_USESKIN	SUNOFTEN_.
TEL_CELL	YESNO_.
TEL_HHCELL	YESNO_.
TEL_NONCELL	YESNO_.
VEN_ACDUST	YESNO_.
VEN_ACNOCOST	YESNO_.
VEN_ACNOLOUD	YESNO_.
VEN_ACNONEED	YESNO_.
VEN_ACNOOTH	YESNO_.
VEN_ACOTHER	YESNO_.
VEN_ACSMOKE	YESNO_.
VEN_ACVIRUS	YESNO_.
VEN_HEPAUSE	HEPAUSE_.
VEN_HPNOCOST	YESNO_.
VEN_HPNOFIND	YESNO_.
VEN_HPNOHEAR	YESNO_.
VEN_HPNOLOUD	YESNO_.
VEN_HPNONEED	YESNO_.
VEN_HPNOOTH	YESNO_.
VEN_USE	VENOFTEN_.
;
label
HIS_GENERAL = "Self-reported health status"
CHR_HYPEV = "Ever been told you had hypertension"
CHR_HYPDIF = "Told had hypertension on two or more visits"
CHR_HYP12M = "Hypertension, past 12 months"
CHR_HYPMED = "Now taking high blood pressure medication"
CHR_CHLEV = "Ever told you had high cholesterol"
CHR_CHDEV = "Ever been told you had coronary heart disease"
CHR_ASEV = "Ever been told you had asthma"
CHR_CANEV = "Ever been told you had cancer"
DIB_PREDIB = "Ever been told you had prediabetes"
DIB_GESDIB = "Ever been told you had gestational diabetes"
DIB_DIBEV = "Ever been told you had diabetes"
BMI_PREGNOW = "Currently pregnant"
BMICAT = "DERIVED: 4 level BMI categorization"
SOC_ERRANDS = "Difficulty doing errands alone"
SOC_PARACTIV = "Difficulty participating in social activities"
SOC_SCWRKLIM = "Work limited due to health problem"
PAY_PAYWORRY = "Get sick or have accident, how worried about ability to pay bills"
CVL_HEARDEV = "Ever heard of Long COVID"
CVL_REAL = "Agree-disagree: Long COVID is a real illness"
CVL_REAL_O = "Order of questionnaire appearance: CVL_REAL"
CVL_SERIOUS = "Agree-disagree: Long COVID can be debilitating"
CVL_SERIOUS_O = "Order of questionnaire appearance: CVL_SERIOUS"
CVL_DEPRESS = "Agree-disagree: people with Long COVID may just be depressed"
CVL_DEPRESS_O = "Order of questionnaire appearance: CVL_DEPRESS"
CVL_NORMPAIN = "Agree-disagree: Long COVID symptoms just normal aches and pains"
CVL_NORMPAIN_O = "Order of questionnaire appearance: CVL_NORMPAIN"
CVL_EMPLOYER = "Agree-disagree: employers should provide accommodations for Long COVID"
CVL_EMPLOYER_O = "Order of questionnaire appearance: CVL_EMPLOYER"
CVL_MEDIA = "Agree-disagree: media exaggerates Long COVID"
CVL_MEDIA_O = "Order of questionnaire appearance: CVL_MEDIA"
CVL_PASSED = "Agree-disagree: Long COVID can be passed from one person to another"
CVL_PASSED_O = "Order of questionnaire appearance: CVL_PASSED"
CVL_COVIDEV = "Ever had COVID-19"
CVL_SYMPT3M = "Had symptoms lasting 3 months or longer not present before having COVID-19"
CVL_LONGCVEV = "Ever been told you had Long COVID"
LONGCOVID = "DERIVED: Experienced Long COVID symptoms"
CVL_LONGOTH = "Know anyone diagnosed with Long COVID"
CVL_LEARNMOR = "How would first try to learn more about Long COVID"
ACC_DNCEXAM = "Time since last dental exam/cleaning"
ACC_DNCDELAY = "Delayed dental care due to cost, past 12 months"
ACC_DNCCOST = "Needed dental care but did not get it due to cost, past 12 months"
ACC_HTHLAST = "Time since last saw doctor about your health"
ACC_HTHUSUAL = "Have a usual place to go for care"
ACC_HTHTYPE = "Type of place for usual care"
ACC_HOSP12M = "Hospitalized overnight, past 12 months"
ACC_EYE12M = "Had eye exam, past 12 months"
ACC_THER12M = "Received physical / speech / rehabilitative / occupational therapy, past 12 months"
INT_ACCESS = "Access to internet"
INT_HOMEACC = "Access to internet from home"
INT_USEMED = "Use internet to look for health or medical information, past 12 months"
INT_USEDOC = "Use internet to communicate with doctor/doctor's office, past 12 months"
INT_USETEST = "Use internet to look up medical test results, past 12 months"
PRV_BPCHECK = "Last time had blood pressure checked"
PRV_CHLCHECK = "Last time had cholesterol checked"
PRV_DIBCHECK = "Last time had test for high blood sugar or diabetes"
CAN_MAMMEV = "Ever had a mammogram"
CAN_RECENTM = "Time since most recent mammogram"
CAN_BDENSITY = "After mammogram, told about breast density"
CAN_BDENSINF_C1 = "After mammogram, how told about breast density: Conversation in-person or over the phone"
CAN_BDENSINF_C2 = "After mammogram, how told about breast density: Letter in the mail"
CAN_BDENSINF_C3 = "After mammogram, how told about breast density: Electronic health record online portal"
CAN_BDENSINF_C4 = "After mammogram, how told about breast density: Another way"
CAN_DENSE = "Most recent mammogram show dense breast tissue"
OVA_TUBETIED = "Have had fallopian tubes tied"
OVA_TUBECUT = "Have had fallopian tubes cut"
OVA_TUBEREM = "Have had both fallopian tubes removed"
OVA_OVARIES = "Have had both ovaries removed"
GEN_INTRO = "Ever heard of genetic testing for being at greater risk of cancer"
GEN_HLTHINS = "How concerned genetic testing for cancer will impact health insurance"
GEN_LIFEINS = "How concerned genetic testing for cancer will impact life insurance"
GEN_DISAINS = "How concerned genetic testing for cancer will impact long-term care/disability insurance"
GEN_JOB = "How concerned genetic testing for cancer will impact employment"
GEN_TESTEV = "Ever had genetic test for being at greater risk of cancer in future"
CRI_ALCOHOL = "Think drinking alcohol affects risk of getting cancer"
SUN_USEFACE = "When outdoors, how often use sunscreen on face"
SUN_USESKIN = "When outdoors, how often use sunscreen on other exposed skin"
SUN_AFFORD = "How important is it that sunscreen is affordable"
SUN_INGRED = "How important are sunscreen's ingredients"
SUN_SPRAY = "How important is it that sunscreen can be sprayed on skin"
SUN_FEEL = "How important is it how sunscreen feels on skin"
SUN_NOHARM = "Agree-disagree: sunburn is not harmful in long run"
SUN_REAPPLY = "Agree-disagree: hassle to reapply sunscreen"
SUN_SAFETY = "Agree-disagree: concerned about safety of ingredients in sunscreen"
SUN_CLOUDY = "Agree-disagree: cloudy days don't need to worry about sun"
MTL_ANXIETY = "How often felt worried, nervous, or anxious"
MTL_ANXMEDS = "Take medication for worried/nervous/anxious feelings"
MTL_ANXLVL = "Level of feelings when last felt worried/nervous/anxious"
MTL_DEPRESS = "How often felt depressed"
MTL_DEPMEDS = "Take medication for depression"
MTL_DEPLVL = "Level of feelings when last felt depressed"
CIG_SMKEV = "Ever smoked 100 cigarettes in entire life"
CIG_SMKNOW = "How often now smoke cigarettes"
CAR_USE = "Used chemical straighteners, relaxers, or pressing products on hair, past 12 months"
CAR_FREQUSE = "How often used chemical straighteners, relaxers or pressing products, past 12 months"
CAR_STOPUSE = "Changed use of chemical straighteners, relaxers, or pressing products, past 12 months"
VEN_USE = "How often use portable air cleaner/purifier in home"
VEN_ACDUST = "Use portable air cleaner/purifier to remove dust/pollen/allergens from air"
VEN_ACSMOKE = "Use portable air cleaner/purifier to remove smoke particles from air"
VEN_ACVIRUS = "Use portable air cleaner/purifier to remove virus particles that people exhale"
VEN_ACOTHER = "Use portable air cleaner/purifier for some other reason"
VEN_HEPAUSE = "Portable air cleaner/purifiers use HEPA filter"
VEN_HPNOHEAR = "Don't use HEPA filter unit because never heard of one"
VEN_HPNONEED = "Don't use HEPA filter unit because didn't think one was needed"
VEN_HPNOCOST = "Don't use HEPA filter unit because too expensive"
VEN_HPNOLOUD = "Don't use HEPA filter unit because too noisy"
VEN_HPNOFIND = "Don't use HEPA filter unit because couldn't find in stores or online"
VEN_HPNOOTH = "Don't use HEPA filter unit for some other reason"
VEN_ACNONEED = "Don't use portable air cleaner/purifier because didn't think one was needed"
VEN_ACNOCOST = "Don't use portable air cleaner/purifier because too expensive"
VEN_ACNOLOUD = "Don't use portable air cleaner/purifier because too noisy"
VEN_ACNOOTH = "Don't use portable air cleaner/purifier for some other reason"
IPV_PUSH = "Romantic/sexual partner ever slapped, pushed or shoved"
IPV_HIT = "Romantic/sexual partner ever hit with a fist/something hard"
IPV_KICK = "Romantic/sexual partner ever kicked or stomped"
IPV_HAIR = "Romantic/sexual partner ever hurt by pulling hair"
IPV_SLAM = "Romantic/sexual partner ever hurt by slammed against something"
IPV_CHOKE = "Romantic/sexual partner ever hurt by choking or suffocating"
IPV_KNIFE = "Romantic/sexual partner ever used or threatened with a knife"
IPV_GUN = "Romantic/sexual partner ever used or threatened with a gun"
IPV_ANY = "DERIVED: Experienced any physical violence by intimate partner"
IPV_SEV = "DERIVED: Experienced any severe physical violence by intimate partner"
MAR_MARITAL = "Now married, living with a partner, or neither"
MAR_EVMARRY = "Ever been married"
MAR_LEGAL = "Current legal marital status"
MAR_WIDIVSEP = "Widowed, divorced or separated"
MARITAL = "DERIVED: Current Marriage Status - 2 levels"
MARSTAT = "DERIVED: Current marital status"
LEGMSTAT = "DERIVED: Legal marital status"
EMP_EMPLOY = "Last week worked for pay at job or business"
EMP_ABSENTWK = "Had a job/business last week but temporarily absent"
EMP_WHYNOWRK = "Main reason not working for pay last week"
EMPWRKLSWK = "DERIVED: Worked last week"
CIV_VOL12M = "Volunteer activities, past 12 months"
CIV_VOLOTH = "Activities at schools or youth organizations, past 12 months"
CIV_MEET = "Attend local public meeting, past 12 months"
CIV_VOTELOCL = "Vote in last local elections"
CIVIC_ENGAGE = "DERIVED: Civic engagement including volunteering"
LAN_OTHERLAN = "Speak language other than English at home"
LAN_MEDIA = "What language use most often when watching television, read news, listen to radio"
LAN_DOCTOR = "What language use most often when seeing a doctor"
LAN_SOCIAL = "What language use most often when participate in social activities"
TEL_NONCELL = "At least one telephone inside home, not cell phone"
TEL_CELL = "Have a working cell phone"
TEL_HHCELL = "Live with anyone with a working cell phone"
START_DATE_R = "Month and year the survey started"
END_DATE_R = "Month and year the survey was completed"
ID_R = "Respondent ID"
P_OUTCOME = "Paradata: Outcome code"
SOURCE = "Paradata: Panel Provider"
QUEX_LANG = "Paradata: Language of interview"
P_GENDER = "Panel Profile: Respondent gender"
P_GENDERID = "Panel Profile: Gender identity 4 Levels"
P_ORIENT = "Panel Profile: Sexual Orientation"
P_EDUC_R = "Panel Profile: Education - 3 levels"
P_EDUC_R_IFLG = "Imputation flag for panel profile variable: <P_EDUCATION>"
P_RACE_R = "Panel Profile: Race and ethnicity - 4 levels"
P_HHSIZE_R = "Household size (total) - Categorical"
P_AGEC_R = "Respondent's age at time of interview - topcoded"
P_INCOME_R = "Household income - topcoded"
P_INCOME_R_IFLG = "Imputation flag for panel profile variable: <P_INCOME_R>"
P_POVERTY = "Poverty status"
P_EMPLOY = "Panel Profile: Current Employment Status"
P_MARITAL = "Panel Profile: Marital status - recoded"
P_REGION = "Panel Profile: 4-level region"
P_HOMEOWN = "Home ownership - 3 level"
P_HOMEOWN_IFLG = "Imputation flag for panel profile variable: <P_HOMEOWN>"
P_METRO_R = "NCHS 2013 Urban/Rural code"
P_METRO_R_IFLG = "Imputation flag for profile variable: <P_METRO_R>"
P_CITIZEN = "Panel Profile: Are you a US citizen?"
P_VETERAN = "Panel Profile: Have you ever served on active duty in the U.S. Armed Forces, military Reserves, or National Guard?"
P_INSUR = "Panel Profile: Covered by any form of health insurance or health plan?"
P_USBORN = "Panel Profile: Is respondent US born?"
P_VISIT = "Paradata: Number of times the questionnaire was accessed/login attempts (web)"
P_ONEVISIT = "Paradata: Whether the survey was completed in a single session"
P_REMIND = "Paradata: Number of reminders sent"
P_CATIATT = "Paradata: Number of contact attempts (phone)"
P_MODE = "Paradata: Mode of interview"
P_DEVICE = "Paradata: Device used to complete survey (web only)"
P_STRATA = "Panel Sample Strata"
P_PSU = "Panel PSU"
P1_CALWT_M1 = "Panel provider 1 weight for data collection methodology 1 (P_INTWT_M1) calibrated to NHIS control totals"
P2_CALWT_M1 = "Panel provider 2 weight for data collection methodology 1 (P_INTWT_M1) calibrated to NHIS control totals"
WEIGHT_M1 = "Final combined weight for data collection methodology 1 calibrated to NHIS control totals"
;
run;
