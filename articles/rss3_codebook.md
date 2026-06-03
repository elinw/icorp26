# rss3 Codebook

    ## # Attaching packages: easystats 0.7.6
    ## ✔ bayestestR  0.18.1   ✔ correlation 0.8.8 
    ## ✔ datawizard  1.3.1    ✔ effectsize  1.0.2 
    ## ✔ insight     1.5.1    ✔ modelbased  0.15.0
    ## ✔ performance 0.17.0   ✔ parameters  0.29.1
    ## ✔ report      0.6.4    ✔ see         0.14.0

| ID | Name | Label | Type | Missings | Values | N |
|:---|:---|:---|:---|---:|---:|---:|
| 1 | HIS_GENERAL | Self-reported health status | categorical | 10 (0.1%) | Excellent | 710 (8.5%) |
|  |  |  |  |  | Very good | 3029 (36.2%) |
|  |  |  |  |  | Good | 3264 (39.0%) |
|  |  |  |  |  | Fair | 1143 (13.7%) |
|  |  |  |  |  | Poor | 219 (2.6%) |
|  |  |  |  |  |  |  |
| 2 | CHR_HYPEV | Ever been told you had hypertension | categorical | 24 (0.3%) | No | 5140 (61.5%) |
|  |  |  |  |  | Yes | 3211 (38.5%) |
|  |  |  |  |  |  |  |
| 3 | CHR_CHLEV | Ever told you had high cholesterol | categorical | 94 (1.1%) | No | 5127 (61.9%) |
|  |  |  |  |  | Yes | 3154 (38.1%) |
|  |  |  |  |  |  |  |
| 4 | CHR_CHLEV_R | RECODE: Ever diagnosed high cholesterol | categorical | 94 (1.1%) | No | 5127 (61.9%) |
|  |  |  |  |  | Yes | 3154 (38.1%) |
|  |  |  |  |  |  |  |
| 5 | CHR_HRTEV | Ever told you had a heart attack | categorical | 22 (0.3%) | No | 8067 (96.6%) |
|  |  |  |  |  | Yes | 286 (3.4%) |
|  |  |  |  |  |  |  |
| 6 | CHR_STREV | Ever told you had a stroke | categorical | 49 (0.6%) | No | 8055 (96.7%) |
|  |  |  |  |  | Yes | 271 (3.3%) |
|  |  |  |  |  |  |  |
| 7 | CHR_CANEV | Ever been told you had cancer | categorical | 34 (0.4%) | No | 7319 (87.7%) |
|  |  |  |  |  | Yes | 1022 (12.3%) |
|  |  |  |  |  |  |  |
| 8 | CHR_ASEV | Ever been told you had asthma | categorical | 21 (0.3%) | No | 6852 (82.0%) |
|  |  |  |  |  | Yes | 1502 (18.0%) |
|  |  |  |  |  |  |  |
| 9 | CHR_ASTILL | Still have asthma | categorical | 6884 (82.2%) | No | 570 (38.2%) |
|  |  |  |  |  | Yes | 921 (61.8%) |
|  |  |  |  |  |  |  |
| 10 | CHR_AS12M | Past 12 months, asthma attack | categorical | 7462 (89.1%) | No | 438 (48.0%) |
|  |  |  |  |  | Yes | 475 (52.0%) |
|  |  |  |  |  |  |  |
| 11 | GEN_RHRTEV | Have your biological relatives ever had: Heart attack | categorical | 945 (11.3%) | No | 3955 (53.2%) |
|  |  |  |  |  | Yes | 3475 (46.8%) |
|  |  |  |  |  |  |  |
| 12 | GEN_RSTREV | Have your biological relatives ever had: Stroke | categorical | 912 (10.9%) | No | 4439 (59.5%) |
|  |  |  |  |  | Yes | 3024 (40.5%) |
|  |  |  |  |  |  |  |
| 13 | CHR_RCANEV | Have your biological relatives ever had: Cancer | categorical | 546 (6.5%) | No | 2606 (33.3%) |
|  |  |  |  |  | Yes | 5223 (66.7%) |
|  |  |  |  |  |  |  |
| 14 | DIS_GLASS | Wear glasses or contacts | categorical | 12 (0.1%) | No | 2583 (30.9%) |
|  |  |  |  |  | Yes | 5780 (69.1%) |
|  |  |  |  |  |  |  |
| 15 | DIS_DIFSEE | Difficulty seeing (even wearing glasses) | categorical | 15 (0.2%) | No difficulty | 5175 (61.9%) |
|  |  |  |  |  | Some difficulty | 2939 (35.2%) |
|  |  |  |  |  | A lot of difficulty | 215 (2.6%) |
|  |  |  |  |  | Cannot do this at all | 31 (0.4%) |
|  |  |  |  |  |  |  |
| 16 | DIS_AID | Use a hearing aid | categorical | 19 (0.2%) | No | 7885 (94.4%) |
|  |  |  |  |  | Yes | 471 (5.6%) |
|  |  |  |  |  |  |  |
| 17 | DIS_DIFHEAR | Difficulty hearing (even using hearing aid) | categorical | 18 (0.2%) | No difficulty | 5991 (71.7%) |
|  |  |  |  |  | Some difficulty | 2153 (25.8%) |
|  |  |  |  |  | A lot of difficulty | 178 (2.1%) |
|  |  |  |  |  | Cannot do this at all | 35 (0.4%) |
|  |  |  |  |  |  |  |
| 18 | DIS_DIFWLK | Difficulty walking or climbing steps | categorical | 60 (0.7%) | No difficulty | 6214 (74.7%) |
|  |  |  |  |  | Some difficulty | 1663 (20.0%) |
|  |  |  |  |  | A lot of difficulty | 379 (4.6%) |
|  |  |  |  |  | Cannot do this at all | 59 (0.7%) |
|  |  |  |  |  |  |  |
| 19 | DIS_DIFCOM | Difficulty communicating | categorical | 25 (0.3%) | No difficulty | 7547 (90.4%) |
|  |  |  |  |  | Some difficulty | 706 (8.5%) |
|  |  |  |  |  | A lot of difficulty | 78 (0.9%) |
|  |  |  |  |  | Cannot do this at all | 19 (0.2%) |
|  |  |  |  |  |  |  |
| 20 | DIS_DIFREM | Difficulty remembering or concentrating | categorical | 42 (0.5%) | No difficulty | 5070 (60.8%) |
|  |  |  |  |  | Some difficulty | 2868 (34.4%) |
|  |  |  |  |  | A lot of difficulty | 373 (4.5%) |
|  |  |  |  |  | Cannot do this at all | 22 (0.3%) |
|  |  |  |  |  |  |  |
| 21 | DIS_DIFCARE | Difficulty with self-care | categorical | 51 (0.6%) | No difficulty | 7601 (91.3%) |
|  |  |  |  |  | Some difficulty | 594 (7.1%) |
|  |  |  |  |  | A lot of difficulty | 100 (1.2%) |
|  |  |  |  |  | Cannot do this at all | 29 (0.3%) |
|  |  |  |  |  |  |  |
| 22 | DISABILITY | Washington Group short set composite disability indicator | categorical | 153 (1.8%) | With a disability | 1084 (13.2%) |
|  |  |  |  |  | Without a disability | 7138 (86.8%) |
|  |  |  |  |  |  |  |
| 23 | SOC_ERRANDS | Difficulty doing errands alone | categorical | 23 (0.3%) | No difficulty | 7187 (86.1%) |
|  |  |  |  |  | Some difficulty | 860 (10.3%) |
|  |  |  |  |  | A lot of difficulty | 233 (2.8%) |
|  |  |  |  |  | Cannot do this at all | 72 (0.9%) |
|  |  |  |  |  |  |  |
| 24 | SOC_PARACTIV | Difficulty participating in social activities | categorical | 56 (0.7%) | No difficulty | 6584 (79.1%) |
|  |  |  |  |  | Some difficulty | 1290 (15.5%) |
|  |  |  |  |  | A lot of difficulty | 367 (4.4%) |
|  |  |  |  |  | Cannot do this at all | 78 (0.9%) |
|  |  |  |  |  |  |  |
| 25 | SOC_PARACTIV_R | RECODE: Difficulty participating in social activities due to physical, mental, or emotional condition | categorical | 56 (0.7%) | No difficulty/some difficulty | 7874 (94.7%) |
|  |  |  |  |  | A lot of difficulty/cannot do this at all | 445 (5.3%) |
|  |  |  |  |  |  |  |
| 26 | SOC_SCWRKLIM | Work limited due to health problem | categorical | 33 (0.4%) | No | 6483 (77.7%) |
|  |  |  |  |  | Yes | 1859 (22.3%) |
|  |  |  |  |  |  |  |
| 27 | SOCWRKLMT | Any social/work limitation | categorical | 72 (0.9%) | No | 5575 (67.1%) |
|  |  |  |  |  | Yes | 2728 (32.9%) |
|  |  |  |  |  |  |  |
| 28 | ACC_HTHLAST | Time since last saw doctor about your health | categorical | 19 (0.2%) | Never | 95 (1.1%) |
|  |  |  |  |  | Less than 12 months ago | 6742 (80.7%) |
|  |  |  |  |  | More than 1 year but less than 2 years ago | 741 (8.9%) |
|  |  |  |  |  | More than 2 years but less than 3 years ago | 297 (3.6%) |
|  |  |  |  |  | More than 3 years but less than 5 years ago | 211 (2.5%) |
|  |  |  |  |  | More than 5 years but less than 10 years ago | 164 (2.0%) |
|  |  |  |  |  | 10 years ago or more | 106 (1.3%) |
|  |  |  |  |  |  |  |
| 29 | ACC_HTHUSUAL | Have a usual place to go for care | categorical | 22 (0.3%) | Yes, there is a single place | 4904 (58.7%) |
|  |  |  |  |  | No, there is no place | 811 (9.7%) |
|  |  |  |  |  | Yes, there is more than one place | 2638 (31.6%) |
|  |  |  |  |  |  |  |
| 30 | ACC_HTHTYPE | Type of place for usual care | categorical | 846 (10.1%) | I do not go to one place most often | 70 (0.9%) |
|  |  |  |  |  | A doctor’s office or health center | 6274 (83.3%) |
|  |  |  |  |  | Urgent care center or clinic in a drug store or grocery store | 766 (10.2%) |
|  |  |  |  |  | Hospital emergency room | 179 (2.4%) |
|  |  |  |  |  | A VA medical center or VA outpatient clinic | 177 (2.4%) |
|  |  |  |  |  | Some other place | 63 (0.8%) |
|  |  |  |  |  |  |  |
| 31 | ACC_URGENT_R | DERIVED: Number of urgent care or store clinic visits, past 12 months | categorical | 158 (1.9%) | 0 | 5036 (61.3%) |
|  |  |  |  |  | 1 | 1630 (19.8%) |
|  |  |  |  |  | 2 | 842 (10.2%) |
|  |  |  |  |  | 3 | 325 (4.0%) |
|  |  |  |  |  | 4 | 164 (2.0%) |
|  |  |  |  |  | 5 or more | 220 (2.7%) |
|  |  |  |  |  |  |  |
| 32 | ACC_HOSP_R | DERIVED: Number of hospital emergency room visits, past 12 months | categorical | 156 (1.9%) | 0 | 6505 (79.1%) |
|  |  |  |  |  | 1 | 1091 (13.3%) |
|  |  |  |  |  | 2 | 372 (4.5%) |
|  |  |  |  |  | 3 | 125 (1.5%) |
|  |  |  |  |  | 4 or more | 126 (1.5%) |
|  |  |  |  |  |  |  |
| 33 | ACC_HOSP12M | Past 12 months, hospitalized overnight | categorical | 55 (0.7%) | No | 7602 (91.4%) |
|  |  |  |  |  | Yes | 718 (8.6%) |
|  |  |  |  |  |  |  |
| 34 | HCA_DLYCOST | Past 12 months, delayed medical care due to cost | categorical | 54 (0.6%) | No | 7086 (85.2%) |
|  |  |  |  |  | Yes | 1235 (14.8%) |
|  |  |  |  |  |  |  |
| 35 | HCA_DNTCOST | Past 12 months, did not get medical care due to cost | categorical | 87 (1.0%) | No | 7199 (86.9%) |
|  |  |  |  |  | Yes | 1089 (13.1%) |
|  |  |  |  |  |  |  |
| 36 | CIG_SMKEV | Ever smoked 100 cigarettes in entire life | categorical | 53 (0.6%) | No | 5237 (62.9%) |
|  |  |  |  |  | Yes | 3085 (37.1%) |
|  |  |  |  |  |  |  |
| 37 | CIG_SMKNOW | How often now smoke cigarettes | categorical | 5292 (63.2%) | Every day | 583 (18.9%) |
|  |  |  |  |  | Some days | 300 (9.7%) |
|  |  |  |  |  | Not at all | 2200 (71.4%) |
|  |  |  |  |  |  |  |
| 38 | CIG_ECIGEV | Ever used an e-cigarette even once in entire life | categorical | 21 (0.3%) | No | 6632 (79.4%) |
|  |  |  |  |  | Yes | 1722 (20.6%) |
|  |  |  |  |  |  |  |
| 39 | CIG_ECIGNOW | How often now use e-cigarette | categorical | 6657 (79.5%) | Every day | 309 (18.0%) |
|  |  |  |  |  | Some days | 283 (16.5%) |
|  |  |  |  |  | Not at all | 1126 (65.5%) |
|  |  |  |  |  |  |  |
| 40 | FHH_HISTIMP | How important knowing family health history to own health | categorical | 39 (0.5%) | Not at all important | 404 (4.8%) |
|  |  |  |  |  | Somewhat important | 3135 (37.6%) |
|  |  |  |  |  | Very important | 4797 (57.5%) |
|  |  |  |  |  |  |  |
| 41 | FHH_MOM | How much health history known about: Mother | categorical | 19 (0.2%) | Nothing at all | 349 (4.2%) |
|  |  |  |  |  | Some | 3025 (36.2%) |
|  |  |  |  |  | A lot | 4982 (59.6%) |
|  |  |  |  |  |  |  |
| 42 | FHH_FATH | How much health history known about: Father | categorical | 38 (0.5%) | Nothing at all | 968 (11.6%) |
|  |  |  |  |  | Some | 3339 (40.1%) |
|  |  |  |  |  | A lot | 4030 (48.3%) |
|  |  |  |  |  |  |  |
| 43 | FHH_MATGP | How much health history known about: Maternal grandparents | categorical | 28 (0.3%) | Nothing at all | 1924 (23.1%) |
|  |  |  |  |  | Some | 4644 (55.6%) |
|  |  |  |  |  | A lot | 1779 (21.3%) |
|  |  |  |  |  |  |  |
| 44 | FHH_PATGP | How much health history known about: Paternal grandparents | categorical | 25 (0.3%) | Nothing at all | 2916 (34.9%) |
|  |  |  |  |  | Some | 4260 (51.0%) |
|  |  |  |  |  | A lot | 1174 (14.1%) |
|  |  |  |  |  |  |  |
| 45 | FHH_COLLECT | Ever collected family health history | categorical | 37 (0.4%) | No | 7003 (84.0%) |
|  |  |  |  |  | Yes | 1335 (16.0%) |
|  |  |  |  |  |  |  |
| 46 | FHH_OTHER | Ever shared family health history with other relatives | categorical | 79 (0.9%) | No | 5387 (64.9%) |
|  |  |  |  |  | Yes | 2909 (35.1%) |
|  |  |  |  |  |  |  |
| 47 | FHH_HCP | Ever shared family health history with healthcare provider | categorical | 55 (0.7%) | No | 1935 (23.3%) |
|  |  |  |  |  | Yes | 6385 (76.7%) |
|  |  |  |  |  |  |  |
| 48 | FHH_DIFCOL | How difficult to collect family health history | categorical | 85 (1.0%) | Not at all difficult | 2670 (32.2%) |
|  |  |  |  |  | Somewhat difficult | 4236 (51.1%) |
|  |  |  |  |  | Very difficult | 1384 (16.7%) |
|  |  |  |  |  |  |  |
| 49 | FHH_KNWCOL | Reason difficult to collect: Do not know what information to collect | categorical | 113 (1.3%) | No | 5311 (64.3%) |
|  |  |  |  |  | Yes | 2951 (35.7%) |
|  |  |  |  |  |  |  |
| 50 | FHH_ORG | Reason difficult to collect: Hard to organize or store | categorical | 112 (1.3%) | No | 6138 (74.3%) |
|  |  |  |  |  | Yes | 2125 (25.7%) |
|  |  |  |  |  |  |  |
| 51 | FHH_NOCONT | Reason difficult to collect: No contact or no longer alive | categorical | 73 (0.9%) | No | 3129 (37.7%) |
|  |  |  |  |  | Yes | 5173 (62.3%) |
|  |  |  |  |  |  |  |
| 52 | FHH_UNCOMF | Reason difficult to collect: Uncomfortable asking | categorical | 95 (1.1%) | No | 6212 (75.0%) |
|  |  |  |  |  | Yes | 2068 (25.0%) |
|  |  |  |  |  |  |  |
| 53 | FHH_DIFOTHER | Reason difficult to collect: Some other reason | categorical | 306 (3.7%) | No | 6945 (86.1%) |
|  |  |  |  |  | Yes | 1124 (13.9%) |
|  |  |  |  |  |  |  |
| 54 | GEN_CANTST | Had genetic testing to determine: Cancer risk | categorical | 397 (4.7%) | No | 7259 (91.0%) |
|  |  |  |  |  | Yes | 719 (9.0%) |
|  |  |  |  |  |  |  |
| 55 | GEN_HRTTST | Had genetic testing to determine: Heart disease risk | categorical | 426 (5.1%) | No | 7402 (93.1%) |
|  |  |  |  |  | Yes | 547 (6.9%) |
|  |  |  |  |  |  |  |
| 56 | GEN_CANKNW | Knew genetic testing can determine: Cancer risk | categorical | 767 (9.2%) | No | 3573 (47.0%) |
|  |  |  |  |  | Yes | 4035 (53.0%) |
|  |  |  |  |  |  |  |
| 57 | GEN_HRTKNW | Knew genetic testing can determine: Heart disease risk | categorical | 695 (8.3%) | No | 4226 (55.0%) |
|  |  |  |  |  | Yes | 3454 (45.0%) |
|  |  |  |  |  |  |  |
| 58 | GEN_CANINT | Knew genetic testing can determine: Cancer risk | categorical | 804 (9.6%) | No | 4438 (58.6%) |
|  |  |  |  |  | Yes | 3133 (41.4%) |
|  |  |  |  |  |  |  |
| 59 | GEN_HRTINT | Interested in genetic testing: Heart disease risk | categorical | 656 (7.8%) | No | 4486 (58.1%) |
|  |  |  |  |  | Yes | 3233 (41.9%) |
|  |  |  |  |  |  |  |
| 60 | GEN_SHRSLT1 | Why have genetic testing: Share with relatives | categorical | 7490 (89.4%) | No | 398 (45.0%) |
|  |  |  |  |  | Yes | 487 (55.0%) |
|  |  |  |  |  |  |  |
| 61 | GEN_KNWDIFF1 | Why have genetic testing: Would make difference in healthcare decisions | categorical | 7484 (89.4%) | No | 160 (18.0%) |
|  |  |  |  |  | Yes | 731 (82.0%) |
|  |  |  |  |  |  |  |
| 62 | GEN_KNWCHG1 | Why have genetic testing: Would encourage change in habits | categorical | 7487 (89.4%) | No | 213 (24.0%) |
|  |  |  |  |  | Yes | 675 (76.0%) |
|  |  |  |  |  |  |  |
| 63 | GEN_DRREC1 | Why have genetic testing: Doctor recommended | categorical | 7487 (89.4%) | No | 391 (44.0%) |
|  |  |  |  |  | Yes | 497 (56.0%) |
|  |  |  |  |  |  |  |
| 64 | GEN_SHRSLT2 | Why interested in genetic testing: Share with relatives | categorical | 4837 (57.8%) | No | 1009 (28.5%) |
|  |  |  |  |  | Yes | 2529 (71.5%) |
|  |  |  |  |  |  |  |
| 65 | GEN_KNWDIFF2 | Why interested in genetic testing: Would make difference in healthcare decisions | categorical | 4831 (57.7%) | No | 242 (6.8%) |
|  |  |  |  |  | Yes | 3302 (93.2%) |
|  |  |  |  |  |  |  |
| 66 | GEN_KNWCHG2 | Why interested in genetic testing: Would encourage change in habits | categorical | 4837 (57.8%) | No | 312 (8.8%) |
|  |  |  |  |  | Yes | 3226 (91.2%) |
|  |  |  |  |  |  |  |
| 67 | GEN_DRREC2 | Why interested in genetic testing: Doctor recommended | categorical | 4840 (57.8%) | No | 2836 (80.2%) |
|  |  |  |  |  | Yes | 699 (19.8%) |
|  |  |  |  |  |  |  |
| 68 | GEN_STRESS | Why not interested in genetic testing: Would cause stress | categorical | 3572 (42.7%) | No | 2445 (50.9%) |
|  |  |  |  |  | Yes | 2358 (49.1%) |
|  |  |  |  |  |  |  |
| 69 | GEN_NOHELP | Why not interested in genetic testing: Do not think knowing would be helpful | categorical | 3626 (43.3%) | No | 2563 (54.0%) |
|  |  |  |  |  | Yes | 2186 (46.0%) |
|  |  |  |  |  |  |  |
| 70 | GEN_NOREC | Why not interested in genetic testing: Doctor does not recommend | categorical | 3595 (42.9%) | No | 2160 (45.2%) |
|  |  |  |  |  | Yes | 2620 (54.8%) |
|  |  |  |  |  |  |  |
| 71 | GEN_KEEP | Why not interested in genetic testing: Could impact keeping job or insurance | categorical | 3607 (43.1%) | No | 3767 (79.0%) |
|  |  |  |  |  | Yes | 1001 (21.0%) |
|  |  |  |  |  |  |  |
| 72 | GEN_MISUSE | Why not interested in genetic testing: Could be misused or shared without permission | categorical | 3597 (42.9%) | No | 3186 (66.7%) |
|  |  |  |  |  | Yes | 1592 (33.3%) |
|  |  |  |  |  |  |  |
| 73 | GEN_COST | Why not interested in genetic testing: Cost | categorical | 3599 (43.0%) | No | 3195 (66.9%) |
|  |  |  |  |  | Yes | 1581 (33.1%) |
|  |  |  |  |  |  |  |
| 74 | EMP_EMPLOY | Last week worked for pay at job or business | categorical | 57 (0.7%) | No | 4017 (48.3%) |
|  |  |  |  |  | Yes | 4301 (51.7%) |
|  |  |  |  |  |  |  |
| 75 | EMP_ABSENTWK | Had a job/business last week but temporarily absent | categorical | 4356 (52.0%) | No | 3835 (95.4%) |
|  |  |  |  |  | Yes | 184 (4.6%) |
|  |  |  |  |  |  |  |
| 76 | EMP_WHYNOWRK | Main reason not working for pay last week | categorical | 4612 (55.1%) | Unemployed, laid off, looking for work | 351 (9.3%) |
|  |  |  |  |  | Seasonal/contract work | 78 (2.1%) |
|  |  |  |  |  | Retired | 1843 (49.0%) |
|  |  |  |  |  | Unable to work for health reasons/disabled | 543 (14.4%) |
|  |  |  |  |  | Taking care of house or family | 395 (10.5%) |
|  |  |  |  |  | Going to school | 165 (4.4%) |
|  |  |  |  |  | Working at a family-owned job or business, but not for pay | 32 (0.9%) |
|  |  |  |  |  | Other | 356 (9.5%) |
|  |  |  |  |  |  |  |
| 77 | EMPWRKLSWK | DERIVED: Worked last week | categorical | 89 (1.1%) | Did not work | 3691 (44.5%) |
|  |  |  |  |  | Worked, Temp Absent, Seasonal, Family Job-no pay | 4595 (55.5%) |
|  |  |  |  |  |  |  |
| 78 | EMP_LOOK | Actively looking for work | categorical | 4586 (54.8%) | No | 3236 (85.4%) |
|  |  |  |  |  | Yes | 553 (14.6%) |
|  |  |  |  |  |  |  |
| 79 | EMP_NUMJOB_R | RECODE: Number of jobs currently work | categorical | 3970 (47.4%) | 1 | 3775 (85.7%) |
|  |  |  |  |  | 2 | 516 (11.7%) |
|  |  |  |  |  | 3 | 69 (1.6%) |
|  |  |  |  |  | 4 | 24 (0.5%) |
|  |  |  |  |  | 5+ | 21 (0.5%) |
|  |  |  |  |  |  |  |
| 80 | EMP_ALLHRS_R | RECODE: Number of hours currently work: All jobs | categorical | 7749 (92.5%) | 1-20 hours | 87 (13.9%) |
|  |  |  |  |  | 21-40 hours | 170 (27.2%) |
|  |  |  |  |  | 41-60 hours | 304 (48.6%) |
|  |  |  |  |  | 60+ hours | 65 (10.4%) |
|  |  |  |  |  |  |  |
| 81 | EMP_HRSMAIN_R | RECODE: Number of hours currently work: Main job | categorical | 3927 (46.9%) | 1-20 hours | 615 (13.8%) |
|  |  |  |  |  | 21-40 hours | 2799 (62.9%) |
|  |  |  |  |  | 41-60 hours | 989 (22.2%) |
|  |  |  |  |  | 60+ hours | 45 (1.0%) |
|  |  |  |  |  |  |  |
| 82 | EMP_HRSMORE | At main job, would like to work how many hours | categorical | 3909 (46.7%) | More hours | 606 (13.6%) |
|  |  |  |  |  | About the same number of hours | 2739 (61.3%) |
|  |  |  |  |  | Fewer hours | 1121 (25.1%) |
|  |  |  |  |  |  |  |
| 83 | EMP_TYPE | Employment type | categorical | 3904 (46.6%) | Employed directly by a business, company, government, or nonprofit organization | 3722 (83.2%) |
|  |  |  |  |  | Employed by a temporary employment agency | 49 (1.1%) |
|  |  |  |  |  | Employed by a contract firm, other than a temporary employment agency | 67 (1.5%) |
|  |  |  |  |  | An independent contractor? | 191 (4.3%) |
|  |  |  |  |  | Self-employed, not an independent contractor | 340 (7.6%) |
|  |  |  |  |  | Other | 102 (2.3%) |
|  |  |  |  |  |  |  |
| 84 | EMP_TAX | At main job, taxes are deducted | categorical | 3914 (46.7%) | No | 549 (12.3%) |
|  |  |  |  |  | Yes | 3912 (87.7%) |
|  |  |  |  |  |  |  |
| 85 | EMP_PDLEAVE | At main job, receive paid leave | categorical | 3924 (46.9%) | No | 1404 (31.5%) |
|  |  |  |  |  | Yes | 3047 (68.5%) |
|  |  |  |  |  |  |  |
| 86 | EMP_UPLEAVE | At main job, allowed unpaid leave | categorical | 3924 (46.9%) | No | 788 (17.7%) |
|  |  |  |  |  | Yes | 3663 (82.3%) |
|  |  |  |  |  |  |  |
| 87 | EMP_WHENWRK | Last time worked | categorical | 119 (1.4%) | Less than 3 months ago | 5121 (62.0%) |
|  |  |  |  |  | More than 3 months but less than 6 months ago | 165 (2.0%) |
|  |  |  |  |  | More than 6 months but less than 12 months ago | 193 (2.3%) |
|  |  |  |  |  | More than 12 months but less than 18 months ago | 215 (2.6%) |
|  |  |  |  |  | More than 18 months but less than 5 years ago | 641 (7.8%) |
|  |  |  |  |  | Five years or more | 1747 (21.2%) |
|  |  |  |  |  | Never worked | 174 (2.1%) |
|  |  |  |  |  |  |  |
| 88 | EMP_INSA | Insurance coverage: Self/family member employer, union | categorical | 181 (2.2%) | No | 3626 (44.3%) |
|  |  |  |  |  | Yes | 4543 (55.4%) |
|  |  |  |  |  | Upcoded: Yes | 25 (0.3%) |
|  |  |  |  |  |  |  |
| 89 | EMP_INSB | Insurance coverage: Self/family member purchased directly | categorical | 316 (3.8%) | No | 6531 (81.0%) |
|  |  |  |  |  | Yes | 1361 (16.9%) |
|  |  |  |  |  | Upcoded: Yes | 167 (2.1%) |
|  |  |  |  |  |  |  |
| 90 | EMP_INSC | Insurance coverage: Medicare | categorical | 257 (3.1%) | No | 5762 (71.0%) |
|  |  |  |  |  | Yes | 2283 (28.1%) |
|  |  |  |  |  | Upcoded: Yes | 73 (0.9%) |
|  |  |  |  |  |  |  |
| 91 | EMP_INSD | Insurance coverage: Medicaid or government assistance plan | categorical | 340 (4.1%) | No | 6676 (83.1%) |
|  |  |  |  |  | Yes | 1340 (16.7%) |
|  |  |  |  |  | Upcoded: Yes | 19 (0.2%) |
|  |  |  |  |  |  |  |
| 92 | EMP_INSE | Insurance coverage: TRICARE or other military | categorical | 327 (3.9%) | No | 7660 (95.2%) |
|  |  |  |  |  | Yes | 386 (4.8%) |
|  |  |  |  |  | Upcoded: Yes | 2 (0.0%) |
|  |  |  |  |  |  |  |
| 93 | EMP_INSF | Insurance coverage: VA health care | categorical | 303 (3.6%) | No | 7653 (94.8%) |
|  |  |  |  |  | Yes | 419 (5.2%) |
|  |  |  |  |  |  |  |
| 94 | EMP_INSG | Insurance coverage: Indian Health Service | categorical | 322 (3.8%) | No | 7948 (98.7%) |
|  |  |  |  |  | Yes | 105 (1.3%) |
|  |  |  |  |  |  |  |
| 95 | EMP_INSH | Insurance coverage: Any other | categorical | 435 (5.2%) | No | 7442 (93.7%) |
|  |  |  |  |  | Yes | 498 (6.3%) |
|  |  |  |  |  |  |  |
| 96 | EMP_INSH_UNK | Private insurance, Other/Unknown Source | categorical | 7888 (94.2%) | No | 375 (77.0%) |
|  |  |  |  |  | Upcoded: Yes | 112 (23.0%) |
|  |  |  |  |  |  |  |
| 97 | EMP_INSH_OTH | Other health insurance reported | categorical | 7885 (94.1%) | No | 429 (87.6%) |
|  |  |  |  |  | Upcoded: Yes | 61 (12.4%) |
|  |  |  |  |  |  |  |
| 98 | INSURED | Health Insurance Status | categorical | 66 (0.8%) | Not insured | 657 (7.9%) |
|  |  |  |  |  | Insured | 7652 (92.1%) |
|  |  |  |  |  |  |  |
| 99 | EMP_INSEMP | Insurance through own employer or union | categorical | 3846 (45.9%) | No | 1561 (34.5%) |
|  |  |  |  |  | Yes | 2968 (65.5%) |
|  |  |  |  |  |  |  |
| 100 | EMP_INSFAM | Insurance through family member employer or union | categorical | 3881 (46.3%) | No | 3152 (70.1%) |
|  |  |  |  |  | Yes | 1342 (29.9%) |
|  |  |  |  |  |  |  |
| 101 | EMP_OFFER | Employer or union offer health insurance | categorical | 6294 (75.2%) | No | 1075 (51.7%) |
|  |  |  |  |  | Yes | 1006 (48.3%) |
|  |  |  |  |  |  |  |
| 102 | FSC_WORRY | Worried food would run out before got money to buy more | categorical | 47 (0.6%) | Often true | 465 (5.6%) |
|  |  |  |  |  | Sometimes true | 1365 (16.4%) |
|  |  |  |  |  | Never true | 6498 (78.0%) |
|  |  |  |  |  |  |  |
| 103 | FSC_NOTLAST | Food bought did not last, no money to buy more | categorical | 55 (0.7%) | Often true | 434 (5.2%) |
|  |  |  |  |  | Sometimes true | 1205 (14.5%) |
|  |  |  |  |  | Never true | 6681 (80.3%) |
|  |  |  |  |  |  |  |
| 104 | FSC_AFFORD | Couldn’t afford to eat balanced meals | categorical | 51 (0.6%) | Often true | 596 (7.2%) |
|  |  |  |  |  | Sometimes true | 1354 (16.3%) |
|  |  |  |  |  | Never true | 6374 (76.6%) |
|  |  |  |  |  |  |  |
| 105 | FSC_SKIP | Last 30 days, cut meal size or skipped meals | categorical | 6032 (72.0%) | No | 1282 (54.7%) |
|  |  |  |  |  | Yes | 1061 (45.3%) |
|  |  |  |  |  |  |  |
| 106 | FSC_EATLESS | Last 30 days, ate less than felt should | categorical | 6060 (72.4%) | No | 1245 (53.8%) |
|  |  |  |  |  | Yes | 1070 (46.2%) |
|  |  |  |  |  |  |  |
| 107 | FSC_NOTEAT | Last 30 days, hungry but didn’t eat | categorical | 6068 (72.5%) | No | 1521 (65.9%) |
|  |  |  |  |  | Yes | 786 (34.1%) |
|  |  |  |  |  |  |  |
| 108 | FSC_LOSEWT | Last 30 days, lost weight because not enough food | categorical | 6072 (72.5%) | No | 1785 (77.5%) |
|  |  |  |  |  | Yes | 518 (22.5%) |
|  |  |  |  |  |  |  |
| 109 | FSC_NOEATDAY | Last 30 days, didn’t eat for a whole day | categorical | 6068 (72.5%) | No | 1912 (82.9%) |
|  |  |  |  |  | Yes | 395 (17.1%) |
|  |  |  |  |  |  |  |
| 110 | FSSTATD | Food Security Scale 4 category recode | categorical | 35 (0.4%) | High food security | 5987 (71.8%) |
|  |  |  |  |  | Marginal food security | 759 (9.1%) |
|  |  |  |  |  | Low food security | 705 (8.5%) |
|  |  |  |  |  | Very Low food security | 889 (10.7%) |
|  |  |  |  |  |  |  |
| 111 | CIV_VOL12M | Past 12 months, volunteer activities | categorical | 52 (0.6%) | No | 5830 (70.0%) |
|  |  |  |  |  | Yes | 2493 (30.0%) |
|  |  |  |  |  |  |  |
| 112 | CIV_VOLOTH | Past 12 months, activities at schools or youth organizations | categorical | 2582 (30.8%) | No | 5417 (93.5%) |
|  |  |  |  |  | Yes | 376 (6.5%) |
|  |  |  |  |  |  |  |
| 113 | CIV_MEET | Past 12 months, attend local public meetings | categorical | 91 (1.1%) | No | 7306 (88.2%) |
|  |  |  |  |  | Yes | 978 (11.8%) |
|  |  |  |  |  |  |  |
| 114 | CIV_VOTELOCL | Vote in last local elections | categorical | 101 (1.2%) | No | 3444 (41.6%) |
|  |  |  |  |  | Yes | 4830 (58.4%) |
|  |  |  |  |  |  |  |
| 115 | CIVIC_ENGAGE | RECODE: Civic engagement including volunteering | categorical | 136 (1.6%) | Yes | 5651 (68.6%) |
|  |  |  |  |  | No | 2588 (31.4%) |
|  |  |  |  |  |  |  |
| 116 | LAN_OTHERLAN | Speak language other than English at home | categorical | 81 (1.0%) | No | 6908 (83.3%) |
|  |  |  |  |  | Yes | 1386 (16.7%) |
|  |  |  |  |  |  |  |
| 117 | LAN_MEDIA | What language use most often when watching television, read news, listen to radio | categorical | 6998 (83.6%) | English | 828 (60.1%) |
|  |  |  |  |  | Spanish | 409 (29.7%) |
|  |  |  |  |  | Another language | 140 (10.2%) |
|  |  |  |  |  |  |  |
| 118 | LAN_DOCTOR | What language use most often when seeing a doctor | categorical | 7007 (83.7%) | English | 1095 (80.0%) |
|  |  |  |  |  | Spanish | 249 (18.2%) |
|  |  |  |  |  | Another language | 24 (1.8%) |
|  |  |  |  |  |  |  |
| 119 | LAN_SOCIAL | What language use most often when participate in social activities | categorical | 6997 (83.5%) | English | 969 (70.3%) |
|  |  |  |  |  | Spanish | 348 (25.3%) |
|  |  |  |  |  | Another language | 61 (4.4%) |
|  |  |  |  |  |  |  |
| 120 | INT_ACCESS | Access to internet | categorical | 3 (0.0%) | No | 126 (1.5%) |
|  |  |  |  |  | Yes | 8246 (98.5%) |
|  |  |  |  |  |  |  |
| 121 | INT_HOMEACC | Access to internet from home | categorical | 161 (1.9%) | No | 281 (3.4%) |
|  |  |  |  |  | Yes | 7933 (96.6%) |
|  |  |  |  |  |  |  |
| 122 | INT_USEMED | Past 12 months, use internet to look for health or medical information | categorical | 177 (2.1%) | No | 1973 (24.1%) |
|  |  |  |  |  | Yes | 6225 (75.9%) |
|  |  |  |  |  |  |  |
| 123 | INT_USEDOC | Past 12 months, use internet to communicate with doctor/doctor’s office | categorical | 182 (2.2%) | No | 3081 (37.6%) |
|  |  |  |  |  | Yes | 5112 (62.4%) |
|  |  |  |  |  |  |  |
| 124 | INT_USETEST | Past 12 months, use internet to look up medical test results | categorical | 184 (2.2%) | No | 2865 (35.0%) |
|  |  |  |  |  | Yes | 5326 (65.0%) |
|  |  |  |  |  |  |  |
| 125 | TEL_NONCELL | At least one telephone inside home, not cell phone | categorical | 45 (0.5%) | No | 5812 (69.8%) |
|  |  |  |  |  | Yes | 2518 (30.2%) |
|  |  |  |  |  |  |  |
| 126 | TEL_CELL | Have a working cell phone | categorical | 42 (0.5%) | No | 358 (4.3%) |
|  |  |  |  |  | Yes | 7975 (95.7%) |
|  |  |  |  |  |  |  |
| 127 | TEL_HHCEL | Live with anyone with a working cell phone | categorical | 8117 (96.9%) | No | 139 (53.9%) |
|  |  |  |  |  | Yes | 119 (46.1%) |
|  |  |  |  |  |  |  |
| 128 | SEX_REL | Sexual relationship: Safe and supportive | categorical | 135 (1.6%) | I have never had a sexual relationship | 483 (5.9%) |
|  |  |  |  |  | Strongly agree | 5112 (62.0%) |
|  |  |  |  |  | Somewhat agree | 1685 (20.4%) |
|  |  |  |  |  | Somewhat disagree | 528 (6.4%) |
|  |  |  |  |  | Strongly disagree | 432 (5.2%) |
|  |  |  |  |  |  |  |
| 129 | SEX_FUL | Sexual relationship: Fulfilling | categorical | 759 (9.1%) | Strongly agree | 3538 (46.5%) |
|  |  |  |  |  | Somewhat agree | 2605 (34.2%) |
|  |  |  |  |  | Somewhat disagree | 919 (12.1%) |
|  |  |  |  |  | Strongly disagree | 554 (7.3%) |
|  |  |  |  |  |  |  |
| 130 | SEX_GETOUT | Sexual relationship how often: Talk about thoughts and feelings | categorical | 797 (9.5%) | Never | 892 (11.8%) |
|  |  |  |  |  | Rarely | 1321 (17.4%) |
|  |  |  |  |  | Sometimes | 2359 (31.1%) |
|  |  |  |  |  | Usually | 1646 (21.7%) |
|  |  |  |  |  | Always | 1360 (17.9%) |
|  |  |  |  |  |  |  |
| 131 | SEX_LIKE | Sexual relationship how often: Talk about likes and dislikes sexually | categorical | 827 (9.9%) | Never | 961 (12.7%) |
|  |  |  |  |  | Rarely | 1300 (17.2%) |
|  |  |  |  |  | Sometimes | 2266 (30.0%) |
|  |  |  |  |  | Usually | 1574 (20.9%) |
|  |  |  |  |  | Always | 1447 (19.2%) |
|  |  |  |  |  |  |  |
| 132 | SEX_BNDRS | Sexual relationship how often: Talk about sexual boundaries | categorical | 842 (10.1%) | Never | 1210 (16.1%) |
|  |  |  |  |  | Rarely | 1336 (17.7%) |
|  |  |  |  |  | Sometimes | 1735 (23.0%) |
|  |  |  |  |  | Usually | 1264 (16.8%) |
|  |  |  |  |  | Always | 1988 (26.4%) |
|  |  |  |  |  |  |  |
| 133 | SEX_FEEL | Sexual relationship how often: Talk about feelings about certain sexual situations made you both feel | categorical | 836 (10.0%) | Never | 1143 (15.2%) |
|  |  |  |  |  | Rarely | 1311 (17.4%) |
|  |  |  |  |  | Sometimes | 2066 (27.4%) |
|  |  |  |  |  | Usually | 1478 (19.6%) |
|  |  |  |  |  | Always | 1541 (20.4%) |
|  |  |  |  |  |  |  |
| 134 | SEX_COMFTLK | Comfortable talking to partner about sexual health | categorical | 773 (9.2%) | No | 1307 (17.2%) |
|  |  |  |  |  | Yes | 6295 (82.8%) |
|  |  |  |  |  |  |  |
| 135 | SEX_HURTPTR | Ever hesitated talking about sexual health: To avoid offending/hurting feelings | categorical | 854 (10.2%) | No | 5161 (68.6%) |
|  |  |  |  |  | Yes | 2360 (31.4%) |
|  |  |  |  |  |  |  |
| 136 | SEX_HONEST | Ever hesitated talking about sexual health: Do not trust partner to be honest | categorical | 878 (10.5%) | No | 6517 (86.9%) |
|  |  |  |  |  | Yes | 980 (13.1%) |
|  |  |  |  |  |  |  |
| 137 | SEX_DESCFEEL1 | Ever hesitated talking about sexual health: Do not know how to describe feelings | categorical | 879 (10.5%) | No | 5609 (74.8%) |
|  |  |  |  |  | Yes | 1887 (25.2%) |
|  |  |  |  |  |  |  |
| 138 | SEX_PUNDSTD | Ever hesitated talking about sexual health: Do not think partner will understand | categorical | 890 (10.6%) | No | 5851 (78.2%) |
|  |  |  |  |  | Yes | 1634 (21.8%) |
|  |  |  |  |  |  |  |
| 139 | SEX_HLTSVS | Past 12 months, received sexual health services | categorical | 321 (3.8%) | No | 7315 (90.8%) |
|  |  |  |  |  | Yes | 739 (9.2%) |
|  |  |  |  |  |  |  |
| 140 | SEX_DR | Received sexual health services: Doctor’s office | categorical | 7639 (91.2%) | No | 132 (17.9%) |
|  |  |  |  |  | Yes | 604 (82.1%) |
|  |  |  |  |  |  |  |
| 141 | SEX_CLINIC | Received sexual health services: Community or public health clinic | categorical | 7642 (91.2%) | No | 573 (78.2%) |
|  |  |  |  |  | Yes | 160 (21.8%) |
|  |  |  |  |  |  |  |
| 142 | SEX_HOSP | Received sexual health services: Hospital | categorical | 7644 (91.3%) | No | 653 (89.3%) |
|  |  |  |  |  | Yes | 78 (10.7%) |
|  |  |  |  |  |  |  |
| 143 | SEX_URGCLIN | Received sexual health services: Urgent care or store clinic | categorical | 7643 (91.3%) | No | 658 (89.9%) |
|  |  |  |  |  | Yes | 74 (10.1%) |
|  |  |  |  |  |  |  |
| 144 | SEX_TELHLTH | Received sexual health services: Telehealth | categorical | 7643 (91.3%) | No | 640 (87.4%) |
|  |  |  |  |  | Yes | 92 (12.6%) |
|  |  |  |  |  |  |  |
| 145 | SEX_TLKDR | Sexual health providers: Comfortable talking about sexual health | categorical | 188 (2.2%) | No | 2288 (27.9%) |
|  |  |  |  |  | Yes | 5899 (72.1%) |
|  |  |  |  |  |  |  |
| 146 | SEX_JUDGE | Ever hesitant to talk with health providers because: Fear will judge | categorical | 266 (3.2%) | No | 6849 (84.5%) |
|  |  |  |  |  | Yes | 1260 (15.5%) |
|  |  |  |  |  |  |  |
| 147 | SEX_TRUST | Ever hesitant to talk with health providers because: Do not trust | categorical | 282 (3.4%) | No | 7122 (88.0%) |
|  |  |  |  |  | Yes | 971 (12.0%) |
|  |  |  |  |  |  |  |
| 148 | SEX_DESCFEEL2 | Ever hesitant to talk with health providers because: Do not know how to describe feelings | categorical | 290 (3.5%) | No | 6498 (80.4%) |
|  |  |  |  |  | Yes | 1587 (19.6%) |
|  |  |  |  |  |  |  |
| 149 | SEX_HCPUST | Ever hesitant to talk with health providers because: Do not think will understand | categorical | 295 (3.5%) | No | 7007 (86.7%) |
|  |  |  |  |  | Yes | 1073 (13.3%) |
|  |  |  |  |  |  |  |
| 150 | SEX_SOURCEA | Sexual health information source: Family | categorical | 279 (3.3%) | No | 7048 (87.1%) |
|  |  |  |  |  | Yes | 1048 (12.9%) |
|  |  |  |  |  |  |  |
| 151 | SEX_SOURCEB | Sexual health information source: Partner | categorical | 312 (3.7%) | No | 3463 (42.9%) |
|  |  |  |  |  | Yes | 4600 (57.1%) |
|  |  |  |  |  |  |  |
| 152 | SEX_SOURCEC | Sexual health information source: Peers or friends | categorical | 322 (3.8%) | No | 5556 (69.0%) |
|  |  |  |  |  | Yes | 2497 (31.0%) |
|  |  |  |  |  |  |  |
| 153 | SEX_SOURCED | Sexual health information source: Therapist | categorical | 363 (4.3%) | No | 6882 (85.9%) |
|  |  |  |  |  | Yes | 1130 (14.1%) |
|  |  |  |  |  |  |  |
| 154 | SEX_SOURCEE | Sexual health information source: Doctor or healthcare provider | categorical | 322 (3.8%) | No | 3015 (37.4%) |
|  |  |  |  |  | Yes | 5038 (62.6%) |
|  |  |  |  |  |  |  |
| 155 | SEX_SOURCEF | Sexual health information source: Internet or social media | categorical | 299 (3.6%) | No | 4600 (57.0%) |
|  |  |  |  |  | Yes | 3476 (43.0%) |
|  |  |  |  |  |  |  |
| 156 | SEX_SOURCEG | Sexual health information source: Other | categorical | 403 (4.8%) | No | 7256 (91.0%) |
|  |  |  |  |  | Yes | 716 (9.0%) |
|  |  |  |  |  |  |  |
| 157 | SEX_RELST | Currently in sexual relationship | categorical | 124 (1.5%) | Not in a sexual relationship | 2635 (31.9%) |
|  |  |  |  |  | In a sexual relationship with one person | 5414 (65.6%) |
|  |  |  |  |  | In a sexual relationship with more than one person | 202 (2.4%) |
|  |  |  |  |  |  |  |
| 158 | SEX_RELST2A | Casual sexual relationship, one person | categorical | 3001 (35.8%) | No | 5094 (94.8%) |
|  |  |  |  |  | Yes | 280 (5.2%) |
|  |  |  |  |  |  |  |
| 159 | SEX_RELST2B | Committed sexual relationship, one person | categorical | 3001 (35.8%) | No | 279 (5.2%) |
|  |  |  |  |  | Yes | 5095 (94.8%) |
|  |  |  |  |  |  |  |
| 160 | SEX_RELST2C | Open sexual relationship, one person | categorical | 3001 (35.8%) | No | 5277 (98.2%) |
|  |  |  |  |  | Yes | 97 (1.8%) |
|  |  |  |  |  |  |  |
| 161 | SEX_RELST3A | Casual sexual relationship, more than one person | categorical | 8174 (97.6%) | No | 85 (42.3%) |
|  |  |  |  |  | Yes | 116 (57.7%) |
|  |  |  |  |  |  |  |
| 162 | SEX_RELST3B | Committed sexual relationship, more than one person | categorical | 8174 (97.6%) | No | 95 (47.3%) |
|  |  |  |  |  | Yes | 106 (52.7%) |
|  |  |  |  |  |  |  |
| 163 | SEX_RELST3C | Open sexual relationship, more than one person | categorical | 8174 (97.6%) | No | 151 (75.1%) |
|  |  |  |  |  | Yes | 50 (24.9%) |
|  |  |  |  |  |  |  |
| 164 | SEX_HADSEXA | Past 12 months, had sex with man | categorical | 215 (2.6%) | No | 5307 (65.0%) |
|  |  |  |  |  | Yes | 2853 (35.0%) |
|  |  |  |  |  |  |  |
| 165 | SEX_HADSEXB | Past 12 months, had sex with woman | categorical | 215 (2.6%) | No | 5434 (66.6%) |
|  |  |  |  |  | Yes | 2726 (33.4%) |
|  |  |  |  |  |  |  |
| 166 | SEX_HADSEXC | Past 12 months, had sex with someone nonbinary, genderqueer, transgender, or did not identify as only male or only female | categorical | 215 (2.6%) | No | 8093 (99.2%) |
|  |  |  |  |  | Yes | 67 (0.8%) |
|  |  |  |  |  |  |  |
| 167 | SEX_HADSEXD | Past 12 months, did not have sex | categorical | 215 (2.6%) | No | 5555 (68.1%) |
|  |  |  |  |  | Yes | 2605 (31.9%) |
|  |  |  |  |  |  |  |
| 168 | SEX_NEWPTR | Past 12 months, sex with new partner | categorical | 2834 (33.8%) | No | 4956 (89.4%) |
|  |  |  |  |  | Yes | 585 (10.6%) |
|  |  |  |  |  |  |  |
| 169 | SEX_DISCA | Before sex with new partner, discussed using condoms | categorical | 7790 (93.0%) | No | 258 (44.1%) |
|  |  |  |  |  | Yes | 327 (55.9%) |
|  |  |  |  |  |  |  |
| 170 | SEX_DISCB | Before sex with new partner, discussed hormonal birth control or IUDs | categorical | 7790 (93.0%) | No | 447 (76.4%) |
|  |  |  |  |  | Yes | 138 (23.6%) |
|  |  |  |  |  |  |  |
| 171 | SEX_DISCC | Before sex with new partner, discussed HIV PrEP | categorical | 7790 (93.0%) | No | 518 (88.5%) |
|  |  |  |  |  | Yes | 67 (11.5%) |
|  |  |  |  |  |  |  |
| 172 | SEX_DISCD | Before sex with new partner, discussed HIV testing | categorical | 7790 (93.0%) | No | 494 (84.4%) |
|  |  |  |  |  | Yes | 91 (15.6%) |
|  |  |  |  |  |  |  |
| 173 | SEX_DISCE | Before sex with new partner, discussed STI testing | categorical | 7790 (93.0%) | No | 404 (69.1%) |
|  |  |  |  |  | Yes | 181 (30.9%) |
|  |  |  |  |  |  |  |
| 174 | SEX_DISCF | Before sex with new partner, discussed none of these | categorical | 7790 (93.0%) | No | 423 (72.3%) |
|  |  |  |  |  | Yes | 162 (27.7%) |
|  |  |  |  |  |  |  |
| 175 | SEX_CONDOM | Past 12 months, how often discussed condoms with new sex partners | categorical | 8042 (96.0%) | Never | 9 (2.7%) |
|  |  |  |  |  | Rarely | 23 (6.9%) |
|  |  |  |  |  | Sometimes | 72 (21.6%) |
|  |  |  |  |  | Usually | 73 (21.9%) |
|  |  |  |  |  | Always | 156 (46.8%) |
|  |  |  |  |  |  |  |
| 176 | SEX_BC | Past 12 months, how often discussed hormonal birth control or IUDs with new sex partners | categorical | 8231 (98.3%) | Never | 6 (4.2%) |
|  |  |  |  |  | Rarely | 17 (11.8%) |
|  |  |  |  |  | Sometimes | 26 (18.1%) |
|  |  |  |  |  | Usually | 26 (18.1%) |
|  |  |  |  |  | Always | 69 (47.9%) |
|  |  |  |  |  |  |  |
| 177 | SEX_HIVPREP | Past 12 months, how often discussed HIV PrEP with new sex partners | categorical | 8303 (99.1%) | Never | 5 (6.9%) |
|  |  |  |  |  | Rarely | 9 (12.5%) |
|  |  |  |  |  | Sometimes | 14 (19.4%) |
|  |  |  |  |  | Usually | 9 (12.5%) |
|  |  |  |  |  | Always | 35 (48.6%) |
|  |  |  |  |  |  |  |
| 178 | SEX_HIVTST | Past 12 months, how often discussed HIV testing with new sex partners | categorical | 8280 (98.9%) | Never | 4 (4.2%) |
|  |  |  |  |  | Rarely | 16 (16.8%) |
|  |  |  |  |  | Sometimes | 23 (24.2%) |
|  |  |  |  |  | Usually | 12 (12.6%) |
|  |  |  |  |  | Always | 40 (42.1%) |
|  |  |  |  |  |  |  |
| 179 | SEX_STITST | Past 12 months, how often discussed STI testing with new sex partners | categorical | 8191 (97.8%) | Never | 4 (2.2%) |
|  |  |  |  |  | Rarely | 26 (14.1%) |
|  |  |  |  |  | Sometimes | 38 (20.7%) |
|  |  |  |  |  | Usually | 37 (20.1%) |
|  |  |  |  |  | Always | 79 (42.9%) |
|  |  |  |  |  |  |  |
| 180 | MAR_MARITAL | Now married, living with a partner, or neither | categorical | 56 (0.7%) | Married | 4419 (53.1%) |
|  |  |  |  |  | Living with a partner together as an unmarried couple | 947 (11.4%) |
|  |  |  |  |  | Neither | 2953 (35.5%) |
|  |  |  |  |  |  |  |
| 181 | MAR_EVMARRY | Ever been married | categorical | 4458 (53.2%) | No | 2344 (59.8%) |
|  |  |  |  |  | Yes | 1573 (40.2%) |
|  |  |  |  |  |  |  |
| 182 | MAR_LEGAL | Current legal marital status | categorical | 8067 (96.3%) | Married | 22 (7.1%) |
|  |  |  |  |  | Widowed | 43 (14.0%) |
|  |  |  |  |  | Divorced | 216 (70.1%) |
|  |  |  |  |  | Separated | 27 (8.8%) |
|  |  |  |  |  |  |  |
| 183 | MAR_WIDIVSEP | Widowed, divorced, or separated | categorical | 7137 (85.2%) | Widowed | 426 (34.4%) |
|  |  |  |  |  | Divorced | 720 (58.2%) |
|  |  |  |  |  | Separated | 92 (7.4%) |
|  |  |  |  |  |  |  |
| 184 | MARSTAT | DERIVED: Current marital status | categorical | 73 (0.9%) | Married | 4419 (53.2%) |
|  |  |  |  |  | Widowed | 426 (5.1%) |
|  |  |  |  |  | Divorced | 720 (8.7%) |
|  |  |  |  |  | Separated | 92 (1.1%) |
|  |  |  |  |  | Never Married | 1698 (20.5%) |
|  |  |  |  |  | Living with partner | 947 (11.4%) |
|  |  |  |  |  |  |  |
| 185 | LEGMSTAT | DERIVED: Legal marital status | categorical | 73 (0.9%) | Separated | 119 (1.4%) |
|  |  |  |  |  | Divorced | 936 (11.3%) |
|  |  |  |  |  | Married | 4441 (53.5%) |
|  |  |  |  |  | Single/Never Married | 2337 (28.1%) |
|  |  |  |  |  | Widowed | 469 (5.6%) |
|  |  |  |  |  |  |  |
| 186 | MARITAL | RECODE: Current Marriage Status - 2 levels | categorical | 73 (0.9%) | Married | 4419 (53.2%) |
|  |  |  |  |  | Not married | 3883 (46.8%) |
|  |  |  |  |  |  |  |
| 187 | SOURCE | Paradata: Panel Provider | categorical | 0 (0.0%) | Panel Provider 1 | 4205 (50.2%) |
|  |  |  |  |  | Panel Provider 2 | 4170 (49.8%) |
|  |  |  |  |  |  |  |
| 188 | QUEX_LANG | Paradata: Language of interview | categorical | 0 (0.0%) | English | 8094 (96.6%) |
|  |  |  |  |  | Spanish | 281 (3.4%) |
|  |  |  |  |  |  |  |
| 189 | P_OUTCOME | Paradata: Outcome code | categorical | 0 (0.0%) | Complete (reached last question) | 8375 (100.0%) |
|  |  |  |  |  |  |  |
| 190 | P_HHSIZE_R | Panel Profile: Numeric household size, capped at 6+ | categorical | 0 (0.0%) | 1 | 1612 (19.2%) |
|  |  |  |  |  | 2 | 2967 (35.4%) |
|  |  |  |  |  | 3 | 1396 (16.7%) |
|  |  |  |  |  | 4 | 1207 (14.4%) |
|  |  |  |  |  | 5 | 647 (7.7%) |
|  |  |  |  |  | 6+ | 546 (6.5%) |
|  |  |  |  |  |  |  |
| 191 | P_AGE5YRS_R | DERIVED: Age - 12 levels | categorical | 0 (0.0%) | 18-19 | 182 (2.2%) |
|  |  |  |  |  | 20-24 | 427 (5.1%) |
|  |  |  |  |  | 25-29 | 658 (7.9%) |
|  |  |  |  |  | 30-34 | 842 (10.1%) |
|  |  |  |  |  | 35-39 | 678 (8.1%) |
|  |  |  |  |  | 40-44 | 770 (9.2%) |
|  |  |  |  |  | 45-49 | 599 (7.2%) |
|  |  |  |  |  | 50-54 | 632 (7.5%) |
|  |  |  |  |  | 55-59 | 699 (8.3%) |
|  |  |  |  |  | 60-64 | 851 (10.2%) |
|  |  |  |  |  | (…) |  |
|  |  |  |  |  |  |  |
| 192 | P_GENDER | Panel Profile: Respondent gender | categorical | 0 (0.0%) | Male | 4105 (49.0%) |
|  |  |  |  |  | Female | 4270 (51.0%) |
|  |  |  |  |  |  |  |
| 193 | P_EDUCATION_I_R | Panel Profile: Education - 3 levels | categorical | 0 (0.0%) | High school graduate or less | 2453 (29.3%) |
|  |  |  |  |  | Some college | 2729 (32.6%) |
|  |  |  |  |  | Bachelor’s degree or above | 3193 (38.1%) |
|  |  |  |  |  |  |  |
| 194 | P_EDUCATION_I_R_IFLG | Imputation flag for panel profile variable: | categorical | 0 (0.0%) | No imputation | 8366 (99.9%) |
|  |  |  |  |  | Statistical imputation | 9 (0.1%) |
|  |  |  |  |  |  |  |
| 195 | P_ONEVISIT | Paradata: Whether the survey was completed in a single session | categorical | 0 (0.0%) | Multiple session or did not complete | 1056 (12.6%) |
|  |  |  |  |  | Completed survey in single session | 7319 (87.4%) |
|  |  |  |  |  |  |  |
| 196 | P_DEVICE | Paradata: Device used to complete survey (web only) | categorical | 0 (0.0%) | Desktop/Laptop/netbook | 3178 (37.9%) |
|  |  |  |  |  | Smartphone | 4484 (53.5%) |
|  |  |  |  |  | Tablet | 251 (3.0%) |
|  |  |  |  |  | Other device (book reader, game console, etc.) | 2 (0.0%) |
|  |  |  |  |  | Phone interview (not online) | 460 (5.5%) |
|  |  |  |  |  |  |  |
| 197 | P_MODE | Paradata: Mode of interview | categorical | 0 (0.0%) | Web | 7915 (94.5%) |
|  |  |  |  |  | CATI | 460 (5.5%) |
|  |  |  |  |  |  |  |
| 198 | P_POVERTY4_R | Panel Profile: Poverty Status (ratio of household income to the federal poverty level) - 4 levels | categorical | 0 (0.0%) | 0 - \< 1.00 | 1138 (13.6%) |
|  |  |  |  |  | 1.00 - \< 2.00 | 1506 (18.0%) |
|  |  |  |  |  | 2.00 - \< 4.00 | 2355 (28.1%) |
|  |  |  |  |  | 4.00 + | 3376 (40.3%) |
|  |  |  |  |  |  |  |
| 199 | P_REGION | Panel Profile: 4-level region | categorical | 0 (0.0%) | Northeast | 1254 (15.0%) |
|  |  |  |  |  | Midwest | 2051 (24.5%) |
|  |  |  |  |  | South | 3023 (36.1%) |
|  |  |  |  |  | West | 2047 (24.4%) |
|  |  |  |  |  |  |  |
| 200 | P_HOMEOWN_R | DERIVED: Home ownership - 2 levels | categorical | 0 (0.0%) | Own or being bought | 5820 (69.5%) |
|  |  |  |  |  | Rent/other arrangement | 2555 (30.5%) |
|  |  |  |  |  |  |  |
| 201 | P_CITIZEN | Panel Profile: Are you a US citizen? | categorical | 2242 (26.8%) | Not a U.S. citizen | 209 (3.4%) |
|  |  |  |  |  | U.S. citizen | 5924 (96.6%) |
|  |  |  |  |  |  |  |
| 202 | P_VETERAN | Panel Profile: Have you ever served on active duty in the U.S. Armed Forces, military Reserves, or National Guard? | categorical | 350 (4.2%) | Not a veteran | 7273 (90.6%) |
|  |  |  |  |  | Veteran | 752 (9.4%) |
|  |  |  |  |  |  |  |
| 203 | P_USBORN | Panel Profile: Is respondent US born? | categorical | 1359 (16.2%) | No | 569 (8.1%) |
|  |  |  |  |  | Yes | 6447 (91.9%) |
|  |  |  |  |  |  |  |
| 204 | P_RACE_R | Panel Profile: Single and multiple race/ethnicity groups (all adults) | categorical | 86 (1.0%) | White, non-Hispanic | 5385 (65.0%) |
|  |  |  |  |  | Black, non-Hispanic | 960 (11.6%) |
|  |  |  |  |  | Other, non-Hispanic | 670 (8.1%) |
|  |  |  |  |  | Hispanic | 1274 (15.4%) |
|  |  |  |  |  |  |  |
| 205 | P_GENDERID | Panel Profile: Gender identity 4 Levels | categorical | 282 (3.4%) | Cis-gender Male | 3921 (48.4%) |
|  |  |  |  |  | Cis-gender Female | 4057 (50.1%) |
|  |  |  |  |  | Transgender | 55 (0.7%) |
|  |  |  |  |  | None of these | 60 (0.7%) |
|  |  |  |  |  |  |  |
| 206 | P_ORIENT | Panel Profile: Sexual Orientation | categorical | 293 (3.5%) | Gay or lesbian | 282 (3.5%) |
|  |  |  |  |  | Straight, that is not lesbian/gay | 7309 (90.4%) |
|  |  |  |  |  | Bisexual | 357 (4.4%) |
|  |  |  |  |  | Something else | 134 (1.7%) |
|  |  |  |  |  |  |  |
| 207 | P_METRO_R | NCHS 2013 Urban/Rural code | categorical | 0 (0.0%) | Metropolitan | 7147 (85.3%) |
|  |  |  |  |  | Non-Metropolitan | 1228 (14.7%) |
|  |  |  |  |  |  |  |
| 208 | P_METRO_R_IFLG | Imputation flag for profile variable: | categorical | 0 (0.0%) | No imputation | 8364 (99.9%) |
|  |  |  |  |  | Statistical imputation | 11 (0.1%) |
|  |  |  |  |  |  |  |

rss3 (8375 rows and 208 variables, 208 shown) {.table}
