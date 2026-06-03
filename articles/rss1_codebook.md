# rss1 Codebook

    ## # Attaching packages: easystats 0.7.6
    ## ✔ bayestestR  0.18.1   ✔ correlation 0.8.8 
    ## ✔ datawizard  1.3.1    ✔ effectsize  1.0.2 
    ## ✔ insight     1.5.1    ✔ modelbased  0.15.0
    ## ✔ performance 0.17.0   ✔ parameters  0.29.1
    ## ✔ report      0.6.4    ✔ see         0.14.0

| ID | Name | Label | Type | Missings | Values | N |
|:---|:---|:---|:---|---:|---:|---:|
| 1 | HIS_GENERAL | Self-reported health status | categorical | 16 (0.2%) | Excellent | 632 (8.3%) |
|  |  |  |  |  | Very good | 2788 (36.8%) |
|  |  |  |  |  | Good | 2976 (39.2%) |
|  |  |  |  |  | Fair | 1015 (13.4%) |
|  |  |  |  |  | Poor | 172 (2.3%) |
|  |  |  |  |  |  |  |
| 2 | CHR_HYPEV | Ever been told you had hypertension | categorical | 40 (0.5%) | No | 4656 (61.6%) |
|  |  |  |  |  | Yes | 2903 (38.4%) |
|  |  |  |  |  |  |  |
| 3 | CHR_HYPDIF | Told had hypertension on two or more visits | categorical | 4749 (62.5%) | No | 302 (10.6%) |
|  |  |  |  |  | Yes | 2548 (89.4%) |
|  |  |  |  |  |  |  |
| 4 | CHR_HYP12M | Hypertension, past 12 months | categorical | 5081 (66.9%) | No | 145 (5.8%) |
|  |  |  |  |  | Yes | 2373 (94.2%) |
|  |  |  |  |  |  |  |
| 5 | CHR_HYPMED | Now taking high blood pressure medication | categorical | 4711 (62.0%) | No | 446 (15.4%) |
|  |  |  |  |  | Yes | 2442 (84.6%) |
|  |  |  |  |  |  |  |
| 6 | CHR_CHLEV | Ever told you had high cholesterol | categorical | 86 (1.1%) | No | 4569 (60.8%) |
|  |  |  |  |  | Yes | 2944 (39.2%) |
|  |  |  |  |  |  |  |
| 7 | CHR_CHDEV | Ever been told you had coronary heart disease | categorical | 30 (0.4%) | No | 7105 (93.9%) |
|  |  |  |  |  | Yes | 464 (6.1%) |
|  |  |  |  |  |  |  |
| 8 | CHR_ASEV | Ever been told you had asthma | categorical | 95 (1.3%) | No | 6336 (84.4%) |
|  |  |  |  |  | Yes | 1168 (15.6%) |
|  |  |  |  |  |  |  |
| 9 | CHR_CANEV | Ever been told you had cancer | categorical | 57 (0.8%) | No | 6588 (87.4%) |
|  |  |  |  |  | Yes | 954 (12.6%) |
|  |  |  |  |  |  |  |
| 10 | DIB_PREDIB | Ever been told you had prediabetes | categorical | 64 (0.8%) | No | 5633 (74.8%) |
|  |  |  |  |  | Yes | 1902 (25.2%) |
|  |  |  |  |  |  |  |
| 11 | DIB_GESDIB | Ever been told you had gestational diabetes | categorical | 3704 (48.7%) | No | 3599 (92.4%) |
|  |  |  |  |  | Yes | 296 (7.6%) |
|  |  |  |  |  |  |  |
| 12 | DIB_DIBEV | Ever been told you had diabetes | categorical | 45 (0.6%) | No | 6573 (87.0%) |
|  |  |  |  |  | Yes | 981 (13.0%) |
|  |  |  |  |  |  |  |
| 13 | BMI_PREGNOW | Currently pregnant | categorical | 5848 (77.0%) | No | 1704 (97.3%) |
|  |  |  |  |  | Yes | 47 (2.7%) |
|  |  |  |  |  |  |  |
| 14 | BMICAT | DERIVED: 4 level BMI categorization | categorical | 0 (0.0%) | Underweight (BMI \<18.50) | 125 (1.6%) |
|  |  |  |  |  | Healthy weight (18.50 \<= BMI \< 25.00) | 2125 (28.0%) |
|  |  |  |  |  | Overweight (25.00 \<= BMI \< 30.00) | 2468 (32.5%) |
|  |  |  |  |  | Obese (BMI \>= 30.00) | 2741 (36.1%) |
|  |  |  |  |  | Unknown | 140 (1.8%) |
|  |  |  |  |  |  |  |
| 15 | SOC_ERRANDS | Difficulty doing errands alone | categorical | 22 (0.3%) | No difficulty | 6295 (83.1%) |
|  |  |  |  |  | Some difficulty | 956 (12.6%) |
|  |  |  |  |  | A lot of difficulty | 273 (3.6%) |
|  |  |  |  |  | Cannot do this at all | 53 (0.7%) |
|  |  |  |  |  |  |  |
| 16 | SOC_PARACTIV | Difficulty participating in social activities | categorical | 74 (1.0%) | No difficulty | 5808 (77.2%) |
|  |  |  |  |  | Some difficulty | 1227 (16.3%) |
|  |  |  |  |  | A lot of difficulty | 417 (5.5%) |
|  |  |  |  |  | Cannot do this at all | 73 (1.0%) |
|  |  |  |  |  |  |  |
| 17 | SOC_SCWRKLIM | Work limited due to health problem | categorical | 39 (0.5%) | No | 5891 (77.9%) |
|  |  |  |  |  | Yes | 1669 (22.1%) |
|  |  |  |  |  |  |  |
| 18 | PAY_PAYWORRY | Get sick or have accident, how worried about ability to pay bills | categorical | 29 (0.4%) | Very worried | 1104 (14.6%) |
|  |  |  |  |  | Somewhat worried | 2740 (36.2%) |
|  |  |  |  |  | Not at all worried | 3726 (49.2%) |
|  |  |  |  |  |  |  |
| 19 | CVL_HEARDEV | Ever heard of Long COVID | categorical | 25 (0.3%) | No | 2215 (29.2%) |
|  |  |  |  |  | Yes | 5359 (70.8%) |
|  |  |  |  |  |  |  |
| 20 | CVL_REAL | Agree-disagree: Long COVID is a real illness | categorical | 2788 (36.7%) | Strongly disagree | 152 (3.2%) |
|  |  |  |  |  | Somewhat disagree | 237 (4.9%) |
|  |  |  |  |  | Somewhat agree | 1532 (31.8%) |
|  |  |  |  |  | Strongly agree | 2890 (60.1%) |
|  |  |  |  |  |  |  |
| 21 | CVL_REAL_O | Order of questionnaire appearance: CVL_REAL | categorical | 2238 (29.5%) | Displayed 1st | 791 (14.8%) |
|  |  |  |  |  | Displayed 2nd | 758 (14.1%) |
|  |  |  |  |  | Displayed 3rd | 786 (14.7%) |
|  |  |  |  |  | Displayed 4th | 754 (14.1%) |
|  |  |  |  |  | Displayed 5th | 714 (13.3%) |
|  |  |  |  |  | Displayed 6th | 806 (15.0%) |
|  |  |  |  |  | Displayed 7th | 752 (14.0%) |
|  |  |  |  |  |  |  |
| 22 | CVL_SERIOUS | Agree-disagree: Long COVID can be debilitating | categorical | 2835 (37.3%) | Strongly disagree | 175 (3.7%) |
|  |  |  |  |  | Somewhat disagree | 266 (5.6%) |
|  |  |  |  |  | Somewhat agree | 1553 (32.6%) |
|  |  |  |  |  | Strongly agree | 2770 (58.1%) |
|  |  |  |  |  |  |  |
| 23 | CVL_SERIOUS_O | Order of questionnaire appearance: CVL_SERIOUS | categorical | 2238 (29.5%) | Displayed 1st | 757 (14.1%) |
|  |  |  |  |  | Displayed 2nd | 771 (14.4%) |
|  |  |  |  |  | Displayed 3rd | 741 (13.8%) |
|  |  |  |  |  | Displayed 4th | 766 (14.3%) |
|  |  |  |  |  | Displayed 5th | 807 (15.1%) |
|  |  |  |  |  | Displayed 6th | 743 (13.9%) |
|  |  |  |  |  | Displayed 7th | 776 (14.5%) |
|  |  |  |  |  |  |  |
| 24 | CVL_DEPRESS | Agree-disagree: people with Long COVID may just be depressed | categorical | 3505 (46.1%) | Strongly disagree | 1557 (38.0%) |
|  |  |  |  |  | Somewhat disagree | 1292 (31.6%) |
|  |  |  |  |  | Somewhat agree | 905 (22.1%) |
|  |  |  |  |  | Strongly agree | 340 (8.3%) |
|  |  |  |  |  |  |  |
| 25 | CVL_DEPRESS_O | Order of questionnaire appearance: CVL_DEPRESS | categorical | 2238 (29.5%) | Displayed 1st | 779 (14.5%) |
|  |  |  |  |  | Displayed 2nd | 732 (13.7%) |
|  |  |  |  |  | Displayed 3rd | 759 (14.2%) |
|  |  |  |  |  | Displayed 4th | 780 (14.5%) |
|  |  |  |  |  | Displayed 5th | 731 (13.6%) |
|  |  |  |  |  | Displayed 6th | 810 (15.1%) |
|  |  |  |  |  | Displayed 7th | 770 (14.4%) |
|  |  |  |  |  |  |  |
| 26 | CVL_NORMPAIN | Agree-disagree: Long COVID symptoms just normal aches and pains | categorical | 3252 (42.8%) | Strongly disagree | 1740 (40.0%) |
|  |  |  |  |  | Somewhat disagree | 1547 (35.6%) |
|  |  |  |  |  | Somewhat agree | 852 (19.6%) |
|  |  |  |  |  | Strongly agree | 208 (4.8%) |
|  |  |  |  |  |  |  |
| 27 | CVL_NORMPAIN_O | Order of questionnaire appearance: CVL_NORMPAIN | categorical | 2238 (29.5%) | Displayed 1st | 757 (14.1%) |
|  |  |  |  |  | Displayed 2nd | 835 (15.6%) |
|  |  |  |  |  | Displayed 3rd | 766 (14.3%) |
|  |  |  |  |  | Displayed 4th | 755 (14.1%) |
|  |  |  |  |  | Displayed 5th | 788 (14.7%) |
|  |  |  |  |  | Displayed 6th | 730 (13.6%) |
|  |  |  |  |  | Displayed 7th | 730 (13.6%) |
|  |  |  |  |  |  |  |
| 28 | CVL_EMPLOYER | Agree-disagree: employers should provide accommodations for Long COVID | categorical | 2973 (39.1%) | Strongly disagree | 221 (4.8%) |
|  |  |  |  |  | Somewhat disagree | 486 (10.5%) |
|  |  |  |  |  | Somewhat agree | 2044 (44.2%) |
|  |  |  |  |  | Strongly agree | 1875 (40.5%) |
|  |  |  |  |  |  |  |
| 29 | CVL_EMPLOYER_O | Order of questionnaire appearance: CVL_EMPLOYER | categorical | 2238 (29.5%) | Displayed 1st | 773 (14.4%) |
|  |  |  |  |  | Displayed 2nd | 747 (13.9%) |
|  |  |  |  |  | Displayed 3rd | 757 (14.1%) |
|  |  |  |  |  | Displayed 4th | 792 (14.8%) |
|  |  |  |  |  | Displayed 5th | 750 (14.0%) |
|  |  |  |  |  | Displayed 6th | 786 (14.7%) |
|  |  |  |  |  | Displayed 7th | 756 (14.1%) |
|  |  |  |  |  |  |  |
| 30 | CVL_MEDIA | Agree-disagree: media exaggerates Long COVID | categorical | 3396 (44.7%) | Strongly disagree | 1363 (32.4%) |
|  |  |  |  |  | Somewhat disagree | 1293 (30.8%) |
|  |  |  |  |  | Somewhat agree | 1066 (25.4%) |
|  |  |  |  |  | Strongly agree | 481 (11.4%) |
|  |  |  |  |  |  |  |
| 31 | CVL_MEDIA_O | Order of questionnaire appearance: CVL_MEDIA | categorical | 2238 (29.5%) | Displayed 1st | 775 (14.5%) |
|  |  |  |  |  | Displayed 2nd | 760 (14.2%) |
|  |  |  |  |  | Displayed 3rd | 749 (14.0%) |
|  |  |  |  |  | Displayed 4th | 718 (13.4%) |
|  |  |  |  |  | Displayed 5th | 784 (14.6%) |
|  |  |  |  |  | Displayed 6th | 763 (14.2%) |
|  |  |  |  |  | Displayed 7th | 812 (15.1%) |
|  |  |  |  |  |  |  |
| 32 | CVL_PASSED | Agree-disagree: Long COVID can be passed from one person to another | categorical | 4091 (53.8%) | Strongly disagree | 2146 (61.2%) |
|  |  |  |  |  | Somewhat disagree | 821 (23.4%) |
|  |  |  |  |  | Somewhat agree | 338 (9.6%) |
|  |  |  |  |  | Strongly agree | 203 (5.8%) |
|  |  |  |  |  |  |  |
| 33 | CVL_PASSED_O | Order of questionnaire appearance: CVL_PASSED | categorical | 2238 (29.5%) | Displayed 1st | 729 (13.6%) |
|  |  |  |  |  | Displayed 2nd | 758 (14.1%) |
|  |  |  |  |  | Displayed 3rd | 803 (15.0%) |
|  |  |  |  |  | Displayed 4th | 796 (14.8%) |
|  |  |  |  |  | Displayed 5th | 787 (14.7%) |
|  |  |  |  |  | Displayed 6th | 723 (13.5%) |
|  |  |  |  |  | Displayed 7th | 765 (14.3%) |
|  |  |  |  |  |  |  |
| 34 | CVL_COVIDEV | Ever had COVID-19 | categorical | 23 (0.3%) | No | 3436 (45.4%) |
|  |  |  |  |  | Yes | 4140 (54.6%) |
|  |  |  |  |  |  |  |
| 35 | CVL_SYMPT3M | Had symptoms lasting 3 months or longer not present before having COVID-19 | categorical | 3485 (45.9%) | No | 3271 (79.5%) |
|  |  |  |  |  | Yes | 843 (20.5%) |
|  |  |  |  |  |  |  |
| 36 | CVL_LONGCVEV | Ever been told you had Long COVID | categorical | 4450 (58.6%) | No | 2951 (93.7%) |
|  |  |  |  |  | Yes | 198 (6.3%) |
|  |  |  |  |  |  |  |
| 37 | LONGCOVID | DERIVED: Experienced Long COVID symptoms | categorical | 908 (11.9%) | Yes | 879 (13.1%) |
|  |  |  |  |  | No | 2376 (35.5%) |
|  |  |  |  |  | Never had COVID | 3436 (51.4%) |
|  |  |  |  |  |  |  |
| 38 | CVL_LONGOTH | Know anyone diagnosed with Long COVID | categorical | 2282 (30.0%) | No | 3804 (71.5%) |
|  |  |  |  |  | Yes | 1513 (28.5%) |
|  |  |  |  |  |  |  |
| 39 | CVL_LEARNMOR | How would first try to learn more about Long COVID | categorical | 33 (0.4%) | Talk with a doctor or other health care professional | 3487 (46.1%) |
|  |  |  |  |  | Talk with family or friends | 189 (2.5%) |
|  |  |  |  |  | Get information from the CDC | 858 (11.3%) |
|  |  |  |  |  | Get information from your state or local health department | 228 (3.0%) |
|  |  |  |  |  | Search the internet | 2527 (33.4%) |
|  |  |  |  |  | Something else | 277 (3.7%) |
|  |  |  |  |  |  |  |
| 40 | ACC_DNCEXAM | Time since last dental exam/cleaning | categorical | 14 (0.2%) | Never | 87 (1.1%) |
|  |  |  |  |  | Less than 12 months ago | 4939 (65.1%) |
|  |  |  |  |  | More than 1 year but less than 2 years ago | 777 (10.2%) |
|  |  |  |  |  | More than 2 years but less than 3 years ago | 484 (6.4%) |
|  |  |  |  |  | More than 3 years but less than 5 years ago | 388 (5.1%) |
|  |  |  |  |  | More than 5 years but less than 10 years ago | 433 (5.7%) |
|  |  |  |  |  | 10 years ago or more | 477 (6.3%) |
|  |  |  |  |  |  |  |
| 41 | ACC_DNCDELAY | Delayed dental care due to cost, past 12 months | categorical | 27 (0.4%) | No | 5676 (75.0%) |
|  |  |  |  |  | Yes | 1896 (25.0%) |
|  |  |  |  |  |  |  |
| 42 | ACC_DNCCOST | Needed dental care but did not get it due to cost, past 12 months | categorical | 86 (1.1%) | No | 5956 (79.3%) |
|  |  |  |  |  | Yes | 1557 (20.7%) |
|  |  |  |  |  |  |  |
| 43 | ACC_HTHLAST | Time since last saw doctor about your health | categorical | 22 (0.3%) | Never | 77 (1.0%) |
|  |  |  |  |  | Less than 12 months ago | 6123 (80.8%) |
|  |  |  |  |  | More than 1 year but less than 2 years ago | 597 (7.9%) |
|  |  |  |  |  | More than 2 years but less than 3 years ago | 294 (3.9%) |
|  |  |  |  |  | More than 3 years but less than 5 years ago | 225 (3.0%) |
|  |  |  |  |  | More than 5 years but less than 10 years ago | 161 (2.1%) |
|  |  |  |  |  | 10 years ago or more | 100 (1.3%) |
|  |  |  |  |  |  |  |
| 44 | ACC_HTHUSUAL | Have a usual place to go for care | categorical | 36 (0.5%) | Yes, there is a single place | 4570 (60.4%) |
|  |  |  |  |  | No, there is no place | 729 (9.6%) |
|  |  |  |  |  | Yes, there is more than one place | 2264 (29.9%) |
|  |  |  |  |  |  |  |
| 45 | ACC_HTHTYPE | Type of place for usual care | categorical | 773 (10.2%) | I do not go to one place most often | 66 (1.0%) |
|  |  |  |  |  | A doctor’s office or health center | 5751 (84.3%) |
|  |  |  |  |  | Urgent care center or clinic in a drug store or grocery store | 659 (9.7%) |
|  |  |  |  |  | Hospital emergency room | 143 (2.1%) |
|  |  |  |  |  | A VA medical center or VA outpatient clinic | 153 (2.2%) |
|  |  |  |  |  | Some other place | 54 (0.8%) |
|  |  |  |  |  |  |  |
| 46 | ACC_HOSP12M | Hospitalized overnight, past 12 months | categorical | 21 (0.3%) | No | 6950 (91.7%) |
|  |  |  |  |  | Yes | 628 (8.3%) |
|  |  |  |  |  |  |  |
| 47 | ACC_EYE12M | Had eye exam, past 12 months | categorical | 53 (0.7%) | No | 3233 (42.8%) |
|  |  |  |  |  | Yes | 4313 (57.2%) |
|  |  |  |  |  |  |  |
| 48 | ACC_THER12M | Received physical / speech / rehabilitative / occupational therapy, past 12 months | categorical | 31 (0.4%) | No | 6500 (85.9%) |
|  |  |  |  |  | Yes | 1068 (14.1%) |
|  |  |  |  |  |  |  |
| 49 | INT_ACCESS | Access to internet | categorical | 0 (0.0%) | No | 49 (0.6%) |
|  |  |  |  |  | Yes | 7550 (99.4%) |
|  |  |  |  |  |  |  |
| 50 | INT_HOMEACC | Access to internet from home | categorical | 101 (1.3%) | No | 241 (3.2%) |
|  |  |  |  |  | Yes | 7257 (96.8%) |
|  |  |  |  |  |  |  |
| 51 | INT_USEMED | Use internet to look for health or medical information, past 12 months | categorical | 77 (1.0%) | No | 1751 (23.3%) |
|  |  |  |  |  | Yes | 5771 (76.7%) |
|  |  |  |  |  |  |  |
| 52 | INT_USEDOC | Use internet to communicate with doctor/doctor’s office, past 12 months | categorical | 80 (1.1%) | No | 3030 (40.3%) |
|  |  |  |  |  | Yes | 4489 (59.7%) |
|  |  |  |  |  |  |  |
| 53 | INT_USETEST | Use internet to look up medical test results, past 12 months | categorical | 91 (1.2%) | No | 2577 (34.3%) |
|  |  |  |  |  | Yes | 4931 (65.7%) |
|  |  |  |  |  |  |  |
| 54 | PRV_BPCHECK | Last time had blood pressure checked | categorical | 29 (0.4%) | Never | 108 (1.4%) |
|  |  |  |  |  | Less than 12 months ago | 6339 (83.7%) |
|  |  |  |  |  | More than 1 year but less than 2 years ago | 538 (7.1%) |
|  |  |  |  |  | More than 2 years but less than 3 years ago | 222 (2.9%) |
|  |  |  |  |  | More than 3 years but less than 5 years ago | 173 (2.3%) |
|  |  |  |  |  | More than 5 years but less than 10 years ago | 121 (1.6%) |
|  |  |  |  |  | 10 years ago or more | 69 (0.9%) |
|  |  |  |  |  |  |  |
| 55 | PRV_CHLCHECK | Last time had cholesterol checked | categorical | 169 (2.2%) | Never | 556 (7.5%) |
|  |  |  |  |  | Less than 12 months ago | 5010 (67.4%) |
|  |  |  |  |  | More than 1 year but less than 2 years ago | 933 (12.6%) |
|  |  |  |  |  | More than 2 years but less than 3 years ago | 344 (4.6%) |
|  |  |  |  |  | More than 3 years but less than 5 years ago | 299 (4.0%) |
|  |  |  |  |  | More than 5 years but less than 10 years ago | 170 (2.3%) |
|  |  |  |  |  | 10 years ago or more | 118 (1.6%) |
|  |  |  |  |  |  |  |
| 56 | PRV_DIBCHECK | Last time had test for high blood sugar or diabetes | categorical | 1049 (13.8%) | Never | 694 (10.6%) |
|  |  |  |  |  | Less than 12 months ago | 4061 (62.0%) |
|  |  |  |  |  | More than 1 year but less than 2 years ago | 845 (12.9%) |
|  |  |  |  |  | More than 2 years but less than 3 years ago | 333 (5.1%) |
|  |  |  |  |  | More than 3 years but less than 5 years ago | 287 (4.4%) |
|  |  |  |  |  | More than 5 years but less than 10 years ago | 191 (2.9%) |
|  |  |  |  |  | 10 years ago or more | 139 (2.1%) |
|  |  |  |  |  |  |  |
| 57 | CAN_MAMMEV | Ever had a mammogram | categorical | 4197 (55.2%) | No | 743 (21.8%) |
|  |  |  |  |  | Yes | 2659 (78.2%) |
|  |  |  |  |  |  |  |
| 58 | CAN_RECENTM | Time since most recent mammogram | categorical | 4944 (65.1%) | Never | 4 (0.2%) |
|  |  |  |  |  | Less than 12 months ago | 1636 (61.6%) |
|  |  |  |  |  | More than 1 year but less than 2 years ago | 486 (18.3%) |
|  |  |  |  |  | More than 2 years but less than 3 years ago | 174 (6.6%) |
|  |  |  |  |  | More than 3 years but less than 5 years ago | 129 (4.9%) |
|  |  |  |  |  | More than 5 years but less than 10 years ago | 121 (4.6%) |
|  |  |  |  |  | 10 years ago or more | 105 (4.0%) |
|  |  |  |  |  |  |  |
| 59 | CAN_BDENSITY | After mammogram, told about breast density | categorical | 4962 (65.3%) | No | 1154 (43.8%) |
|  |  |  |  |  | Yes | 1483 (56.2%) |
|  |  |  |  |  |  |  |
| 60 | CAN_BDENSINF_C1 | After mammogram, how told about breast density: Conversation in-person or over the phone | categorical | 6118 (80.5%) | Not selected | 868 (58.6%) |
|  |  |  |  |  | Selected | 613 (41.4%) |
|  |  |  |  |  |  |  |
| 61 | CAN_BDENSINF_C2 | After mammogram, how told about breast density: Letter in the mail | categorical | 6118 (80.5%) | Not selected | 655 (44.2%) |
|  |  |  |  |  | Selected | 826 (55.8%) |
|  |  |  |  |  |  |  |
| 62 | CAN_BDENSINF_C3 | After mammogram, how told about breast density: Electronic health record online portal | categorical | 6118 (80.5%) | Not selected | 1099 (74.2%) |
|  |  |  |  |  | Selected | 382 (25.8%) |
|  |  |  |  |  |  |  |
| 63 | CAN_BDENSINF_C4 | After mammogram, how told about breast density: Another way | categorical | 6118 (80.5%) | Not selected | 1450 (97.9%) |
|  |  |  |  |  | Selected | 31 (2.1%) |
|  |  |  |  |  |  |  |
| 64 | CAN_DENSE | Most recent mammogram show dense breast tissue | categorical | 6137 (80.8%) | Did not have dense breast tissue | 383 (26.2%) |
|  |  |  |  |  | Did have dense breast tissue | 1079 (73.8%) |
|  |  |  |  |  |  |  |
| 65 | OVA_TUBETIED | Have had fallopian tubes tied | categorical | 3744 (49.3%) | No | 3179 (82.5%) |
|  |  |  |  |  | Yes | 676 (17.5%) |
|  |  |  |  |  |  |  |
| 66 | OVA_TUBECUT | Have had fallopian tubes cut | categorical | 3826 (50.3%) | No | 3358 (89.0%) |
|  |  |  |  |  | Yes | 415 (11.0%) |
|  |  |  |  |  |  |  |
| 67 | OVA_TUBEREM | Have had both fallopian tubes removed | categorical | 3825 (50.3%) | No | 3335 (88.4%) |
|  |  |  |  |  | Yes | 439 (11.6%) |
|  |  |  |  |  |  |  |
| 68 | OVA_OVARIES | Have had both ovaries removed | categorical | 3804 (50.1%) | No | 3350 (88.3%) |
|  |  |  |  |  | Yes | 445 (11.7%) |
|  |  |  |  |  |  |  |
| 69 | GEN_INTRO | Ever heard of genetic testing for being at greater risk of cancer | categorical | 39 (0.5%) | No | 3764 (49.8%) |
|  |  |  |  |  | Yes | 3796 (50.2%) |
|  |  |  |  |  |  |  |
| 70 | GEN_HLTHINS | How concerned genetic testing for cancer will impact health insurance | categorical | 3828 (50.4%) | Not at all concerned | 1476 (39.1%) |
|  |  |  |  |  | A little concerned | 974 (25.8%) |
|  |  |  |  |  | Somewhat concerned | 820 (21.7%) |
|  |  |  |  |  | Very concerned | 501 (13.3%) |
|  |  |  |  |  |  |  |
| 71 | GEN_LIFEINS | How concerned genetic testing for cancer will impact life insurance | categorical | 3840 (50.5%) | Not at all concerned | 1490 (39.6%) |
|  |  |  |  |  | A little concerned | 859 (22.9%) |
|  |  |  |  |  | Somewhat concerned | 786 (20.9%) |
|  |  |  |  |  | Very concerned | 624 (16.6%) |
|  |  |  |  |  |  |  |
| 72 | GEN_DISAINS | How concerned genetic testing for cancer will impact long-term care/disability insurance | categorical | 3837 (50.5%) | Not at all concerned | 1427 (37.9%) |
|  |  |  |  |  | A little concerned | 903 (24.0%) |
|  |  |  |  |  | Somewhat concerned | 821 (21.8%) |
|  |  |  |  |  | Very concerned | 611 (16.2%) |
|  |  |  |  |  |  |  |
| 73 | GEN_JOB | How concerned genetic testing for cancer will impact employment | categorical | 3836 (50.5%) | Not at all concerned | 2468 (65.6%) |
|  |  |  |  |  | A little concerned | 570 (15.1%) |
|  |  |  |  |  | Somewhat concerned | 448 (11.9%) |
|  |  |  |  |  | Very concerned | 277 (7.4%) |
|  |  |  |  |  |  |  |
| 74 | GEN_TESTEV | Ever had genetic test for being at greater risk of cancer in future | categorical | 3825 (50.3%) | No | 3227 (85.5%) |
|  |  |  |  |  | Yes | 547 (14.5%) |
|  |  |  |  |  |  |  |
| 75 | CRI_ALCOHOL | Think drinking alcohol affects risk of getting cancer | categorical | 164 (2.2%) | Decreases risk | 98 (1.3%) |
|  |  |  |  |  | No effect | 3408 (45.8%) |
|  |  |  |  |  | Increases risk | 3929 (52.8%) |
|  |  |  |  |  |  |  |
| 76 | SUN_USEFACE | When outdoors, how often use sunscreen on face | categorical | 36 (0.5%) | Never | 1467 (19.4%) |
|  |  |  |  |  | Rarely | 1770 (23.4%) |
|  |  |  |  |  | Sometimes | 2077 (27.5%) |
|  |  |  |  |  | Most of the time | 1500 (19.8%) |
|  |  |  |  |  | Always | 749 (9.9%) |
|  |  |  |  |  |  |  |
| 77 | SUN_USESKIN | When outdoors, how often use sunscreen on other exposed skin | categorical | 46 (0.6%) | Never | 1308 (17.3%) |
|  |  |  |  |  | Rarely | 1762 (23.3%) |
|  |  |  |  |  | Sometimes | 2498 (33.1%) |
|  |  |  |  |  | Most of the time | 1451 (19.2%) |
|  |  |  |  |  | Always | 534 (7.1%) |
|  |  |  |  |  |  |  |
| 78 | SUN_AFFORD | How important is it that sunscreen is affordable | categorical | 97 (1.3%) | Not important at all | 1464 (19.5%) |
|  |  |  |  |  | Slightly important | 1899 (25.3%) |
|  |  |  |  |  | Moderately important | 2354 (31.4%) |
|  |  |  |  |  | Very important | 1785 (23.8%) |
|  |  |  |  |  |  |  |
| 79 | SUN_INGRED | How important are sunscreen’s ingredients | categorical | 122 (1.6%) | Not important at all | 1125 (15.0%) |
|  |  |  |  |  | Slightly important | 1577 (21.1%) |
|  |  |  |  |  | Moderately important | 2076 (27.8%) |
|  |  |  |  |  | Very important | 2699 (36.1%) |
|  |  |  |  |  |  |  |
| 80 | SUN_SPRAY | How important is it that sunscreen can be sprayed on skin | categorical | 127 (1.7%) | Not important at all | 2805 (37.5%) |
|  |  |  |  |  | Slightly important | 1859 (24.9%) |
|  |  |  |  |  | Moderately important | 1746 (23.4%) |
|  |  |  |  |  | Very important | 1062 (14.2%) |
|  |  |  |  |  |  |  |
| 81 | SUN_FEEL | How important is it how sunscreen feels on skin | categorical | 120 (1.6%) | Not important at all | 1484 (19.8%) |
|  |  |  |  |  | Slightly important | 1927 (25.8%) |
|  |  |  |  |  | Moderately important | 1985 (26.5%) |
|  |  |  |  |  | Very important | 2083 (27.9%) |
|  |  |  |  |  |  |  |
| 82 | SUN_NOHARM | Agree-disagree: sunburn is not harmful in long run | categorical | 89 (1.2%) | Strongly disagree | 4295 (57.2%) |
|  |  |  |  |  | Somewhat disagree | 2000 (26.6%) |
|  |  |  |  |  | Somewhat agree | 756 (10.1%) |
|  |  |  |  |  | Strongly agree | 459 (6.1%) |
|  |  |  |  |  |  |  |
| 83 | SUN_REAPPLY | Agree-disagree: hassle to reapply sunscreen | categorical | 120 (1.6%) | Strongly disagree | 1297 (17.3%) |
|  |  |  |  |  | Somewhat disagree | 1619 (21.6%) |
|  |  |  |  |  | Somewhat agree | 3726 (49.8%) |
|  |  |  |  |  | Strongly agree | 837 (11.2%) |
|  |  |  |  |  |  |  |
| 84 | SUN_SAFETY | Agree-disagree: concerned about safety of ingredients in sunscreen | categorical | 128 (1.7%) | Strongly disagree | 1347 (18.0%) |
|  |  |  |  |  | Somewhat disagree | 2165 (29.0%) |
|  |  |  |  |  | Somewhat agree | 2807 (37.6%) |
|  |  |  |  |  | Strongly agree | 1152 (15.4%) |
|  |  |  |  |  |  |  |
| 85 | SUN_CLOUDY | Agree-disagree: cloudy days don’t need to worry about sun | categorical | 110 (1.4%) | Strongly disagree | 2955 (39.5%) |
|  |  |  |  |  | Somewhat disagree | 2823 (37.7%) |
|  |  |  |  |  | Somewhat agree | 1254 (16.7%) |
|  |  |  |  |  | Strongly agree | 457 (6.1%) |
|  |  |  |  |  |  |  |
| 86 | MTL_ANXIETY | How often felt worried, nervous, or anxious | categorical | 78 (1.0%) | Never | 2315 (30.8%) |
|  |  |  |  |  | Daily | 1233 (16.4%) |
|  |  |  |  |  | Weekly | 1164 (15.5%) |
|  |  |  |  |  | Monthly | 792 (10.5%) |
|  |  |  |  |  | A few times a year | 2017 (26.8%) |
|  |  |  |  |  |  |  |
| 87 | MTL_ANXMEDS | Take medication for worried/nervous/anxious feelings | categorical | 98 (1.3%) | No | 6097 (81.3%) |
|  |  |  |  |  | Yes | 1404 (18.7%) |
|  |  |  |  |  |  |  |
| 88 | MTL_ANXLVL | Level of feelings when last felt worried/nervous/anxious | categorical | 2338 (30.8%) | A little | 2424 (46.1%) |
|  |  |  |  |  | A lot | 989 (18.8%) |
|  |  |  |  |  | Somewhere in between a little and a lot | 1848 (35.1%) |
|  |  |  |  |  |  |  |
| 89 | MTL_DEPRESS | How often felt depressed | categorical | 125 (1.6%) | Never | 3202 (42.8%) |
|  |  |  |  |  | Daily | 694 (9.3%) |
|  |  |  |  |  | Weekly | 699 (9.4%) |
|  |  |  |  |  | Monthly | 699 (9.4%) |
|  |  |  |  |  | A few times a year | 2180 (29.2%) |
|  |  |  |  |  |  |  |
| 90 | MTL_DEPMEDS | Take medication for depression | categorical | 101 (1.3%) | No | 6332 (84.4%) |
|  |  |  |  |  | Yes | 1166 (15.6%) |
|  |  |  |  |  |  |  |
| 91 | MTL_DEPLVL | Level of feelings when last felt depressed | categorical | 3229 (42.5%) | A little | 2296 (52.5%) |
|  |  |  |  |  | A lot | 869 (19.9%) |
|  |  |  |  |  | Somewhere in between a little and a lot | 1205 (27.6%) |
|  |  |  |  |  |  |  |
| 92 | CIG_SMKEV | Ever smoked 100 cigarettes in entire life | categorical | 35 (0.5%) | No | 4666 (61.7%) |
|  |  |  |  |  | Yes | 2898 (38.3%) |
|  |  |  |  |  |  |  |
| 93 | CIG_SMKNOW | How often now smoke cigarettes | categorical | 4715 (62.0%) | Every day | 554 (19.2%) |
|  |  |  |  |  | Some days | 218 (7.6%) |
|  |  |  |  |  | Not at all | 2112 (73.2%) |
|  |  |  |  |  |  |  |
| 94 | CAR_USE | Used chemical straighteners, relaxers, or pressing products on hair, past 12 months | categorical | 52 (0.7%) | No | 7050 (93.4%) |
|  |  |  |  |  | Yes | 497 (6.6%) |
|  |  |  |  |  |  |  |
| 95 | CAR_FREQUSE | How often used chemical straighteners, relaxers or pressing products, past 12 months | categorical | 7124 (93.7%) | 1-2 times a year | 214 (45.1%) |
|  |  |  |  |  | Every 3-4 months | 120 (25.3%) |
|  |  |  |  |  | Every 5-8 weeks | 62 (13.1%) |
|  |  |  |  |  | Once a month | 45 (9.5%) |
|  |  |  |  |  | More than once a month | 34 (7.2%) |
|  |  |  |  |  |  |  |
| 96 | CAR_STOPUSE | Changed use of chemical straighteners, relaxers, or pressing products, past 12 months | categorical | 7115 (93.6%) | Stopped use | 107 (22.1%) |
|  |  |  |  |  | Used less | 156 (32.2%) |
|  |  |  |  |  | My use of these products has not changed | 208 (43.0%) |
|  |  |  |  |  | Used more | 13 (2.7%) |
|  |  |  |  |  |  |  |
| 97 | VEN_USE | How often use portable air cleaner/purifier in home | categorical | 29 (0.4%) | Never | 4726 (62.4%) |
|  |  |  |  |  | Rarely | 761 (10.1%) |
|  |  |  |  |  | Sometimes | 1047 (13.8%) |
|  |  |  |  |  | Always | 1036 (13.7%) |
|  |  |  |  |  |  |  |
| 98 | VEN_ACDUST | Use portable air cleaner/purifier to remove dust/pollen/allergens from air | categorical | 4775 (62.8%) | No | 299 (10.6%) |
|  |  |  |  |  | Yes | 2525 (89.4%) |
|  |  |  |  |  |  |  |
| 99 | VEN_ACSMOKE | Use portable air cleaner/purifier to remove smoke particles from air | categorical | 4805 (63.2%) | No | 1760 (63.0%) |
|  |  |  |  |  | Yes | 1034 (37.0%) |
|  |  |  |  |  |  |  |
| 100 | VEN_ACVIRUS | Use portable air cleaner/purifier to remove virus particles that people exhale | categorical | 4815 (63.4%) | No | 1337 (48.0%) |
|  |  |  |  |  | Yes | 1447 (52.0%) |
|  |  |  |  |  |  |  |
| 101 | VEN_ACOTHER | Use portable air cleaner/purifier for some other reason | categorical | 4907 (64.6%) | No | 1721 (63.9%) |
|  |  |  |  |  | Yes | 971 (36.1%) |
|  |  |  |  |  |  |  |
| 102 | VEN_HEPAUSE | Portable air cleaner/purifiers use HEPA filter | categorical | 5548 (73.0%) | No | 558 (27.2%) |
|  |  |  |  |  | Yes | 1493 (72.8%) |
|  |  |  |  |  |  |  |
| 103 | VEN_HPNOHEAR | Don’t use HEPA filter unit because never heard of one | categorical | 7054 (92.8%) | No | 387 (71.0%) |
|  |  |  |  |  | Yes | 158 (29.0%) |
|  |  |  |  |  |  |  |
| 104 | VEN_HPNONEED | Don’t use HEPA filter unit because didn’t think one was needed | categorical | 7060 (92.9%) | No | 330 (61.2%) |
|  |  |  |  |  | Yes | 209 (38.8%) |
|  |  |  |  |  |  |  |
| 105 | VEN_HPNOCOST | Don’t use HEPA filter unit because too expensive | categorical | 7057 (92.9%) | No | 281 (51.8%) |
|  |  |  |  |  | Yes | 261 (48.2%) |
|  |  |  |  |  |  |  |
| 106 | VEN_HPNOLOUD | Don’t use HEPA filter unit because too noisy | categorical | 7079 (93.2%) | No | 451 (86.7%) |
|  |  |  |  |  | Yes | 69 (13.3%) |
|  |  |  |  |  |  |  |
| 107 | VEN_HPNOFIND | Don’t use HEPA filter unit because couldn’t find in stores or online | categorical | 7072 (93.1%) | No | 450 (85.4%) |
|  |  |  |  |  | Yes | 77 (14.6%) |
|  |  |  |  |  |  |  |
| 108 | VEN_HPNOOTH | Don’t use HEPA filter unit for some other reason | categorical | 7074 (93.1%) | No | 368 (70.1%) |
|  |  |  |  |  | Yes | 157 (29.9%) |
|  |  |  |  |  |  |  |
| 109 | VEN_ACNONEED | Don’t use portable air cleaner/purifier because didn’t think one was needed | categorical | 2970 (39.1%) | No | 1492 (32.2%) |
|  |  |  |  |  | Yes | 3137 (67.8%) |
|  |  |  |  |  |  |  |
| 110 | VEN_ACNOCOST | Don’t use portable air cleaner/purifier because too expensive | categorical | 3033 (39.9%) | No | 1931 (42.3%) |
|  |  |  |  |  | Yes | 2635 (57.7%) |
|  |  |  |  |  |  |  |
| 111 | VEN_ACNOLOUD | Don’t use portable air cleaner/purifier because too noisy | categorical | 3079 (40.5%) | No | 3102 (68.6%) |
|  |  |  |  |  | Yes | 1418 (31.4%) |
|  |  |  |  |  |  |  |
| 112 | VEN_ACNOOTH | Don’t use portable air cleaner/purifier for some other reason | categorical | 3226 (42.5%) | No | 3373 (77.1%) |
|  |  |  |  |  | Yes | 1000 (22.9%) |
|  |  |  |  |  |  |  |
| 113 | IPV_PUSH | Romantic/sexual partner ever slapped, pushed or shoved | categorical | 84 (1.1%) | No | 5688 (75.7%) |
|  |  |  |  |  | Yes | 1827 (24.3%) |
|  |  |  |  |  |  |  |
| 114 | IPV_HIT | Romantic/sexual partner ever hit with a fist/something hard | categorical | 96 (1.3%) | No | 6541 (87.2%) |
|  |  |  |  |  | Yes | 962 (12.8%) |
|  |  |  |  |  |  |  |
| 115 | IPV_KICK | Romantic/sexual partner ever kicked or stomped | categorical | 103 (1.4%) | No | 7007 (93.5%) |
|  |  |  |  |  | Yes | 489 (6.5%) |
|  |  |  |  |  |  |  |
| 116 | IPV_HAIR | Romantic/sexual partner ever hurt by pulling hair | categorical | 98 (1.3%) | No | 6838 (91.2%) |
|  |  |  |  |  | Yes | 663 (8.8%) |
|  |  |  |  |  |  |  |
| 117 | IPV_SLAM | Romantic/sexual partner ever hurt by slammed against something | categorical | 97 (1.3%) | No | 6754 (90.0%) |
|  |  |  |  |  | Yes | 748 (10.0%) |
|  |  |  |  |  |  |  |
| 118 | IPV_CHOKE | Romantic/sexual partner ever hurt by choking or suffocating | categorical | 104 (1.4%) | No | 6962 (92.9%) |
|  |  |  |  |  | Yes | 533 (7.1%) |
|  |  |  |  |  |  |  |
| 119 | IPV_KNIFE | Romantic/sexual partner ever used or threatened with a knife | categorical | 115 (1.5%) | No | 7136 (95.4%) |
|  |  |  |  |  | Yes | 348 (4.6%) |
|  |  |  |  |  |  |  |
| 120 | IPV_GUN | Romantic/sexual partner ever used or threatened with a gun | categorical | 94 (1.2%) | No | 7219 (96.2%) |
|  |  |  |  |  | Yes | 286 (3.8%) |
|  |  |  |  |  |  |  |
| 121 | IPV_ANY | DERIVED: Experienced any physical violence by intimate partner | categorical | 0 (0.0%) | No | 5533 (72.8%) |
|  |  |  |  |  | Yes | 2066 (27.2%) |
|  |  |  |  |  |  |  |
| 122 | IPV_SEV | DERIVED: Experienced any severe physical violence by intimate partner | categorical | 0 (0.0%) | No | 6132 (80.7%) |
|  |  |  |  |  | Yes | 1467 (19.3%) |
|  |  |  |  |  |  |  |
| 123 | MAR_MARITAL | Now married, living with a partner, or neither | categorical | 38 (0.5%) | Married | 4337 (57.4%) |
|  |  |  |  |  | Living with a partner together as an unmarried couple | 781 (10.3%) |
|  |  |  |  |  | Neither | 2443 (32.3%) |
|  |  |  |  |  |  |  |
| 124 | MAR_EVMARRY | Ever been married | categorical | 4363 (57.4%) | No | 1864 (57.6%) |
|  |  |  |  |  | Yes | 1372 (42.4%) |
|  |  |  |  |  |  |  |
| 125 | MAR_LEGAL | Current legal marital status | categorical | 7302 (96.1%) | Married | 13 (4.4%) |
|  |  |  |  |  | Widowed | 37 (12.5%) |
|  |  |  |  |  | Divorced | 229 (77.1%) |
|  |  |  |  |  | Separated | 18 (6.1%) |
|  |  |  |  |  |  |  |
| 126 | MAR_WIDIVSEP | Widowed, divorced or separated | categorical | 6535 (86.0%) | Widowed | 359 (33.7%) |
|  |  |  |  |  | Divorced | 643 (60.4%) |
|  |  |  |  |  | Separated | 62 (5.8%) |
|  |  |  |  |  |  |  |
| 127 | MARITAL | DERIVED: Current Marriage Status - 2 levels | categorical | 42 (0.6%) | Married | 4337 (57.4%) |
|  |  |  |  |  | Not married | 3220 (42.6%) |
|  |  |  |  |  |  |  |
| 128 | MARSTAT | DERIVED: Current marital status | categorical | 42 (0.6%) | MARRIED | 4337 (57.4%) |
|  |  |  |  |  | WIDOWED | 359 (4.8%) |
|  |  |  |  |  | DIVORCED | 643 (8.5%) |
|  |  |  |  |  | SEPARATED | 62 (0.8%) |
|  |  |  |  |  | NEVER MARRIED | 1375 (18.2%) |
|  |  |  |  |  | LIVING WITH PARTNER | 781 (10.3%) |
|  |  |  |  |  |  |  |
| 129 | LEGMSTAT | DERIVED: Legal marital status | categorical | 42 (0.6%) | SEPARATED | 80 (1.1%) |
|  |  |  |  |  | DIVORCED | 872 (11.5%) |
|  |  |  |  |  | MARRIED | 4350 (57.6%) |
|  |  |  |  |  | SINGLE/NEVER MARRIED | 1859 (24.6%) |
|  |  |  |  |  | WIDOWED | 396 (5.2%) |
|  |  |  |  |  |  |  |
| 130 | EMP_EMPLOY | Last week worked for pay at job or business | categorical | 66 (0.9%) | No | 3626 (48.1%) |
|  |  |  |  |  | Yes | 3907 (51.9%) |
|  |  |  |  |  |  |  |
| 131 | EMP_ABSENTWK | Had a job/business last week but temporarily absent | categorical | 4008 (52.7%) | No | 3446 (96.0%) |
|  |  |  |  |  | Yes | 145 (4.0%) |
|  |  |  |  |  |  |  |
| 132 | EMP_WHYNOWRK | Main reason not working for pay last week | categorical | 4205 (55.3%) | Unemployed, laid off, looking for work | 265 (7.8%) |
|  |  |  |  |  | Seasonal/contract work | 60 (1.8%) |
|  |  |  |  |  | Retired | 1856 (54.7%) |
|  |  |  |  |  | Unable to work for health reasons/disabled | 416 (12.3%) |
|  |  |  |  |  | Taking care of house or family | 349 (10.3%) |
|  |  |  |  |  | Going to school | 118 (3.5%) |
|  |  |  |  |  | Working at a family-owned job or business, but not for pay | 19 (0.6%) |
|  |  |  |  |  | Other | 311 (9.2%) |
|  |  |  |  |  |  |  |
| 133 | EMPWRKLSWK | DERIVED: Worked last week | categorical | 101 (1.3%) | Did not work | 3367 (44.9%) |
|  |  |  |  |  | Worked, Temp Absent, Seasonal, Family Job-no pay | 4131 (55.1%) |
|  |  |  |  |  |  |  |
| 134 | CIV_VOL12M | Volunteer activities, past 12 months | categorical | 50 (0.7%) | No | 5254 (69.6%) |
|  |  |  |  |  | Yes | 2295 (30.4%) |
|  |  |  |  |  |  |  |
| 135 | CIV_VOLOTH | Activities at schools or youth organizations, past 12 months | categorical | 2389 (31.4%) | No | 4791 (92.0%) |
|  |  |  |  |  | Yes | 419 (8.0%) |
|  |  |  |  |  |  |  |
| 136 | CIV_MEET | Attend local public meeting, past 12 months | categorical | 97 (1.3%) | No | 6563 (87.5%) |
|  |  |  |  |  | Yes | 939 (12.5%) |
|  |  |  |  |  |  |  |
| 137 | CIV_VOTELOCL | Vote in last local elections | categorical | 91 (1.2%) | No | 2802 (37.3%) |
|  |  |  |  |  | Yes | 4706 (62.7%) |
|  |  |  |  |  |  |  |
| 138 | CIVIC_ENGAGE | DERIVED: Civic engagement including volunteering | categorical | 115 (1.5%) | Yes | 5361 (71.6%) |
|  |  |  |  |  | No | 2123 (28.4%) |
|  |  |  |  |  |  |  |
| 139 | LAN_OTHERLAN | Speak language other than English at home | categorical | 80 (1.1%) | No | 6198 (82.4%) |
|  |  |  |  |  | Yes | 1321 (17.6%) |
|  |  |  |  |  |  |  |
| 140 | LAN_MEDIA | What language use most often when watching television, read news, listen to radio | categorical | 6283 (82.7%) | English | 790 (60.0%) |
|  |  |  |  |  | Spanish | 413 (31.4%) |
|  |  |  |  |  | Another language | 113 (8.6%) |
|  |  |  |  |  |  |  |
| 141 | LAN_DOCTOR | What language use most often when seeing a doctor | categorical | 6300 (82.9%) | English | 1037 (79.8%) |
|  |  |  |  |  | Spanish | 237 (18.2%) |
|  |  |  |  |  | Another language | 25 (1.9%) |
|  |  |  |  |  |  |  |
| 142 | LAN_SOCIAL | What language use most often when participate in social activities | categorical | 6288 (82.7%) | English | 932 (71.1%) |
|  |  |  |  |  | Spanish | 337 (25.7%) |
|  |  |  |  |  | Another language | 42 (3.2%) |
|  |  |  |  |  |  |  |
| 143 | TEL_NONCELL | At least one telephone inside home, not cell phone | categorical | 64 (0.8%) | No | 5065 (67.2%) |
|  |  |  |  |  | Yes | 2470 (32.8%) |
|  |  |  |  |  |  |  |
| 144 | TEL_CELL | Have a working cell phone | categorical | 56 (0.7%) | No | 292 (3.9%) |
|  |  |  |  |  | Yes | 7251 (96.1%) |
|  |  |  |  |  |  |  |
| 145 | TEL_HHCELL | Live with anyone with a working cell phone | categorical | 7377 (97.1%) | No | 117 (52.7%) |
|  |  |  |  |  | Yes | 105 (47.3%) |
|  |  |  |  |  |  |  |
| 146 | P_OUTCOME | Paradata: Outcome code | categorical | 0 (0.0%) | Complete (reached last question) | 7599 (100.0%) |
|  |  |  |  |  |  |  |
| 147 | SOURCE | Paradata: Panel Provider | categorical | 0 (0.0%) | Panel Provider 1 | 2898 (38.1%) |
|  |  |  |  |  | Panel Provider 2 | 4701 (61.9%) |
|  |  |  |  |  |  |  |
| 148 | QUEX_LANG | Paradata: Language of interview | categorical | 0 (0.0%) | ENGLISH | 7303 (96.1%) |
|  |  |  |  |  | SPANISH | 296 (3.9%) |
|  |  |  |  |  |  |  |
| 149 | P_GENDER | Panel Profile: Respondent gender | categorical | 0 (0.0%) | Male | 3690 (48.6%) |
|  |  |  |  |  | Female | 3909 (51.4%) |
|  |  |  |  |  |  |  |
| 150 | P_GENDERID | Panel Profile: Gender identity 4 Levels | categorical | 346 (4.6%) | Cis-gender Male | 3466 (47.8%) |
|  |  |  |  |  | Cis-gender Female | 3671 (50.6%) |
|  |  |  |  |  | Transgender | 53 (0.7%) |
|  |  |  |  |  | None of these | 63 (0.9%) |
|  |  |  |  |  |  |  |
| 151 | P_ORIENT | Panel Profile: Sexual Orientation | categorical | 360 (4.7%) | GAY OR LESBIAN | 212 (2.9%) |
|  |  |  |  |  | STRAIGHT, THAT IS NOT LESBIAN/GAY | 6605 (91.2%) |
|  |  |  |  |  | BISEXUAL | 295 (4.1%) |
|  |  |  |  |  | SOMETHING ELSE | 127 (1.8%) |
|  |  |  |  |  |  |  |
| 152 | P_EDUC_R | Panel Profile: Education - 3 levels | categorical | 0 (0.0%) | High school graduate or less | 2211 (29.1%) |
|  |  |  |  |  | Some college | 2459 (32.4%) |
|  |  |  |  |  | Bachelor’s degree or above | 2929 (38.5%) |
|  |  |  |  |  |  |  |
| 153 | P_EDUC_R_IFLG | Imputation flag for panel profile variable: | categorical | 2898 (38.1%) | No imputation | 4692 (99.8%) |
|  |  |  |  |  | Statistical imputation | 9 (0.2%) |
|  |  |  |  |  |  |  |
| 154 | P_RACE_R | Panel Profile: Race and ethnicity - 4 levels | categorical | 77 (1.0%) | White, non-Hispanic | 5042 (67.0%) |
|  |  |  |  |  | Black, non-Hispanic | 802 (10.7%) |
|  |  |  |  |  | Other, non-Hispanic | 561 (7.5%) |
|  |  |  |  |  | Hispanic | 1117 (14.8%) |
|  |  |  |  |  |  |  |
| 155 | P_HHSIZE_R | Household size (total) - Categorical | categorical | 0 (0.0%) | 1 | 1482 (19.5%) |
|  |  |  |  |  | 2 | 2839 (37.4%) |
|  |  |  |  |  | 3 | 1266 (16.7%) |
|  |  |  |  |  | 4 | 1027 (13.5%) |
|  |  |  |  |  | 5 | 523 (6.9%) |
|  |  |  |  |  | 6+ | 462 (6.1%) |
|  |  |  |  |  |  |  |
| 156 | P_AGEC_R | Respondent’s age at time of interview - topcoded | categorical | 6279 (82.6%) | 70+ | 1320 (100.0%) |
|  |  |  |  |  |  |  |
| 157 | P_INCOME_R | Household income - topcoded | categorical | 0 (0.0%) | Less than \$5,000 | 160 (2.1%) |
|  |  |  |  |  | \$5,000 to \$9,999 | 122 (1.6%) |
|  |  |  |  |  | \$10,000 to \$14,999 | 239 (3.1%) |
|  |  |  |  |  | \$15,000 to \$19,999 | 204 (2.7%) |
|  |  |  |  |  | \$20,000 to \$24,999 | 310 (4.1%) |
|  |  |  |  |  | \$25,000 to \$29,999 | 279 (3.7%) |
|  |  |  |  |  | \$30,000 to \$34,999 | 308 (4.1%) |
|  |  |  |  |  | \$35,000 to \$39,999 | 282 (3.7%) |
|  |  |  |  |  | \$40,000 to \$49,999 | 499 (6.6%) |
|  |  |  |  |  | \$50,000 to \$59,999 | 598 (7.9%) |
|  |  |  |  |  | (…) |  |
|  |  |  |  |  |  |  |
| 158 | P_INCOME_R_IFLG | Imputation flag for panel profile variable: | categorical | 2898 (38.1%) | No imputation | 4584 (97.5%) |
|  |  |  |  |  | Statistical imputation | 117 (2.5%) |
|  |  |  |  |  |  |  |
| 159 | P_POVERTY | Poverty status | categorical | 0 (0.0%) | \< 0.50 | 340 (4.5%) |
|  |  |  |  |  | 0.50 - \< 1.00 | 574 (7.6%) |
|  |  |  |  |  | 1.00 - \< 1.50 | 593 (7.8%) |
|  |  |  |  |  | 1.50 - \< 2.00 | 729 (9.6%) |
|  |  |  |  |  | 2.00 - \< 2.50 | 537 (7.1%) |
|  |  |  |  |  | 2.50 - \< 3.00 | 567 (7.5%) |
|  |  |  |  |  | 3.00 - \< 3.50 | 667 (8.8%) |
|  |  |  |  |  | 3.50 - \< 4.00 | 414 (5.4%) |
|  |  |  |  |  | 4.00 + | 3178 (41.8%) |
|  |  |  |  |  |  |  |
| 160 | P_EMPLOY | Panel Profile: Current Employment Status | categorical | 0 (0.0%) | Working | 4597 (60.5%) |
|  |  |  |  |  | Not working–unable to work for health reasons/disabled | 540 (7.1%) |
|  |  |  |  |  | Not working–retired | 1652 (21.7%) |
|  |  |  |  |  | Not working–other | 810 (10.7%) |
|  |  |  |  |  |  |  |
| 161 | P_MARITAL | Panel Profile: Marital status - recoded | categorical | 0 (0.0%) | Married | 4334 (57.0%) |
|  |  |  |  |  | Divorced/Separated | 973 (12.8%) |
|  |  |  |  |  | Widowed | 382 (5.0%) |
|  |  |  |  |  | Never married | 1910 (25.1%) |
|  |  |  |  |  |  |  |
| 162 | P_REGION | Panel Profile: 4-level region | categorical | 0 (0.0%) | Northeast | 1271 (16.7%) |
|  |  |  |  |  | Midwest | 1828 (24.1%) |
|  |  |  |  |  | South | 2724 (35.8%) |
|  |  |  |  |  | West | 1776 (23.4%) |
|  |  |  |  |  |  |  |
| 163 | P_HOMEOWN | Home ownership - 3 level | categorical | 0 (0.0%) | Owned or being bought by someone in your household | 5467 (71.9%) |
|  |  |  |  |  | Rented | 1982 (26.1%) |
|  |  |  |  |  | Occupied without payment of cash rent | 150 (2.0%) |
|  |  |  |  |  |  |  |
| 164 | P_HOMEOWN_IFLG | Imputation flag for panel profile variable: | categorical | 2898 (38.1%) | No imputation | 4690 (99.8%) |
|  |  |  |  |  | Statistical imputation | 11 (0.2%) |
|  |  |  |  |  |  |  |
| 165 | P_METRO_R | NCHS 2013 Urban/Rural code | categorical | 0 (0.0%) | Metropolitan | 6559 (86.3%) |
|  |  |  |  |  | Non-metropolitan | 1040 (13.7%) |
|  |  |  |  |  |  |  |
| 166 | P_METRO_R_IFLG | Imputation flag for profile variable: | categorical | 0 (0.0%) | No imputation | 7584 (99.8%) |
|  |  |  |  |  | Statistical imputation | 15 (0.2%) |
|  |  |  |  |  |  |  |
| 167 | P_CITIZEN | Panel Profile: Are you a US citizen? | categorical | 1474 (19.4%) | Not a U.S. citizen | 207 (3.4%) |
|  |  |  |  |  | U.S. citizen | 5918 (96.6%) |
|  |  |  |  |  |  |  |
| 168 | P_VETERAN | Panel Profile: Have you ever served on active duty in the U.S. Armed Forces, military Reserves, or National Guard? | categorical | 381 (5.0%) | Not a veteran | 6504 (90.1%) |
|  |  |  |  |  | Veteran | 714 (9.9%) |
|  |  |  |  |  |  |  |
| 169 | P_INSUR | Panel Profile: Covered by any form of health insurance or health plan? | categorical | 1608 (21.2%) | Does not have health insurance | 370 (6.2%) |
|  |  |  |  |  | Has health insurance | 5621 (93.8%) |
|  |  |  |  |  |  |  |
| 170 | P_USBORN | Panel Profile: Is respondent US born? | categorical | 1162 (15.3%) | Yes | 5906 (91.8%) |
|  |  |  |  |  | No | 531 (8.2%) |
|  |  |  |  |  |  |  |
| 171 | P_ONEVISIT | Paradata: Whether the survey was completed in a single session | categorical | 0 (0.0%) | Multiple sessions | 833 (11.0%) |
|  |  |  |  |  | Completed survey in single session | 6766 (89.0%) |
|  |  |  |  |  |  |  |
| 172 | P_MODE | Paradata: Mode of interview | categorical | 0 (0.0%) | Web | 7462 (98.2%) |
|  |  |  |  |  | CATI | 137 (1.8%) |
|  |  |  |  |  |  |  |
| 173 | P_DEVICE | Paradata: Device used to complete survey (web only) | categorical | 0 (0.0%) | Desktop/Laptop/netbook | 3205 (42.2%) |
|  |  |  |  |  | Smartphone | 4016 (52.8%) |
|  |  |  |  |  | Tablet | 238 (3.1%) |
|  |  |  |  |  | Other device (book reader, game console, etc.) | 3 (0.0%) |
|  |  |  |  |  | Phone interview (not online) | 137 (1.8%) |
|  |  |  |  |  |  |  |

