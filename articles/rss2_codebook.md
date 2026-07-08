# rss2 Codebook

    ## # Attaching packages: easystats 0.7.6
    ## ✔ bayestestR  0.18.1   ✔ correlation 0.8.8 
    ## ✔ datawizard  1.3.1    ✔ effectsize  1.0.3 
    ## ✔ insight     1.5.2    ✔ modelbased  0.16.0
    ## ✔ performance 0.17.1   ✔ parameters  0.29.2
    ## ✔ report      0.6.4    ✔ see         0.14.1

    ## Warning: Following 1 columns were empty and have been removed:
    ##   EMP_DAYMISS_R

| ID | Name | Label | Type | Missings | Values | N |
|:---|:---|:---|:---|---:|---:|---:|
| 1 | HIS_GENERAL | Self-reported health status | categorical | 7 (0.1%) | Excellent | 602 (8.6%) |
|  |  |  |  |  | Very good | 2533 (36.0%) |
|  |  |  |  |  | Good | 2736 (38.9%) |
|  |  |  |  |  | Fair | 982 (14.0%) |
|  |  |  |  |  | Poor | 186 (2.6%) |
|  |  |  |  |  |  |  |
| 2 | CHR_HYPEV | Ever been told you had hypertension | categorical | 29 (0.4%) | No | 4292 (61.2%) |
|  |  |  |  |  | Yes | 2725 (38.8%) |
|  |  |  |  |  |  |  |
| 3 | CHR_CHLEV | Ever told you had high cholesterol | categorical | 98 (1.4%) | No | 4248 (61.1%) |
|  |  |  |  |  | Yes | 2700 (38.9%) |
|  |  |  |  |  |  |  |
| 4 | CHR_CHLEV_R | RECODE: Ever diagnosed high cholesterol | categorical | 98 (1.4%) | No | 4248 (61.1%) |
|  |  |  |  |  | Yes | 2700 (38.9%) |
|  |  |  |  |  |  |  |
| 5 | CHR_ASEV | Ever been told you had asthma | categorical | 51 (0.7%) | No | 5799 (82.9%) |
|  |  |  |  |  | Yes | 1196 (17.1%) |
|  |  |  |  |  |  |  |
| 6 | CHR_CANEV | Ever been told you had cancer | categorical | 110 (1.6%) | No | 5947 (85.7%) |
|  |  |  |  |  | Yes | 989 (14.3%) |
|  |  |  |  |  |  |  |
| 7 | ADHD_EVER | Ever been diagnosed with ADHD | categorical | 32 (0.5%) | No | 6441 (91.8%) |
|  |  |  |  |  | Yes | 573 (8.2%) |
|  |  |  |  |  |  |  |
| 8 | ADHD_AGE | How old when first diagnosed with ADHD | categorical | 6489 (92.1%) | 11 years old or younger | 163 (29.3%) |
|  |  |  |  |  | 12-17 years old | 76 (13.6%) |
|  |  |  |  |  | 18-24 years old | 91 (16.3%) |
|  |  |  |  |  | 25-44 years old | 169 (30.3%) |
|  |  |  |  |  | 45 years old or older | 58 (10.4%) |
|  |  |  |  |  |  |  |
| 9 | ADHD_NOW | Currently have ADHD | categorical | 6478 (91.9%) | No | 124 (21.8%) |
|  |  |  |  |  | Yes | 444 (78.2%) |
|  |  |  |  |  |  |  |
| 10 | ADHD_TREAT | Past 12 months, had counseling/therapy to treat ADHD | categorical | 6602 (93.7%) | No | 228 (51.4%) |
|  |  |  |  |  | Yes | 216 (48.6%) |
|  |  |  |  |  |  |  |
| 11 | ADHD_MEDS | Past 12 months, had prescribed medication to treat ADHD | categorical | 6604 (93.7%) | No | 210 (47.5%) |
|  |  |  |  |  | Yes | 232 (52.5%) |
|  |  |  |  |  |  |  |
| 12 | ADHD_MEDDIFF | Past 12 months, had difficulty getting ADHD prescription (not available) | categorical | 6814 (96.7%) | No | 91 (39.2%) |
|  |  |  |  |  | Yes | 141 (60.8%) |
|  |  |  |  |  |  |  |
| 13 | ADHD_MED_NSTM | ADHD medication type: Non Stimulant | categorical | 6844 (97.1%) | No | 175 (86.6%) |
|  |  |  |  |  | Yes | 27 (13.4%) |
|  |  |  |  |  |  |  |
| 14 | ADHD_MED_STM | ADHD medication type: Stimulant | categorical | 6844 (97.1%) | No | 50 (24.8%) |
|  |  |  |  |  | Yes | 152 (75.2%) |
|  |  |  |  |  |  |  |
| 15 | ADHD_MED_OLD | ADHD medication type: Off label | categorical | 6844 (97.1%) | No | 187 (92.6%) |
|  |  |  |  |  | Yes | 15 (7.4%) |
|  |  |  |  |  |  |  |
| 16 | ADHD_MED_OTH | ADHD medication type: Other medication not used for the treatment of ADHD | categorical | 0 (0.0%) | No | 7038 (99.9%) |
|  |  |  |  |  | Yes | 8 (0.1%) |
|  |  |  |  |  |  |  |
| 17 | ADHD_RXMED_C1 | Past 12 months, prescription medications taken for ADHD: Atoxometine | categorical | 6844 (97.1%) | No | 186 (92.1%) |
|  |  |  |  |  | Yes | 16 (7.9%) |
|  |  |  |  |  |  |  |
| 18 | ADHD_RXMED_C2 | Past 12 months, prescription medications taken for ADHD: Clonidine | categorical | 6844 (97.1%) | No | 201 (99.5%) |
|  |  |  |  |  | Yes | 1 (0.5%) |
|  |  |  |  |  |  |  |
| 19 | ADHD_RXMED_C3 | Past 12 months, prescription medications taken for ADHD: Guanfacine | categorical | 6844 (97.1%) | No | 194 (96.0%) |
|  |  |  |  |  | Yes | 8 (4.0%) |
|  |  |  |  |  |  |  |
| 20 | ADHD_RXMED_C4 | Past 12 months, prescription medications taken for ADHD: Viloxazine | categorical | 6844 (97.1%) | No | 199 (98.5%) |
|  |  |  |  |  | Yes | 3 (1.5%) |
|  |  |  |  |  |  |  |
| 21 | ADHD_RXMED_C5 | Past 12 months, prescription medications taken for ADHD: Dextroamphetamine | categorical | 6844 (97.1%) | No | 196 (97.0%) |
|  |  |  |  |  | Yes | 6 (3.0%) |
|  |  |  |  |  |  |  |
| 22 | ADHD_RXMED_C6 | Past 12 months, prescription medications taken for ADHD: Dexmethylphenidate | categorical | 6844 (97.1%) | No | 196 (97.0%) |
|  |  |  |  |  | Yes | 6 (3.0%) |
|  |  |  |  |  |  |  |
| 23 | ADHD_RXMED_C7 | Past 12 months, prescription medications taken for ADHD: Lisdexamfetamine | categorical | 6844 (97.1%) | No | 166 (82.2%) |
|  |  |  |  |  | Yes | 36 (17.8%) |
|  |  |  |  |  |  |  |
| 24 | ADHD_RXMED_C8 | Past 12 months, prescription medications taken for ADHD: Methylphenidate | categorical | 6844 (97.1%) | No | 170 (84.2%) |
|  |  |  |  |  | Yes | 32 (15.8%) |
|  |  |  |  |  |  |  |
| 25 | ADHD_RXMED_C9 | Past 12 months, prescription medications taken for ADHD: Methamphetamine | categorical | 6844 (97.1%) | No | 201 (99.5%) |
|  |  |  |  |  | Yes | 1 (0.5%) |
|  |  |  |  |  |  |  |
| 26 | ADHD_RXMED_C10 | Past 12 months, prescription medications taken for ADHD: Mixed amphetamine salts/amphetamine | categorical | 6844 (97.1%) | No | 107 (53.0%) |
|  |  |  |  |  | Yes | 95 (47.0%) |
|  |  |  |  |  |  |  |
| 27 | ADHD_OLD_C1 | Past 12 months, prescription medications taken for ADHD: Armodafinil | categorical | 6844 (97.1%) | No | 201 (99.5%) |
|  |  |  |  |  | Yes | 1 (0.5%) |
|  |  |  |  |  |  |  |
| 28 | ADHD_OLD_C2 | Past 12 months, prescription medications taken for ADHD: Bupropion | categorical | 6844 (97.1%) | No | 192 (95.0%) |
|  |  |  |  |  | Yes | 10 (5.0%) |
|  |  |  |  |  |  |  |
| 29 | ADHD_OLD_C3 | Past 12 months, prescription medications taken for ADHD: Modafinil | categorical | 6844 (97.1%) | No | 200 (99.0%) |
|  |  |  |  |  | Yes | 2 (1.0%) |
|  |  |  |  |  |  |  |
| 30 | ADHD_OLD_C4 | Past 12 months, prescription medications taken for ADHD: Venlafaxine | categorical | 6844 (97.1%) | No | 200 (99.0%) |
|  |  |  |  |  | Yes | 2 (1.0%) |
|  |  |  |  |  |  |  |
| 31 | ADHD_WM_NA | Did take prescription for ADHD | categorical | 6814 (96.7%) | No | 30 (12.9%) |
|  |  |  |  |  | Yes | 202 (87.1%) |
|  |  |  |  |  |  |  |
| 32 | ADHD_INS | Past 12 months, insurance paid any diagnostic or treatment costs for ADHD | categorical | 6610 (93.8%) | No | 169 (38.8%) |
|  |  |  |  |  | Yes | 267 (61.2%) |
|  |  |  |  |  |  |  |
| 33 | ADHD_TELE | Ever received telehealth services for ADHD | categorical | 6605 (93.7%) | No | 240 (54.4%) |
|  |  |  |  |  | Yes | 201 (45.6%) |
|  |  |  |  |  |  |  |
| 34 | ADHD_DIAG | Diagnosed ADHD during telehealth, in-person, or both | categorical | 6847 (97.2%) | Telehealth visits | 46 (23.1%) |
|  |  |  |  |  | In-person visits | 117 (58.8%) |
|  |  |  |  |  | Both telehealth and in-person visits | 36 (18.1%) |
|  |  |  |  |  |  |  |
| 35 | ADHD_FIRST | Since March 2020, used telehealth for first-time visit for ADHD | categorical | 6846 (97.2%) | No | 99 (49.5%) |
|  |  |  |  |  | Yes | 101 (50.5%) |
|  |  |  |  |  |  |  |
| 36 | ADHD_TELERX | Since March 2020, used telehealth for ADHD prescription | categorical | 6847 (97.2%) | No | 63 (31.7%) |
|  |  |  |  |  | Yes | 136 (68.3%) |
|  |  |  |  |  |  |  |
| 37 | ADHD_COUNSEL | Since March 2020, used telehealth for visit for counseling or therapy for ADHD | categorical | 6846 (97.2%) | No | 59 (29.5%) |
|  |  |  |  |  | Yes | 141 (70.5%) |
|  |  |  |  |  |  |  |
| 38 | ADHD_INSPAY | Any time since March 2020, insurance paid any costs for telehealth ADHD visits | categorical | 6865 (97.4%) | No | 32 (17.7%) |
|  |  |  |  |  | Yes | 149 (82.3%) |
|  |  |  |  |  |  |  |
| 39 | ADHD_RX3M | In next 3 months, plan another telehealth visit for ADHD prescription | categorical | 6930 (98.4%) | No | 38 (32.8%) |
|  |  |  |  |  | Yes | 78 (67.2%) |
|  |  |  |  |  |  |  |
| 40 | ADHD_CNSEL3M | In next 3 months, plan another telehealth visit for ADHD counseling/therapy | categorical | 6929 (98.3%) | No | 29 (24.8%) |
|  |  |  |  |  | Yes | 88 (75.2%) |
|  |  |  |  |  |  |  |
| 41 | SOC_ERRANDS | Difficulty doing errands alone | categorical | 35 (0.5%) | No difficulty | 5661 (80.7%) |
|  |  |  |  |  | Some difficulty | 1014 (14.5%) |
|  |  |  |  |  | A lot of difficulty | 266 (3.8%) |
|  |  |  |  |  | Cannot do this at all | 70 (1.0%) |
|  |  |  |  |  |  |  |
| 42 | SOC_PARACTIV | Difficulty participating in social activities | categorical | 67 (1.0%) | No difficulty | 5119 (73.3%) |
|  |  |  |  |  | Some difficulty | 1340 (19.2%) |
|  |  |  |  |  | A lot of difficulty | 439 (6.3%) |
|  |  |  |  |  | Cannot do this at all | 81 (1.2%) |
|  |  |  |  |  |  |  |
| 43 | SOC_PARACTIV_R | RECODE: Difficulty participating in social activities due to physical, mental, or emotional condition | categorical | 67 (1.0%) | No difficulty/some difficulty | 6459 (92.5%) |
|  |  |  |  |  | A lot of difficulty/cannot do this at all | 520 (7.5%) |
|  |  |  |  |  |  |  |
| 44 | SOC_SCWRKLIM | Work limited due to health problem | categorical | 38 (0.5%) | No | 5471 (78.1%) |
|  |  |  |  |  | Yes | 1537 (21.9%) |
|  |  |  |  |  |  |  |
| 45 | SOCWRKLMT | Any social/work limitation | categorical | 85 (1.2%) | No | 4456 (64.0%) |
|  |  |  |  |  | Yes | 2505 (36.0%) |
|  |  |  |  |  |  |  |
| 46 | PAY_BILL12M | Past 12 months, you or family have problems paying medical bills | categorical | 57 (0.8%) | No | 5896 (84.4%) |
|  |  |  |  |  | Yes | 1093 (15.6%) |
|  |  |  |  |  |  |  |
| 47 | PAY_PAYWORRY | Get sick or have accident, how worried about ability to pay bills | categorical | 27 (0.4%) | Very worried | 970 (13.8%) |
|  |  |  |  |  | Somewhat worried | 2736 (39.0%) |
|  |  |  |  |  | Not at all worried | 3313 (47.2%) |
|  |  |  |  |  |  |  |
| 48 | THC_TRANSPOR | Past 12 months, lack of reliable transportation | categorical | 50 (0.7%) | No | 6393 (91.4%) |
|  |  |  |  |  | Yes | 603 (8.6%) |
|  |  |  |  |  |  |  |
| 49 | THC_HOUSCOST | Past 12 months, unable to pay mortgage/rent/bills | categorical | 59 (0.8%) | No | 6107 (87.4%) |
|  |  |  |  |  | Yes | 880 (12.6%) |
|  |  |  |  |  |  |  |
| 50 | INT_ACCESS | Access to internet | categorical | 0 (0.0%) | No | 70 (1.0%) |
|  |  |  |  |  | Yes | 6976 (99.0%) |
|  |  |  |  |  |  |  |
| 51 | INT_HOMEACC | Access to internet from home | categorical | 80 (1.1%) | No | 121 (1.7%) |
|  |  |  |  |  | Yes | 6845 (98.3%) |
|  |  |  |  |  |  |  |
| 52 | INT_USEMED | Past 12 months, use internet to look for health or medical information | categorical | 84 (1.2%) | No | 1470 (21.1%) |
|  |  |  |  |  | Yes | 5492 (78.9%) |
|  |  |  |  |  |  |  |
| 53 | INT_USEDOC | Past 12 months, use internet to communicate with doctor/doctor’s office | categorical | 93 (1.3%) | No | 2434 (35.0%) |
|  |  |  |  |  | Yes | 4519 (65.0%) |
|  |  |  |  |  |  |  |
| 54 | INT_USETEST | Past 12 months, use internet to look up medical test results | categorical | 88 (1.2%) | No | 2292 (32.9%) |
|  |  |  |  |  | Yes | 4666 (67.1%) |
|  |  |  |  |  |  |  |
| 55 | ONL_SOCMED | How often use social media | categorical | 17 (0.2%) | Never | 1117 (15.9%) |
|  |  |  |  |  | Daily | 4264 (60.7%) |
|  |  |  |  |  | Weekly | 1128 (16.0%) |
|  |  |  |  |  | Monthly | 520 (7.4%) |
|  |  |  |  |  |  |  |
| 56 | ONL_GAMES | How often play online games | categorical | 119 (1.7%) | Never | 2904 (41.9%) |
|  |  |  |  |  | Daily | 2247 (32.4%) |
|  |  |  |  |  | Weekly | 1034 (14.9%) |
|  |  |  |  |  | Monthly | 742 (10.7%) |
|  |  |  |  |  |  |  |
| 57 | ONL_MSGBOARD | How often use forums and message boards | categorical | 51 (0.7%) | Never | 3621 (51.8%) |
|  |  |  |  |  | Daily | 931 (13.3%) |
|  |  |  |  |  | Weekly | 1098 (15.7%) |
|  |  |  |  |  | Monthly | 1345 (19.2%) |
|  |  |  |  |  |  |  |
| 58 | ONL_SOCISO | Agree/disagree: feel socially isolated when use social media | categorical | 1172 (16.6%) | Strongly agree | 212 (3.6%) |
|  |  |  |  |  | Somewhat agree | 1116 (19.0%) |
|  |  |  |  |  | Somewhat disagree | 2187 (37.2%) |
|  |  |  |  |  | Strongly disagree | 2359 (40.2%) |
|  |  |  |  |  |  |  |
| 59 | ONL_SOCCOM | Agree/disagree: feel member of community when use social media | categorical | 1555 (22.1%) | Strongly agree | 367 (6.7%) |
|  |  |  |  |  | Somewhat agree | 2641 (48.1%) |
|  |  |  |  |  | Somewhat disagree | 1577 (28.7%) |
|  |  |  |  |  | Strongly disagree | 906 (16.5%) |
|  |  |  |  |  |  |  |
| 60 | ONL_GAMESISO | Agree/disagree: feel socially isolated when play online games | categorical | 3077 (43.7%) | Strongly agree | 117 (2.9%) |
|  |  |  |  |  | Somewhat agree | 596 (15.0%) |
|  |  |  |  |  | Somewhat disagree | 1406 (35.4%) |
|  |  |  |  |  | Strongly disagree | 1850 (46.6%) |
|  |  |  |  |  |  |  |
| 61 | ONL_GAMESCOM | Agree/disagree: feel member of community when play online games | categorical | 3082 (43.7%) | Strongly agree | 282 (7.1%) |
|  |  |  |  |  | Somewhat agree | 1397 (35.2%) |
|  |  |  |  |  | Somewhat disagree | 1270 (32.0%) |
|  |  |  |  |  | Strongly disagree | 1015 (25.6%) |
|  |  |  |  |  |  |  |
| 62 | ONL_MSGISO | Agree/disagree: feel socially isolated when use online message boards | categorical | 3714 (52.7%) | Strongly agree | 74 (2.2%) |
|  |  |  |  |  | Somewhat agree | 490 (14.7%) |
|  |  |  |  |  | Somewhat disagree | 1495 (44.9%) |
|  |  |  |  |  | Strongly disagree | 1273 (38.2%) |
|  |  |  |  |  |  |  |
| 63 | ONL_MSGCOM | Agree/disagree: feel member of community when use online message boards | categorical | 3741 (53.1%) | Strongly agree | 263 (8.0%) |
|  |  |  |  |  | Somewhat agree | 1697 (51.3%) |
|  |  |  |  |  | Somewhat disagree | 916 (27.7%) |
|  |  |  |  |  | Strongly disagree | 429 (13.0%) |
|  |  |  |  |  |  |  |
| 64 | ACC_HTHLAST | Time since last saw doctor about your health | categorical | 16 (0.2%) | Never | 60 (0.9%) |
|  |  |  |  |  | Less than 12 months ago | 5859 (83.3%) |
|  |  |  |  |  | More than 1 year but less than 2 years ago | 534 (7.6%) |
|  |  |  |  |  | More than 2 years but less than 3 years ago | 209 (3.0%) |
|  |  |  |  |  | More than 3 years but less than 5 years ago | 153 (2.2%) |
|  |  |  |  |  | More than 5 years but less than 10 years ago | 135 (1.9%) |
|  |  |  |  |  | 10 years ago or more | 80 (1.1%) |
|  |  |  |  |  |  |  |
| 65 | ACC_HTHUSUAL | Have a usual place to go for care | categorical | 26 (0.4%) | Yes, there is a single place | 4119 (58.7%) |
|  |  |  |  |  | No, there is no place | 582 (8.3%) |
|  |  |  |  |  | Yes, there is more than one place | 2319 (33.0%) |
|  |  |  |  |  |  |  |
| 66 | ACC_HTHTYPE | Type of place for usual care | categorical | 618 (8.8%) | I do not go to one place most often | 89 (1.4%) |
|  |  |  |  |  | A doctor’s office or health center | 5333 (83.0%) |
|  |  |  |  |  | Urgent care center or clinic in a drug store or grocery store | 637 (9.9%) |
|  |  |  |  |  | Hospital emergency room | 169 (2.6%) |
|  |  |  |  |  | A VA medical center or VA outpatient clinic | 145 (2.3%) |
|  |  |  |  |  | Some other place | 55 (0.9%) |
|  |  |  |  |  |  |  |
| 67 | ACC_HOSP12M | Past 12 months, hospitalized overnight | categorical | 20 (0.3%) | No | 6400 (91.1%) |
|  |  |  |  |  | Yes | 626 (8.9%) |
|  |  |  |  |  |  |  |
| 68 | MED_RX12MA | Past 12 months, took prescription medicine | categorical | 29 (0.4%) | No | 1626 (23.2%) |
|  |  |  |  |  | Yes | 5391 (76.8%) |
|  |  |  |  |  |  |  |
| 69 | MED_RXSK12MA | Past 12 months, skipped medication doses to save money | categorical | 1668 (23.7%) | No | 4940 (91.9%) |
|  |  |  |  |  | Yes | 438 (8.1%) |
|  |  |  |  |  |  |  |
| 70 | MED_RXLS12MA | Past 12 months, took less medication to save money | categorical | 1672 (23.7%) | No | 4861 (90.5%) |
|  |  |  |  |  | Yes | 513 (9.5%) |
|  |  |  |  |  |  |  |
| 71 | MED_RXDL12MA | Past 12 months, delayed filling prescription to save money | categorical | 1670 (23.7%) | No | 4716 (87.7%) |
|  |  |  |  |  | Yes | 660 (12.3%) |
|  |  |  |  |  |  |  |
| 72 | MED_RXDG12MA | Past 12 months, didn’t get prescription due to cost | categorical | 25 (0.4%) | No | 6168 (87.9%) |
|  |  |  |  |  | Yes | 853 (12.1%) |
|  |  |  |  |  |  |  |
| 73 | CON_SEX12M | Past 12 months, sexual intercourse male partner | categorical | 5358 (76.0%) | No | 441 (26.1%) |
|  |  |  |  |  | Yes | 1247 (73.9%) |
|  |  |  |  |  |  |  |
| 74 | CON_BCIUD | Past 12 months, you/male partner used: IUD or implant | categorical | 5817 (82.6%) | No | 1000 (81.4%) |
|  |  |  |  |  | Yes | 229 (18.6%) |
|  |  |  |  |  |  |  |
| 75 | CON_BCSHOT | Past 12 months, you/male partner used: Birth control shot | categorical | 5817 (82.6%) | No | 1184 (96.3%) |
|  |  |  |  |  | Yes | 45 (3.7%) |
|  |  |  |  |  |  |  |
| 76 | CON_BCPILL | Past 12 months, you/male partner used: Birth control pill | categorical | 5817 (82.6%) | No | 993 (80.8%) |
|  |  |  |  |  | Yes | 236 (19.2%) |
|  |  |  |  |  |  |  |
| 77 | CON_BCEC | Past 12 months, you/male partner used: Emergency contraception | categorical | 5817 (82.6%) | No | 1188 (96.7%) |
|  |  |  |  |  | Yes | 41 (3.3%) |
|  |  |  |  |  |  |  |
| 78 | CON_BCSTERIL | Past 12 months, you/male partner used: Sterilization | categorical | 5817 (82.6%) | No | 973 (79.2%) |
|  |  |  |  |  | Yes | 256 (20.8%) |
|  |  |  |  |  |  |  |
| 79 | CON_BCOTHER | Past 12 months, you/male partner used: Other methods | categorical | 5817 (82.6%) | No | 944 (76.8%) |
|  |  |  |  |  | Yes | 285 (23.2%) |
|  |  |  |  |  |  |  |
| 80 | CON_BCNONE | Past 12 months, you/male partner used: No birth control methods | categorical | 5817 (82.6%) | No | 948 (77.1%) |
|  |  |  |  |  | Yes | 281 (22.9%) |
|  |  |  |  |  |  |  |
| 81 | CON_BCCHANGE | Past 12 months, changed or stopped birth control method | categorical | 6318 (89.7%) | No | 597 (82.0%) |
|  |  |  |  |  | Yes | 131 (18.0%) |
|  |  |  |  |  |  |  |
| 82 | CON_CHNGEWHYA | Past 12 months, why changed or stopped: Wanted more effective method | categorical | 6917 (98.2%) | No | 87 (67.4%) |
|  |  |  |  |  | Yes | 42 (32.6%) |
|  |  |  |  |  |  |  |
| 83 | CON_CHNGEWHYA_O | Order of questionnaire appearance: CON_CHNGEWHYA_O | categorical | 6915 (98.1%) | Displayed 1st | 13 (9.9%) |
|  |  |  |  |  | Displayed 2nd | 26 (19.8%) |
|  |  |  |  |  | Displayed 3rd | 18 (13.7%) |
|  |  |  |  |  | Displayed 4th | 19 (14.5%) |
|  |  |  |  |  | Displayed 5th | 16 (12.2%) |
|  |  |  |  |  | Displayed 6th | 20 (15.3%) |
|  |  |  |  |  | Displayed 7th | 19 (14.5%) |
|  |  |  |  |  |  |  |
| 84 | CON_CHNGEWHYB | Past 12 months, why changed or stopped: Wanted less expensive method | categorical | 6916 (98.2%) | No | 103 (79.2%) |
|  |  |  |  |  | Yes | 27 (20.8%) |
|  |  |  |  |  |  |  |
| 85 | CON_CHNGEWHYB_O | Order of questionnaire appearance: CON_CHNGEWHYB_O | categorical | 6915 (98.1%) | Displayed 1st | 13 (9.9%) |
|  |  |  |  |  | Displayed 2nd | 19 (14.5%) |
|  |  |  |  |  | Displayed 3rd | 18 (13.7%) |
|  |  |  |  |  | Displayed 4th | 26 (19.8%) |
|  |  |  |  |  | Displayed 5th | 16 (12.2%) |
|  |  |  |  |  | Displayed 6th | 22 (16.8%) |
|  |  |  |  |  | Displayed 7th | 17 (13.0%) |
|  |  |  |  |  |  |  |
| 86 | CON_CHNGEWHYC | Past 12 months, why changed or stopped: Did not like method | categorical | 6917 (98.2%) | No | 71 (55.0%) |
|  |  |  |  |  | Yes | 58 (45.0%) |
|  |  |  |  |  |  |  |
| 87 | CON_CHNGEWHYC_O | Order of questionnaire appearance: CON_CHNGEWHYC_O | categorical | 6915 (98.1%) | Displayed 1st | 17 (13.0%) |
|  |  |  |  |  | Displayed 2nd | 15 (11.5%) |
|  |  |  |  |  | Displayed 3rd | 17 (13.0%) |
|  |  |  |  |  | Displayed 4th | 18 (13.7%) |
|  |  |  |  |  | Displayed 5th | 25 (19.1%) |
|  |  |  |  |  | Displayed 6th | 18 (13.7%) |
|  |  |  |  |  | Displayed 7th | 21 (16.0%) |
|  |  |  |  |  |  |  |
| 88 | CON_CHNGEWHYD | Past 12 months, why changed or stopped: Changes in access to method | categorical | 6917 (98.2%) | No | 106 (82.2%) |
|  |  |  |  |  | Yes | 23 (17.8%) |
|  |  |  |  |  |  |  |
| 89 | CON_CHNGEWHYD_O | Order of questionnaire appearance: CON_CHNGEWHYD_O | categorical | 6915 (98.1%) | Displayed 1st | 20 (15.3%) |
|  |  |  |  |  | Displayed 2nd | 15 (11.5%) |
|  |  |  |  |  | Displayed 3rd | 30 (22.9%) |
|  |  |  |  |  | Displayed 4th | 18 (13.7%) |
|  |  |  |  |  | Displayed 5th | 18 (13.7%) |
|  |  |  |  |  | Displayed 6th | 15 (11.5%) |
|  |  |  |  |  | Displayed 7th | 15 (11.5%) |
|  |  |  |  |  |  |  |
| 90 | CON_CHNGEWHYE | Past 12 months, why changed or stopped: Concerns about access to method | categorical | 6917 (98.2%) | No | 106 (82.2%) |
|  |  |  |  |  | Yes | 23 (17.8%) |
|  |  |  |  |  |  |  |
| 91 | CON_CHNGEWHYE_O | Order of questionnaire appearance: CON_CHNGEWHYE_O | categorical | 6915 (98.1%) | Displayed 1st | 25 (19.1%) |
|  |  |  |  |  | Displayed 2nd | 16 (12.2%) |
|  |  |  |  |  | Displayed 3rd | 18 (13.7%) |
|  |  |  |  |  | Displayed 4th | 23 (17.6%) |
|  |  |  |  |  | Displayed 5th | 24 (18.3%) |
|  |  |  |  |  | Displayed 6th | 10 (7.6%) |
|  |  |  |  |  | Displayed 7th | 15 (11.5%) |
|  |  |  |  |  |  |  |
| 92 | CON_CHNGEWHYF | Past 12 months, why changed or stopped: Concerns about privacy | categorical | 6918 (98.2%) | No | 112 (87.5%) |
|  |  |  |  |  | Yes | 16 (12.5%) |
|  |  |  |  |  |  |  |
| 93 | CON_CHNGEWHYF_O | Order of questionnaire appearance: CON_CHNGEWHYF_O | categorical | 6915 (98.1%) | Displayed 1st | 20 (15.3%) |
|  |  |  |  |  | Displayed 2nd | 20 (15.3%) |
|  |  |  |  |  | Displayed 3rd | 21 (16.0%) |
|  |  |  |  |  | Displayed 4th | 12 (9.2%) |
|  |  |  |  |  | Displayed 5th | 20 (15.3%) |
|  |  |  |  |  | Displayed 6th | 24 (18.3%) |
|  |  |  |  |  | Displayed 7th | 14 (10.7%) |
|  |  |  |  |  |  |  |
| 94 | CON_CHNGEWHYG | Past 12 months, why changed or stopped: Wanted to become pregnant | categorical | 6918 (98.2%) | No | 89 (69.5%) |
|  |  |  |  |  | Yes | 39 (30.5%) |
|  |  |  |  |  |  |  |
| 95 | CON_CHNGEWHYG_O | Order of questionnaire appearance: CON_CHNGEWHYG_O | categorical | 6915 (98.1%) | Displayed 1st | 23 (17.6%) |
|  |  |  |  |  | Displayed 2nd | 20 (15.3%) |
|  |  |  |  |  | Displayed 3rd | 9 (6.9%) |
|  |  |  |  |  | Displayed 4th | 15 (11.5%) |
|  |  |  |  |  | Displayed 5th | 12 (9.2%) |
|  |  |  |  |  | Displayed 6th | 22 (16.8%) |
|  |  |  |  |  | Displayed 7th | 30 (22.9%) |
|  |  |  |  |  |  |  |
| 96 | CON_CHNGEWHYH | Past 12 months, why changed or stopped: For another reason | categorical | 6917 (98.2%) | No | 50 (38.8%) |
|  |  |  |  |  | Yes | 79 (61.2%) |
|  |  |  |  |  |  |  |
| 97 | CON_CHNGEWHYH_O | Order of questionnaire appearance: CON_CHNGEWHYH_O | categorical | 6915 (98.1%) | Displayed 8th | 131 (100.0%) |
|  |  |  |  |  |  |  |
| 98 | CON_IUD12M | Past 12 months, how difficult to obtain IUD | categorical | 6818 (96.8%) | Did not try to obtain an IUD or implant in the last 12 months | 99 (43.4%) |
|  |  |  |  |  | More difficult | 20 (8.8%) |
|  |  |  |  |  | Less difficult | 7 (3.1%) |
|  |  |  |  |  | Stayed the same | 102 (44.7%) |
|  |  |  |  |  |  |  |
| 99 | CON_SHOTS12M | Past 12 months, how difficult to obtain birth control shots | categorical | 7001 (99.4%) | Did not try to obtain birth control shots in the last 12 months | 4 (8.9%) |
|  |  |  |  |  | More difficult | 6 (13.3%) |
|  |  |  |  |  | Less difficult | 5 (11.1%) |
|  |  |  |  |  | Stayed the same | 30 (66.7%) |
|  |  |  |  |  |  |  |
| 100 | CON_BCPILLS12M | Past 12 months, how difficult to obtain birth control pills | categorical | 6811 (96.7%) | Did not try to obtain birth control pills in the last 12 months | 2 (0.9%) |
|  |  |  |  |  | More difficult | 21 (8.9%) |
|  |  |  |  |  | Less difficult | 10 (4.3%) |
|  |  |  |  |  | Stayed the same | 202 (86.0%) |
|  |  |  |  |  |  |  |
| 101 | CON_EMERG12M | Past 12 months, how difficult to obtain emergency contraception | categorical | 7005 (99.4%) | Did not try to obtain emergency contraception in the last 12 months | 2 (4.9%) |
|  |  |  |  |  | More difficult | 7 (17.1%) |
|  |  |  |  |  | Less difficult | 2 (4.9%) |
|  |  |  |  |  | Stayed the same | 30 (73.2%) |
|  |  |  |  |  |  |  |
| 102 | PAI_FREQ3M | Past 3 months, how often pain | categorical | 26 (0.4%) | Never | 1469 (20.9%) |
|  |  |  |  |  | Some days | 3499 (49.8%) |
|  |  |  |  |  | Most days | 1067 (15.2%) |
|  |  |  |  |  | Every day | 985 (14.0%) |
|  |  |  |  |  |  |  |
| 103 | PAI_AMNT | Last time, how much pain | categorical | 1512 (21.5%) | A little | 2615 (47.3%) |
|  |  |  |  |  | A lot | 1017 (18.4%) |
|  |  |  |  |  | Somewhere in between a little and a lot | 1902 (34.4%) |
|  |  |  |  |  |  |  |
| 104 | PAI_WKLM3M | Past 3 months, pain limit activities | categorical | 1825 (25.9%) | Never | 2132 (40.8%) |
|  |  |  |  |  | Some days | 2383 (45.6%) |
|  |  |  |  |  | Most days | 425 (8.1%) |
|  |  |  |  |  | Every day | 281 (5.4%) |
|  |  |  |  |  |  |  |
| 105 | CPN_MEDCARE | Receiving care for chronic pain | categorical | 5122 (72.7%) | No | 1000 (52.0%) |
|  |  |  |  |  | Yes | 924 (48.0%) |
|  |  |  |  |  |  |  |
| 106 | CPN_TRTDEC | Past 12 months, provider made treatment decisions for chronic pain | categorical | 6125 (86.9%) | No | 178 (19.3%) |
|  |  |  |  |  | Yes | 743 (80.7%) |
|  |  |  |  |  |  |  |
| 107 | CPN_RESPECT | Past 12 months, provider treated with respect | categorical | 6311 (89.6%) | Never | 8 (1.1%) |
|  |  |  |  |  | Sometimes | 64 (8.7%) |
|  |  |  |  |  | Usually | 133 (18.1%) |
|  |  |  |  |  | Always | 530 (72.1%) |
|  |  |  |  |  |  |  |
| 108 | CPN_LISTEN | Past 12 months, provider listened | categorical | 6314 (89.6%) | Never | 8 (1.1%) |
|  |  |  |  |  | Sometimes | 61 (8.3%) |
|  |  |  |  |  | Usually | 155 (21.2%) |
|  |  |  |  |  | Always | 508 (69.4%) |
|  |  |  |  |  |  |  |
| 109 | CPN_OPINION | Past 12 months, provider asked your opinion | categorical | 6313 (89.6%) | Never | 86 (11.7%) |
|  |  |  |  |  | Sometimes | 129 (17.6%) |
|  |  |  |  |  | Usually | 190 (25.9%) |
|  |  |  |  |  | Always | 328 (44.7%) |
|  |  |  |  |  |  |  |
| 110 | HRD_ONLPILLS | Ever ordered prescription medications online without prescription | categorical | 37 (0.5%) | No | 6723 (95.9%) |
|  |  |  |  |  | Yes | 286 (4.1%) |
|  |  |  |  |  |  |  |
| 111 | HRD_CONCERNA | Online prescriptions, concerned about ingredients | categorical | 6761 (96.0%) | Not at all concerned | 117 (41.1%) |
|  |  |  |  |  | A little concerned | 101 (35.4%) |
|  |  |  |  |  | Somewhat concerned | 50 (17.5%) |
|  |  |  |  |  | Very concerned | 17 (6.0%) |
|  |  |  |  |  |  |  |
| 112 | HRD_CONCERNB | Online prescriptions, would be concerned about ingredients | categorical | 372 (5.3%) | Not at all concerned | 514 (7.7%) |
|  |  |  |  |  | A little concerned | 861 (12.9%) |
|  |  |  |  |  | Somewhat concerned | 1359 (20.4%) |
|  |  |  |  |  | Very concerned | 3940 (59.0%) |
|  |  |  |  |  |  |  |
| 113 | HRD_NALOXONE | Heard of Narcan | categorical | 30 (0.4%) | No | 1744 (24.9%) |
|  |  |  |  |  | Yes | 5272 (75.1%) |
|  |  |  |  |  |  |  |
| 114 | HRD_NALOTC | Know Narcan now OTC | categorical | 1800 (25.5%) | No | 2456 (46.8%) |
|  |  |  |  |  | Yes | 2790 (53.2%) |
|  |  |  |  |  |  |  |
| 115 | HRD_GETNACOM | Know Narcan at community harm reduction organization | categorical | 1803 (25.6%) | No | 3604 (68.7%) |
|  |  |  |  |  | Yes | 1639 (31.3%) |
|  |  |  |  |  |  |  |
| 116 | HRD_GETNADR | Know Narcan at doctor’s office | categorical | 1814 (25.7%) | No | 2790 (53.3%) |
|  |  |  |  |  | Yes | 2442 (46.7%) |
|  |  |  |  |  |  |  |
| 117 | HRD_GETNAHD | Know Narcan at health department | categorical | 1819 (25.8%) | No | 2968 (56.8%) |
|  |  |  |  |  | Yes | 2259 (43.2%) |
|  |  |  |  |  |  |  |
| 118 | HRD_GETNARX | Know Narcan at pharmacy | categorical | 1801 (25.6%) | No | 1858 (35.4%) |
|  |  |  |  |  | Yes | 3387 (64.6%) |
|  |  |  |  |  |  |  |
| 119 | HRD_CARRYNAL | Carries Narcan | categorical | 1788 (25.4%) | No | 4979 (94.7%) |
|  |  |  |  |  | Yes | 279 (5.3%) |
|  |  |  |  |  |  |  |
| 120 | HRD_DKWRK | Why think people don’t carry Narcan: Do not think Narcan works | categorical | 2268 (32.2%) | No | 4336 (90.7%) |
|  |  |  |  |  | Yes | 442 (9.3%) |
|  |  |  |  |  |  |  |
| 121 | HRD_DKUSE | Why think people don’t carry Narcan: Do not know how to use Narcan | categorical | 2225 (31.6%) | No | 1934 (40.1%) |
|  |  |  |  |  | Yes | 2887 (59.9%) |
|  |  |  |  |  |  |  |
| 122 | HRD_DKWHERE | Why think people don’t carry Narcan: Do not know where to get Narcan | categorical | 2212 (31.4%) | No | 1572 (32.5%) |
|  |  |  |  |  | Yes | 3262 (67.5%) |
|  |  |  |  |  |  |  |
| 123 | HRD_NABUS | Narcan should be available at businesses | categorical | 1875 (26.6%) | No | 2296 (44.4%) |
|  |  |  |  |  | Yes | 2875 (55.6%) |
|  |  |  |  |  |  |  |
| 124 | HRD_NACOL | Narcan should be available at college or university campuses | categorical | 1847 (26.2%) | No | 799 (15.4%) |
|  |  |  |  |  | Yes | 4400 (84.6%) |
|  |  |  |  |  |  |  |
| 125 | HRD_NAELMMD | Narcan should be available at elementary and middle schools | categorical | 1874 (26.6%) | No | 2192 (42.4%) |
|  |  |  |  |  | Yes | 2980 (57.6%) |
|  |  |  |  |  |  |  |
| 126 | HRD_NAHS | Narcan should be available at high schools | categorical | 1863 (26.4%) | No | 1079 (20.8%) |
|  |  |  |  |  | Yes | 4104 (79.2%) |
|  |  |  |  |  |  |  |
| 127 | HRD_NAWRSHP | Narcan should be available at places of worship | categorical | 1878 (26.7%) | No | 2324 (45.0%) |
|  |  |  |  |  | Yes | 2844 (55.0%) |
|  |  |  |  |  |  |  |
| 128 | HRD_NALIB | Narcan should be available at public libraries | categorical | 1875 (26.6%) | No | 2091 (40.4%) |
|  |  |  |  |  | Yes | 3080 (59.6%) |
|  |  |  |  |  |  |  |
| 129 | HRD_RELDRUG | Agree/disagree: would be comfortable in committed relationship with prescription misuse or illegal drug use | categorical | 59 (0.8%) | Strongly agree | 152 (2.2%) |
|  |  |  |  |  | Somewhat agree | 300 (4.3%) |
|  |  |  |  |  | Somewhat disagree | 675 (9.7%) |
|  |  |  |  |  | Strongly disagree | 5860 (83.9%) |
|  |  |  |  |  |  |  |
| 130 | HRD_BLAME | Agree/disagree: person who misuses prescriptions or uses illegal drugs to blame | categorical | 119 (1.7%) | Strongly agree | 1848 (26.7%) |
|  |  |  |  |  | Somewhat agree | 2815 (40.6%) |
|  |  |  |  |  | Somewhat disagree | 1562 (22.5%) |
|  |  |  |  |  | Strongly disagree | 702 (10.1%) |
|  |  |  |  |  |  |  |
| 131 | HRD_JOBDRUG | Agree/disagree: would work closely with person who misuses prescriptions or uses illegal drugs | categorical | 159 (2.3%) | Strongly agree | 189 (2.7%) |
|  |  |  |  |  | Somewhat agree | 849 (12.3%) |
|  |  |  |  |  | Somewhat disagree | 2001 (29.1%) |
|  |  |  |  |  | Strongly disagree | 3848 (55.9%) |
|  |  |  |  |  |  |  |
| 132 | IMM_SHTPNUEV | Ever had pneumonia shot | categorical | 67 (1.0%) | No | 4026 (57.7%) |
|  |  |  |  |  | Yes | 2953 (42.3%) |
|  |  |  |  |  |  |  |
| 133 | IMM_SHTFLU12 | Past 12 months, had flu vaccine | categorical | 55 (0.8%) | No | 3271 (46.8%) |
|  |  |  |  |  | Yes | 3720 (53.2%) |
|  |  |  |  |  |  |  |
| 134 | MTL_MHRXA | Past 12 months, took prescription medication for mental health | categorical | 79 (1.1%) | No | 5490 (78.8%) |
|  |  |  |  |  | Yes | 1477 (21.2%) |
|  |  |  |  |  |  |  |
| 135 | MTL_MHTHRPY | Past 12 months, received counseling/therapy from mental health professional | categorical | 68 (1.0%) | No | 5941 (85.1%) |
|  |  |  |  |  | Yes | 1037 (14.9%) |
|  |  |  |  |  |  |  |
| 136 | MTL_MHTPYNOW | Currently receiving counseling/therapy from mental health professional | categorical | 6013 (85.3%) | No | 372 (36.0%) |
|  |  |  |  |  | Yes | 661 (64.0%) |
|  |  |  |  |  |  |  |
| 137 | HCA_MHTHDLY | Past 12 months, delayed getting counseling/therapy due to cost | categorical | 68 (1.0%) | No | 6261 (89.7%) |
|  |  |  |  |  | Yes | 717 (10.3%) |
|  |  |  |  |  |  |  |
| 138 | HCA_MHTND | Past 12 months, did not get counseling/therapy due to cost | categorical | 80 (1.1%) | No | 6229 (89.4%) |
|  |  |  |  |  | Yes | 737 (10.6%) |
|  |  |  |  |  |  |  |
| 139 | MTH_PHQ41 | Past 2 weeks, little interest or pleasure | categorical | 45 (0.6%) | Not at all | 4499 (64.3%) |
|  |  |  |  |  | Several days | 1776 (25.4%) |
|  |  |  |  |  | More than half the days | 441 (6.3%) |
|  |  |  |  |  | Nearly every day | 285 (4.1%) |
|  |  |  |  |  |  |  |
| 140 | MTH_PHQ42 | Past 2 weeks, down, depressed, or hopeless | categorical | 55 (0.8%) | Not at all | 4571 (65.4%) |
|  |  |  |  |  | Several days | 1780 (25.5%) |
|  |  |  |  |  | More than half the days | 371 (5.3%) |
|  |  |  |  |  | Nearly every day | 269 (3.8%) |
|  |  |  |  |  |  |  |
| 141 | MTH_PHQ43 | Past 2 weeks, nervous, anxious, or on edge | categorical | 46 (0.7%) | Not at all | 3908 (55.8%) |
|  |  |  |  |  | Several days | 2209 (31.6%) |
|  |  |  |  |  | More than half the days | 497 (7.1%) |
|  |  |  |  |  | Nearly every day | 386 (5.5%) |
|  |  |  |  |  |  |  |
| 142 | MTH_PHQ44 | Past 2 weeks, unable to stop/control worrying | categorical | 50 (0.7%) | Not at all | 4525 (64.7%) |
|  |  |  |  |  | Several days | 1673 (23.9%) |
|  |  |  |  |  | More than half the days | 406 (5.8%) |
|  |  |  |  |  | Nearly every day | 392 (5.6%) |
|  |  |  |  |  |  |  |
| 143 | GAD2SCREEN | GAD-2 screener result | categorical | 60 (0.9%) | Positive | 1014 (14.5%) |
|  |  |  |  |  | Negative | 5972 (85.5%) |
|  |  |  |  |  |  |  |
| 144 | PHQ2SCREEN | PHQ-2 screener result | categorical | 68 (1.0%) | Positive | 816 (11.7%) |
|  |  |  |  |  | Negative | 6162 (88.3%) |
|  |  |  |  |  |  |  |
| 145 | CIG_SMKEV | Ever smoked 100 cigarettes in entire life | categorical | 31 (0.4%) | No | 4376 (62.4%) |
|  |  |  |  |  | Yes | 2639 (37.6%) |
|  |  |  |  |  |  |  |
| 146 | CIG_SMKNOW | How often now smoke cigarettes | categorical | 4414 (62.6%) | Every day | 520 (19.8%) |
|  |  |  |  |  | Some days | 213 (8.1%) |
|  |  |  |  |  | Not at all | 1899 (72.2%) |
|  |  |  |  |  |  |  |
| 147 | SWM_SKILLLVL | Swimming skill level | categorical | 36 (0.5%) | I do not know how to swim | 939 (13.4%) |
|  |  |  |  |  | I am comfortable in water where I can stand up | 1167 (16.6%) |
|  |  |  |  |  | I can swim in water over my head | 2263 (32.3%) |
|  |  |  |  |  | I can swim multiple strokes efficiently | 2641 (37.7%) |
|  |  |  |  |  |  |  |
| 148 | SWM_PRVLESS | Ever taken private swim lessons from professional instructor | categorical | 39 (0.6%) | No | 5938 (84.7%) |
|  |  |  |  |  | Yes | 1069 (15.3%) |
|  |  |  |  |  |  |  |
| 149 | SWM_GRPLESS | Ever taken group swim lessons from professional instructor | categorical | 36 (0.5%) | No | 4440 (63.3%) |
|  |  |  |  |  | Yes | 2570 (36.7%) |
|  |  |  |  |  |  |  |
| 150 | SWM_FRREL | Learned to swim friend or relative | categorical | 980 (13.9%) | No | 3318 (54.7%) |
|  |  |  |  |  | Yes | 2748 (45.3%) |
|  |  |  |  |  |  |  |
| 151 | SWM_TCHSELF | Taught self to swim | categorical | 981 (13.9%) | No | 3589 (59.2%) |
|  |  |  |  |  | Yes | 2476 (40.8%) |
|  |  |  |  |  |  |  |
| 152 | SWM_EVERLESS | Ever taken swim lesson | categorical | 2856 (40.5%) | No | 3604 (86.0%) |
|  |  |  |  |  | Yes | 586 (14.0%) |
|  |  |  |  |  |  |  |
| 153 | SWM_DAYSPOOL | Past 6 months, days spent in or around swimming pool | categorical | 30 (0.4%) | Never | 3445 (49.1%) |
|  |  |  |  |  | 1-6 days | 1938 (27.6%) |
|  |  |  |  |  | 7-12 days | 608 (8.7%) |
|  |  |  |  |  | 13 or more days | 1025 (14.6%) |
|  |  |  |  |  |  |  |
| 154 | SWM_ALCPOOL | For days at pool, how many drank alcohol | categorical | 3501 (49.7%) | Never | 2095 (59.1%) |
|  |  |  |  |  | Every time | 181 (5.1%) |
|  |  |  |  |  | More than half the time | 414 (11.7%) |
|  |  |  |  |  | Less than half the time | 855 (24.1%) |
|  |  |  |  |  |  |  |
| 155 | SWM_DAYSBOAT | Past 6 months, days on boat or water (not pool) | categorical | 57 (0.8%) | Never | 3813 (54.6%) |
|  |  |  |  |  | 1-6 days | 1940 (27.8%) |
|  |  |  |  |  | 7-12 days | 582 (8.3%) |
|  |  |  |  |  | 13 or more days | 654 (9.4%) |
|  |  |  |  |  |  |  |
| 156 | SWM_ALCBOAT | For days on boat or water, how many drank alcohol | categorical | 3885 (55.1%) | Never | 1806 (57.1%) |
|  |  |  |  |  | Every time | 165 (5.2%) |
|  |  |  |  |  | More than half the time | 404 (12.8%) |
|  |  |  |  |  | Less than half the time | 786 (24.9%) |
|  |  |  |  |  |  |  |
| 157 | SWM_CPR | Trained in CPR | categorical | 39 (0.6%) | No | 4031 (57.5%) |
|  |  |  |  |  | Yes | 2976 (42.5%) |
|  |  |  |  |  |  |  |
| 158 | SWM_CPR2Y | Past 2 years, CPR training | categorical | 4097 (58.1%) | No | 1820 (61.7%) |
|  |  |  |  |  | Yes | 1129 (38.3%) |
|  |  |  |  |  |  |  |
| 159 | SWM_HELPDRWN | Ever trained to save drowning person | categorical | 464 (6.6%) | No | 4478 (68.0%) |
|  |  |  |  |  | Yes | 2104 (32.0%) |
|  |  |  |  |  |  |  |
| 160 | SUI_THKSUI12 | Past 12 months, seriously thought about suicide | categorical | 36 (0.5%) | No | 6595 (94.1%) |
|  |  |  |  |  | Yes | 415 (5.9%) |
|  |  |  |  |  |  |  |
| 161 | SUI_KNOWSUI | Know someone that died by suicide | categorical | 62 (0.9%) | No | 3688 (52.8%) |
|  |  |  |  |  | Yes | 3296 (47.2%) |
|  |  |  |  |  |  |  |
| 162 | TSV_PHOTOEV | Someone has shared sexual content of me without consent | categorical | 40 (0.6%) | No | 6698 (95.6%) |
|  |  |  |  |  | Yes | 308 (4.4%) |
|  |  |  |  |  |  |  |
| 163 | TSV_THREATEV | Someone has threatened to share sexual content of me without consent | categorical | 44 (0.6%) | No | 6681 (95.4%) |
|  |  |  |  |  | Yes | 321 (4.6%) |
|  |  |  |  |  |  |  |
| 164 | TSV_THRTPIC | Nature of threat, take or send sexual content of self | categorical | 6727 (95.5%) | No | 205 (64.3%) |
|  |  |  |  |  | Yes | 114 (35.7%) |
|  |  |  |  |  |  |  |
| 165 | TSV_THRTSEX | Nature of threat, have sexual relationship | categorical | 6729 (95.5%) | No | 205 (64.7%) |
|  |  |  |  |  | Yes | 112 (35.3%) |
|  |  |  |  |  |  |  |
| 166 | TSV_THRTPAY | Nature of threat, pay money | categorical | 6729 (95.5%) | No | 163 (51.4%) |
|  |  |  |  |  | Yes | 154 (48.6%) |
|  |  |  |  |  |  |  |
| 167 | TSV_THRTREL | Nature of threat, stay in relationship | categorical | 6729 (95.5%) | No | 197 (62.1%) |
|  |  |  |  |  | Yes | 120 (37.9%) |
|  |  |  |  |  |  |  |
| 168 | TSV_THRTOTH | Nature of threat, other | categorical | 6731 (95.5%) | No | 217 (68.9%) |
|  |  |  |  |  | Yes | 98 (31.1%) |
|  |  |  |  |  |  |  |
| 169 | TSV_FAKEPORN | Anyone ever used technology for fake porn of you without consent | categorical | 47 (0.7%) | No | 6906 (98.7%) |
|  |  |  |  |  | Yes | 93 (1.3%) |
|  |  |  |  |  |  |  |
| 170 | EMP_EMPLOY | Last week worked for pay at job or business | categorical | 55 (0.8%) | No | 3345 (47.8%) |
|  |  |  |  |  | Yes | 3646 (52.2%) |
|  |  |  |  |  |  |  |
| 171 | EMP_ABSENTWK | Had a job/business last week but temporarily absent | categorical | 3734 (53.0%) | No | 3199 (96.6%) |
|  |  |  |  |  | Yes | 113 (3.4%) |
|  |  |  |  |  |  |  |
| 173 | EMP_WHYNOWRK | Main reason not working for pay last week | categorical | 3879 (55.1%) | Unemployed, laid off, looking for work | 242 (7.6%) |
|  |  |  |  |  | Seasonal/contract work | 55 (1.7%) |
|  |  |  |  |  | Retired | 1779 (56.2%) |
|  |  |  |  |  | Unable to work for health reasons/disabled | 401 (12.7%) |
|  |  |  |  |  | Taking care of house or family | 294 (9.3%) |
|  |  |  |  |  | Going to school | 122 (3.9%) |
|  |  |  |  |  | Working at a family-owned job or business, but not for pay | 24 (0.8%) |
|  |  |  |  |  | Other | 250 (7.9%) |
|  |  |  |  |  |  |  |
| 174 | EMP_WHENWRK | Last time worked | categorical | 111 (1.6%) | Within the past 12 months | 4437 (64.0%) |
|  |  |  |  |  | 1-5 years ago | 736 (10.6%) |
|  |  |  |  |  | Over 5 years ago | 1601 (23.1%) |
|  |  |  |  |  | Never worked | 161 (2.3%) |
|  |  |  |  |  |  |  |
| 175 | EMPWRKLSWK | DERIVED: Worked last week | categorical | 88 (1.2%) | Did not work | 3120 (44.8%) |
|  |  |  |  |  | Worked, Temp Absent, Seasonal, Family Job-no pay | 3838 (55.2%) |
|  |  |  |  |  |  |  |
| 176 | HPF_EVERUSE | Ever used hearing protection for loud noise at work | categorical | 40 (0.6%) | No | 2979 (42.5%) |
|  |  |  |  |  | Yes | 2188 (31.2%) |
|  |  |  |  |  | I have never worked around loud noises | 1839 (26.2%) |
|  |  |  |  |  |  |  |
| 177 | HPF_KNOWFIT | Knew about fit-testing for hearing protection | categorical | 73 (1.0%) | No | 4316 (61.9%) |
|  |  |  |  |  | Yes | 2657 (38.1%) |
|  |  |  |  |  |  |  |
| 178 | HPF_EVERFIT | Ever had fit-testing for hearing protection | categorical | 5796 (82.3%) | No | 947 (75.8%) |
|  |  |  |  |  | Yes | 303 (24.2%) |
|  |  |  |  |  |  |  |
| 179 | HPF_IMPORT | How important having hearing protection fit-tested: ever heard of before | categorical | 4398 (62.4%) | Not at all important | 98 (3.7%) |
|  |  |  |  |  | Somewhat important | 1083 (40.9%) |
|  |  |  |  |  | Very important | 1467 (55.4%) |
|  |  |  |  |  |  |  |
| 180 | HPF_IMPORTDK | How important having hearing protection fit-tested: not heard of before | categorical | 2702 (38.3%) | Not at all important | 147 (3.4%) |
|  |  |  |  |  | Somewhat important | 1691 (38.9%) |
|  |  |  |  |  | Very important | 2506 (57.7%) |
|  |  |  |  |  |  |  |
| 181 | MAR_MARITAL | Now married, living with a partner, or neither | categorical | 28 (0.4%) | Married | 3804 (54.2%) |
|  |  |  |  |  | Living with a partner together as an unmarried couple | 759 (10.8%) |
|  |  |  |  |  | Neither | 2455 (35.0%) |
|  |  |  |  |  |  |  |
| 182 | MAR_EVMARRY | Ever been married | categorical | 3841 (54.5%) | No | 1794 (56.0%) |
|  |  |  |  |  | Yes | 1411 (44.0%) |
|  |  |  |  |  |  |  |
| 183 | MAR_LEGAL | Current legal marital status | categorical | 6770 (96.1%) | Married | 13 (4.7%) |
|  |  |  |  |  | Widowed | 46 (16.7%) |
|  |  |  |  |  | Divorced | 195 (70.7%) |
|  |  |  |  |  | Separated | 22 (8.0%) |
|  |  |  |  |  |  |  |
| 184 | MAR_WIDIVSEP | Widowed, divorced or separated | categorical | 5924 (84.1%) | Widowed | 388 (34.6%) |
|  |  |  |  |  | Divorced | 682 (60.8%) |
|  |  |  |  |  | Separated | 52 (4.6%) |
|  |  |  |  |  |  |  |
| 185 | MARSTAT | DERIVED: Current marital status | categorical | 46 (0.7%) | Married | 3804 (54.3%) |
|  |  |  |  |  | Widowed | 388 (5.5%) |
|  |  |  |  |  | Divorced | 682 (9.7%) |
|  |  |  |  |  | Separated | 52 (0.7%) |
|  |  |  |  |  | Never Married | 1315 (18.8%) |
|  |  |  |  |  | Living with partner | 759 (10.8%) |
|  |  |  |  |  |  |  |
| 186 | LEGMSTAT | DERIVED: Legal marital status | categorical | 46 (0.7%) | Separated | 74 (1.1%) |
|  |  |  |  |  | Divorced | 877 (12.5%) |
|  |  |  |  |  | Married | 3817 (54.5%) |
|  |  |  |  |  | Single/Never Married | 1798 (25.7%) |
|  |  |  |  |  | Widowed | 434 (6.2%) |
|  |  |  |  |  |  |  |
| 187 | MARITAL | RECODE: Current Marriage Status - 2 levels | categorical | 46 (0.7%) | Married | 3804 (54.3%) |
|  |  |  |  |  | Not married | 3196 (45.7%) |
|  |  |  |  |  |  |  |
| 188 | CIV_VOL12M | Past 12 months, volunteer activities | categorical | 60 (0.9%) | No | 4787 (68.5%) |
|  |  |  |  |  | Yes | 2199 (31.5%) |
|  |  |  |  |  |  |  |
| 189 | CIV_VOLOTH | Past 12 months, activities at schools or youth organizations | categorical | 2293 (32.5%) | No | 4394 (92.4%) |
|  |  |  |  |  | Yes | 359 (7.6%) |
|  |  |  |  |  |  |  |
| 190 | CIV_MEET | Past 12 months, attend local public meeting | categorical | 70 (1.0%) | No | 6053 (86.8%) |
|  |  |  |  |  | Yes | 923 (13.2%) |
|  |  |  |  |  |  |  |
| 191 | CIV_VOTELOCL | Vote in last local elections | categorical | 76 (1.1%) | No | 2590 (37.2%) |
|  |  |  |  |  | Yes | 4380 (62.8%) |
|  |  |  |  |  |  |  |
| 192 | CIVIC_ENGAGE | RECODE: Civic engagement including volunteering | categorical | 112 (1.6%) | Yes | 5039 (72.7%) |
|  |  |  |  |  | No | 1895 (27.3%) |
|  |  |  |  |  |  |  |
| 193 | LAN_OTHERLAN | Speak language other than English at home | categorical | 65 (0.9%) | No | 5775 (82.7%) |
|  |  |  |  |  | Yes | 1206 (17.3%) |
|  |  |  |  |  |  |  |
| 194 | LAN_MEDIA | What language use most often when watching television, read news, listen to radio | categorical | 5847 (83.0%) | English | 767 (64.0%) |
|  |  |  |  |  | Spanish | 342 (28.5%) |
|  |  |  |  |  | Another language | 90 (7.5%) |
|  |  |  |  |  |  |  |
| 195 | LAN_DOCTOR | What language use most often when seeing a doctor | categorical | 5855 (83.1%) | English | 969 (81.4%) |
|  |  |  |  |  | Spanish | 199 (16.7%) |
|  |  |  |  |  | Another language | 23 (1.9%) |
|  |  |  |  |  |  |  |
| 196 | LAN_SOCIAL | What language use most often when participate in social activities | categorical | 5849 (83.0%) | English | 874 (73.0%) |
|  |  |  |  |  | Spanish | 279 (23.3%) |
|  |  |  |  |  | Another language | 44 (3.7%) |
|  |  |  |  |  |  |  |
| 197 | TEL_NONCELL | At least one telephone inside home, not cell phone | categorical | 62 (0.9%) | No | 4751 (68.0%) |
|  |  |  |  |  | Yes | 2233 (32.0%) |
|  |  |  |  |  |  |  |
| 198 | TEL_CELL | Have a working cell phone | categorical | 45 (0.6%) | No | 267 (3.8%) |
|  |  |  |  |  | Yes | 6734 (96.2%) |
|  |  |  |  |  |  |  |
| 199 | TEL_HHCELL | Live with anyone with a working cell phone | categorical | 6841 (97.1%) | No | 99 (48.3%) |
|  |  |  |  |  | Yes | 106 (51.7%) |
|  |  |  |  |  |  |  |
| 200 | SOURCE | Paradata: Panel Provider | categorical | 0 (0.0%) | Panel Provider 1 | 2849 (40.4%) |
|  |  |  |  |  | Panel Provider 2 | 4197 (59.6%) |
|  |  |  |  |  |  |  |
| 201 | QUEX_LANG | Paradata: Language of interview | categorical | 0 (0.0%) | English | 6810 (96.7%) |
|  |  |  |  |  | Spanish | 236 (3.3%) |
|  |  |  |  |  |  |  |
| 202 | P_OUTCOME | Paradata: Outcome code | categorical | 0 (0.0%) | Complete (reached last question) | 7046 (100.0%) |
|  |  |  |  |  |  |  |
| 203 | P_HHSIZE_R | Panel Profile: Numeric household size, capped at 6+ | categorical | 0 (0.0%) | 1 | 1435 (20.4%) |
|  |  |  |  |  | 2 | 2661 (37.8%) |
|  |  |  |  |  | 3 | 1155 (16.4%) |
|  |  |  |  |  | 4 | 913 (13.0%) |
|  |  |  |  |  | 5 | 478 (6.8%) |
|  |  |  |  |  | 6+ | 404 (5.7%) |
|  |  |  |  |  |  |  |
| 204 | P_GENDER | Panel Profile: Respondent gender | categorical | 0 (0.0%) | Male | 3250 (46.1%) |
|  |  |  |  |  | Female | 3796 (53.9%) |
|  |  |  |  |  |  |  |
| 205 | P_EDUCATION_I_R | Panel Profile: Education - 3 levels | categorical | 0 (0.0%) | High school graduate or less | 2011 (28.5%) |
|  |  |  |  |  | Some college | 2257 (32.0%) |
|  |  |  |  |  | Bachelor’s degree or above | 2778 (39.4%) |
|  |  |  |  |  |  |  |
| 206 | P_EDUCATION_I_IFLG | Imputation flag for panel profile variable: | categorical | 0 (0.0%) | No imputation | 7032 (99.8%) |
|  |  |  |  |  | Statistical imputation | 14 (0.2%) |
|  |  |  |  |  |  |  |
| 207 | P_INCOME_I_R | Panel Profile: Household income - topcoded | categorical | 0 (0.0%) | Less than \$5,000 | 165 (2.3%) |
|  |  |  |  |  | \$5,000 to \$9,999 | 117 (1.7%) |
|  |  |  |  |  | \$10,000 to \$14,999 | 226 (3.2%) |
|  |  |  |  |  | \$15,000 to \$19,999 | 186 (2.6%) |
|  |  |  |  |  | \$20,000 to \$24,999 | 263 (3.7%) |
|  |  |  |  |  | \$25,000 to \$29,999 | 239 (3.4%) |
|  |  |  |  |  | \$30,000 to \$34,999 | 298 (4.2%) |
|  |  |  |  |  | \$35,000 to \$39,999 | 277 (3.9%) |
|  |  |  |  |  | \$40,000 to \$49,999 | 464 (6.6%) |
|  |  |  |  |  | \$50,000 to \$59,999 | 542 (7.7%) |
|  |  |  |  |  | (…) |  |
|  |  |  |  |  |  |  |
| 208 | P_INCOME_I_R_IFLG | Imputation flag for panel profile variable: | categorical | 0 (0.0%) | No imputation | 6825 (96.9%) |
|  |  |  |  |  | Statistical imputation | 221 (3.1%) |
|  |  |  |  |  |  |  |
| 209 | P_ONEVISIT | Paradata: Whether the survey was completed in a single session | categorical | 0 (0.0%) | Multiple session or did not complete | 1102 (15.6%) |
|  |  |  |  |  | Completed survey in single session | 5944 (84.4%) |
|  |  |  |  |  |  |  |
| 210 | P_RACE_R | Panel Profile: Single and multiple race/ethnicity groups (all adults) | categorical | 55 (0.8%) | White, non-Hispanic | 4702 (67.3%) |
|  |  |  |  |  | Black, non-Hispanic | 728 (10.4%) |
|  |  |  |  |  | Other, non-Hispanic | 595 (8.5%) |
|  |  |  |  |  | Hispanic | 966 (13.8%) |
|  |  |  |  |  |  |  |
| 211 | P_DEVICE | Paradata: Device used to complete survey (web only) | categorical | 0 (0.0%) | Desktop/Laptop/netbook | 2871 (40.7%) |
|  |  |  |  |  | Smartphone | 3683 (52.3%) |
|  |  |  |  |  | Tablet | 228 (3.2%) |
|  |  |  |  |  | Other device (book reader, game console, etc.) | 1 (0.0%) |
|  |  |  |  |  | Phone interview (not online) | 263 (3.7%) |
|  |  |  |  |  |  |  |
| 212 | P_MODE | Paradata: Mode of interview | categorical | 0 (0.0%) | Web | 6783 (96.3%) |
|  |  |  |  |  | CATI | 263 (3.7%) |
|  |  |  |  |  |  |  |
| 213 | P_POVERTY | Panel Profile: Poverty Status | categorical | 0 (0.0%) | \< 0.50 | 331 (4.7%) |
|  |  |  |  |  | 0.50 - \< 1.00 | 507 (7.2%) |
|  |  |  |  |  | 1.00 - \< 1.50 | 480 (6.8%) |
|  |  |  |  |  | 1.50 - \< 2.00 | 750 (10.6%) |
|  |  |  |  |  | 2.00 - \< 2.50 | 474 (6.7%) |
|  |  |  |  |  | 2.50 - \< 3.00 | 493 (7.0%) |
|  |  |  |  |  | 3.00 - \< 3.50 | 662 (9.4%) |
|  |  |  |  |  | 3.50 - \< 4.00 | 329 (4.7%) |
|  |  |  |  |  | 4.00 + | 3020 (42.9%) |
|  |  |  |  |  |  |  |
| 214 | P_EMPLOY | Panel Profile: Current Employment Status | categorical | 0 (0.0%) | Working | 4241 (60.2%) |
|  |  |  |  |  | Not working–unable to work for health reasons/disabled | 453 (6.4%) |
|  |  |  |  |  | Not working–retired | 1631 (23.1%) |
|  |  |  |  |  | Not working–other | 721 (10.2%) |
|  |  |  |  |  |  |  |
| 215 | P_MARITAL | Panel Profile: Marital status | categorical | 0 (0.0%) | Married | 3784 (53.7%) |
|  |  |  |  |  | Divorced/Seperated | 1038 (14.7%) |
|  |  |  |  |  | Widowed | 375 (5.3%) |
|  |  |  |  |  | Never married | 1849 (26.2%) |
|  |  |  |  |  |  |  |
| 216 | P_REGION | Panel Profile: 4-level region | categorical | 0 (0.0%) | Northeast | 1081 (15.3%) |
|  |  |  |  |  | Midwest | 1672 (23.7%) |
|  |  |  |  |  | South | 2516 (35.7%) |
|  |  |  |  |  | West | 1777 (25.2%) |
|  |  |  |  |  |  |  |
| 217 | P_HOMEOWN | Home ownership - 3 level | categorical | 0 (0.0%) | Owned or being bought by someone in your household | 4988 (70.8%) |
|  |  |  |  |  | Rented | 1922 (27.3%) |
|  |  |  |  |  | Occupied without payment of cash rent | 136 (1.9%) |
|  |  |  |  |  |  |  |
| 218 | P_CITIZEN | Panel Profile: Are you a US citizen? | categorical | 1488 (21.1%) | Not a U.S. citizen | 184 (3.3%) |
|  |  |  |  |  | U.S. citizen | 5374 (96.7%) |
|  |  |  |  |  |  |  |
| 219 | P_VETERAN | Panel Profile: Have you ever served on active duty in the U.S. Armed Forces, military Reserves, or National Guard? | categorical | 418 (5.9%) | Not a veteran | 5968 (90.0%) |
|  |  |  |  |  | Veteran | 660 (10.0%) |
|  |  |  |  |  |  |  |
| 220 | P_INSUR | Panel Profile: Covered by any form of health insurance or health plan? | categorical | 1653 (23.5%) | Does not have health insurance | 360 (6.7%) |
|  |  |  |  |  | Has health insurance | 5033 (93.3%) |
|  |  |  |  |  |  |  |
| 221 | P_USBORN | Panel Profile: Is respondent US born? | categorical | 1367 (19.4%) | No | 460 (8.1%) |
|  |  |  |  |  | Yes | 5219 (91.9%) |
|  |  |  |  |  |  |  |
| 222 | P_GENDERID | Panel Profile: Gender identity 4 Levels | categorical | 359 (5.1%) | Cis-gender Male | 3031 (45.3%) |
|  |  |  |  |  | Cis-gender Female | 3549 (53.1%) |
|  |  |  |  |  | Transgender | 49 (0.7%) |
|  |  |  |  |  | None of these | 58 (0.9%) |
|  |  |  |  |  |  |  |
| 223 | P_ORIENT | Panel Profile: Sexual Orientation | categorical | 390 (5.5%) | Gay or lesbian | 205 (3.1%) |
|  |  |  |  |  | Straight, that is not lesbian/gay | 6047 (90.9%) |
|  |  |  |  |  | Bisexual | 288 (4.3%) |
|  |  |  |  |  | Something else | 116 (1.7%) |
|  |  |  |  |  |  |  |
| 224 | P_METRO_R | NCHS 2013 Urban/Rural code | categorical | 0 (0.0%) | Metropolitan | 6041 (85.7%) |
|  |  |  |  |  | Non-Metropolitan | 1005 (14.3%) |
|  |  |  |  |  |  |  |
| 225 | P_METRO_R_IFLG | Imputation flag for profile variable: | categorical | 0 (0.0%) | No imputation | 7040 (99.9%) |
|  |  |  |  |  | Statistical imputation | 6 (0.1%) |
|  |  |  |  |  |  |  |

rss2 (7046 rows and 225 variables, 224 shown) {.table}
