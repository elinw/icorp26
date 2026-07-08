# rss4 Codebook

    ## # Attaching packages: easystats 0.7.6
    ## ✔ bayestestR  0.18.1   ✔ correlation 0.8.8 
    ## ✔ datawizard  1.3.1    ✔ effectsize  1.0.3 
    ## ✔ insight     1.5.2    ✔ modelbased  0.16.0
    ## ✔ performance 0.17.1   ✔ parameters  0.29.2
    ## ✔ report      0.6.4    ✔ see         0.14.1

    ## Warning: Following 1 columns were empty and have been removed:
    ##   PRG_NUMPRG_R

| ID | Name | Label | Type | Missings | Values | N |
|:---|:---|:---|:---|---:|---:|---:|
| 1 | HIS_GENERAL | Self-reported health status | categorical | 17 (0.2%) | Excellent | 719 (8.3%) |
|  |  |  |  |  | Very good | 3124 (36.0%) |
|  |  |  |  |  | Good | 3442 (39.6%) |
|  |  |  |  |  | Fair | 1209 (13.9%) |
|  |  |  |  |  | Poor | 194 (2.2%) |
|  |  |  |  |  |  |  |
| 2 | CHR_HYPEV | Ever been told you had hypertension | categorical | 46 (0.5%) | No | 5454 (63.0%) |
|  |  |  |  |  | Yes | 3205 (37.0%) |
|  |  |  |  |  |  |  |
| 3 | CHR_CHLEV | Ever told you had high cholesterol | categorical | 112 (1.3%) | No | 5384 (62.7%) |
|  |  |  |  |  | Yes | 3209 (37.3%) |
|  |  |  |  |  |  |  |
| 4 | CHR_CHLEV_R | RECODE: Ever diagnosed high cholesterol | categorical | 112 (1.3%) | No | 5384 (62.7%) |
|  |  |  |  |  | Yes | 3209 (37.3%) |
|  |  |  |  |  |  |  |
| 5 | CHR_ASEV | Ever been told you had asthma | categorical | 35 (0.4%) | No | 7094 (81.8%) |
|  |  |  |  |  | Yes | 1576 (18.2%) |
|  |  |  |  |  |  |  |
| 6 | CHR_CANEV | Ever been told you had cancer | categorical | 59 (0.7%) | No | 7538 (87.2%) |
|  |  |  |  |  | Yes | 1108 (12.8%) |
|  |  |  |  |  |  |  |
| 7 | PRG_PRGNOW | Pregnant now | categorical | 4341 (49.9%) | No | 4293 (98.4%) |
|  |  |  |  |  | Yes | 71 (1.6%) |
|  |  |  |  |  |  |  |
| 8 | PRG_PRBPRG | Probably pregnant | categorical | 8623 (99.1%) | Probably not pregnant | 62 (75.6%) |
|  |  |  |  |  | Probably pregnant | 20 (24.4%) |
|  |  |  |  |  |  |  |
| 10 | GEN_CURGENA | Currently describe self as: Male | categorical | 12 (0.1%) | Not selected | 4527 (52.1%) |
|  |  |  |  |  | Selected | 4166 (47.9%) |
|  |  |  |  |  |  |  |
| 11 | GEN_CURGENB | Currently describe self as: Female | categorical | 12 (0.1%) | Not selected | 4236 (48.7%) |
|  |  |  |  |  | Selected | 4457 (51.3%) |
|  |  |  |  |  |  |  |
| 12 | GEN_CURGENC | Currently describe self as: Transgender | categorical | 12 (0.1%) | Not selected | 8645 (99.4%) |
|  |  |  |  |  | Selected | 48 (0.6%) |
|  |  |  |  |  |  |  |
| 13 | GEN_CURGEND | Currently describe self as: Nonbinary | categorical | 12 (0.1%) | Not selected | 8617 (99.1%) |
|  |  |  |  |  | Selected | 76 (0.9%) |
|  |  |  |  |  |  |  |
| 14 | GEN_CURGENE | Currently describe self as: Another gender | categorical | 12 (0.1%) | Not selected | 8671 (99.7%) |
|  |  |  |  |  | Selected | 22 (0.3%) |
|  |  |  |  |  |  |  |
| 15 | DIS_GLASS | Wear glasses or contacts | categorical | 23 (0.3%) | No | 2734 (31.5%) |
|  |  |  |  |  | Yes | 5948 (68.5%) |
|  |  |  |  |  |  |  |
| 16 | DIS_DIFSEE | Difficulty seeing (even wearing glasses) | categorical | 19 (0.2%) | No difficulty | 5372 (61.8%) |
|  |  |  |  |  | Some difficulty | 3083 (35.5%) |
|  |  |  |  |  | A lot of difficulty | 193 (2.2%) |
|  |  |  |  |  | Cannot do this at all | 38 (0.4%) |
|  |  |  |  |  |  |  |
| 17 | DIS_AID | Use a hearing aid | categorical | 21 (0.2%) | No | 8164 (94.0%) |
|  |  |  |  |  | Yes | 520 (6.0%) |
|  |  |  |  |  |  |  |
| 18 | DIS_DIFHEAR | Difficulty hearing (even using hearing aid) | categorical | 14 (0.2%) | No difficulty | 6207 (71.4%) |
|  |  |  |  |  | Some difficulty | 2309 (26.6%) |
|  |  |  |  |  | A lot of difficulty | 145 (1.7%) |
|  |  |  |  |  | Cannot do this at all | 30 (0.3%) |
|  |  |  |  |  |  |  |
| 19 | DIS_DIFWLK | Difficulty walking or climbing steps | categorical | 49 (0.6%) | No difficulty | 6403 (74.0%) |
|  |  |  |  |  | Some difficulty | 1772 (20.5%) |
|  |  |  |  |  | A lot of difficulty | 415 (4.8%) |
|  |  |  |  |  | Cannot do this at all | 66 (0.8%) |
|  |  |  |  |  |  |  |
| 20 | DIS_DIFCOM | Difficulty communicating | categorical | 31 (0.4%) | No difficulty | 7827 (90.2%) |
|  |  |  |  |  | Some difficulty | 761 (8.8%) |
|  |  |  |  |  | A lot of difficulty | 70 (0.8%) |
|  |  |  |  |  | Cannot do this at all | 16 (0.2%) |
|  |  |  |  |  |  |  |
| 21 | DIS_DIFREM | Difficulty remembering or concentrating | categorical | 40 (0.5%) | No difficulty | 5212 (60.2%) |
|  |  |  |  |  | Some difficulty | 3052 (35.2%) |
|  |  |  |  |  | A lot of difficulty | 380 (4.4%) |
|  |  |  |  |  | Cannot do this at all | 21 (0.2%) |
|  |  |  |  |  |  |  |
| 22 | DIS_DIFCARE | Difficulty with self-care | categorical | 64 (0.7%) | No difficulty | 7978 (92.3%) |
|  |  |  |  |  | Some difficulty | 547 (6.3%) |
|  |  |  |  |  | A lot of difficulty | 93 (1.1%) |
|  |  |  |  |  | Cannot do this at all | 23 (0.3%) |
|  |  |  |  |  |  |  |
| 23 | SOC_ERRANDS | Difficulty doing errands alone | categorical | 25 (0.3%) | No difficulty | 7528 (86.7%) |
|  |  |  |  |  | Some difficulty | 851 (9.8%) |
|  |  |  |  |  | A lot of difficulty | 229 (2.6%) |
|  |  |  |  |  | Cannot do this at all | 72 (0.8%) |
|  |  |  |  |  |  |  |
| 24 | SOC_PARACTIV | Difficulty participating in social activities | categorical | 48 (0.6%) | No difficulty | 6863 (79.3%) |
|  |  |  |  |  | Some difficulty | 1329 (15.4%) |
|  |  |  |  |  | A lot of difficulty | 388 (4.5%) |
|  |  |  |  |  | Cannot do this at all | 77 (0.9%) |
|  |  |  |  |  |  |  |
| 25 | SOC_PARACTIV_R | RECODE: Difficulty participating in social activities due to physical, mental, or emotional condition | categorical | 48 (0.6%) | No difficulty/some difficulty | 8192 (94.6%) |
|  |  |  |  |  | A lot of difficulty/cannot do this at all | 465 (5.4%) |
|  |  |  |  |  |  |  |
| 26 | SOC_SCWRKLIM | Work limited due to health problem | categorical | 34 (0.4%) | No | 6704 (77.3%) |
|  |  |  |  |  | Yes | 1967 (22.7%) |
|  |  |  |  |  |  |  |
| 27 | SOCWRKLMT | DERIVED: Any social/work limitation | categorical | 69 (0.8%) | No | 5792 (67.1%) |
|  |  |  |  |  | Yes | 2844 (32.9%) |
|  |  |  |  |  |  |  |
| 28 | ADO_START | Disability onset began before age 22 | categorical | 7758 (89.1%) | No | 656 (69.3%) |
|  |  |  |  |  | Yes | 291 (30.7%) |
|  |  |  |  |  |  |  |
| 29 | DISABILITY | DERIVED: Washington Group short set composite disability indicator | categorical | 166 (1.9%) | With a disability | 1099 (12.9%) |
|  |  |  |  |  | Without a disability | 7440 (87.1%) |
|  |  |  |  |  |  |  |
| 30 | CON_TELWK | Frequency of talking with family, friends, or neighbors | categorical | 32 (0.4%) | Less than once a week | 1790 (20.6%) |
|  |  |  |  |  | 1 or 2 times a week | 2488 (28.7%) |
|  |  |  |  |  | 3 or 4 times a week | 1729 (19.9%) |
|  |  |  |  |  | 5 or more times a week | 2666 (30.7%) |
|  |  |  |  |  |  |  |
| 31 | CON_GETTOG | Frequency of getting together with friends or relatives | categorical | 72 (0.8%) | Less than once a week | 3448 (39.9%) |
|  |  |  |  |  | 1 or 2 times a week | 3369 (39.0%) |
|  |  |  |  |  | 3 or 4 times a week | 1149 (13.3%) |
|  |  |  |  |  | 5 or more times a week | 667 (7.7%) |
|  |  |  |  |  |  |  |
| 32 | CON_RELSERV | Frequency of attending church or religious services | categorical | 81 (0.9%) | Never or less than once a year | 4562 (52.9%) |
|  |  |  |  |  | 1 to 3 times per year | 1272 (14.7%) |
|  |  |  |  |  | 4 to 11 times per year | 568 (6.6%) |
|  |  |  |  |  | 12 or more times per year | 2222 (25.8%) |
|  |  |  |  |  |  |  |
| 33 | CON_CLUBORG | Frequency of attending meetings of any clubs or organizations | categorical | 179 (2.1%) | Less than once a week | 6933 (81.3%) |
|  |  |  |  |  | 1 or 2 times a week | 1246 (14.6%) |
|  |  |  |  |  | 3 or 4 times a week | 209 (2.5%) |
|  |  |  |  |  | 5 or more times a week | 138 (1.6%) |
|  |  |  |  |  |  |  |
| 34 | EMP_INSA | Insurance coverage: Self/family member employer, union | categorical | 216 (2.5%) | No | 3673 (43.3%) |
|  |  |  |  |  | Yes | 4810 (56.7%) |
|  |  |  |  |  | Upcoded: Yes | 6 (0.1%) |
|  |  |  |  |  |  |  |
| 35 | EMP_INSB | Insurance coverage: Self/family member purchased directly | categorical | 309 (3.5%) | No | 6791 (80.9%) |
|  |  |  |  |  | Yes | 1455 (17.3%) |
|  |  |  |  |  | Upcoded: Yes | 150 (1.8%) |
|  |  |  |  |  |  |  |
| 36 | EMP_INSC | Insurance coverage: Medicare | categorical | 237 (2.7%) | No | 6033 (71.2%) |
|  |  |  |  |  | Yes | 2420 (28.6%) |
|  |  |  |  |  | Upcoded: Yes | 15 (0.2%) |
|  |  |  |  |  |  |  |
| 37 | EMP_INSD | Insurance coverage: Medicaid or government assistance plan | categorical | 339 (3.9%) | No | 6815 (81.5%) |
|  |  |  |  |  | Yes | 1544 (18.5%) |
|  |  |  |  |  | Upcoded: Yes | 7 (0.1%) |
|  |  |  |  |  |  |  |
| 38 | EMP_INSE | Insurance coverage: TRICARE or other military | categorical | 329 (3.8%) | No | 8009 (95.6%) |
|  |  |  |  |  | Yes | 367 (4.4%) |
|  |  |  |  |  |  |  |
| 39 | EMP_INSF | Insurance coverage: VA health care | categorical | 323 (3.7%) | No | 7988 (95.3%) |
|  |  |  |  |  | Yes | 392 (4.7%) |
|  |  |  |  |  | Upcoded: Yes | 2 (0.0%) |
|  |  |  |  |  |  |  |
| 40 | EMP_INSG | Insurance coverage: Indian Health Service | categorical | 339 (3.9%) | No | 8270 (98.9%) |
|  |  |  |  |  | Yes | 96 (1.1%) |
|  |  |  |  |  |  |  |
| 41 | EMP_INSH | Insurance coverage: Any other | categorical | 425 (4.9%) | No | 7710 (93.1%) |
|  |  |  |  |  | Yes | 570 (6.9%) |
|  |  |  |  |  |  |  |
| 42 | EMP_INSH_UNK | Private insurance, Other/Unknown Source | categorical | 8135 (93.5%) | No | 452 (79.3%) |
|  |  |  |  |  | Upcoded: Yes | 118 (20.7%) |
|  |  |  |  |  |  |  |
| 43 | EMP_INSH_OTH | Other health insurance reported | categorical | 8135 (93.5%) | No | 468 (82.1%) |
|  |  |  |  |  | Upcoded: Yes | 102 (17.9%) |
|  |  |  |  |  |  |  |
| 44 | INSURED | Health Insurance Status | categorical | 37 (0.4%) | Not insured | 574 (6.6%) |
|  |  |  |  |  | Insured | 8094 (93.4%) |
|  |  |  |  |  |  |  |
| 45 | ACC_HTHLAST | Time since last saw doctor about your health | categorical | 38 (0.4%) | Never | 85 (1.0%) |
|  |  |  |  |  | Less than 12 months ago | 7062 (81.5%) |
|  |  |  |  |  | More than 1 year but less than 2 years ago | 751 (8.7%) |
|  |  |  |  |  | More than 2 years but less than 3 years ago | 278 (3.2%) |
|  |  |  |  |  | More than 3 years but less than 5 years ago | 211 (2.4%) |
|  |  |  |  |  | More than 5 years but less than 10 years ago | 179 (2.1%) |
|  |  |  |  |  | 10 years ago or more | 101 (1.2%) |
|  |  |  |  |  |  |  |
| 46 | ACC_HTHUSUAL | Have a usual place to go for care | categorical | 40 (0.5%) | Yes, there is a single place | 5127 (59.2%) |
|  |  |  |  |  | No, there is no place | 858 (9.9%) |
|  |  |  |  |  | Yes, there is more than one place | 2680 (30.9%) |
|  |  |  |  |  |  |  |
| 47 | ACC_HTHTYPE | Type of place for usual care | categorical | 918 (10.5%) | I do not go to one place most often | 57 (0.7%) |
|  |  |  |  |  | A doctor’s office or health center | 6499 (83.5%) |
|  |  |  |  |  | Urgent care center or clinic in a drug store or grocery store | 774 (9.9%) |
|  |  |  |  |  | Hospital emergency room | 251 (3.2%) |
|  |  |  |  |  | A VA medical center or VA outpatient clinic | 157 (2.0%) |
|  |  |  |  |  | Some other place | 49 (0.6%) |
|  |  |  |  |  |  |  |
| 48 | ACC_HOSP12M | Past 12 months, hospitalized overnight | categorical | 31 (0.4%) | No | 7945 (91.6%) |
|  |  |  |  |  | Yes | 729 (8.4%) |
|  |  |  |  |  |  |  |
| 49 | MTL_ANXIETY | Frequency of feeling worried, nervous or anxious | categorical | 45 (0.5%) | Never | 2712 (31.3%) |
|  |  |  |  |  | Daily | 1381 (15.9%) |
|  |  |  |  |  | Weekly | 1345 (15.5%) |
|  |  |  |  |  | Monthly | 780 (9.0%) |
|  |  |  |  |  | A few times a year | 2442 (28.2%) |
|  |  |  |  |  |  |  |
| 50 | MTL_ANXMEDS | Take medication for anxiety | categorical | 140 (1.6%) | No | 7001 (81.7%) |
|  |  |  |  |  | Yes | 1564 (18.3%) |
|  |  |  |  |  |  |  |
| 51 | MTL_ANXLVL | Level of anxiety | categorical | 2693 (30.9%) | A little | 3236 (53.8%) |
|  |  |  |  |  | A lot | 1011 (16.8%) |
|  |  |  |  |  | Somewhere in between a little and a lot | 1765 (29.4%) |
|  |  |  |  |  |  |  |
| 52 | MTL_DEPRESS | Frequency of feeling depressed | categorical | 104 (1.2%) | Never | 3937 (45.8%) |
|  |  |  |  |  | Daily | 820 (9.5%) |
|  |  |  |  |  | Weekly | 790 (9.2%) |
|  |  |  |  |  | Monthly | 721 (8.4%) |
|  |  |  |  |  | A few times a year | 2333 (27.1%) |
|  |  |  |  |  |  |  |
| 53 | MTL_DEPMEDS | Take medication for depression | categorical | 116 (1.3%) | No | 7338 (85.4%) |
|  |  |  |  |  | Yes | 1251 (14.6%) |
|  |  |  |  |  |  |  |
| 54 | MTL_DEPLVL | Level of depression | categorical | 3943 (45.3%) | A little | 2637 (55.4%) |
|  |  |  |  |  | A lot | 878 (18.4%) |
|  |  |  |  |  | Somewhere in between a little and a lot | 1247 (26.2%) |
|  |  |  |  |  |  |  |
| 55 | MTL_MHRXA | Past 12 months, took prescription medication to help with any other emotions or with your concentration, behavior, or mental health | categorical | 1850 (21.3%) | No | 6616 (96.5%) |
|  |  |  |  |  | Yes | 239 (3.5%) |
|  |  |  |  |  |  |  |
| 56 | MTL_MHTHRPY | Past 12 months, received counseling or therapy from a mental health professional | categorical | 122 (1.4%) | No | 7279 (84.8%) |
|  |  |  |  |  | Yes | 1304 (15.2%) |
|  |  |  |  |  |  |  |
| 57 | MTL_MHTPYNOW | Currently receiving counseling or therapy from a mental health professional | categorical | 7408 (85.1%) | No | 432 (33.3%) |
|  |  |  |  |  | Yes | 865 (66.7%) |
|  |  |  |  |  |  |  |
| 58 | HCA_MHTHDLY | Past 12 months, delayed getting counseling or therapy from a mental health professional because of cost | categorical | 106 (1.2%) | No | 7666 (89.1%) |
|  |  |  |  |  | Yes | 933 (10.9%) |
|  |  |  |  |  |  |  |
| 59 | HCA_MHTND | Past 12 months, did not get counseling or therapy from a mental health professional because of cost | categorical | 125 (1.4%) | No | 7659 (89.3%) |
|  |  |  |  |  | Yes | 921 (10.7%) |
|  |  |  |  |  |  |  |
| 60 | CIG_SMKEV | Ever smoked 100 cigarettes in entire life | categorical | 59 (0.7%) | No | 5463 (63.2%) |
|  |  |  |  |  | Yes | 3183 (36.8%) |
|  |  |  |  |  |  |  |
| 61 | CIG_SMKNOW | How often now smoke cigarettes | categorical | 5527 (63.5%) | Every day | 629 (19.8%) |
|  |  |  |  |  | Some days | 267 (8.4%) |
|  |  |  |  |  | Not at all | 2282 (71.8%) |
|  |  |  |  |  |  |  |
| 62 | CIV_VOL12M | Past 12 months, volunteer activities | categorical | 40 (0.5%) | No | 5849 (67.5%) |
|  |  |  |  |  | Yes | 2816 (32.5%) |
|  |  |  |  |  |  |  |
| 63 | CIV_VOLOTH | Past 12 months, activities at schools or youth organizations | categorical | 2889 (33.2%) | No | 5380 (92.5%) |
|  |  |  |  |  | Yes | 436 (7.5%) |
|  |  |  |  |  |  |  |
| 64 | CIV_MEET | Past 12 months, attend local public meetings | categorical | 79 (0.9%) | No | 7515 (87.1%) |
|  |  |  |  |  | Yes | 1111 (12.9%) |
|  |  |  |  |  |  |  |
| 65 | CIV_VOTELOCL | Vote in last local elections | categorical | 80 (0.9%) | No | 3619 (42.0%) |
|  |  |  |  |  | Yes | 5006 (58.0%) |
|  |  |  |  |  |  |  |
| 66 | CIVIC_ENGAGE | RECODE: Civic engagement including volunteering | categorical | 115 (1.3%) | Yes | 5984 (69.7%) |
|  |  |  |  |  | No | 2606 (30.3%) |
|  |  |  |  |  |  |  |
| 67 | LAN_OTHERLAN | Speak language other than English at home | categorical | 65 (0.7%) | No | 7048 (81.6%) |
|  |  |  |  |  | Yes | 1592 (18.4%) |
|  |  |  |  |  |  |  |
| 68 | LAN_MEDIA | What language use most often when watching television, read news, listen to radio | categorical | 7121 (81.8%) | English | 933 (58.9%) |
|  |  |  |  |  | Spanish | 498 (31.4%) |
|  |  |  |  |  | Another language | 153 (9.7%) |
|  |  |  |  |  |  |  |
| 69 | LAN_DOCTOR | What language use most often when seeing a doctor | categorical | 7131 (81.9%) | English | 1253 (79.6%) |
|  |  |  |  |  | Spanish | 288 (18.3%) |
|  |  |  |  |  | Another language | 33 (2.1%) |
|  |  |  |  |  |  |  |
| 70 | LAN_SOCIAL | What language use most often when participate in social activities | categorical | 7121 (81.8%) | English | 1119 (70.6%) |
|  |  |  |  |  | Spanish | 397 (25.1%) |
|  |  |  |  |  | Another language | 68 (4.3%) |
|  |  |  |  |  |  |  |
| 71 | MAR_MARITAL | Now married, living with a partner, or neither | categorical | 37 (0.4%) | Married | 4643 (53.6%) |
|  |  |  |  |  | Living with a partner together as an unmarried couple | 945 (10.9%) |
|  |  |  |  |  | Neither | 3080 (35.5%) |
|  |  |  |  |  |  |  |
| 72 | MAR_EVMARRY | Ever been married | categorical | 4670 (53.6%) | No | 2431 (60.2%) |
|  |  |  |  |  | Yes | 1604 (39.8%) |
|  |  |  |  |  |  |  |
| 73 | MAR_LEGAL | Current legal marital status | categorical | 8389 (96.4%) | Married | 16 (5.1%) |
|  |  |  |  |  | Widowed | 50 (15.8%) |
|  |  |  |  |  | Divorced | 216 (68.4%) |
|  |  |  |  |  | Separated | 34 (10.8%) |
|  |  |  |  |  |  |  |
| 74 | MAR_WIDIVSEP | Widowed, divorced, or separated | categorical | 7430 (85.4%) | Widowed | 452 (35.5%) |
|  |  |  |  |  | Divorced | 755 (59.2%) |
|  |  |  |  |  | Separated | 68 (5.3%) |
|  |  |  |  |  |  |  |
| 75 | MARSTAT | DERIVED: Current marital status | categorical | 53 (0.6%) | Married | 4643 (53.7%) |
|  |  |  |  |  | Widowed | 452 (5.2%) |
|  |  |  |  |  | Divorced | 755 (8.7%) |
|  |  |  |  |  | Separated | 68 (0.8%) |
|  |  |  |  |  | Never Married | 1789 (20.7%) |
|  |  |  |  |  | Living with partner | 945 (10.9%) |
|  |  |  |  |  |  |  |
| 76 | LEGMSTAT | DERIVED: Legal marital status | categorical | 53 (0.6%) | Separated | 102 (1.2%) |
|  |  |  |  |  | Divorced | 971 (11.2%) |
|  |  |  |  |  | Married | 4659 (53.8%) |
|  |  |  |  |  | Single/Never Married | 2418 (27.9%) |
|  |  |  |  |  | Widowed | 502 (5.8%) |
|  |  |  |  |  |  |  |
| 77 | MARITAL | RECODE: Current Marriage Status - 2 levels | categorical | 53 (0.6%) | Married | 4643 (53.7%) |
|  |  |  |  |  | Not married | 4009 (46.3%) |
|  |  |  |  |  |  |  |
| 78 | TSV_EXPEV | Ever received unwanted sexually explicit message or image without your consent | categorical | 54 (0.6%) | No | 6397 (73.9%) |
|  |  |  |  |  | Yes | 2254 (26.1%) |
|  |  |  |  |  |  |  |
| 79 | TSV_EXP12M | Past 12 months, received unwanted sexually explicit message or image without your consent | categorical | 6454 (74.1%) | No | 1481 (65.8%) |
|  |  |  |  |  | Yes | 770 (34.2%) |
|  |  |  |  |  |  |  |
| 80 | TSV_POSTEV | Ever electronically sent or posted sexual photo or video without your consent | categorical | 48 (0.6%) | No | 8180 (94.5%) |
|  |  |  |  |  | Yes | 477 (5.5%) |
|  |  |  |  |  |  |  |
| 81 | TSV_POST12M | Past 12 months, electronically sent or posted sexual photo or video without your consent | categorical | 8229 (94.5%) | No | 299 (62.8%) |
|  |  |  |  |  | Yes | 177 (37.2%) |
|  |  |  |  |  |  |  |
| 82 | TSV_LTANY | DERIVED: Ever experienced lifetime technology-facilitated sexual violence | categorical | 0 (0.0%) | No | 6359 (73.0%) |
|  |  |  |  |  | Yes | 2346 (27.0%) |
|  |  |  |  |  |  |  |
| 83 | TSV_12MANY | DERIVED: Past 12 months, experienced technology-facilitated sexual violence | categorical | 0 (0.0%) | No | 7896 (90.7%) |
|  |  |  |  |  | Yes | 809 (9.3%) |
|  |  |  |  |  |  |  |
| 84 | ECC_PARTEVA | Partner ever checked your phone without permission | categorical | 83 (1.0%) | No | 6886 (79.9%) |
|  |  |  |  |  | Yes | 1736 (20.1%) |
|  |  |  |  |  |  |  |
| 85 | ECC_PARTEVB | Partner sent harassing messages to you via text or social media | categorical | 85 (1.0%) | No | 7677 (89.1%) |
|  |  |  |  |  | Yes | 943 (10.9%) |
|  |  |  |  |  |  |  |
| 86 | ECC_PARTEVC | Partner used your social media account to view your activity without permission | categorical | 70 (0.8%) | No | 7651 (88.6%) |
|  |  |  |  |  | Yes | 984 (11.4%) |
|  |  |  |  |  |  |  |
| 87 | ECC_PARTEVD | Partner used GPS technology to track your location without permission | categorical | 87 (1.0%) | No | 8052 (93.4%) |
|  |  |  |  |  | Yes | 566 (6.6%) |
|  |  |  |  |  |  |  |
| 88 | ECC_PARTEVE | Partner tried to make you talk about sex online when you did not want to | categorical | 78 (0.9%) | No | 8139 (94.3%) |
|  |  |  |  |  | Yes | 488 (5.7%) |
|  |  |  |  |  |  |  |
| 89 | ECC_PARTEVF | Partner ignored your phone calls or text messages to hurt your feelings | categorical | 86 (1.0%) | No | 6249 (72.5%) |
|  |  |  |  |  | Yes | 2370 (27.5%) |
|  |  |  |  |  |  |  |
| 90 | ECC_FINEVA | Partner decided how you could spend your money | categorical | 91 (1.0%) | No | 7627 (88.5%) |
|  |  |  |  |  | Yes | 987 (11.5%) |
|  |  |  |  |  |  |  |
| 91 | ECC_FINEVB | Partner kept you from having a job or going to work | categorical | 81 (0.9%) | No | 8033 (93.1%) |
|  |  |  |  |  | Yes | 591 (6.9%) |
|  |  |  |  |  |  |  |
| 92 | ECC_FINEVC | Partner took out loan or bought something in your name without permission | categorical | 83 (1.0%) | No | 8123 (94.2%) |
|  |  |  |  |  | Yes | 499 (5.8%) |
|  |  |  |  |  |  |  |
| 93 | ECC_FINEVD | Partner put bills in your name, leaving you to pay them | categorical | 84 (1.0%) | No | 7902 (91.7%) |
|  |  |  |  |  | Yes | 719 (8.3%) |
|  |  |  |  |  |  |  |
| 94 | ECC_FINEVE | Partner forced or pressured you to give them your savings or other assets | categorical | 81 (0.9%) | No | 8017 (93.0%) |
|  |  |  |  |  | Yes | 607 (7.0%) |
|  |  |  |  |  |  |  |
| 95 | ECC_FINEVF | Partner caused concerns about your finances, affecting decision to stay or leave | categorical | 87 (1.0%) | No | 7191 (83.4%) |
|  |  |  |  |  | Yes | 1427 (16.6%) |
|  |  |  |  |  |  |  |
| 96 | ECC_FINEVG | Partner negatively affected your credit card debt. | categorical | 88 (1.0%) | No | 7479 (86.8%) |
|  |  |  |  |  | Yes | 1138 (13.2%) |
|  |  |  |  |  |  |  |
| 97 | ECC_ANYTIPV | DERIVED: Any technology-facilitated intimate partner violence | categorical | 0 (0.0%) | No | 5645 (64.8%) |
|  |  |  |  |  | Yes | 3060 (35.2%) |
|  |  |  |  |  |  |  |
| 98 | ECC_ANYFIPV | DERIVED: Any financial intimate partner violence | categorical | 0 (0.0%) | No | 6392 (73.4%) |
|  |  |  |  |  | Yes | 2313 (26.6%) |
|  |  |  |  |  |  |  |
| 99 | PAA_PARTEVA | Partner ever kept you from having your own money. | categorical | 4393 (50.5%) | No | 4003 (92.8%) |
|  |  |  |  |  | Yes | 309 (7.2%) |
|  |  |  |  |  |  |  |
| 100 | PAA_PARTEVB | Partner ever tried to keep you from seeing or talking to family or friends. | categorical | 4390 (50.4%) | No | 3609 (83.6%) |
|  |  |  |  |  | Yes | 706 (16.4%) |
|  |  |  |  |  |  |  |
| 101 | PAA_PARTEVC | Partner ever demand to know where you were and what you were doing. | categorical | 4400 (50.5%) | No | 3433 (79.7%) |
|  |  |  |  |  | Yes | 872 (20.3%) |
|  |  |  |  |  |  |  |
| 102 | PAA_PARTEVD | Partner ever made threats to physically harm you. | categorical | 4397 (50.5%) | No | 3723 (86.4%) |
|  |  |  |  |  | Yes | 585 (13.6%) |
|  |  |  |  |  |  |  |
| 103 | PAA_PARTEVE | Partner ever threatened self-harm because they were upset with you. | categorical | 4390 (50.4%) | No | 3704 (85.8%) |
|  |  |  |  |  | Yes | 611 (14.2%) |
|  |  |  |  |  |  |  |
| 104 | PAA_PARTEVF | Partner ever made decisions that should have been yours to make. | categorical | 4396 (50.5%) | No | 3475 (80.6%) |
|  |  |  |  |  | Yes | 834 (19.4%) |
|  |  |  |  |  |  |  |
| 105 | PAA_PARTEVG | Partner ever destroyed something that was important to you. | categorical | 4395 (50.5%) | No | 3546 (82.3%) |
|  |  |  |  |  | Yes | 764 (17.7%) |
|  |  |  |  |  |  |  |
| 106 | PAA_PARTEVH | Partner ever insulted or humiliated you in front of others. | categorical | 4394 (50.5%) | No | 3214 (74.6%) |
|  |  |  |  |  | Yes | 1097 (25.4%) |
|  |  |  |  |  |  |  |
| 107 | PAA_PRT12M | Past 12 months, current or ex-partner did these things: \[PAA_PARTEVA - PAA_PARTEVH\] | categorical | 6996 (80.4%) | No | 1401 (82.0%) |
|  |  |  |  |  | Yes | 308 (18.0%) |
|  |  |  |  |  |  |  |
| 108 | SVA_SEX | Indicator for question type in SVA section: Female or male set of questions | categorical | 4349 (50.0%) | Male set of questions | 2095 (48.1%) |
|  |  |  |  |  | Female set of questions | 2261 (51.9%) |
|  |  |  |  |  |  |  |
| 109 | SVA_ORLHIGH | Performed oral sex on you when you could not consent, female | categorical | 6478 (74.4%) | No | 2000 (89.8%) |
|  |  |  |  |  | Yes | 227 (10.2%) |
|  |  |  |  |  |  |  |
| 110 | SVA_FNGHIGHF | Penetrated vagina/anus with fingers/object when you could not consent, female | categorical | 6486 (74.5%) | No | 1864 (84.0%) |
|  |  |  |  |  | Yes | 355 (16.0%) |
|  |  |  |  |  |  |  |
| 111 | SVA_PENHIGHF | Penetrated vagina/mouth/anus with penis when you could not consent, female | categorical | 6506 (74.7%) | No | 1853 (84.3%) |
|  |  |  |  |  | Yes | 346 (15.7%) |
|  |  |  |  |  |  |  |
| 112 | SVA_ORLEV | Performed oral sex on you using physical force when you did not consent, female | categorical | 6481 (74.5%) | No | 2077 (93.4%) |
|  |  |  |  |  | Yes | 147 (6.6%) |
|  |  |  |  |  |  |  |
| 113 | SVA_FINGEVF | Penetrated vagina/anus with fingers/object using physical force without consent, female | categorical | 6502 (74.7%) | No | 1884 (85.5%) |
|  |  |  |  |  | Yes | 319 (14.5%) |
|  |  |  |  |  |  |  |
| 114 | SVA_PENEVF | Penetrated vagina/mouth/anus with penis using physical force without consent, female | categorical | 6506 (74.7%) | No | 1830 (83.2%) |
|  |  |  |  |  | Yes | 369 (16.8%) |
|  |  |  |  |  |  |  |
| 115 | SVA_FORCEEV | Used physical force/threats to try to penetrate vagina, mouth, or anus, female | categorical | 6477 (74.4%) | No | 1948 (87.4%) |
|  |  |  |  |  | Yes | 280 (12.6%) |
|  |  |  |  |  |  |  |
| 116 | SVA_ANY12MF | Past 12 months, experienced sexual violence, female | categorical | 8019 (92.1%) | No | 634 (92.4%) |
|  |  |  |  |  | Yes | 52 (7.6%) |
|  |  |  |  |  |  |  |
| 117 | SVA_PREG | Ever experienced sexual violence while pregnant, female | categorical | 8198 (94.2%) | No | 474 (93.5%) |
|  |  |  |  |  | Yes | 33 (6.5%) |
|  |  |  |  |  |  |  |
| 118 | SVA_VGORHIGH | Vaginal or oral sex with you when you could not consent, male | categorical | 6640 (76.3%) | No | 1933 (93.6%) |
|  |  |  |  |  | Yes | 132 (6.4%) |
|  |  |  |  |  |  |  |
| 119 | SVA_FNGHIGHM | Penetrated anus with fingers/object when you could not consent, male | categorical | 6643 (76.3%) | No | 1999 (96.9%) |
|  |  |  |  |  | Yes | 63 (3.1%) |
|  |  |  |  |  |  |  |
| 120 | SVA_PENHIGHM | Penetrated mouth/anus with penis when you could not consent, male | categorical | 6662 (76.5%) | No | 1983 (97.1%) |
|  |  |  |  |  | Yes | 60 (2.9%) |
|  |  |  |  |  |  |  |
| 121 | SVA_VGOREV | Vaginal or oral sex with you using physical force when you did not consent, male | categorical | 6645 (76.3%) | No | 1987 (96.5%) |
|  |  |  |  |  | Yes | 73 (3.5%) |
|  |  |  |  |  |  |  |
| 122 | SVA_FINGEVM | Penetrated anus with fingers/object using physical force without your consent, male | categorical | 6649 (76.4%) | No | 2002 (97.4%) |
|  |  |  |  |  | Yes | 54 (2.6%) |
|  |  |  |  |  |  |  |
| 123 | SVA_PENEVM | Penetrated mouth/anus with penis using physical force when you did not consent, male | categorical | 6657 (76.5%) | No | 1984 (96.9%) |
|  |  |  |  |  | Yes | 64 (3.1%) |
|  |  |  |  |  |  |  |
| 124 | SVA_ORLPHYS | Used physical force to try to perform oral sex or make you perform oral sex, male | categorical | 6644 (76.3%) | No | 1993 (96.7%) |
|  |  |  |  |  | Yes | 68 (3.3%) |
|  |  |  |  |  |  |  |
| 125 | SVA_VAGPHYS | Used physical force to try to make you perform vaginal sex, male | categorical | 6650 (76.4%) | No | 2013 (98.0%) |
|  |  |  |  |  | Yes | 42 (2.0%) |
|  |  |  |  |  |  |  |
| 126 | SVA_PENPHYS | Used physical force to try to penetrate your mouth or anus with their penis, male | categorical | 6657 (76.5%) | No | 1992 (97.3%) |
|  |  |  |  |  | Yes | 56 (2.7%) |
|  |  |  |  |  |  |  |
| 127 | SVA_ANY12MM | Past 12 months, experienced sexual violence (no penetration), male | categorical | 8511 (97.8%) | No | 170 (87.6%) |
|  |  |  |  |  | Yes | 24 (12.4%) |
|  |  |  |  |  |  |  |
| 128 | SVA_PEN12M | Past 12 months, experienced sexual violence (penetration), male | categorical | 8579 (98.6%) | No | 110 (87.3%) |
|  |  |  |  |  | Yes | 16 (12.7%) |
|  |  |  |  |  |  |  |
| 129 | PAB_HUMILEV | Ever experienced humiliation by a partner | categorical | 4389 (50.4%) | No | 2976 (69.0%) |
|  |  |  |  |  | Yes | 1340 (31.0%) |
|  |  |  |  |  |  |  |
| 130 | PAB_HUMIL12M | Past 12 months, experienced humiliation by a partner | categorical | 7379 (84.8%) | No | 1119 (84.4%) |
|  |  |  |  |  | Yes | 207 (15.6%) |
|  |  |  |  |  |  |  |
| 131 | PAB_PSYCHEV | Ever experienced psychological aggression | categorical | 4393 (50.5%) | No | 3170 (73.5%) |
|  |  |  |  |  | Yes | 1142 (26.5%) |
|  |  |  |  |  |  |  |
| 132 | PAB_PSYCH12M | Past 12 months, experienced psychological aggression | categorical | 7566 (86.9%) | No | 948 (83.2%) |
|  |  |  |  |  | Yes | 191 (16.8%) |
|  |  |  |  |  |  |  |
| 133 | SVB_SEX | Indicator for question type in SVB section: Female or male set of questions | categorical | 4356 (50.0%) | Male set of questions | 2082 (47.9%) |
|  |  |  |  |  | Female set of questions | 2267 (52.1%) |
|  |  |  |  |  |  |  |
| 134 | SVB_ORLEV | Performed oral sex on you when you did not consent, female | categorical | 6471 (74.3%) | No | 1957 (87.6%) |
|  |  |  |  |  | Yes | 277 (12.4%) |
|  |  |  |  |  |  |  |
| 135 | SVB_ORLPHYS | Oral sex happened because the person used physical force, female | categorical | 8435 (96.9%) | No | 126 (46.7%) |
|  |  |  |  |  | Yes | 144 (53.3%) |
|  |  |  |  |  |  |  |
| 136 | SVB_ORLHIGH | Oral sex happened because you were unable to consent, female | categorical | 8434 (96.9%) | No | 182 (67.2%) |
|  |  |  |  |  | Yes | 89 (32.8%) |
|  |  |  |  |  |  |  |
| 137 | SVB_FINGEV | Penetrated vagina/anus with fingers/object when you did not consent, female | categorical | 6479 (74.4%) | No | 1712 (76.9%) |
|  |  |  |  |  | Yes | 514 (23.1%) |
|  |  |  |  |  |  |  |
| 138 | SVB_FNGPHYS | Penetration by fingers/objects happened because the person used physical force, female | categorical | 8197 (94.2%) | No | 157 (30.9%) |
|  |  |  |  |  | Yes | 351 (69.1%) |
|  |  |  |  |  |  |  |
| 139 | SVB_FNGHIGH | Penetration by fingers/objects happened because you were unable to consent, female | categorical | 8196 (94.2%) | No | 346 (68.0%) |
|  |  |  |  |  | Yes | 163 (32.0%) |
|  |  |  |  |  |  |  |
| 140 | SVB_VGSXEV | Vaginal sex with you when you did not consent, female | categorical | 6484 (74.5%) | No | 1699 (76.5%) |
|  |  |  |  |  | Yes | 522 (23.5%) |
|  |  |  |  |  |  |  |
| 141 | SVB_VGSXPHYS | Vaginal sex happened because the person used physical force, female | categorical | 8185 (94.0%) | No | 132 (25.4%) |
|  |  |  |  |  | Yes | 388 (74.6%) |
|  |  |  |  |  |  |  |
| 142 | SVB_VGSXHIGH | Vaginal sex happened because you were unable to consent, female | categorical | 8187 (94.0%) | No | 338 (65.3%) |
|  |  |  |  |  | Yes | 180 (34.7%) |
|  |  |  |  |  |  |  |
| 143 | SVB_PENEV | Penetrated mouth/anus with penis when you did not consent, female | categorical | 6490 (74.6%) | No | 1942 (87.7%) |
|  |  |  |  |  | Yes | 273 (12.3%) |
|  |  |  |  |  |  |  |
| 144 | SVB_PENPHYS | Penetration of mouth/anus happened because person used physical force, female | categorical | 8434 (96.9%) | No | 63 (23.2%) |
|  |  |  |  |  | Yes | 208 (76.8%) |
|  |  |  |  |  |  |  |
| 145 | SVB_PENHIGH | Penetration of mouth/anus happened because you were unable to consent, female | categorical | 8434 (96.9%) | No | 199 (73.4%) |
|  |  |  |  |  | Yes | 72 (26.6%) |
|  |  |  |  |  |  |  |
| 146 | SVB_FORCEEV | Used physical force to try to penetrate vagina/mouth/anus with penis, female | categorical | 6495 (74.6%) | No | 1954 (88.4%) |
|  |  |  |  |  | Yes | 256 (11.6%) |
|  |  |  |  |  |  |  |
| 147 | SVB_ANY12M | Past 12 months, experienced sexual violence, female | categorical | 7893 (90.7%) | No | 767 (94.5%) |
|  |  |  |  |  | Yes | 45 (5.5%) |
|  |  |  |  |  |  |  |
| 148 | SVB_ANYPREG | Ever experienced sexual violence while pregnant, female | categorical | 8090 (92.9%) | No | 560 (91.1%) |
|  |  |  |  |  | Yes | 55 (8.9%) |
|  |  |  |  |  |  |  |
| 149 | SVB_ORLEVM | Performed oral sex on you when you did not consent, male | categorical | 6637 (76.2%) | No | 1937 (93.7%) |
|  |  |  |  |  | Yes | 131 (6.3%) |
|  |  |  |  |  |  |  |
| 150 | SVB_ORLPHYSM | Oral sex happened because the person used physical force, male | categorical | 8574 (98.5%) | No | 93 (71.0%) |
|  |  |  |  |  | Yes | 38 (29.0%) |
|  |  |  |  |  |  |  |
| 151 | SVB_ORLHIGHM | Oral sex happened because you were unable to consent, male | categorical | 8574 (98.5%) | No | 90 (68.7%) |
|  |  |  |  |  | Yes | 41 (31.3%) |
|  |  |  |  |  |  |  |
| 152 | SVB_FINGEVM | Penetrated anus with fingers/object when you did not consent, male | categorical | 6638 (76.3%) | No | 1995 (96.5%) |
|  |  |  |  |  | Yes | 72 (3.5%) |
|  |  |  |  |  |  |  |
| 153 | SVB_FNGPHYSM | Penetration with fingers/object happened because the person used physical force, male | categorical | 8635 (99.2%) | No | 35 (50.0%) |
|  |  |  |  |  | Yes | 35 (50.0%) |
|  |  |  |  |  |  |  |
| 154 | SVB_FNGHIGHM | Penetration with fingers/object happened because you were unable to consent, male | categorical | 8634 (99.2%) | No | 50 (70.4%) |
|  |  |  |  |  | Yes | 21 (29.6%) |
|  |  |  |  |  |  |  |
| 155 | SVB_VGSXEVM | Vaginal sex with you when you did not consent, male | categorical | 6645 (76.3%) | No | 1986 (96.4%) |
|  |  |  |  |  | Yes | 74 (3.6%) |
|  |  |  |  |  |  |  |
| 156 | SVB_VGSXPHYM | Vaginal sex happened because the person used physical force, male | categorical | 8631 (99.1%) | No | 41 (55.4%) |
|  |  |  |  |  | Yes | 33 (44.6%) |
|  |  |  |  |  |  |  |
| 157 | SVB_VGSXHIM | Vaginal sex happened because you were unable to consent, male | categorical | 8631 (99.1%) | No | 35 (47.3%) |
|  |  |  |  |  | Yes | 39 (52.7%) |
|  |  |  |  |  |  |  |
| 158 | SVB_PENEVM | Penetrated your mouth/anus with penis when you did not consent, male | categorical | 6648 (76.4%) | No | 2001 (97.3%) |
|  |  |  |  |  | Yes | 56 (2.7%) |
|  |  |  |  |  |  |  |
| 159 | SVB_PENPHYSM | Penetration with penis happened because person used physical force, male | categorical | 8650 (99.4%) | No | 19 (34.5%) |
|  |  |  |  |  | Yes | 36 (65.5%) |
|  |  |  |  |  |  |  |
| 160 | SVB_PENHIGHM | Penetration with penis happened because you were unable to consent, male | categorical | 8651 (99.4%) | No | 44 (81.5%) |
|  |  |  |  |  | Yes | 10 (18.5%) |
|  |  |  |  |  |  |  |
| 161 | SVB_FORCEORL | Used physical force to try to perform oral sex or make you perform oral sex, male | categorical | 6649 (76.4%) | No | 2011 (97.8%) |
|  |  |  |  |  | Yes | 45 (2.2%) |
|  |  |  |  |  |  |  |
| 162 | SVB_FORCEVG | Used physical force to try to make you perform vaginal sex, male | categorical | 6656 (76.5%) | No | 2014 (98.3%) |
|  |  |  |  |  | Yes | 35 (1.7%) |
|  |  |  |  |  |  |  |
| 163 | SVB_FORCEPEN | Used physical force to try to penetrate your mouth/anus with their penis, male | categorical | 6667 (76.6%) | No | 2007 (98.5%) |
|  |  |  |  |  | Yes | 31 (1.5%) |
|  |  |  |  |  |  |  |
| 164 | SVB_PHYS12M | Past 12 months, experienced sexual violence (no penetration), male | categorical | 8507 (97.7%) | No | 179 (90.4%) |
|  |  |  |  |  | Yes | 19 (9.6%) |
|  |  |  |  |  |  |  |
| 165 | SVB_PEN12M | Past 12 months, experienced sexual violence (penetration), male | categorical | 8597 (98.8%) | No | 97 (89.8%) |
|  |  |  |  |  | Yes | 11 (10.2%) |
|  |  |  |  |  |  |  |
| 166 | TBI_HARMEVA | Current or ex-romantic or sexual partner ever slapped, pushed, or shoved you? | categorical | 95 (1.1%) | No | 6376 (74.1%) |
|  |  |  |  |  | Yes | 2234 (25.9%) |
|  |  |  |  |  |  |  |
| 167 | TBI_HARMEVB | Current or ex-romantic or sexual partner ever hit you with fist/something hard? | categorical | 96 (1.1%) | No | 7371 (85.6%) |
|  |  |  |  |  | Yes | 1238 (14.4%) |
|  |  |  |  |  |  |  |
| 168 | TBI_HARMEVC | Current or ex-romantic or sexual partner ever kicked or stomped on you? | categorical | 100 (1.1%) | No | 8024 (93.2%) |
|  |  |  |  |  | Yes | 581 (6.8%) |
|  |  |  |  |  |  |  |
| 169 | TBI_HARMEVD | Current or ex-romantic or sexual partner ever slammed you against something? | categorical | 89 (1.0%) | No | 7591 (88.1%) |
|  |  |  |  |  | Yes | 1025 (11.9%) |
|  |  |  |  |  |  |  |
| 170 | TBI_HARMEVE | Current or ex-romantic or sexual partner ever hit you in head/made you hit head? | categorical | 96 (1.1%) | No | 7708 (89.5%) |
|  |  |  |  |  | Yes | 901 (10.5%) |
|  |  |  |  |  |  |  |
| 171 | TBI_HARMPREG | Partner did these things \[TBI_HARMEVA - TBI_HARMEVE\] while pregnant? | categorical | 7568 (86.9%) | No | 906 (79.7%) |
|  |  |  |  |  | Yes | 231 (20.3%) |
|  |  |  |  |  |  |  |
| 172 | TBI_INJFACE | Ever have an injury to head or face because of things your partner did to you? | categorical | 6288 (72.2%) | No | 1681 (69.5%) |
|  |  |  |  |  | Yes | 736 (30.5%) |
|  |  |  |  |  |  |  |
| 173 | TBI_WHENINJ | When did most severe injury to head or face occur? | categorical | 7972 (91.6%) | Within the last 12 months | 31 (4.2%) |
|  |  |  |  |  | 1-3 years ago | 85 (11.6%) |
|  |  |  |  |  | 4-7 years ago | 104 (14.2%) |
|  |  |  |  |  | 8 or more years ago | 513 (70.0%) |
|  |  |  |  |  |  |  |
| 174 | TBI_DAZED | After most severe injury, were you dazed, confused, or have trouble thinking? | categorical | 8115 (93.2%) | No | 273 (46.3%) |
|  |  |  |  |  | Yes | 317 (53.7%) |
|  |  |  |  |  |  |  |
| 175 | TBI_REMEMBER | After most severe injury, did you have trouble remembering events before/after? | categorical | 8080 (92.8%) | No | 466 (74.6%) |
|  |  |  |  |  | Yes | 159 (25.4%) |
|  |  |  |  |  |  |  |
| 176 | TBI_KNOCKOUT | After most severe injury, were you knocked out or lose consciousness? | categorical | 8061 (92.6%) | No | 501 (77.8%) |
|  |  |  |  |  | Yes | 143 (22.2%) |
|  |  |  |  |  |  |  |
| 177 | TBI_SICK | After most severe injury, did you feel sick to your stomach or did you vomit? | categorical | 8080 (92.8%) | No | 456 (73.0%) |
|  |  |  |  |  | Yes | 169 (27.0%) |
|  |  |  |  |  |  |  |
| 178 | TBI_HEADACHE | After most severe injury, did you have a headache? | categorical | 8064 (92.6%) | No | 161 (25.1%) |
|  |  |  |  |  | Yes | 480 (74.9%) |
|  |  |  |  |  |  |  |
| 179 | TBI_DIZZY | After most severe injury, were you dizzy, clumsy, or have balance problems? | categorical | 8081 (92.8%) | No | 353 (56.6%) |
|  |  |  |  |  | Yes | 271 (43.4%) |
|  |  |  |  |  |  |  |
| 180 | TBI_VISION | After most severe injury, did you have blurred or double vision? | categorical | 8091 (92.9%) | No | 433 (70.5%) |
|  |  |  |  |  | Yes | 181 (29.5%) |
|  |  |  |  |  |  |  |
| 181 | TBI_CONCEN | After most severe injury, did you have trouble concentrating? | categorical | 8114 (93.2%) | No | 376 (63.6%) |
|  |  |  |  |  | Yes | 215 (36.4%) |
|  |  |  |  |  |  |  |
| 182 | TBI_LEARN | After most severe injury, did you have trouble learning/remembering new things? | categorical | 8083 (92.9%) | No | 517 (83.1%) |
|  |  |  |  |  | Yes | 105 (16.9%) |
|  |  |  |  |  |  |  |
| 183 | TBI_SENSE | After most severe injury, were you more sensitive to light or noise? | categorical | 8099 (93.0%) | No | 422 (69.6%) |
|  |  |  |  |  | Yes | 184 (30.4%) |
|  |  |  |  |  |  |  |
| 184 | TBI_MOOD | After most severe injury, did you experience a change in mood or temperament? | categorical | 8090 (92.9%) | No | 291 (47.3%) |
|  |  |  |  |  | Yes | 324 (52.7%) |
|  |  |  |  |  |  |  |
| 185 | TBI_SLEEP | After most severe injury, did you have trouble sleeping or were more tired? | categorical | 8111 (93.2%) | No | 318 (53.5%) |
|  |  |  |  |  | Yes | 276 (46.5%) |
|  |  |  |  |  |  |  |
| 186 | TBI_EXDOC | After most severe injury, were you examined by doctor/nurse/health professional? | categorical | 8115 (93.2%) | No | 438 (74.2%) |
|  |  |  |  |  | Yes | 152 (25.8%) |
|  |  |  |  |  |  |  |
| 187 | TBI_WHYNODOCA | Reason not examined: Didn’t think the injury was serious | categorical | 8269 (95.0%) | Not selected | 172 (39.4%) |
|  |  |  |  |  | Selected | 264 (60.6%) |
|  |  |  |  |  |  |  |
| 188 | TBI_WHYNODOCB | Reason not examined: Difficulty paying for it | categorical | 8269 (95.0%) | Not selected | 370 (84.9%) |
|  |  |  |  |  | Selected | 66 (15.1%) |
|  |  |  |  |  |  |  |
| 189 | TBI_WHYNODOCC | Reason not examined: Did not have transportation | categorical | 8269 (95.0%) | Not selected | 385 (88.3%) |
|  |  |  |  |  | Selected | 51 (11.7%) |
|  |  |  |  |  |  |  |
| 190 | TBI_WHYNODOCD | Reason not examined: Could not take time off work | categorical | 8269 (95.0%) | Not selected | 401 (92.0%) |
|  |  |  |  |  | Selected | 35 (8.0%) |
|  |  |  |  |  |  |  |
| 191 | TBI_WHYNODOCE | Reason not examined: Prevented from seeking care by current or ex-partner | categorical | 8269 (95.0%) | Not selected | 337 (77.3%) |
|  |  |  |  |  | Selected | 99 (22.7%) |
|  |  |  |  |  |  |  |
| 192 | TBI_WHYNODOCF | Reason not examined: Unable to seek care because of COVID-19 | categorical | 8269 (95.0%) | Not selected | 434 (99.5%) |
|  |  |  |  |  | Selected | 2 (0.5%) |
|  |  |  |  |  |  |  |
| 193 | TBI_WHYNODOCG | Reason not examined: Some other reason | categorical | 8269 (95.0%) | Not selected | 327 (75.0%) |
|  |  |  |  |  | Selected | 109 (25.0%) |
|  |  |  |  |  |  |  |
| 194 | TBI_ANYSYMP | DERIVED: Any TBI Symptoms | categorical | 0 (0.0%) | No | 8098 (93.0%) |
|  |  |  |  |  | Yes | 607 (7.0%) |
|  |  |  |  |  |  |  |
| 195 | INT_ACCESS | Access to internet | categorical | 1 (0.0%) | No | 109 (1.3%) |
|  |  |  |  |  | Yes | 8595 (98.7%) |
|  |  |  |  |  |  |  |
| 196 | INT_HOMEACC | Access to internet from home | categorical | 149 (1.7%) | No | 400 (4.7%) |
|  |  |  |  |  | Yes | 8156 (95.3%) |
|  |  |  |  |  |  |  |
| 197 | INT_EXTENT | DERIVED: Extent of internet access | categorical | 40 (0.5%) | Internet access at home | 8156 (94.1%) |
|  |  |  |  |  | Internet access, but not at home | 400 (4.6%) |
|  |  |  |  |  | No internet access | 109 (1.3%) |
|  |  |  |  |  |  |  |
| 198 | INT_USEMED | Past 12 months, use internet to look for health or medical information | categorical | 150 (1.7%) | No | 1597 (18.7%) |
|  |  |  |  |  | Yes | 6958 (81.3%) |
|  |  |  |  |  |  |  |
| 199 | INT_USEDOC | Past 12 months, use internet to communicate with doctor/doctor’s office | categorical | 158 (1.8%) | No | 2996 (35.1%) |
|  |  |  |  |  | Yes | 5551 (64.9%) |
|  |  |  |  |  |  |  |
| 200 | INT_USETEST | Past 12 months, use internet to look up medical test results | categorical | 163 (1.9%) | No | 2767 (32.4%) |
|  |  |  |  |  | Yes | 5775 (67.6%) |
|  |  |  |  |  |  |  |
| 201 | HIT_USE | DERIVED: Any health information technology (HIT) use | categorical | 45 (0.5%) | Yes | 7462 (86.2%) |
|  |  |  |  |  | No | 1198 (13.8%) |
|  |  |  |  |  |  |  |
| 202 | TEL_NONCELL | At least one telephone inside home, not cell phone | categorical | 52 (0.6%) | No | 6126 (70.8%) |
|  |  |  |  |  | Yes | 2527 (29.2%) |
|  |  |  |  |  |  |  |
| 203 | TEL_CELL | Have a working cell phone | categorical | 40 (0.5%) | No | 413 (4.8%) |
|  |  |  |  |  | Yes | 8252 (95.2%) |
|  |  |  |  |  |  |  |
| 204 | TEL_CELL_R | RECODE: Adult has a working cell phone | categorical | 40 (0.5%) | Yes | 8252 (95.2%) |
|  |  |  |  |  | No | 413 (4.8%) |
|  |  |  |  |  |  |  |
| 205 | TEL_HHCELL | Live with anyone with a working cell phone | categorical | 8380 (96.3%) | No | 174 (53.5%) |
|  |  |  |  |  | Yes | 151 (46.5%) |
|  |  |  |  |  |  |  |
| 206 | GROUP | Paradata: Randomize group assignment | categorical | 0 (0.0%) | Group 1 | 4356 (50.0%) |
|  |  |  |  |  | Group 2 | 4349 (50.0%) |
|  |  |  |  |  |  |  |
| 207 | SOURCE | Paradata: Panel Provider | categorical | 0 (0.0%) | Panel Provider 1 | 4563 (52.4%) |
|  |  |  |  |  | Panel Provider 2 | 4142 (47.6%) |
|  |  |  |  |  |  |  |
| 208 | QUEX_LANG | Paradata: Language of interview | categorical | 0 (0.0%) | English | 8373 (96.2%) |
|  |  |  |  |  | Spanish | 332 (3.8%) |
|  |  |  |  |  |  |  |
| 209 | P_OUTCOME | Paradata: Outcome code | categorical | 0 (0.0%) | Complete (reached last question) | 8705 (100.0%) |
|  |  |  |  |  |  |  |
| 210 | P_HHSIZE_R | Panel Profile: Numeric household size, capped at 6+ | categorical | 0 (0.0%) | 1 | 1558 (17.9%) |
|  |  |  |  |  | 2 | 3112 (35.7%) |
|  |  |  |  |  | 3 | 1425 (16.4%) |
|  |  |  |  |  | 4 | 1232 (14.2%) |
|  |  |  |  |  | 5 | 705 (8.1%) |
|  |  |  |  |  | 6+ | 673 (7.7%) |
|  |  |  |  |  |  |  |
| 211 | P_AGE5YRS_R | DERIVED: Age - 12 levels | categorical | 0 (0.0%) | 18-19 | 188 (2.2%) |
|  |  |  |  |  | 20-24 | 440 (5.1%) |
|  |  |  |  |  | 25-29 | 692 (7.9%) |
|  |  |  |  |  | 30-34 | 879 (10.1%) |
|  |  |  |  |  | 35-39 | 715 (8.2%) |
|  |  |  |  |  | 40-44 | 803 (9.2%) |
|  |  |  |  |  | 45-49 | 582 (6.7%) |
|  |  |  |  |  | 50-54 | 602 (6.9%) |
|  |  |  |  |  | 55-59 | 784 (9.0%) |
|  |  |  |  |  | 60-64 | 891 (10.2%) |
|  |  |  |  |  | (…) |  |
|  |  |  |  |  |  |  |
| 212 | P_EDUCATION_I_R | Panel Profile: Education - 3 levels | categorical | 0 (0.0%) | High school graduate or less | 2476 (28.4%) |
|  |  |  |  |  | Some college | 2908 (33.4%) |
|  |  |  |  |  | Bachelor’s degree or above | 3321 (38.2%) |
|  |  |  |  |  |  |  |
| 213 | P_EDUCATION_I_R_IFLG | Imputation flag for panel profile variable: | categorical | 0 (0.0%) | No imputation | 8678 (99.7%) |
|  |  |  |  |  | Logical assignment | 27 (0.3%) |
|  |  |  |  |  |  |  |
| 214 | P_ONEVISIT | Paradata: Whether the survey was completed in a single session | categorical | 0 (0.0%) | Multiple session or did not complete | 979 (11.2%) |
|  |  |  |  |  | Completed survey in single session | 7726 (88.8%) |
|  |  |  |  |  |  |  |
| 215 | P_DEVICE | Paradata: Device used to complete survey (web only) | categorical | 0 (0.0%) | Desktop/Laptop/netbook | 3308 (38.0%) |
|  |  |  |  |  | Smartphone | 4779 (54.9%) |
|  |  |  |  |  | Tablet | 231 (2.7%) |
|  |  |  |  |  | Other device (book reader, game console, etc.) | 3 (0.0%) |
|  |  |  |  |  | Phone interview (not online) | 384 (4.4%) |
|  |  |  |  |  |  |  |
| 216 | P_MODE | Paradata: Mode of interview | categorical | 0 (0.0%) | Web | 8321 (95.6%) |
|  |  |  |  |  | CATI | 384 (4.4%) |
|  |  |  |  |  |  |  |
| 217 | P_POVERTY4_R | RECODE: Poverty Status (ratio of household income to the federal poverty level) - 4 levels | categorical | 0 (0.0%) | 0 - \< 1.00 | 1173 (13.5%) |
|  |  |  |  |  | 1.00 - \< 2.00 | 1517 (17.4%) |
|  |  |  |  |  | 2.00 - \< 4.00 | 2572 (29.5%) |
|  |  |  |  |  | 4.00 + | 3443 (39.6%) |
|  |  |  |  |  |  |  |
| 218 | P_EMPLOY | Panel Profile: Current Employment Status | categorical | 1 (0.0%) | Working | 5338 (61.3%) |
|  |  |  |  |  | Not working–unable to work for health reasons/disabled | 604 (6.9%) |
|  |  |  |  |  | Not working–retired | 1781 (20.5%) |
|  |  |  |  |  | Not working–other | 981 (11.3%) |
|  |  |  |  |  |  |  |
| 219 | P_REGION | Panel Profile: 4-level region | categorical | 0 (0.0%) | Northeast | 1344 (15.4%) |
|  |  |  |  |  | Midwest | 2083 (23.9%) |
|  |  |  |  |  | South | 3089 (35.5%) |
|  |  |  |  |  | West | 2189 (25.1%) |
|  |  |  |  |  |  |  |
| 220 | P_HOMEOWN_R | DERIVED: Home ownership - 2 levels | categorical | 0 (0.0%) | Own or being bought | 6002 (68.9%) |
|  |  |  |  |  | Rent/other arrangement | 2703 (31.1%) |
|  |  |  |  |  |  |  |
| 221 | P_CITIZEN | Panel Profile: Are you a US citizen? | categorical | 2496 (28.7%) | Not a U.S. citizen | 216 (3.5%) |
|  |  |  |  |  | U.S. citizen | 5993 (96.5%) |
|  |  |  |  |  |  |  |
| 222 | P_VETERAN | Panel Profile: Have you ever served on active duty in the U.S. Armed Forces, military Reserves, or National Guard? | categorical | 382 (4.4%) | Not a veteran | 7587 (91.2%) |
|  |  |  |  |  | Veteran | 736 (8.8%) |
|  |  |  |  |  |  |  |
| 223 | P_USBORN | Panel Profile: Is respondent US born? | categorical | 560 (6.4%) | No | 653 (8.0%) |
|  |  |  |  |  | Yes | 7492 (92.0%) |
|  |  |  |  |  |  |  |
| 224 | P_RACE_R | Panel Profile: Single and multiple race/ethnicity groups (all adults) | categorical | 51 (0.6%) | White, non-Hispanic | 5559 (64.2%) |
|  |  |  |  |  | Black, non-Hispanic | 977 (11.3%) |
|  |  |  |  |  | Other, non-Hispanic | 723 (8.4%) |
|  |  |  |  |  | Hispanic | 1395 (16.1%) |
|  |  |  |  |  |  |  |
| 225 | P_ORIENT | Panel Profile: Sexual Orientation | categorical | 402 (4.6%) | Gay or lesbian | 256 (3.1%) |
|  |  |  |  |  | Straight, that is not lesbian/gay | 7537 (90.8%) |
|  |  |  |  |  | Bisexual | 365 (4.4%) |
|  |  |  |  |  | Something else | 145 (1.7%) |
|  |  |  |  |  |  |  |
| 226 | P_METRO_R | NCHS 2013 Urban/Rural code | categorical | 0 (0.0%) | Metropolitan | 7463 (85.7%) |
|  |  |  |  |  | Non-Metropolitan | 1242 (14.3%) |
|  |  |  |  |  |  |  |
| 227 | CAL_EMPLOY | Calibration Variable: Panel profile for employment | categorical | 1 (0.0%) | Yes | 5338 (61.3%) |
|  |  |  |  |  | No | 3366 (38.7%) |
|  |  |  |  |  |  |  |

rss4 (8705 rows and 227 variables, 226 shown) {.table
style="width:100%;"}
