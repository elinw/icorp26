# rss1_codebook

``` r

library(icorp26)
library(easystats)
#> # Attaching packages: easystats 0.7.6
#> ✔ bayestestR  0.18.1   ✔ correlation 0.8.8 
#> ✔ datawizard  1.3.1    ✔ effectsize  1.0.2 
#> ✔ insight     1.5.2    ✔ modelbased  0.16.0
#> ✔ performance 0.17.1   ✔ parameters  0.29.2
#> ✔ report      0.6.4    ✔ see         0.14.1
```

``` r

data_codebook(rss1) |> display()
```

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