rss1 (7599 rows and 173 variables, 173 shown) {.table
style="width:100%;"}

    ## The data contains 7599 observations of the following 173 variables:
    ## 
    ##   - HIS_GENERAL: 5 levels, namely Excellent (n = 632, 8.32%), Very good (n =
    ## 2788, 36.69%), Good (n = 2976, 39.16%), Fair (n = 1015, 13.36%), Poor (n = 172,
    ## 2.26%) and missing (n = 16, 0.21%)
    ##   - CHR_HYPEV: 2 levels, namely No (n = 4656, 61.27%), Yes (n = 2903, 38.20%) and
    ## missing (n = 40, 0.53%)
    ##   - CHR_HYPDIF: 2 levels, namely No (n = 302, 3.97%), Yes (n = 2548, 33.53%) and
    ## missing (n = 4749, 62.50%)
    ##   - CHR_HYP12M: 2 levels, namely No (n = 145, 1.91%), Yes (n = 2373, 31.23%) and
    ## missing (n = 5081, 66.86%)
    ##   - CHR_HYPMED: 2 levels, namely No (n = 446, 5.87%), Yes (n = 2442, 32.14%) and
    ## missing (n = 4711, 61.99%)
    ##   - CHR_CHLEV: 2 levels, namely No (n = 4569, 60.13%), Yes (n = 2944, 38.74%) and
    ## missing (n = 86, 1.13%)
    ##   - CHR_CHDEV: 2 levels, namely No (n = 7105, 93.50%), Yes (n = 464, 6.11%) and
    ## missing (n = 30, 0.39%)
    ##   - CHR_ASEV: 2 levels, namely No (n = 6336, 83.38%), Yes (n = 1168, 15.37%) and
    ## missing (n = 95, 1.25%)
    ##   - CHR_CANEV: 2 levels, namely No (n = 6588, 86.70%), Yes (n = 954, 12.55%) and
    ## missing (n = 57, 0.75%)
    ##   - DIB_PREDIB: 2 levels, namely No (n = 5633, 74.13%), Yes (n = 1902, 25.03%)
    ## and missing (n = 64, 0.84%)
    ##   - DIB_GESDIB: 2 levels, namely No (n = 3599, 47.36%), Yes (n = 296, 3.90%) and
    ## missing (n = 3704, 48.74%)
    ##   - DIB_DIBEV: 2 levels, namely No (n = 6573, 86.50%), Yes (n = 981, 12.91%) and
    ## missing (n = 45, 0.59%)
    ##   - BMI_PREGNOW: 2 levels, namely No (n = 1704, 22.42%), Yes (n = 47, 0.62%) and
    ## missing (n = 5848, 76.96%)
    ##   - BMICAT: 5 levels, namely Underweight (BMI <18.50) (n = 125, 1.64%), Healthy
    ## weight (18.50 <= BMI < 25.00) (n = 2125, 27.96%), Overweight (25.00 <= BMI <
    ## 30.00) (n = 2468, 32.48%), Obese (BMI >= 30.00) (n = 2741, 36.07%) and Unknown
    ## (n = 140, 1.84%)
    ##   - SOC_ERRANDS: 4 levels, namely No difficulty (n = 6295, 82.84%), Some
    ## difficulty (n = 956, 12.58%), A lot of difficulty (n = 273, 3.59%), Cannot do
    ## this at all (n = 53, 0.70%) and missing (n = 22, 0.29%)
    ##   - SOC_PARACTIV: 4 levels, namely No difficulty (n = 5808, 76.43%), Some
    ## difficulty (n = 1227, 16.15%), A lot of difficulty (n = 417, 5.49%), Cannot do
    ## this at all (n = 73, 0.96%) and missing (n = 74, 0.97%)
    ##   - SOC_SCWRKLIM: 2 levels, namely No (n = 5891, 77.52%), Yes (n = 1669, 21.96%)
    ## and missing (n = 39, 0.51%)
    ##   - PAY_PAYWORRY: 3 levels, namely Very worried (n = 1104, 14.53%), Somewhat
    ## worried (n = 2740, 36.06%), Not at all worried (n = 3726, 49.03%) and missing
    ## (n = 29, 0.38%)
    ##   - CVL_HEARDEV: 2 levels, namely No (n = 2215, 29.15%), Yes (n = 5359, 70.52%)
    ## and missing (n = 25, 0.33%)
    ##   - CVL_REAL: 4 levels, namely Strongly disagree (n = 152, 2.00%), Somewhat
    ## disagree (n = 237, 3.12%), Somewhat agree (n = 1532, 20.16%), Strongly agree (n
    ## = 2890, 38.03%) and missing (n = 2788, 36.69%)
    ##   - CVL_REAL_O: 7 levels, namely Displayed 1st (n = 791, 10.41%), Displayed 2nd
    ## (n = 758, 9.97%), Displayed 3rd (n = 786, 10.34%), Displayed 4th (n = 754,
    ## 9.92%), Displayed 5th (n = 714, 9.40%), Displayed 6th (n = 806, 10.61%),
    ## Displayed 7th (n = 752, 9.90%) and missing (n = 2238, 29.45%)
    ##   - CVL_SERIOUS: 4 levels, namely Strongly disagree (n = 175, 2.30%), Somewhat
    ## disagree (n = 266, 3.50%), Somewhat agree (n = 1553, 20.44%), Strongly agree (n
    ## = 2770, 36.45%) and missing (n = 2835, 37.31%)
    ##   - CVL_SERIOUS_O: 7 levels, namely Displayed 1st (n = 757, 9.96%), Displayed 2nd
    ## (n = 771, 10.15%), Displayed 3rd (n = 741, 9.75%), Displayed 4th (n = 766,
    ## 10.08%), Displayed 5th (n = 807, 10.62%), Displayed 6th (n = 743, 9.78%),
    ## Displayed 7th (n = 776, 10.21%) and missing (n = 2238, 29.45%)
    ##   - CVL_DEPRESS: 4 levels, namely Strongly disagree (n = 1557, 20.49%), Somewhat
    ## disagree (n = 1292, 17.00%), Somewhat agree (n = 905, 11.91%), Strongly agree
    ## (n = 340, 4.47%) and missing (n = 3505, 46.12%)
    ##   - CVL_DEPRESS_O: 7 levels, namely Displayed 1st (n = 779, 10.25%), Displayed
    ## 2nd (n = 732, 9.63%), Displayed 3rd (n = 759, 9.99%), Displayed 4th (n = 780,
    ## 10.26%), Displayed 5th (n = 731, 9.62%), Displayed 6th (n = 810, 10.66%),
    ## Displayed 7th (n = 770, 10.13%) and missing (n = 2238, 29.45%)
    ##   - CVL_NORMPAIN: 4 levels, namely Strongly disagree (n = 1740, 22.90%), Somewhat
    ## disagree (n = 1547, 20.36%), Somewhat agree (n = 852, 11.21%), Strongly agree
    ## (n = 208, 2.74%) and missing (n = 3252, 42.80%)
    ##   - CVL_NORMPAIN_O: 7 levels, namely Displayed 1st (n = 757, 9.96%), Displayed
    ## 2nd (n = 835, 10.99%), Displayed 3rd (n = 766, 10.08%), Displayed 4th (n = 755,
    ## 9.94%), Displayed 5th (n = 788, 10.37%), Displayed 6th (n = 730, 9.61%),
    ## Displayed 7th (n = 730, 9.61%) and missing (n = 2238, 29.45%)
    ##   - CVL_EMPLOYER: 4 levels, namely Strongly disagree (n = 221, 2.91%), Somewhat
    ## disagree (n = 486, 6.40%), Somewhat agree (n = 2044, 26.90%), Strongly agree (n
    ## = 1875, 24.67%) and missing (n = 2973, 39.12%)
    ##   - CVL_EMPLOYER_O: 7 levels, namely Displayed 1st (n = 773, 10.17%), Displayed
    ## 2nd (n = 747, 9.83%), Displayed 3rd (n = 757, 9.96%), Displayed 4th (n = 792,
    ## 10.42%), Displayed 5th (n = 750, 9.87%), Displayed 6th (n = 786, 10.34%),
    ## Displayed 7th (n = 756, 9.95%) and missing (n = 2238, 29.45%)
    ##   - CVL_MEDIA: 4 levels, namely Strongly disagree (n = 1363, 17.94%), Somewhat
    ## disagree (n = 1293, 17.02%), Somewhat agree (n = 1066, 14.03%), Strongly agree
    ## (n = 481, 6.33%) and missing (n = 3396, 44.69%)
    ##   - CVL_MEDIA_O: 7 levels, namely Displayed 1st (n = 775, 10.20%), Displayed 2nd
    ## (n = 760, 10.00%), Displayed 3rd (n = 749, 9.86%), Displayed 4th (n = 718,
    ## 9.45%), Displayed 5th (n = 784, 10.32%), Displayed 6th (n = 763, 10.04%),
    ## Displayed 7th (n = 812, 10.69%) and missing (n = 2238, 29.45%)
    ##   - CVL_PASSED: 4 levels, namely Strongly disagree (n = 2146, 28.24%), Somewhat
    ## disagree (n = 821, 10.80%), Somewhat agree (n = 338, 4.45%), Strongly agree (n
    ## = 203, 2.67%) and missing (n = 4091, 53.84%)
    ##   - CVL_PASSED_O: 7 levels, namely Displayed 1st (n = 729, 9.59%), Displayed 2nd
    ## (n = 758, 9.97%), Displayed 3rd (n = 803, 10.57%), Displayed 4th (n = 796,
    ## 10.48%), Displayed 5th (n = 787, 10.36%), Displayed 6th (n = 723, 9.51%),
    ## Displayed 7th (n = 765, 10.07%) and missing (n = 2238, 29.45%)
    ##   - CVL_COVIDEV: 2 levels, namely No (n = 3436, 45.22%), Yes (n = 4140, 54.48%)
    ## and missing (n = 23, 0.30%)
    ##   - CVL_SYMPT3M: 2 levels, namely No (n = 3271, 43.05%), Yes (n = 843, 11.09%)
    ## and missing (n = 3485, 45.86%)
    ##   - CVL_LONGCVEV: 2 levels, namely No (n = 2951, 38.83%), Yes (n = 198, 2.61%)
    ## and missing (n = 4450, 58.56%)
    ##   - LONGCOVID: 3 levels, namely Yes (n = 879, 11.57%), No (n = 2376, 31.27%),
    ## Never had COVID (n = 3436, 45.22%) and missing (n = 908, 11.95%)
    ##   - CVL_LONGOTH: 2 levels, namely No (n = 3804, 50.06%), Yes (n = 1513, 19.91%)
    ## and missing (n = 2282, 30.03%)
    ##   - CVL_LEARNMOR: 6 levels, namely Talk with a doctor or other health care
    ## professional (n = 3487, 45.89%), Talk with family or friends (n = 189, 2.49%),
    ## Get information from the CDC (n = 858, 11.29%), Get information from your state
    ## or local health department (n = 228, 3.00%), Search the internet (n = 2527,
    ## 33.25%), Something else (n = 277, 3.65%) and missing (n = 33, 0.43%)
    ##   - ACC_DNCEXAM: 7 levels, namely Never (n = 87, 1.14%), Less than 12 months ago
    ## (n = 4939, 65.00%), More than 1 year but less than 2 years ago (n = 777,
    ## 10.23%), More than 2 years but less than 3 years ago (n = 484, 6.37%), More
    ## than 3 years but less than 5 years ago (n = 388, 5.11%), More than 5 years but
    ## less than 10 years ago (n = 433, 5.70%), 10 years ago or more (n = 477, 6.28%)
    ## and missing (n = 14, 0.18%)
    ##   - ACC_DNCDELAY: 2 levels, namely No (n = 5676, 74.69%), Yes (n = 1896, 24.95%)
    ## and missing (n = 27, 0.36%)
    ##   - ACC_DNCCOST: 2 levels, namely No (n = 5956, 78.38%), Yes (n = 1557, 20.49%)
    ## and missing (n = 86, 1.13%)
    ##   - ACC_HTHLAST: 7 levels, namely Never (n = 77, 1.01%), Less than 12 months ago
    ## (n = 6123, 80.58%), More than 1 year but less than 2 years ago (n = 597,
    ## 7.86%), More than 2 years but less than 3 years ago (n = 294, 3.87%), More than
    ## 3 years but less than 5 years ago (n = 225, 2.96%), More than 5 years but less
    ## than 10 years ago (n = 161, 2.12%), 10 years ago or more (n = 100, 1.32%) and
    ## missing (n = 22, 0.29%)
    ##   - ACC_HTHUSUAL: 3 levels, namely Yes, there is a single place (n = 4570,
    ## 60.14%), No, there is no place (n = 729, 9.59%), Yes, there is more than one
    ## place (n = 2264, 29.79%) and missing (n = 36, 0.47%)
    ##   - ACC_HTHTYPE: 6 levels, namely I do not go to one place most often (n = 66,
    ## 0.87%), A doctor's office or health center (n = 5751, 75.68%), Urgent care
    ## center or clinic in a drug store or grocery store (n = 659, 8.67%), Hospital
    ## emergency room (n = 143, 1.88%), A VA medical center or VA outpatient clinic (n
    ## = 153, 2.01%), Some other place (n = 54, 0.71%) and missing (n = 773, 10.17%)
    ##   - ACC_HOSP12M: 2 levels, namely No (n = 6950, 91.46%), Yes (n = 628, 8.26%) and
    ## missing (n = 21, 0.28%)
    ##   - ACC_EYE12M: 2 levels, namely No (n = 3233, 42.55%), Yes (n = 4313, 56.76%)
    ## and missing (n = 53, 0.70%)
    ##   - ACC_THER12M: 2 levels, namely No (n = 6500, 85.54%), Yes (n = 1068, 14.05%)
    ## and missing (n = 31, 0.41%)
    ##   - INT_ACCESS: 2 levels, namely No (n = 49, 0.64%) and Yes (n = 7550, 99.36%)
    ##   - INT_HOMEACC: 2 levels, namely No (n = 241, 3.17%), Yes (n = 7257, 95.50%) and
    ## missing (n = 101, 1.33%)
    ##   - INT_USEMED: 2 levels, namely No (n = 1751, 23.04%), Yes (n = 5771, 75.94%)
    ## and missing (n = 77, 1.01%)
    ##   - INT_USEDOC: 2 levels, namely No (n = 3030, 39.87%), Yes (n = 4489, 59.07%)
    ## and missing (n = 80, 1.05%)
    ##   - INT_USETEST: 2 levels, namely No (n = 2577, 33.91%), Yes (n = 4931, 64.89%)
    ## and missing (n = 91, 1.20%)
    ##   - PRV_BPCHECK: 7 levels, namely Never (n = 108, 1.42%), Less than 12 months ago
    ## (n = 6339, 83.42%), More than 1 year but less than 2 years ago (n = 538,
    ## 7.08%), More than 2 years but less than 3 years ago (n = 222, 2.92%), More than
    ## 3 years but less than 5 years ago (n = 173, 2.28%), More than 5 years but less
    ## than 10 years ago (n = 121, 1.59%), 10 years ago or more (n = 69, 0.91%) and
    ## missing (n = 29, 0.38%)
    ##   - PRV_CHLCHECK: 7 levels, namely Never (n = 556, 7.32%), Less than 12 months
    ## ago (n = 5010, 65.93%), More than 1 year but less than 2 years ago (n = 933,
    ## 12.28%), More than 2 years but less than 3 years ago (n = 344, 4.53%), More
    ## than 3 years but less than 5 years ago (n = 299, 3.93%), More than 5 years but
    ## less than 10 years ago (n = 170, 2.24%), 10 years ago or more (n = 118, 1.55%)
    ## and missing (n = 169, 2.22%)
    ##   - PRV_DIBCHECK: 7 levels, namely Never (n = 694, 9.13%), Less than 12 months
    ## ago (n = 4061, 53.44%), More than 1 year but less than 2 years ago (n = 845,
    ## 11.12%), More than 2 years but less than 3 years ago (n = 333, 4.38%), More
    ## than 3 years but less than 5 years ago (n = 287, 3.78%), More than 5 years but
    ## less than 10 years ago (n = 191, 2.51%), 10 years ago or more (n = 139, 1.83%)
    ## and missing (n = 1049, 13.80%)
    ##   - CAN_MAMMEV: 2 levels, namely No (n = 743, 9.78%), Yes (n = 2659, 34.99%) and
    ## missing (n = 4197, 55.23%)
    ##   - CAN_RECENTM: 7 levels, namely Never (n = 4, 0.05%), Less than 12 months ago
    ## (n = 1636, 21.53%), More than 1 year but less than 2 years ago (n = 486,
    ## 6.40%), More than 2 years but less than 3 years ago (n = 174, 2.29%), More than
    ## 3 years but less than 5 years ago (n = 129, 1.70%), More than 5 years but less
    ## than 10 years ago (n = 121, 1.59%), 10 years ago or more (n = 105, 1.38%) and
    ## missing (n = 4944, 65.06%)
    ##   - CAN_BDENSITY: 2 levels, namely No (n = 1154, 15.19%), Yes (n = 1483, 19.52%)
    ## and missing (n = 4962, 65.30%)
    ##   - CAN_BDENSINF_C1: 2 levels, namely Not selected (n = 868, 11.42%), Selected (n
    ## = 613, 8.07%) and missing (n = 6118, 80.51%)
    ##   - CAN_BDENSINF_C2: 2 levels, namely Not selected (n = 655, 8.62%), Selected (n
    ## = 826, 10.87%) and missing (n = 6118, 80.51%)
    ##   - CAN_BDENSINF_C3: 2 levels, namely Not selected (n = 1099, 14.46%), Selected
    ## (n = 382, 5.03%) and missing (n = 6118, 80.51%)
    ##   - CAN_BDENSINF_C4: 2 levels, namely Not selected (n = 1450, 19.08%), Selected
    ## (n = 31, 0.41%) and missing (n = 6118, 80.51%)
    ##   - CAN_DENSE: 2 levels, namely Did not have dense breast tissue (n = 383,
    ## 5.04%), Did have dense breast tissue (n = 1079, 14.20%) and missing (n = 6137,
    ## 80.76%)
    ##   - OVA_TUBETIED: 2 levels, namely No (n = 3179, 41.83%), Yes (n = 676, 8.90%)
    ## and missing (n = 3744, 49.27%)
    ##   - OVA_TUBECUT: 2 levels, namely No (n = 3358, 44.19%), Yes (n = 415, 5.46%) and
    ## missing (n = 3826, 50.35%)
    ##   - OVA_TUBEREM: 2 levels, namely No (n = 3335, 43.89%), Yes (n = 439, 5.78%) and
    ## missing (n = 3825, 50.34%)
    ##   - OVA_OVARIES: 2 levels, namely No (n = 3350, 44.08%), Yes (n = 445, 5.86%) and
    ## missing (n = 3804, 50.06%)
    ##   - GEN_INTRO: 2 levels, namely No (n = 3764, 49.53%), Yes (n = 3796, 49.95%) and
    ## missing (n = 39, 0.51%)
    ##   - GEN_HLTHINS: 4 levels, namely Not at all concerned (n = 1476, 19.42%), A
    ## little concerned (n = 974, 12.82%), Somewhat concerned (n = 820, 10.79%), Very
    ## concerned (n = 501, 6.59%) and missing (n = 3828, 50.38%)
    ##   - GEN_LIFEINS: 4 levels, namely Not at all concerned (n = 1490, 19.61%), A
    ## little concerned (n = 859, 11.30%), Somewhat concerned (n = 786, 10.34%), Very
    ## concerned (n = 624, 8.21%) and missing (n = 3840, 50.53%)
    ##   - GEN_DISAINS: 4 levels, namely Not at all concerned (n = 1427, 18.78%), A
    ## little concerned (n = 903, 11.88%), Somewhat concerned (n = 821, 10.80%), Very
    ## concerned (n = 611, 8.04%) and missing (n = 3837, 50.49%)
    ##   - GEN_JOB: 4 levels, namely Not at all concerned (n = 2468, 32.48%), A little
    ## concerned (n = 570, 7.50%), Somewhat concerned (n = 448, 5.90%), Very concerned
    ## (n = 277, 3.65%) and missing (n = 3836, 50.48%)
    ##   - GEN_TESTEV: 2 levels, namely No (n = 3227, 42.47%), Yes (n = 547, 7.20%) and
    ## missing (n = 3825, 50.34%)
    ##   - CRI_ALCOHOL: 3 levels, namely Decreases risk (n = 98, 1.29%), No effect (n =
    ## 3408, 44.85%), Increases risk (n = 3929, 51.70%) and missing (n = 164, 2.16%)
    ##   - SUN_USEFACE: 5 levels, namely Never (n = 1467, 19.31%), Rarely (n = 1770,
    ## 23.29%), Sometimes (n = 2077, 27.33%), Most of the time (n = 1500, 19.74%),
    ## Always (n = 749, 9.86%) and missing (n = 36, 0.47%)
    ##   - SUN_USESKIN: 5 levels, namely Never (n = 1308, 17.21%), Rarely (n = 1762,
    ## 23.19%), Sometimes (n = 2498, 32.87%), Most of the time (n = 1451, 19.09%),
    ## Always (n = 534, 7.03%) and missing (n = 46, 0.61%)
    ##   - SUN_AFFORD: 4 levels, namely Not important at all (n = 1464, 19.27%),
    ## Slightly important (n = 1899, 24.99%), Moderately important (n = 2354, 30.98%),
    ## Very important (n = 1785, 23.49%) and missing (n = 97, 1.28%)
    ##   - SUN_INGRED: 4 levels, namely Not important at all (n = 1125, 14.80%),
    ## Slightly important (n = 1577, 20.75%), Moderately important (n = 2076, 27.32%),
    ## Very important (n = 2699, 35.52%) and missing (n = 122, 1.61%)
    ##   - SUN_SPRAY: 4 levels, namely Not important at all (n = 2805, 36.91%), Slightly
    ## important (n = 1859, 24.46%), Moderately important (n = 1746, 22.98%), Very
    ## important (n = 1062, 13.98%) and missing (n = 127, 1.67%)
    ##   - SUN_FEEL: 4 levels, namely Not important at all (n = 1484, 19.53%), Slightly
    ## important (n = 1927, 25.36%), Moderately important (n = 1985, 26.12%), Very
    ## important (n = 2083, 27.41%) and missing (n = 120, 1.58%)
    ##   - SUN_NOHARM: 4 levels, namely Strongly disagree (n = 4295, 56.52%), Somewhat
    ## disagree (n = 2000, 26.32%), Somewhat agree (n = 756, 9.95%), Strongly agree (n
    ## = 459, 6.04%) and missing (n = 89, 1.17%)
    ##   - SUN_REAPPLY: 4 levels, namely Strongly disagree (n = 1297, 17.07%), Somewhat
    ## disagree (n = 1619, 21.31%), Somewhat agree (n = 3726, 49.03%), Strongly agree
    ## (n = 837, 11.01%) and missing (n = 120, 1.58%)
    ##   - SUN_SAFETY: 4 levels, namely Strongly disagree (n = 1347, 17.73%), Somewhat
    ## disagree (n = 2165, 28.49%), Somewhat agree (n = 2807, 36.94%), Strongly agree
    ## (n = 1152, 15.16%) and missing (n = 128, 1.68%)
    ##   - SUN_CLOUDY: 4 levels, namely Strongly disagree (n = 2955, 38.89%), Somewhat
    ## disagree (n = 2823, 37.15%), Somewhat agree (n = 1254, 16.50%), Strongly agree
    ## (n = 457, 6.01%) and missing (n = 110, 1.45%)
    ##   - MTL_ANXIETY: 5 levels, namely Never (n = 2315, 30.46%), Daily (n = 1233,
    ## 16.23%), Weekly (n = 1164, 15.32%), Monthly (n = 792, 10.42%), A few times a
    ## year (n = 2017, 26.54%) and missing (n = 78, 1.03%)
    ##   - MTL_ANXMEDS: 2 levels, namely No (n = 6097, 80.23%), Yes (n = 1404, 18.48%)
    ## and missing (n = 98, 1.29%)
    ##   - MTL_ANXLVL: 3 levels, namely A little (n = 2424, 31.90%), A lot (n = 989,
    ## 13.01%), Somewhere in between a little and a lot (n = 1848, 24.32%) and missing
    ## (n = 2338, 30.77%)
    ##   - MTL_DEPRESS: 5 levels, namely Never (n = 3202, 42.14%), Daily (n = 694,
    ## 9.13%), Weekly (n = 699, 9.20%), Monthly (n = 699, 9.20%), A few times a year
    ## (n = 2180, 28.69%) and missing (n = 125, 1.64%)
    ##   - MTL_DEPMEDS: 2 levels, namely No (n = 6332, 83.33%), Yes (n = 1166, 15.34%)
    ## and missing (n = 101, 1.33%)
    ##   - MTL_DEPLVL: 3 levels, namely A little (n = 2296, 30.21%), A lot (n = 869,
    ## 11.44%), Somewhere in between a little and a lot (n = 1205, 15.86%) and missing
    ## (n = 3229, 42.49%)
    ##   - CIG_SMKEV: 2 levels, namely No (n = 4666, 61.40%), Yes (n = 2898, 38.14%) and
    ## missing (n = 35, 0.46%)
    ##   - CIG_SMKNOW: 3 levels, namely Every day (n = 554, 7.29%), Some days (n = 218,
    ## 2.87%), Not at all (n = 2112, 27.79%) and missing (n = 4715, 62.05%)
    ##   - CAR_USE: 2 levels, namely No (n = 7050, 92.78%), Yes (n = 497, 6.54%) and
    ## missing (n = 52, 0.68%)
    ##   - CAR_FREQUSE: 5 levels, namely 1-2 times a year (n = 214, 2.82%), Every 3-4
    ## months (n = 120, 1.58%), Every 5-8 weeks (n = 62, 0.82%), Once a month (n = 45,
    ## 0.59%), More than once a month (n = 34, 0.45%) and missing (n = 7124, 93.75%)
    ##   - CAR_STOPUSE: 4 levels, namely Stopped use (n = 107, 1.41%), Used less (n =
    ## 156, 2.05%), My use of these products has not changed (n = 208, 2.74%), Used
    ## more (n = 13, 0.17%) and missing (n = 7115, 93.63%)
    ##   - VEN_USE: 4 levels, namely Never (n = 4726, 62.19%), Rarely (n = 761, 10.01%),
    ## Sometimes (n = 1047, 13.78%), Always (n = 1036, 13.63%) and missing (n = 29,
    ## 0.38%)
    ##   - VEN_ACDUST: 2 levels, namely No (n = 299, 3.93%), Yes (n = 2525, 33.23%) and
    ## missing (n = 4775, 62.84%)
    ##   - VEN_ACSMOKE: 2 levels, namely No (n = 1760, 23.16%), Yes (n = 1034, 13.61%)
    ## and missing (n = 4805, 63.23%)
    ##   - VEN_ACVIRUS: 2 levels, namely No (n = 1337, 17.59%), Yes (n = 1447, 19.04%)
    ## and missing (n = 4815, 63.36%)
    ##   - VEN_ACOTHER: 2 levels, namely No (n = 1721, 22.65%), Yes (n = 971, 12.78%)
    ## and missing (n = 4907, 64.57%)
    ##   - VEN_HEPAUSE: 2 levels, namely No (n = 558, 7.34%), Yes (n = 1493, 19.65%) and
    ## missing (n = 5548, 73.01%)
    ##   - VEN_HPNOHEAR: 2 levels, namely No (n = 387, 5.09%), Yes (n = 158, 2.08%) and
    ## missing (n = 7054, 92.83%)
    ##   - VEN_HPNONEED: 2 levels, namely No (n = 330, 4.34%), Yes (n = 209, 2.75%) and
    ## missing (n = 7060, 92.91%)
    ##   - VEN_HPNOCOST: 2 levels, namely No (n = 281, 3.70%), Yes (n = 261, 3.43%) and
    ## missing (n = 7057, 92.87%)
    ##   - VEN_HPNOLOUD: 2 levels, namely No (n = 451, 5.93%), Yes (n = 69, 0.91%) and
    ## missing (n = 7079, 93.16%)
    ##   - VEN_HPNOFIND: 2 levels, namely No (n = 450, 5.92%), Yes (n = 77, 1.01%) and
    ## missing (n = 7072, 93.06%)
    ##   - VEN_HPNOOTH: 2 levels, namely No (n = 368, 4.84%), Yes (n = 157, 2.07%) and
    ## missing (n = 7074, 93.09%)
    ##   - VEN_ACNONEED: 2 levels, namely No (n = 1492, 19.63%), Yes (n = 3137, 41.28%)
    ## and missing (n = 2970, 39.08%)
    ##   - VEN_ACNOCOST: 2 levels, namely No (n = 1931, 25.41%), Yes (n = 2635, 34.68%)
    ## and missing (n = 3033, 39.91%)
    ##   - VEN_ACNOLOUD: 2 levels, namely No (n = 3102, 40.82%), Yes (n = 1418, 18.66%)
    ## and missing (n = 3079, 40.52%)
    ##   - VEN_ACNOOTH: 2 levels, namely No (n = 3373, 44.39%), Yes (n = 1000, 13.16%)
    ## and missing (n = 3226, 42.45%)
    ##   - IPV_PUSH: 2 levels, namely No (n = 5688, 74.85%), Yes (n = 1827, 24.04%) and
    ## missing (n = 84, 1.11%)
    ##   - IPV_HIT: 2 levels, namely No (n = 6541, 86.08%), Yes (n = 962, 12.66%) and
    ## missing (n = 96, 1.26%)
    ##   - IPV_KICK: 2 levels, namely No (n = 7007, 92.21%), Yes (n = 489, 6.44%) and
    ## missing (n = 103, 1.36%)
    ##   - IPV_HAIR: 2 levels, namely No (n = 6838, 89.99%), Yes (n = 663, 8.72%) and
    ## missing (n = 98, 1.29%)
    ##   - IPV_SLAM: 2 levels, namely No (n = 6754, 88.88%), Yes (n = 748, 9.84%) and
    ## missing (n = 97, 1.28%)
    ##   - IPV_CHOKE: 2 levels, namely No (n = 6962, 91.62%), Yes (n = 533, 7.01%) and
    ## missing (n = 104, 1.37%)
    ##   - IPV_KNIFE: 2 levels, namely No (n = 7136, 93.91%), Yes (n = 348, 4.58%) and
    ## missing (n = 115, 1.51%)
    ##   - IPV_GUN: 2 levels, namely No (n = 7219, 95.00%), Yes (n = 286, 3.76%) and
    ## missing (n = 94, 1.24%)
    ##   - IPV_ANY: 2 levels, namely No (n = 5533, 72.81%) and Yes (n = 2066, 27.19%)
    ##   - IPV_SEV: 2 levels, namely No (n = 6132, 80.69%) and Yes (n = 1467, 19.31%)
    ##   - MAR_MARITAL: 3 levels, namely Married (n = 4337, 57.07%), Living with a
    ## partner together as an unmarried couple (n = 781, 10.28%), Neither (n = 2443,
    ## 32.15%) and missing (n = 38, 0.50%)
    ##   - MAR_EVMARRY: 2 levels, namely No (n = 1864, 24.53%), Yes (n = 1372, 18.06%)
    ## and missing (n = 4363, 57.42%)
    ##   - MAR_LEGAL: 4 levels, namely Married (n = 13, 0.17%), Widowed (n = 37, 0.49%),
    ## Divorced (n = 229, 3.01%), Separated (n = 18, 0.24%) and missing (n = 7302,
    ## 96.09%)
    ##   - MAR_WIDIVSEP: 3 levels, namely Widowed (n = 359, 4.72%), Divorced (n = 643,
    ## 8.46%), Separated (n = 62, 0.82%) and missing (n = 6535, 86.00%)
    ##   - MARITAL: 2 levels, namely Married (n = 4337, 57.07%), Not married (n = 3220,
    ## 42.37%) and missing (n = 42, 0.55%)
    ##   - MARSTAT: 6 levels, namely MARRIED (n = 4337, 57.07%), WIDOWED (n = 359,
    ## 4.72%), DIVORCED (n = 643, 8.46%), SEPARATED (n = 62, 0.82%), NEVER MARRIED (n
    ## = 1375, 18.09%), LIVING WITH PARTNER (n = 781, 10.28%) and missing (n = 42,
    ## 0.55%)
    ##   - LEGMSTAT: 5 levels, namely SEPARATED (n = 80, 1.05%), DIVORCED (n = 872,
    ## 11.48%), MARRIED (n = 4350, 57.24%), SINGLE/NEVER MARRIED (n = 1859, 24.46%),
    ## WIDOWED (n = 396, 5.21%) and missing (n = 42, 0.55%)
    ##   - EMP_EMPLOY: 2 levels, namely No (n = 3626, 47.72%), Yes (n = 3907, 51.41%)
    ## and missing (n = 66, 0.87%)
    ##   - EMP_ABSENTWK: 2 levels, namely No (n = 3446, 45.35%), Yes (n = 145, 1.91%)
    ## and missing (n = 4008, 52.74%)
    ##   - EMP_WHYNOWRK: 8 levels, namely Unemployed, laid off, looking for work (n =
    ## 265, 3.49%), Seasonal/contract work (n = 60, 0.79%), Retired (n = 1856,
    ## 24.42%), Unable to work for health reasons/disabled (n = 416, 5.47%), Taking
    ## care of house or family (n = 349, 4.59%), Going to school (n = 118, 1.55%),
    ## Working at a family-owned job or business, but not for pay (n = 19, 0.25%),
    ## Other (n = 311, 4.09%) and missing (n = 4205, 55.34%)
    ##   - EMPWRKLSWK: 2 levels, namely Did not work (n = 3367, 44.31%), Worked, Temp
    ## Absent, Seasonal, Family Job-no pay (n = 4131, 54.36%) and missing (n = 101,
    ## 1.33%)
    ##   - CIV_VOL12M: 2 levels, namely No (n = 5254, 69.14%), Yes (n = 2295, 30.20%)
    ## and missing (n = 50, 0.66%)
    ##   - CIV_VOLOTH: 2 levels, namely No (n = 4791, 63.05%), Yes (n = 419, 5.51%) and
    ## missing (n = 2389, 31.44%)
    ##   - CIV_MEET: 2 levels, namely No (n = 6563, 86.37%), Yes (n = 939, 12.36%) and
    ## missing (n = 97, 1.28%)
    ##   - CIV_VOTELOCL: 2 levels, namely No (n = 2802, 36.87%), Yes (n = 4706, 61.93%)
    ## and missing (n = 91, 1.20%)
    ##   - CIVIC_ENGAGE: 2 levels, namely Yes (n = 5361, 70.55%), No (n = 2123, 27.94%)
    ## and missing (n = 115, 1.51%)
    ##   - LAN_OTHERLAN: 2 levels, namely No (n = 6198, 81.56%), Yes (n = 1321, 17.38%)
    ## and missing (n = 80, 1.05%)
    ##   - LAN_MEDIA: 3 levels, namely English (n = 790, 10.40%), Spanish (n = 413,
    ## 5.43%), Another language (n = 113, 1.49%) and missing (n = 6283, 82.68%)
    ##   - LAN_DOCTOR: 3 levels, namely English (n = 1037, 13.65%), Spanish (n = 237,
    ## 3.12%), Another language (n = 25, 0.33%) and missing (n = 6300, 82.91%)
    ##   - LAN_SOCIAL: 3 levels, namely English (n = 932, 12.26%), Spanish (n = 337,
    ## 4.43%), Another language (n = 42, 0.55%) and missing (n = 6288, 82.75%)
    ##   - TEL_NONCELL: 2 levels, namely No (n = 5065, 66.65%), Yes (n = 2470, 32.50%)
    ## and missing (n = 64, 0.84%)
    ##   - TEL_CELL: 2 levels, namely No (n = 292, 3.84%), Yes (n = 7251, 95.42%) and
    ## missing (n = 56, 0.74%)
    ##   - TEL_HHCELL: 2 levels, namely No (n = 117, 1.54%), Yes (n = 105, 1.38%) and
    ## missing (n = 7377, 97.08%)
    ##   - P_OUTCOME: 1 level, namely Complete (reached last question) (n = 7599,
    ## 100.00%)
    ##   - SOURCE: 2 levels, namely Panel Provider 1 (n = 2898, 38.14%) and Panel
    ## Provider 2 (n = 4701, 61.86%)
    ##   - QUEX_LANG: 2 levels, namely ENGLISH (n = 7303, 96.10%) and SPANISH (n = 296,
    ## 3.90%)
    ##   - P_GENDER: 2 levels, namely Male (n = 3690, 48.56%) and Female (n = 3909,
    ## 51.44%)
    ##   - P_GENDERID: 4 levels, namely Cis-gender Male (n = 3466, 45.61%), Cis-gender
    ## Female (n = 3671, 48.31%), Transgender (n = 53, 0.70%), None of these (n = 63,
    ## 0.83%) and missing (n = 346, 4.55%)
    ##   - P_ORIENT: 4 levels, namely GAY OR LESBIAN (n = 212, 2.79%), STRAIGHT, THAT IS
    ## NOT LESBIAN/GAY (n = 6605, 86.92%), BISEXUAL (n = 295, 3.88%), SOMETHING ELSE
    ## (n = 127, 1.67%) and missing (n = 360, 4.74%)
    ##   - P_EDUC_R: 3 levels, namely High school graduate or less (n = 2211, 29.10%),
    ## Some college (n = 2459, 32.36%) and Bachelor's degree or above (n = 2929,
    ## 38.54%)
    ##   - P_EDUC_R_IFLG: 2 levels, namely No imputation (n = 4692, 61.74%), Statistical
    ## imputation (n = 9, 0.12%) and missing (n = 2898, 38.14%)
    ##   - P_RACE_R: 4 levels, namely White, non-Hispanic (n = 5042, 66.35%), Black,
    ## non-Hispanic (n = 802, 10.55%), Other, non-Hispanic (n = 561, 7.38%), Hispanic
    ## (n = 1117, 14.70%) and missing (n = 77, 1.01%)
    ##   - P_HHSIZE_R: 6 levels, namely 1 (n = 1482, 19.50%), 2 (n = 2839, 37.36%), 3 (n
    ## = 1266, 16.66%), 4 (n = 1027, 13.51%), 5 (n = 523, 6.88%) and 6+ (n = 462,
    ## 6.08%)
    ##   - P_AGEC_R: 1 levels, namely 70+ (n = 1320, 17.37%) and missing (n = 6279,
    ## 82.63%)
    ##   - P_INCOME_R: 16 levels, namely Less than $5,000 (n = 160, 2.11%), $5,000 to
    ## $9,999 (n = 122, 1.61%), $10,000 to $14,999 (n = 239, 3.15%), $15,000 to
    ## $19,999 (n = 204, 2.68%), $20,000 to $24,999 (n = 310, 4.08%), $25,000 to
    ## $29,999 (n = 279, 3.67%), $30,000 to $34,999 (n = 308, 4.05%), $35,000 to
    ## $39,999 (n = 282, 3.71%), $40,000 to $49,999 (n = 499, 6.57%), $50,000 to
    ## $59,999 (n = 598, 7.87%), $60,000 to $74,999 (n = 754, 9.92%), $75,000 to
    ## $84,999 (n = 441, 5.80%), $85,000 to $99,999 (n = 572, 7.53%), $100,000 to
    ## $124,999 (n = 838, 11.03%), $125,000 to $149,999 (n = 513, 6.75%) and $150,000
    ## or more (n = 1480, 19.48%)
    ##   - P_INCOME_R_IFLG: 2 levels, namely No imputation (n = 4584, 60.32%),
    ## Statistical imputation (n = 117, 1.54%) and missing (n = 2898, 38.14%)
    ##   - P_POVERTY: 9 levels, namely < 0.50 (n = 340, 4.47%), 0.50 - < 1.00 (n = 574,
    ## 7.55%), 1.00 - < 1.50 (n = 593, 7.80%), 1.50 - < 2.00 (n = 729, 9.59%), 2.00 -
    ## < 2.50 (n = 537, 7.07%), 2.50 - < 3.00 (n = 567, 7.46%), 3.00 - < 3.50 (n =
    ## 667, 8.78%), 3.50 - < 4.00 (n = 414, 5.45%) and 4.00 + (n = 3178, 41.82%)
    ##   - P_EMPLOY: 4 levels, namely Working (n = 4597, 60.49%), Not working--unable to
    ## work for health reasons/disabled (n = 540, 7.11%), Not working--retired (n =
    ## 1652, 21.74%) and Not working--other (n = 810, 10.66%)
    ##   - P_MARITAL: 4 levels, namely Married (n = 4334, 57.03%), Divorced/Separated (n
    ## = 973, 12.80%), Widowed (n = 382, 5.03%) and Never married (n = 1910, 25.13%)
    ##   - P_REGION: 4 levels, namely Northeast (n = 1271, 16.73%), Midwest (n = 1828,
    ## 24.06%), South (n = 2724, 35.85%) and West (n = 1776, 23.37%)
    ##   - P_HOMEOWN: 3 levels, namely Owned or being bought by someone in your
    ## household (n = 5467, 71.94%), Rented (n = 1982, 26.08%) and Occupied without
    ## payment of cash rent (n = 150, 1.97%)
    ##   - P_HOMEOWN_IFLG: 2 levels, namely No imputation (n = 4690, 61.72%),
    ## Statistical imputation (n = 11, 0.14%) and missing (n = 2898, 38.14%)
    ##   - P_METRO_R: 2 levels, namely Metropolitan (n = 6559, 86.31%) and
    ## Non-metropolitan (n = 1040, 13.69%)
    ##   - P_METRO_R_IFLG: 2 levels, namely No imputation (n = 7584, 99.80%) and
    ## Statistical imputation (n = 15, 0.20%)
    ##   - P_CITIZEN: 2 levels, namely Not a U.S. citizen (n = 207, 2.72%), U.S. citizen
    ## (n = 5918, 77.88%) and missing (n = 1474, 19.40%)
    ##   - P_VETERAN: 2 levels, namely Not a veteran (n = 6504, 85.59%), Veteran (n =
    ## 714, 9.40%) and missing (n = 381, 5.01%)
    ##   - P_INSUR: 2 levels, namely Does not have health insurance (n = 370, 4.87%),
    ## Has health insurance (n = 5621, 73.97%) and missing (n = 1608, 21.16%)
    ##   - P_USBORN: 2 levels, namely Yes (n = 5906, 77.72%), No (n = 531, 6.99%) and
    ## missing (n = 1162, 15.29%)
    ##   - P_ONEVISIT: 2 levels, namely Multiple sessions (n = 833, 10.96%) and
    ## Completed survey in single session (n = 6766, 89.04%)
    ##   - P_MODE: 2 levels, namely Web (n = 7462, 98.20%) and CATI (n = 137, 1.80%)
    ##   - P_DEVICE: 5 levels, namely Desktop/Laptop/netbook (n = 3205, 42.18%),
    ## Smartphone (n = 4016, 52.85%), Tablet (n = 238, 3.13%), Other device (book
    ## reader, game console, etc.) (n = 3, 0.04%) and Phone interview (not online) (n
    ## = 137, 1.80%)
