# rss6 Codebook

    ## # Attaching packages: easystats 0.7.6
    ## ✔ bayestestR  0.18.1   ✔ correlation 0.8.8 
    ## ✔ datawizard  1.3.1    ✔ effectsize  1.0.2 
    ## ✔ insight     1.5.1    ✔ modelbased  0.15.0
    ## ✔ performance 0.17.0   ✔ parameters  0.29.1
    ## ✔ report      0.6.4    ✔ see         0.14.0

    ## Warning: Following 6 columns were empty and have been removed:
    ##   CIG_CIGAR30D, FSC_SKIPNUM, FSC_NOEATNUM, P1_CALWT, P2_CALWT and WEIGHT

| ID | Name | Label | Type | Missings | Values | N |
|:---|:---|:---|:---|---:|---:|---:|
| 1 | HIS_GENERAL | Self-reported health status | categorical | 14 (0.2%) | Excellent | 576 (7.3%) |
|  |  |  |  |  | Very good | 2830 (35.8%) |
|  |  |  |  |  | Good | 3163 (40.0%) |
|  |  |  |  |  | Fair | 1110 (14.0%) |
|  |  |  |  |  | Poor | 230 (2.9%) |
|  |  |  |  |  |  |  |
| 2 | CHR_HYPEV | Ever been told you had hypertension | categorical | 56 (0.7%) | No | 4887 (62.1%) |
|  |  |  |  |  | Yes | 2980 (37.9%) |
|  |  |  |  |  |  |  |
| 3 | CHR_CHLEV | Ever been told you had high cholesterol | categorical | 129 (1.6%) | No | 4898 (62.8%) |
|  |  |  |  |  | Yes | 2896 (37.2%) |
|  |  |  |  |  |  |  |
| 4 | CHR_ASEV | Ever been told you had asthma | categorical | 30 (0.4%) | No | 6490 (82.2%) |
|  |  |  |  |  | Yes | 1403 (17.8%) |
|  |  |  |  |  |  |  |
| 5 | CHR_ASTILL | Still have asthma | categorical | 6529 (82.4%) | No | 513 (36.8%) |
|  |  |  |  |  | Yes | 881 (63.2%) |
|  |  |  |  |  |  |  |
| 6 | CHR_AS12M | Past 12 months, asthma attack | categorical | 7045 (88.9%) | No | 402 (45.8%) |
|  |  |  |  |  | Yes | 476 (54.2%) |
|  |  |  |  |  |  |  |
| 7 | CHR_CANEV | Ever been told you had cancer | categorical | 16 (0.2%) | No | 6973 (88.2%) |
|  |  |  |  |  | Yes | 934 (11.8%) |
|  |  |  |  |  |  |  |
| 8 | CHR_CHDEV | Ever been told you had coronary heart disease | categorical | 41 (0.5%) | No | 7500 (95.2%) |
|  |  |  |  |  | Yes | 382 (4.8%) |
|  |  |  |  |  |  |  |
| 9 | CHR_ANGEV | Ever been told you had angina, also called angina pectoris | categorical | 50 (0.6%) | No | 7714 (98.0%) |
|  |  |  |  |  | Yes | 159 (2.0%) |
|  |  |  |  |  |  |  |
| 10 | CHR_MIEV | Ever been told you had a heart attack, also called myocardial infarction | categorical | 32 (0.4%) | No | 7639 (96.8%) |
|  |  |  |  |  | Yes | 252 (3.2%) |
|  |  |  |  |  |  |  |
| 11 | DIB_PREDIB | Ever been told you had prediabetes | categorical | 19 (0.2%) | No | 5659 (71.6%) |
|  |  |  |  |  | Yes | 2245 (28.4%) |
|  |  |  |  |  |  |  |
| 12 | DIB_GESDIB | Ever been told you had gestational diabetes | categorical | 3841 (48.5%) | No | 3708 (90.8%) |
|  |  |  |  |  | Yes | 374 (9.2%) |
|  |  |  |  |  |  |  |
| 13 | DIB_DIBEV | Ever been told you had diabetes | categorical | 68 (0.9%) | No | 6844 (87.1%) |
|  |  |  |  |  | Yes | 1011 (12.9%) |
|  |  |  |  |  |  |  |
| 14 | SSS_DROOP | Best action for sudden facial drooping | categorical | 85 (1.1%) | Wait 1 day, then decide | 155 (2.0%) |
|  |  |  |  |  | Wait 1 hour, then decide | 239 (3.0%) |
|  |  |  |  |  | Call doctor’s office immediately | 956 (12.2%) |
|  |  |  |  |  | Call 911 or another emergency number immediately | 6488 (82.8%) |
|  |  |  |  |  |  |  |
| 15 | SSS_NUMB | Best action for sudden one-sided arm/leg numbness or weakness | categorical | 89 (1.1%) | Wait 1 day, then decide | 355 (4.5%) |
|  |  |  |  |  | Wait 1 hour, then decide | 744 (9.5%) |
|  |  |  |  |  | Call doctor’s office immediately | 1201 (15.3%) |
|  |  |  |  |  | Call 911 or another emergency number immediately | 5534 (70.6%) |
|  |  |  |  |  |  |  |
| 16 | SSS_SPEECH | Best action for sudden slurred or garbled speech | categorical | 87 (1.1%) | Wait 1 day, then decide | 177 (2.3%) |
|  |  |  |  |  | Wait 1 hour, then decide | 381 (4.9%) |
|  |  |  |  |  | Call doctor’s office immediately | 887 (11.3%) |
|  |  |  |  |  | Call 911 or another emergency number immediately | 6391 (81.6%) |
|  |  |  |  |  |  |  |
| 17 | SSS_MUSCLES | Best action for cramping or locking of muscles of hand or fingers | categorical | 104 (1.3%) | Wait 1 day, then decide | 1329 (17.0%) |
|  |  |  |  |  | Wait 1 hour, then decide | 2242 (28.7%) |
|  |  |  |  |  | Call doctor’s office immediately | 2025 (25.9%) |
|  |  |  |  |  | Call 911 or another emergency number immediately | 2223 (28.4%) |
|  |  |  |  |  |  |  |
| 18 | SSS_BALANCE | Best action for sudden trouble walking, dizziness, or loss of balance | categorical | 79 (1.0%) | Wait 1 day, then decide | 524 (6.7%) |
|  |  |  |  |  | Wait 1 hour, then decide | 1710 (21.8%) |
|  |  |  |  |  | Call doctor’s office immediately | 2285 (29.1%) |
|  |  |  |  |  | Call 911 or another emergency number immediately | 3325 (42.4%) |
|  |  |  |  |  |  |  |
| 19 | SSS_SIGHT | Best action for sudden trouble seeing in one or both eyes | categorical | 85 (1.1%) | Wait 1 day, then decide | 428 (5.5%) |
|  |  |  |  |  | Wait 1 hour, then decide | 1084 (13.8%) |
|  |  |  |  |  | Call doctor’s office immediately | 2945 (37.6%) |
|  |  |  |  |  | Call 911 or another emergency number immediately | 3381 (43.1%) |
|  |  |  |  |  |  |  |
| 20 | SSS_URINE | Best action for burning feeling during urination and cloudy urine | categorical | 87 (1.1%) | Wait 1 day, then decide | 1743 (22.2%) |
|  |  |  |  |  | Wait 1 hour, then decide | 799 (10.2%) |
|  |  |  |  |  | Call doctor’s office immediately | 4675 (59.7%) |
|  |  |  |  |  | Call 911 or another emergency number immediately | 619 (7.9%) |
|  |  |  |  |  |  |  |
| 21 | SSS_STRKACT | Best action for observing a stroke | categorical | 40 (0.5%) | Wait and monitor their symptoms | 73 (0.9%) |
|  |  |  |  |  | Call 911 or another emergency number | 6465 (82.0%) |
|  |  |  |  |  | Call their doctor or health professional | 143 (1.8%) |
|  |  |  |  |  | You or someone else drive them to the hospital | 1145 (14.5%) |
|  |  |  |  |  | Have them drive themselves to the hospital | 57 (0.7%) |
|  |  |  |  |  |  |  |
| 22 | CHR_STREV | Ever been told you had a stroke | categorical | 20 (0.3%) | No | 7635 (96.6%) |
|  |  |  |  |  | Yes | 268 (3.4%) |
|  |  |  |  |  |  |  |
| 23 | SSS_SEENSTR | Seen another person having a stroke | categorical | 79 (1.0%) | No | 6427 (81.9%) |
|  |  |  |  |  | Yes | 1417 (18.1%) |
|  |  |  |  |  |  |  |
| 24 | SSS_RELSTR | Have close friends or relatives who have had a stroke | categorical | 994 (12.5%) | No | 2591 (37.4%) |
|  |  |  |  |  | Yes | 4338 (62.6%) |
|  |  |  |  |  |  |  |
| 25 | SSS_HTLTHJOBSA | Had job: First responder, including as a firefighter, paramedic, or EMT | categorical | 42 (0.5%) | Not selected | 7452 (94.6%) |
|  |  |  |  |  | Selected | 429 (5.4%) |
|  |  |  |  |  |  |  |
| 26 | SSS_HTLTHJOBSB | Had job: Medical doctor | categorical | 42 (0.5%) | Not selected | 7709 (97.8%) |
|  |  |  |  |  | Selected | 172 (2.2%) |
|  |  |  |  |  |  |  |
| 27 | SSS_HTLTHJOBSC | Had job: Nurse, including as a registered nurse or nurse practitioner | categorical | 42 (0.5%) | Not selected | 7487 (95.0%) |
|  |  |  |  |  | Selected | 394 (5.0%) |
|  |  |  |  |  |  |  |
| 28 | SSS_HTLTHJOBSD | Had job: Aide in a hospital, assisted living facility, or other nursing facility | categorical | 42 (0.5%) | Not selected | 7346 (93.2%) |
|  |  |  |  |  | Selected | 535 (6.8%) |
|  |  |  |  |  |  |  |
| 29 | SSS_HTLTHJOBSE | Had job: Other healthcare professional | categorical | 42 (0.5%) | Not selected | 7165 (90.9%) |
|  |  |  |  |  | Selected | 716 (9.1%) |
|  |  |  |  |  |  |  |
| 30 | SSS_HTLTHJOBSF | Had job: None of these | categorical | 42 (0.5%) | Not selected | 1725 (21.9%) |
|  |  |  |  |  | Selected | 6156 (78.1%) |
|  |  |  |  |  |  |  |
| 31 | SSS_FAST | Heard of the FAST acronym for recognizing stroke symptoms | categorical | 29 (0.4%) | No | 4276 (54.2%) |
|  |  |  |  |  | Yes | 3618 (45.8%) |
|  |  |  |  |  |  |  |
| 32 | CIG_SMKEV | Ever smoked at least 100 cigarettes in entire life | categorical | 89 (1.1%) | No | 4959 (63.3%) |
|  |  |  |  |  | Yes | 2875 (36.7%) |
|  |  |  |  |  |  |  |
| 33 | CIG_SMKNOW | How often now smoke cigarettes | categorical | 5061 (63.9%) | Every day | 582 (20.3%) |
|  |  |  |  |  | Some days | 280 (9.8%) |
|  |  |  |  |  | Not at all | 2000 (69.9%) |
|  |  |  |  |  |  |  |
| 34 | CIG_ECIGEV | Ever used an e-cigarette even once in entire life | categorical | 21 (0.3%) | No | 6206 (78.5%) |
|  |  |  |  |  | Yes | 1696 (21.5%) |
|  |  |  |  |  |  |  |
| 35 | CIG_ECIGNOW | How often now use e-cigarettes | categorical | 6230 (78.6%) | Every day | 340 (20.1%) |
|  |  |  |  |  | Some days | 291 (17.2%) |
|  |  |  |  |  | Not at all | 1062 (62.7%) |
|  |  |  |  |  |  |  |
| 36 | CIG_CIGAREV | Ever smoked a regular cigar, cigarillo, or a little filtered cigar even one time | categorical | 71 (0.9%) | No | 5095 (64.9%) |
|  |  |  |  |  | Yes | 2757 (35.1%) |
|  |  |  |  |  |  |  |
| 37 | CIG_CIGARCUR | How often now smoke regular cigars, cigarillos, or little filtered cigars | categorical | 5176 (65.3%) | Every day | 81 (2.9%) |
|  |  |  |  |  | Some days | 292 (10.6%) |
|  |  |  |  |  | Not at all | 2374 (86.4%) |
|  |  |  |  |  |  |  |
| 39 | CIG_SMOKELSEV1 | Ever used smokeless tobacco products even one time | categorical | 32 (0.4%) | No | 6710 (85.0%) |
|  |  |  |  |  | Yes | 1181 (15.0%) |
|  |  |  |  |  |  |  |
| 40 | CIG_SMOKELSCR1 | How often now use smokeless tobacco products | categorical | 6745 (85.1%) | Every day | 110 (9.3%) |
|  |  |  |  |  | Some days | 108 (9.2%) |
|  |  |  |  |  | Not at all | 960 (81.5%) |
|  |  |  |  |  |  |  |
| 41 | PPP_HLTHCARE | Past 12 months, received any health care | categorical | 39 (0.5%) | No | 1808 (22.9%) |
|  |  |  |  |  | Yes | 6076 (77.1%) |
|  |  |  |  |  |  |  |
| 42 | PPP_HLTHFOOD | During health care visits, asked if family could afford enough food | categorical | 1898 (24.0%) | No | 4574 (75.9%) |
|  |  |  |  |  | Yes | 1451 (24.1%) |
|  |  |  |  |  |  |  |
| 43 | PPP_RUNOUT | Ever answered worried food would run out | categorical | 6475 (81.7%) | No | 1135 (78.4%) |
|  |  |  |  |  | Yes | 313 (21.6%) |
|  |  |  |  |  |  |  |
| 44 | PPP_NOTLAST | Ever answered purchased food didn’t last and didn’t have money for more | categorical | 6493 (82.0%) | No | 1148 (80.3%) |
|  |  |  |  |  | Yes | 282 (19.7%) |
|  |  |  |  |  |  |  |
| 45 | PPP_BANKINFO | During health care visits, provided information on food pantry, food bank and other places that provides free food | categorical | 1867 (23.6%) | No | 5522 (91.2%) |
|  |  |  |  |  | Yes | 534 (8.8%) |
|  |  |  |  |  |  |  |
| 46 | PPP_WHELINFO | During health care visits, provided information on home-delivered free meals | categorical | 1872 (23.6%) | No | 5688 (94.0%) |
|  |  |  |  |  | Yes | 363 (6.0%) |
|  |  |  |  |  |  |  |
| 47 | PPP_WICINFO | During health care visits, provided information on a food assistance program | categorical | 1874 (23.7%) | No | 5444 (90.0%) |
|  |  |  |  |  | Yes | 605 (10.0%) |
|  |  |  |  |  |  |  |
| 48 | PPP_COMPINFO | DERIVED: Received information on food services or assistance | categorical | 1891 (23.9%) | Did not receive information | 5254 (87.1%) |
|  |  |  |  |  | Received information | 778 (12.9%) |
|  |  |  |  |  |  |  |
| 49 | PPP_BANKHELP | During or after health care visits, was assisted in signing up for food pantry, food bank or other places that provide free food | categorical | 1878 (23.7%) | No | 5813 (96.2%) |
|  |  |  |  |  | Yes | 232 (3.8%) |
|  |  |  |  |  |  |  |
| 50 | PPP_WHELHELP | During or after health care visits, was assisted in signing up for home-delivered free meals service | categorical | 1886 (23.8%) | No | 5846 (96.8%) |
|  |  |  |  |  | Yes | 191 (3.2%) |
|  |  |  |  |  |  |  |
| 51 | PPP_WICHELP | During or after health care visits, was assisted in signing up for a food assistance program | categorical | 1884 (23.8%) | No | 5781 (95.7%) |
|  |  |  |  |  | Yes | 258 (4.3%) |
|  |  |  |  |  |  |  |
| 52 | PPP_COMPHELP | DERIVED: Received help initiating food services or assistance | categorical | 1922 (24.3%) | Did not received help | 5611 (93.5%) |
|  |  |  |  |  | Received help | 390 (6.5%) |
|  |  |  |  |  |  |  |
| 53 | PPP_PRODHELP | During or after health care visits, was assisted in signing up for a fruit and vegetable prescription program | categorical | 1890 (23.9%) | No | 5887 (97.6%) |
|  |  |  |  |  | Yes | 146 (2.4%) |
|  |  |  |  |  |  |  |
| 54 | PPP_PRODUSE | Used the coupons/gift card from a fruit and vegetable prescription program | categorical | 7777 (98.2%) | No | 62 (42.5%) |
|  |  |  |  |  | Yes | 84 (57.5%) |
|  |  |  |  |  |  |  |
| 55 | PPP_MEDHELP | During or after health care visits, was assisted in signing up for medically tailored meals/groceries | categorical | 1882 (23.8%) | No | 5898 (97.6%) |
|  |  |  |  |  | Yes | 143 (2.4%) |
|  |  |  |  |  |  |  |
| 56 | PPP_MEDUSE | Used medically tailored meals or groceries offered to you | categorical | 7781 (98.2%) | No | 48 (33.8%) |
|  |  |  |  |  | Yes | 94 (66.2%) |
|  |  |  |  |  |  |  |
| 57 | ACC_HTHLAST | Time since you last saw doctor about your health | categorical | 29 (0.4%) | Never | 193 (2.4%) |
|  |  |  |  |  | Less than 12 months ago | 6294 (79.7%) |
|  |  |  |  |  | More than 1 year but less than 2 years ago | 649 (8.2%) |
|  |  |  |  |  | More than 2 years but less than 3 years ago | 272 (3.4%) |
|  |  |  |  |  | More than 3 years but less than 5 years ago | 214 (2.7%) |
|  |  |  |  |  | More than 5 years but less than 10 years ago | 149 (1.9%) |
|  |  |  |  |  | 10 years ago or more | 123 (1.6%) |
|  |  |  |  |  |  |  |
| 58 | DOCVIS_P12M | RECODE: Doctor visit in past 12 months | categorical | 29 (0.4%) | Yes | 6294 (79.7%) |
|  |  |  |  |  | No | 1600 (20.3%) |
|  |  |  |  |  |  |  |
| 59 | ACC_VISITTYP | Was this a wellness visit, physical, or general purpose check-up | categorical | 252 (3.2%) | No | 1707 (22.3%) |
|  |  |  |  |  | Yes | 5964 (77.7%) |
|  |  |  |  |  |  |  |
| 60 | ACC_HTHLASTB | Time since last wellness visit | categorical | 6198 (78.2%) | Never | 96 (5.6%) |
|  |  |  |  |  | Less than 12 months ago | 666 (38.6%) |
|  |  |  |  |  | More than 1 year but less than 2 years ago | 374 (21.7%) |
|  |  |  |  |  | More than 2 years but less than 3 years ago | 172 (10.0%) |
|  |  |  |  |  | More than 3 years but less than 5 years ago | 135 (7.8%) |
|  |  |  |  |  | More than 5 years but less than 10 years ago | 140 (8.1%) |
|  |  |  |  |  | 10 years ago or more | 142 (8.2%) |
|  |  |  |  |  |  |  |
| 61 | ACC_HTHUSUAL | Have a usual place you go to for health care | categorical | 42 (0.5%) | Yes, there is a single place | 4599 (58.4%) |
|  |  |  |  |  | No, there is no place | 837 (10.6%) |
|  |  |  |  |  | Yes, there is more than one place | 2445 (31.0%) |
|  |  |  |  |  |  |  |
| 62 | ACC_HTHTYPE | Type of place for usual care | categorical | 865 (10.9%) | I do not go to one place most often | 83 (1.2%) |
|  |  |  |  |  | A doctor’s office or health center | 5712 (80.9%) |
|  |  |  |  |  | Urgent care center or clinic in a drug store or grocery store | 796 (11.3%) |
|  |  |  |  |  | Hospital emergency room | 217 (3.1%) |
|  |  |  |  |  | A VA medical center or VA outpatient clinic | 181 (2.6%) |
|  |  |  |  |  | Some other place | 69 (1.0%) |
|  |  |  |  |  |  |  |
| 63 | ACC_RETAIL_R | RECODE: Past 12 months, number of retail health clinic visits - topcoded | categorical | 347 (4.4%) | 0 | 5265 (69.5%) |
|  |  |  |  |  | 1 | 1114 (14.7%) |
|  |  |  |  |  | 2 | 663 (8.8%) |
|  |  |  |  |  | 3 | 219 (2.9%) |
|  |  |  |  |  | 4 | 91 (1.2%) |
|  |  |  |  |  | 5 | 72 (1.0%) |
|  |  |  |  |  | 6 | 39 (0.5%) |
|  |  |  |  |  | 7 | 7 (0.1%) |
|  |  |  |  |  | 8 | 15 (0.2%) |
|  |  |  |  |  | 9 | 4 (0.1%) |
|  |  |  |  |  | (…) |  |
|  |  |  |  |  |  |  |
| 64 | ACC_URGENT_R | RECODE: Past 12 months, number of urgent care visits - topcoded | categorical | 346 (4.4%) | 0 | 5025 (66.3%) |
|  |  |  |  |  | 1 | 1487 (19.6%) |
|  |  |  |  |  | 2 | 617 (8.1%) |
|  |  |  |  |  | 3 | 213 (2.8%) |
|  |  |  |  |  | 4 | 87 (1.1%) |
|  |  |  |  |  | 5 | 62 (0.8%) |
|  |  |  |  |  | 6 | 27 (0.4%) |
|  |  |  |  |  | 7 | 8 (0.1%) |
|  |  |  |  |  | 8+ | 51 (0.7%) |
|  |  |  |  |  |  |  |
| 65 | URGCARE_P12M | RECODE: Urgent care center visit in past 12 months | categorical | 346 (4.4%) | Yes | 2552 (33.7%) |
|  |  |  |  |  | No | 5025 (66.3%) |
|  |  |  |  |  |  |  |
| 66 | ACC_HOSP_R | RECODE: Past 12 months, number of hospital emergency room visits - topcoded | categorical | 257 (3.2%) | 0 | 6030 (78.7%) |
|  |  |  |  |  | 1 | 1040 (13.6%) |
|  |  |  |  |  | 2 | 341 (4.4%) |
|  |  |  |  |  | 3 | 95 (1.2%) |
|  |  |  |  |  | 4 | 56 (0.7%) |
|  |  |  |  |  | 5 | 37 (0.5%) |
|  |  |  |  |  | 6 | 20 (0.3%) |
|  |  |  |  |  | 7+ | 47 (0.6%) |
|  |  |  |  |  |  |  |
| 67 | ACC_HOSP12M | Past 12 months, hospitalized overnight | categorical | 84 (1.1%) | No | 7170 (91.5%) |
|  |  |  |  |  | Yes | 669 (8.5%) |
|  |  |  |  |  |  |  |
| 68 | ACC_VIDPHN | Past 12 months, had a telehealth appointment | categorical | 67 (0.8%) | No | 5510 (70.1%) |
|  |  |  |  |  | Yes | 2346 (29.9%) |
|  |  |  |  |  |  |  |
| 69 | HCA_DLYCOST | Past 12 months, delayed medical care due to cost | categorical | 98 (1.2%) | No | 6561 (83.8%) |
|  |  |  |  |  | Yes | 1264 (16.2%) |
|  |  |  |  |  |  |  |
| 70 | HCA_DNTCOST | Past 12 months, did not get medical care due to cost | categorical | 115 (1.5%) | No | 6709 (85.9%) |
|  |  |  |  |  | Yes | 1099 (14.1%) |
|  |  |  |  |  |  |  |
| 71 | NOCARE_COST | RECODE: Did not receive care due to cost in past 12 months | categorical | 115 (1.5%) | Yes | 1099 (14.1%) |
|  |  |  |  |  | No | 6709 (85.9%) |
|  |  |  |  |  |  |  |
| 72 | IMM_SHTFLU12 | Past 12 months, had flu vaccine | categorical | 42 (0.5%) | No | 4170 (52.9%) |
|  |  |  |  |  | Yes | 3711 (47.1%) |
|  |  |  |  |  |  |  |
| 73 | IMM_FLUMNTH | Month of last flu vaccine | categorical | 4291 (54.2%) | January | 195 (5.4%) |
|  |  |  |  |  | February | 73 (2.0%) |
|  |  |  |  |  | March | 37 (1.0%) |
|  |  |  |  |  | April | 33 (0.9%) |
|  |  |  |  |  | May | 29 (0.8%) |
|  |  |  |  |  | June | 17 (0.5%) |
|  |  |  |  |  | July | 26 (0.7%) |
|  |  |  |  |  | August | 120 (3.3%) |
|  |  |  |  |  | September | 769 (21.2%) |
|  |  |  |  |  | October | 1481 (40.8%) |
|  |  |  |  |  | (…) |  |
|  |  |  |  |  |  |  |
| 74 | IMM_FLUYR | Year of last flu vaccine | categorical | 4287 (54.1%) | 2024 | 3421 (94.1%) |
|  |  |  |  |  | 2025 | 215 (5.9%) |
|  |  |  |  |  |  |  |
| 75 | IMM_SHTPNUEV | Ever had pneumonia shot | categorical | 100 (1.3%) | No | 5142 (65.7%) |
|  |  |  |  |  | Yes | 2681 (34.3%) |
|  |  |  |  |  |  |  |
| 76 | HPV_LASTPAP | How long since last pap smear | categorical | 3986 (50.3%) | I have never had a Pap test | 216 (5.5%) |
|  |  |  |  |  | Less than 12 months ago | 1049 (26.6%) |
|  |  |  |  |  | More than 1 year but less than 2 years ago | 770 (19.6%) |
|  |  |  |  |  | More than 2 years but less than 3 years ago | 490 (12.4%) |
|  |  |  |  |  | More than 3 years but less than 5 years ago | 420 (10.7%) |
|  |  |  |  |  | More than 5 years but less than 10 years ago | 414 (10.5%) |
|  |  |  |  |  | 10 years ago or more | 578 (14.7%) |
|  |  |  |  |  |  |  |
| 77 | HPV_SWABEV | Ever had an HPV test | categorical | 4945 (62.4%) | No | 1191 (40.0%) |
|  |  |  |  |  | Yes | 1787 (60.0%) |
|  |  |  |  |  |  |  |
| 78 | HPV_PREFTEST | Preference for self-administered HPV test | categorical | 4013 (50.7%) | Yes, prefer testing myself | 1178 (30.1%) |
|  |  |  |  |  | No, prefer doctor or nurse testing me | 1522 (38.9%) |
|  |  |  |  |  | Have no preference | 1210 (30.9%) |
|  |  |  |  |  |  |  |
| 79 | HPV_PRIVACY | Benefit of doing a self-administered HPV test: privacy | categorical | 4059 (51.2%) | No | 644 (16.7%) |
|  |  |  |  |  | Yes | 3220 (83.3%) |
|  |  |  |  |  |  |  |
| 80 | HPV_EMBARRASS | Benefit of doing a self-administered HPV test: less embarrassing | categorical | 4087 (51.6%) | No | 1185 (30.9%) |
|  |  |  |  |  | Yes | 2651 (69.1%) |
|  |  |  |  |  |  |  |
| 81 | HPV_PAIN | Benefit of doing a self-administered HPV test: less painful | categorical | 4136 (52.2%) | No | 1930 (51.0%) |
|  |  |  |  |  | Yes | 1857 (49.0%) |
|  |  |  |  |  |  |  |
| 82 | HPV_STRESS | Benefit of doing a self-administered HPV test: less stressful | categorical | 4084 (51.5%) | No | 1322 (34.4%) |
|  |  |  |  |  | Yes | 2517 (65.6%) |
|  |  |  |  |  |  |  |
| 83 | HPV_CONVEN | Benefit of doing a self-administered HPV test: more convenient | categorical | 4069 (51.4%) | No | 633 (16.4%) |
|  |  |  |  |  | Yes | 3221 (83.6%) |
|  |  |  |  |  |  |  |
| 84 | HPV_CONTROL | Benefit of doing a self-administered HPV test: more in control | categorical | 4116 (52.0%) | No | 1124 (29.5%) |
|  |  |  |  |  | Yes | 2683 (70.5%) |
|  |  |  |  |  |  |  |
| 85 | HPV_DOCRN | Benefit of doing a self-administered HPV test: don’t like physical exams by doctors or nurses | categorical | 4152 (52.4%) | No | 2042 (54.2%) |
|  |  |  |  |  | Yes | 1729 (45.8%) |
|  |  |  |  |  |  |  |
| 86 | HPV_OTHBEN | Benefit of doing a self-administered HPV test: another benefit | categorical | 4301 (54.3%) | No | 2624 (72.4%) |
|  |  |  |  |  | Yes | 998 (27.6%) |
|  |  |  |  |  |  |  |
| 87 | HPV_TESTERR | Concern about self-administered HPV test: might do it wrong | categorical | 4061 (51.3%) | No | 1282 (33.2%) |
|  |  |  |  |  | Yes | 2580 (66.8%) |
|  |  |  |  |  |  |  |
| 88 | HPV_SELFEMB | Concern about self-administered HPV test: embarrassed doing it myself | categorical | 4096 (51.7%) | No | 3447 (90.1%) |
|  |  |  |  |  | Yes | 380 (9.9%) |
|  |  |  |  |  |  |  |
| 89 | HPV_PAININJ | Concern about self-administered HPV test: pain or injury | categorical | 4077 (51.5%) | No | 2484 (64.6%) |
|  |  |  |  |  | Yes | 1362 (35.4%) |
|  |  |  |  |  |  |  |
| 90 | HPV_ACCURACY | Concern about self-administered HPV test: less accurate results | categorical | 4062 (51.3%) | No | 1285 (33.3%) |
|  |  |  |  |  | Yes | 2576 (66.7%) |
|  |  |  |  |  |  |  |
| 91 | HPV_OTHCONC | Concern about self-administered HPV test: another concern | categorical | 4211 (53.1%) | No | 3402 (91.6%) |
|  |  |  |  |  | Yes | 310 (8.4%) |
|  |  |  |  |  |  |  |
| 92 | HPV_LOCATION | Location preference for self-administered HPV test | categorical | 5556 (70.1%) | Home | 1335 (56.4%) |
|  |  |  |  |  | Clinic or doctor’s office | 350 (14.8%) |
|  |  |  |  |  | Have no preference | 682 (28.8%) |
|  |  |  |  |  |  |  |
| 93 | HPV_LOCCONV | Prefer at home HPV test: more convenient | categorical | 6600 (83.3%) | No | 22 (1.7%) |
|  |  |  |  |  | Yes | 1301 (98.3%) |
|  |  |  |  |  |  |  |
| 94 | HPV_LOCPRIV | Prefer at home HPV test: privacy | categorical | 6596 (83.3%) | No | 84 (6.3%) |
|  |  |  |  |  | Yes | 1243 (93.7%) |
|  |  |  |  |  |  |  |
| 95 | HPV_LOCTIME | Prefer at home HPV test: take it on own time | categorical | 6599 (83.3%) | No | 30 (2.3%) |
|  |  |  |  |  | Yes | 1294 (97.7%) |
|  |  |  |  |  |  |  |
| 96 | HPV_LOCTRAV | Prefer at home HPV test: hard to get to a clinic or doctor’s office | categorical | 6608 (83.4%) | No | 862 (65.6%) |
|  |  |  |  |  | Yes | 453 (34.4%) |
|  |  |  |  |  |  |  |
| 97 | HPV_LOCCOMF | Prefer at home HPV test: more comfortable at home | categorical | 6601 (83.3%) | No | 55 (4.2%) |
|  |  |  |  |  | Yes | 1267 (95.8%) |
|  |  |  |  |  |  |  |
| 98 | HPV_LOCDOC | Prefer at home HPV test: don’t like going to the doctor | categorical | 6612 (83.5%) | No | 512 (39.1%) |
|  |  |  |  |  | Yes | 799 (60.9%) |
|  |  |  |  |  |  |  |
| 99 | HPV_LOCOTHA | Prefer at home HPV test: another reason | categorical | 6678 (84.3%) | No | 1059 (85.1%) |
|  |  |  |  |  | Yes | 186 (14.9%) |
|  |  |  |  |  |  |  |
| 100 | HPV_LOCMAIL | Prefer in-clinic HPV test: do not want to use mail for medical tests | categorical | 7583 (95.7%) | No | 150 (44.1%) |
|  |  |  |  |  | Yes | 190 (55.9%) |
|  |  |  |  |  |  |  |
| 101 | HPV_LOCKNOW | Prefer in-clinic HPV test: other people I live with may find out | categorical | 7586 (95.7%) | No | 278 (82.5%) |
|  |  |  |  |  | Yes | 59 (17.5%) |
|  |  |  |  |  |  |  |
| 102 | HPV_LOCCLEAN | Prefer in-clinic HPV test: doctor’s office would be a cleaner place | categorical | 7579 (95.7%) | No | 135 (39.2%) |
|  |  |  |  |  | Yes | 209 (60.8%) |
|  |  |  |  |  |  |  |
| 103 | HPV_LOCHELP | Prefer in-clinic HPV test: staff would be available to help me or answer questions | categorical | 7579 (95.7%) | No | 33 (9.6%) |
|  |  |  |  |  | Yes | 311 (90.4%) |
|  |  |  |  |  |  |  |
| 104 | HPV_LOCNEED | Prefer in-clinic HPV test: have to go to the doctor anyway | categorical | 7582 (95.7%) | No | 56 (16.4%) |
|  |  |  |  |  | Yes | 285 (83.6%) |
|  |  |  |  |  |  |  |
| 105 | HPV_LOCOTHB | Prefer in-clinic HPV test: another reason | categorical | 7593 (95.8%) | No | 278 (84.2%) |
|  |  |  |  |  | Yes | 52 (15.8%) |
|  |  |  |  |  |  |  |
| 106 | SOC_ERRANDS | Difficulty doing errands alone due to physical, mental, or emotional condition | categorical | 38 (0.5%) | No difficulty | 6328 (80.3%) |
|  |  |  |  |  | Some difficulty | 1105 (14.0%) |
|  |  |  |  |  | A lot of difficulty | 322 (4.1%) |
|  |  |  |  |  | Cannot do this at all | 130 (1.6%) |
|  |  |  |  |  |  |  |
| 107 | SOC_PARACTIV | Difficulty participating in social activities due to physical, mental, or emotional condition | categorical | 91 (1.1%) | No difficulty | 5830 (74.4%) |
|  |  |  |  |  | Some difficulty | 1375 (17.6%) |
|  |  |  |  |  | A lot of difficulty | 475 (6.1%) |
|  |  |  |  |  | Cannot do this at all | 152 (1.9%) |
|  |  |  |  |  |  |  |
| 108 | SOC_PARACTIV_R | RECODE: Difficulty participating in social activities due to physical, mental, or emotional condition | categorical | 91 (1.1%) | No difficulty/some difficulty | 7205 (92.0%) |
|  |  |  |  |  | A lot of difficulty/cannot do this at all | 627 (8.0%) |
|  |  |  |  |  |  |  |
| 109 | SOC_SCWRKLIM | Work limited due to physical, mental, or emotional problem | categorical | 63 (0.8%) | No | 6137 (78.1%) |
|  |  |  |  |  | Yes | 1723 (21.9%) |
|  |  |  |  |  |  |  |
| 110 | SOCWRKLMT | DERIVED: Any social/work limitation | categorical | 94 (1.2%) | No | 5017 (64.1%) |
|  |  |  |  |  | Yes | 2812 (35.9%) |
|  |  |  |  |  |  |  |
| 111 | PAY_BILL12M | Past 12 months, you or family have problems paying medical bills | categorical | 57 (0.7%) | No | 6395 (81.3%) |
|  |  |  |  |  | Yes | 1471 (18.7%) |
|  |  |  |  |  |  |  |
| 112 | PAY_MEDBILL | Inability to pay current medical bills | categorical | 6431 (81.2%) | No | 583 (39.1%) |
|  |  |  |  |  | Yes | 909 (60.9%) |
|  |  |  |  |  |  |  |
| 113 | PAY_PAYWORRY | If get sick or have accident, how worried about ability to pay medical bills | categorical | 45 (0.6%) | Very worried | 1102 (14.0%) |
|  |  |  |  |  | Somewhat worried | 2985 (37.9%) |
|  |  |  |  |  | Not at all worried | 3791 (48.1%) |
|  |  |  |  |  |  |  |
| 114 | CWD_EVEATEN | Ever eaten deer or elk meat | categorical | 36 (0.5%) | No | 3456 (43.8%) |
|  |  |  |  |  | Yes | 4431 (56.2%) |
|  |  |  |  |  |  |  |
| 115 | CWD_EVHUNT | Ever gone hunting for deer or elk | categorical | 75 (0.9%) | No | 6591 (84.0%) |
|  |  |  |  |  | Yes | 1257 (16.0%) |
|  |  |  |  |  |  |  |
| 116 | CWD_HUNTAGE_R | RECODE: Age when first time hunting for deer or elk - topcoded and bottomcoded | categorical | 7807 (98.5%) | \<=6 | 79 (68.1%) |
|  |  |  |  |  | +45 | 37 (31.9%) |
|  |  |  |  |  |  |  |
| 117 | CWD_OFTHUNT | Frequency of deer or elk hunting since first time | categorical | 6671 (84.2%) | Every year | 165 (13.2%) |
|  |  |  |  |  | Most years | 194 (15.5%) |
|  |  |  |  |  | Some years | 285 (22.8%) |
|  |  |  |  |  | Hardly ever | 608 (48.6%) |
|  |  |  |  |  |  |  |
| 118 | CWD_COWYNE | Since 2000, hunted deer or elk in CO, WY, or NE | categorical | 6744 (85.1%) | No | 1138 (96.5%) |
|  |  |  |  |  | Yes | 41 (3.5%) |
|  |  |  |  |  |  |  |
| 119 | CWD_HRVEST00 | Since 2000, harvested any deer or elk while hunting in CO, WY, or NE | categorical | 7810 (98.6%) | No | 57 (50.4%) |
|  |  |  |  |  | Yes | 56 (49.6%) |
|  |  |  |  |  |  |  |
| 120 | CWD_HUNTST05 | Since 2005, hunted for deer or elk in SD, WI, IL, UT, NM, KS, WV, or NY | categorical | 7727 (97.5%) | No | 58 (29.6%) |
|  |  |  |  |  | Yes | 138 (70.4%) |
|  |  |  |  |  |  |  |
| 121 | CWD_HRVEST05 | Since 2005, harvested any deer or elk while hunting in SD, WI, IL, UT, NM, KS, WV, or NY | categorical | 7788 (98.3%) | No | 32 (23.7%) |
|  |  |  |  |  | Yes | 103 (76.3%) |
|  |  |  |  |  |  |  |
| 122 | CWD_HUNTST10 | Since 2010, hunted for deer or elk in VA or ND | categorical | 7893 (99.6%) | No | 10 (33.3%) |
|  |  |  |  |  | Yes | 20 (66.7%) |
|  |  |  |  |  |  |  |
| 123 | CWD_HRVEST10 | Since 2010, harvested any deer or elk while hunting in VA or ND | categorical | 7904 (99.8%) | No | 4 (21.1%) |
|  |  |  |  |  | Yes | 15 (78.9%) |
|  |  |  |  |  |  |  |
| 124 | CWD_HUNTST15 | Since 2015, hunted for deer or elk in MN, MD, MO, PA, TX, IA, or MI | categorical | 7641 (96.4%) | No | 119 (42.2%) |
|  |  |  |  |  | Yes | 163 (57.8%) |
|  |  |  |  |  |  |  |
| 125 | CWD_HRVEST15 | Since 2015, harvested any deer or elk while hunting in MN, MD, MO, PA, TX, IA, or MI | categorical | 7762 (98.0%) | No | 48 (29.8%) |
|  |  |  |  |  | Yes | 113 (70.2%) |
|  |  |  |  |  |  |  |
| 126 | CWD_HUNTST20 | Since 2020, hunted for deer or elk in AR, MT, MS, TN, or OH | categorical | 7784 (98.2%) | No | 74 (53.2%) |
|  |  |  |  |  | Yes | 65 (46.8%) |
|  |  |  |  |  |  |  |
| 127 | CWD_HRVEST20 | Since 2020, harvested any deer or elk while hunting in AR, MT, MS, TN, or OH | categorical | 7858 (99.2%) | No | 17 (26.2%) |
|  |  |  |  |  | Yes | 48 (73.8%) |
|  |  |  |  |  |  |  |
| 128 | CWD_HUNTST12M | Past 12 months, hunted for deer or elk in ID, AL, LA, NC, OK, FL, KY, IN, or CA | categorical | 7729 (97.6%) | No | 121 (62.4%) |
|  |  |  |  |  | Yes | 73 (37.6%) |
|  |  |  |  |  |  |  |
| 129 | CWD_HRVEST12M | Past 12 months, harvested any deer or elk while hunting in ID, AL, LA, NC, OK, FL, KY, IN, or CA | categorical | 7852 (99.1%) | No | 35 (49.3%) |
|  |  |  |  |  | Yes | 36 (50.7%) |
|  |  |  |  |  |  |  |
| 130 | CWD_ANYHUNT | DERIVED: Hunted a deer or elk in a state where chronic wasting disease was identified | categorical | 6689 (84.4%) | Did not hunt in a state where CWD was identified | 745 (60.4%) |
|  |  |  |  |  | Hunted in a state where CWD was identified | 489 (39.6%) |
|  |  |  |  |  |  |  |
| 131 | CWD_ANYHRVEST | DERIVED: Harvested a deer or elk in a state where chronic wasting disease was identified | categorical | 6694 (84.5%) | Did not harvest a deer or elk in a state where CWD was identified | 913 (74.3%) |
|  |  |  |  |  | Harvested a deer or elk in a state where CWD was identified | 316 (25.7%) |
|  |  |  |  |  |  |  |
| 132 | CWD_PROCESSA | Since 2000, processed deer or elk meat myself | categorical | 7610 (96.0%) | No | 113 (36.1%) |
|  |  |  |  |  | Yes | 200 (63.9%) |
|  |  |  |  |  |  |  |
| 133 | CWD_PROCESSB | Since 2000, someone I know processed the deer or elk meat | categorical | 7619 (96.2%) | No | 181 (59.5%) |
|  |  |  |  |  | Yes | 123 (40.5%) |
|  |  |  |  |  |  |  |
| 134 | CWD_PROCESSC | Since 2000, took the meat to a commercial meat processor | categorical | 7613 (96.1%) | No | 152 (49.0%) |
|  |  |  |  |  | Yes | 158 (51.0%) |
|  |  |  |  |  |  |  |
| 135 | CWD_PROCESSD | Since 2000, donated the whole animal to a charity | categorical | 7620 (96.2%) | No | 261 (86.1%) |
|  |  |  |  |  | Yes | 42 (13.9%) |
|  |  |  |  |  |  |  |
| 136 | CWD_PROCESSE | Since 2000, did something else | categorical | 7623 (96.2%) | No | 271 (90.3%) |
|  |  |  |  |  | Yes | 29 (9.7%) |
|  |  |  |  |  |  |  |
| 137 | CWD_EVHEARD | Ever heard of chronic wasting disease, also called zombie deer disease | categorical | 47 (0.6%) | No | 5047 (64.1%) |
|  |  |  |  |  | Yes | 2829 (35.9%) |
|  |  |  |  |  |  |  |
| 138 | CWD_KNWMUCH | Prior knowledge about chronic wasting disease | categorical | 5102 (64.4%) | Hardly anything | 649 (23.0%) |
|  |  |  |  |  | A little bit | 1371 (48.6%) |
|  |  |  |  |  | A fair amount | 642 (22.8%) |
|  |  |  |  |  | A lot | 159 (5.6%) |
|  |  |  |  |  |  |  |
| 139 | CWD_CONTEST | Concern about eating untested deer/elk meat from a chronic wasting disease area | categorical | 5294 (66.8%) | Not at all concerned | 395 (15.0%) |
|  |  |  |  |  | Slightly concerned | 544 (20.7%) |
|  |  |  |  |  | Moderately concerned | 642 (24.4%) |
|  |  |  |  |  | Very concerned | 1048 (39.9%) |
|  |  |  |  |  |  |  |
| 140 | CWD_CONPOS | Concern about eating deer/elk meat that tested positive for chronic wasting disease | categorical | 5282 (66.7%) | Not at all concerned | 153 (5.8%) |
|  |  |  |  |  | Slightly concerned | 176 (6.7%) |
|  |  |  |  |  | Moderately concerned | 335 (12.7%) |
|  |  |  |  |  | Very concerned | 1977 (74.9%) |
|  |  |  |  |  |  |  |
| 141 | CWD_CONHLTH | Concern about chronic wasting disease affecting human health | categorical | 5131 (64.8%) | Not at all concerned | 362 (13.0%) |
|  |  |  |  |  | Slightly concerned | 928 (33.2%) |
|  |  |  |  |  | Moderately concerned | 827 (29.6%) |
|  |  |  |  |  | Very concerned | 675 (24.2%) |
|  |  |  |  |  |  |  |
| 142 | EMP_EMPLOY | Last week worked for pay at job or business | categorical | 46 (0.6%) | No | 3539 (44.9%) |
|  |  |  |  |  | Yes | 4338 (55.1%) |
|  |  |  |  |  |  |  |
| 143 | EMP_ABSENTWK | Had a job/business last week but temporarily absent | categorical | 4380 (55.3%) | No | 3394 (95.8%) |
|  |  |  |  |  | Yes | 149 (4.2%) |
|  |  |  |  |  |  |  |
| 144 | EMP_WHYNOWRK | Main reason not working for pay last week | categorical | 4587 (57.9%) | Unemployed, laid off, looking for work | 289 (8.7%) |
|  |  |  |  |  | Seasonal/contract work | 57 (1.7%) |
|  |  |  |  |  | Retired | 1787 (53.6%) |
|  |  |  |  |  | Unable to work for health reasons/disabled | 512 (15.3%) |
|  |  |  |  |  | Taking care of house or family | 285 (8.5%) |
|  |  |  |  |  | Going to school | 138 (4.1%) |
|  |  |  |  |  | Working at a family-owned job or business, but not for pay | 33 (1.0%) |
|  |  |  |  |  | Other | 235 (7.0%) |
|  |  |  |  |  |  |  |
| 145 | EMPWRKLSWK | DERIVED: Worked last week | categorical | 67 (0.8%) | Did not work | 3279 (41.7%) |
|  |  |  |  |  | Worked, Temp Absent, Seasonal, Family Job-no pay | 4577 (58.3%) |
|  |  |  |  |  |  |  |
| 146 | EMP_INSA | Insurance coverage: Self/family member employer, union | categorical | 238 (3.0%) | No | 3482 (45.3%) |
|  |  |  |  |  | Yes | 4193 (54.6%) |
|  |  |  |  |  | Upcoded: Yes | 10 (0.1%) |
|  |  |  |  |  |  |  |
| 147 | EMP_INSB | Insurance coverage: Self/family member purchased directly | categorical | 365 (4.6%) | No | 6158 (81.5%) |
|  |  |  |  |  | Yes | 1240 (16.4%) |
|  |  |  |  |  | Upcoded: Yes | 160 (2.1%) |
|  |  |  |  |  |  |  |
| 148 | EMP_INSC | Insurance coverage: Medicare | categorical | 278 (3.5%) | No | 5442 (71.2%) |
|  |  |  |  |  | Yes | 2192 (28.7%) |
|  |  |  |  |  | Upcoded: Yes | 11 (0.1%) |
|  |  |  |  |  |  |  |
| 149 | EMP_INSD | Insurance coverage: Medicaid or government assistance plan | categorical | 392 (4.9%) | No | 6141 (81.5%) |
|  |  |  |  |  | Yes | 1384 (18.4%) |
|  |  |  |  |  | Upcoded: Yes | 6 (0.1%) |
|  |  |  |  |  |  |  |
| 150 | EMP_INSE | Insurance coverage: TRICARE or other military | categorical | 392 (4.9%) | No | 7200 (95.6%) |
|  |  |  |  |  | Yes | 331 (4.4%) |
|  |  |  |  |  |  |  |
| 151 | EMP_INSF | Insurance coverage: VA health care | categorical | 386 (4.9%) | No | 7139 (94.7%) |
|  |  |  |  |  | Yes | 397 (5.3%) |
|  |  |  |  |  | Upcoded: Yes | 1 (0.0%) |
|  |  |  |  |  |  |  |
| 152 | EMP_INSG | Insurance coverage: Indian Health Service | categorical | 389 (4.9%) | No | 7419 (98.5%) |
|  |  |  |  |  | Yes | 115 (1.5%) |
|  |  |  |  |  |  |  |
| 153 | EMP_INSH | Insurance coverage: Any other | categorical | 513 (6.5%) | No | 6966 (94.0%) |
|  |  |  |  |  | Yes | 444 (6.0%) |
|  |  |  |  |  |  |  |
| 154 | EMP_INSH_UNK | Private insurance, Other/Unknown Source | categorical | 7479 (94.4%) | No | 347 (78.2%) |
|  |  |  |  |  | Upcoded: Yes | 97 (21.8%) |
|  |  |  |  |  |  |  |
| 155 | EMP_INSH_OTH | Other health insurance reported | categorical | 7479 (94.4%) | No | 389 (87.6%) |
|  |  |  |  |  | Upcoded: Yes | 55 (12.4%) |
|  |  |  |  |  |  |  |
| 156 | INSURED | DERIVED: Health Insurance Status | categorical | 71 (0.9%) | Not insured | 659 (8.4%) |
|  |  |  |  |  | Insured | 7193 (91.6%) |
|  |  |  |  |  |  |  |
| 157 | MAR_MARITAL | Now married, living with a partner, or neither | categorical | 30 (0.4%) | Married | 4063 (51.5%) |
|  |  |  |  |  | Living with a partner together as an unmarried couple | 901 (11.4%) |
|  |  |  |  |  | Neither | 2929 (37.1%) |
|  |  |  |  |  |  |  |
| 158 | MAR_EVMARRY | Ever been married | categorical | 4088 (51.6%) | No | 2341 (61.0%) |
|  |  |  |  |  | Yes | 1494 (39.0%) |
|  |  |  |  |  |  |  |
| 159 | MAR_LEGAL | Current legal marital status | categorical | 7626 (96.3%) | Married | 18 (6.1%) |
|  |  |  |  |  | Widowed | 29 (9.8%) |
|  |  |  |  |  | Divorced | 227 (76.4%) |
|  |  |  |  |  | Separated | 23 (7.7%) |
|  |  |  |  |  |  |  |
| 160 | MAR_WIDIVSEP | Widowed, divorced or separated | categorical | 6741 (85.1%) | Widowed | 406 (34.3%) |
|  |  |  |  |  | Divorced | 699 (59.1%) |
|  |  |  |  |  | Separated | 77 (6.5%) |
|  |  |  |  |  |  |  |
| 161 | MARITAL | DERIVED: Current Marriage Status - 2 levels | categorical | 47 (0.6%) | Married | 4063 (51.6%) |
|  |  |  |  |  | Not married | 3813 (48.4%) |
|  |  |  |  |  |  |  |
| 162 | MARSTAT | DERIVED: Current marital status | categorical | 47 (0.6%) | Married | 4063 (51.6%) |
|  |  |  |  |  | Widowed | 406 (5.2%) |
|  |  |  |  |  | Divorced | 699 (8.9%) |
|  |  |  |  |  | Separated | 77 (1.0%) |
|  |  |  |  |  | Never Married | 1730 (22.0%) |
|  |  |  |  |  | Living with partner | 901 (11.4%) |
|  |  |  |  |  |  |  |
| 163 | LEGMSTAT | DERIVED: Legal marital status | categorical | 47 (0.6%) | Separated | 100 (1.3%) |
|  |  |  |  |  | Divorced | 926 (11.8%) |
|  |  |  |  |  | Married | 4081 (51.8%) |
|  |  |  |  |  | Single/Never Married | 2334 (29.6%) |
|  |  |  |  |  | Widowed | 435 (5.5%) |
|  |  |  |  |  |  |  |
| 164 | CIV_VOL12M | Past 12 months, volunteer activities | categorical | 35 (0.4%) | No | 5483 (69.5%) |
|  |  |  |  |  | Yes | 2405 (30.5%) |
|  |  |  |  |  |  |  |
| 165 | CIV_VOLOTH | Past 12 months, activities at schools or youth organizations | categorical | 2473 (31.2%) | No | 5142 (94.3%) |
|  |  |  |  |  | Yes | 308 (5.7%) |
|  |  |  |  |  |  |  |
| 166 | CIV_MEET | Past 12 months, attend local public meeting | categorical | 94 (1.2%) | No | 6885 (87.9%) |
|  |  |  |  |  | Yes | 944 (12.1%) |
|  |  |  |  |  |  |  |
| 167 | CIV_VOTELOCL | Vote in last local elections | categorical | 98 (1.2%) | No | 2977 (38.0%) |
|  |  |  |  |  | Yes | 4848 (62.0%) |
|  |  |  |  |  |  |  |
| 168 | CIVIC_ENGAGE | DERIVED: Civic engagement including volunteering | categorical | 119 (1.5%) | Yes | 5485 (70.3%) |
|  |  |  |  |  | No | 2319 (29.7%) |
|  |  |  |  |  |  |  |
| 169 | FSC_WORRY | Worried food would run out before got money to buy more | categorical | 65 (0.8%) | Often true | 492 (6.3%) |
|  |  |  |  |  | Sometimes true | 1420 (18.1%) |
|  |  |  |  |  | Never true | 5946 (75.7%) |
|  |  |  |  |  |  |  |
| 170 | FSC_NOTLAST | Food bought did not last, no money to buy more | categorical | 74 (0.9%) | Often true | 476 (6.1%) |
|  |  |  |  |  | Sometimes true | 1162 (14.8%) |
|  |  |  |  |  | Never true | 6211 (79.1%) |
|  |  |  |  |  |  |  |
| 171 | FSC_AFFORD | Couldn’t afford to eat balanced meals | categorical | 77 (1.0%) | Often true | 652 (8.3%) |
|  |  |  |  |  | Sometimes true | 1307 (16.7%) |
|  |  |  |  |  | Never true | 5887 (75.0%) |
|  |  |  |  |  |  |  |
| 172 | FSC_SKIP | Last 30 days, cut meal size or skipped meals | categorical | 5591 (70.6%) | No | 1276 (54.7%) |
|  |  |  |  |  | Yes | 1056 (45.3%) |
|  |  |  |  |  |  |  |
| 174 | FSC_EATLESS | Last 30 days, ate less than felt should | categorical | 5613 (70.8%) | No | 1252 (54.2%) |
|  |  |  |  |  | Yes | 1058 (45.8%) |
|  |  |  |  |  |  |  |
| 175 | FSC_NOTEAT | Last 30 days, hungry but didn’t eat | categorical | 5622 (71.0%) | No | 1545 (67.1%) |
|  |  |  |  |  | Yes | 756 (32.9%) |
|  |  |  |  |  |  |  |
| 176 | FSC_LOSEWT | Last 30 days, lost weight because not enough food | categorical | 5618 (70.9%) | No | 1779 (77.2%) |
|  |  |  |  |  | Yes | 526 (22.8%) |
|  |  |  |  |  |  |  |
| 177 | FSC_NOEATDAY | Last 30 days, didn’t eat for a whole day | categorical | 5609 (70.8%) | No | 1927 (83.3%) |
|  |  |  |  |  | Yes | 387 (16.7%) |
|  |  |  |  |  |  |  |
| 179 | FSSTATD | DERIVED: Food Security Scale 4 category recode | categorical | 50 (0.6%) | High food security | 5507 (69.9%) |
|  |  |  |  |  | Marginal food security | 747 (9.5%) |
|  |  |  |  |  | Low food security | 731 (9.3%) |
|  |  |  |  |  | Very Low food security | 888 (11.3%) |
|  |  |  |  |  |  |  |
| 180 | LAN_OTHERLAN | Speak language other than English at home | categorical | 56 (0.7%) | No | 6486 (82.4%) |
|  |  |  |  |  | Yes | 1381 (17.6%) |
|  |  |  |  |  |  |  |
| 181 | LAN_MEDIA | Language used most often when watching television, reading news, or listening to radio | categorical | 6550 (82.7%) | English | 725 (52.8%) |
|  |  |  |  |  | Spanish | 498 (36.3%) |
|  |  |  |  |  | Another language | 150 (10.9%) |
|  |  |  |  |  |  |  |
| 182 | LAN_DOCTOR | Language used most often when seeing a doctor | categorical | 6563 (82.8%) | English | 1082 (79.6%) |
|  |  |  |  |  | Spanish | 242 (17.8%) |
|  |  |  |  |  | Another language | 36 (2.6%) |
|  |  |  |  |  |  |  |
| 183 | LAN_SOCIAL | Language used most often when participating in social activities | categorical | 6555 (82.7%) | English | 955 (69.8%) |
|  |  |  |  |  | Spanish | 342 (25.0%) |
|  |  |  |  |  | Another language | 71 (5.2%) |
|  |  |  |  |  |  |  |
| 184 | DEM_RACEETH | DERIVED: Race/ethnicity | categorical | 94 (1.2%) | American Indian or Alaska Native alone | 46 (0.6%) |
|  |  |  |  |  | Asian alone | 299 (3.8%) |
|  |  |  |  |  | Black alone | 916 (11.7%) |
|  |  |  |  |  | Hispanic or Latino alone | 914 (11.7%) |
|  |  |  |  |  | Middle Eastern alone | 23 (0.3%) |
|  |  |  |  |  | Native Hawaiian or Pacific Islander alone | 12 (0.2%) |
|  |  |  |  |  | White alone | 5023 (64.2%) |
|  |  |  |  |  | Multiracial and/or Multiethnic | 596 (7.6%) |
|  |  |  |  |  |  |  |
| 185 | INT_ACCESS | Access to internet | categorical | 1 (0.0%) | No | 107 (1.4%) |
|  |  |  |  |  | Yes | 7815 (98.6%) |
|  |  |  |  |  |  |  |
| 186 | INT_HOMEACC | Access to internet from home | categorical | 161 (2.0%) | No | 286 (3.7%) |
|  |  |  |  |  | Yes | 7476 (96.3%) |
|  |  |  |  |  |  |  |
| 187 | INT_USEMED | Past 12 months, use internet to look for health or medical information | categorical | 169 (2.1%) | No | 1785 (23.0%) |
|  |  |  |  |  | Yes | 5969 (77.0%) |
|  |  |  |  |  |  |  |
| 188 | INT_USEDOC | Past 12 months, use internet to communicate with doctor/doctor’s office | categorical | 183 (2.3%) | No | 3039 (39.3%) |
|  |  |  |  |  | Yes | 4701 (60.7%) |
|  |  |  |  |  |  |  |
| 189 | INT_USETEST | Past 12 months, use internet to look up medical test results | categorical | 171 (2.2%) | No | 2644 (34.1%) |
|  |  |  |  |  | Yes | 5108 (65.9%) |
|  |  |  |  |  |  |  |
| 190 | TEL_NONCELL | At least one telephone inside home, not cell phone | categorical | 48 (0.6%) | No | 5739 (72.9%) |
|  |  |  |  |  | Yes | 2136 (27.1%) |
|  |  |  |  |  |  |  |
| 191 | TEL_CELL | Have a working cell phone | categorical | 67 (0.8%) | No | 353 (4.5%) |
|  |  |  |  |  | Yes | 7503 (95.5%) |
|  |  |  |  |  |  |  |
| 192 | TEL_HHCELL | Live with anyone with a working cell phone | categorical | 7650 (96.6%) | No | 151 (55.3%) |
|  |  |  |  |  | Yes | 122 (44.7%) |
|  |  |  |  |  |  |  |
| 193 | SOURCE | Paradata: Panel Provider | categorical | 0 (0.0%) | Panel Provider 1 | 4884 (61.6%) |
|  |  |  |  |  | Panel Provider 2 | 3039 (38.4%) |
|  |  |  |  |  |  |  |
| 194 | QUEX_LANG | Paradata: Language of interview | categorical | 0 (0.0%) | English | 7650 (96.6%) |
|  |  |  |  |  | Spanish | 273 (3.4%) |
|  |  |  |  |  |  |  |
| 195 | P_OUTCOME | Paradata: Outcome code | categorical | 0 (0.0%) | Complete (reached last question) | 7923 (100.0%) |
|  |  |  |  |  |  |  |
| 196 | P_HHSIZE_R | Panel Profile: Numeric Household Size Recode, capped at 6+ | categorical | 0 (0.0%) | 1 | 1413 (17.8%) |
|  |  |  |  |  | 2 | 2767 (34.9%) |
|  |  |  |  |  | 3 | 1512 (19.1%) |
|  |  |  |  |  | 4 | 1115 (14.1%) |
|  |  |  |  |  | 5 | 606 (7.6%) |
|  |  |  |  |  | 6+ | 510 (6.4%) |
|  |  |  |  |  |  |  |
| 197 | P_AGE5YRS_R | Panel Profile: Age Recode - 12 levels | categorical | 0 (0.0%) | 18-19 | 175 (2.2%) |
|  |  |  |  |  | 20-24 | 427 (5.4%) |
|  |  |  |  |  | 25-29 | 583 (7.4%) |
|  |  |  |  |  | 30-34 | 830 (10.5%) |
|  |  |  |  |  | 35-39 | 674 (8.5%) |
|  |  |  |  |  | 40-44 | 738 (9.3%) |
|  |  |  |  |  | 45-49 | 545 (6.9%) |
|  |  |  |  |  | 50-54 | 587 (7.4%) |
|  |  |  |  |  | 55-59 | 675 (8.5%) |
|  |  |  |  |  | 60-64 | 764 (9.6%) |
|  |  |  |  |  | (…) |  |
|  |  |  |  |  |  |  |
| 198 | P_SEX | Panel Profile: Respondent’s sex | categorical | 0 (0.0%) | Male | 3828 (48.3%) |
|  |  |  |  |  | Female | 4095 (51.7%) |
|  |  |  |  |  |  |  |
| 199 | P_EDUCATION_I_R | Panel Profile: Education recode - 3 levels | categorical | 0 (0.0%) | High school graduate or less | 2311 (29.2%) |
|  |  |  |  |  | Some college | 2657 (33.5%) |
|  |  |  |  |  | Bachelor’s degree or above | 2955 (37.3%) |
|  |  |  |  |  |  |  |
| 200 | P_EDUCATION_I_R_IFLG | Imputation flag for panel profile variable: | categorical | 0 (0.0%) | No imputation | 7908 (99.8%) |
|  |  |  |  |  | Statistical imputation | 15 (0.2%) |
|  |  |  |  |  |  |  |
| 201 | P_ONEVISIT | Paradata: Whether the survey was completed in a single session | categorical | 0 (0.0%) | Multiple session or did not complete | 980 (12.4%) |
|  |  |  |  |  | Completed survey in single session | 6943 (87.6%) |
|  |  |  |  |  |  |  |
| 202 | P_REMIND | Paradata: Number of reminders sent | categorical | 0 (0.0%) | 0 | 4779 (60.3%) |
|  |  |  |  |  | 1 | 1216 (15.3%) |
|  |  |  |  |  | 2 | 724 (9.1%) |
|  |  |  |  |  | 3 | 464 (5.9%) |
|  |  |  |  |  | 4 | 348 (4.4%) |
|  |  |  |  |  | 5 | 194 (2.4%) |
|  |  |  |  |  | 6 | 135 (1.7%) |
|  |  |  |  |  | 7 | 60 (0.8%) |
|  |  |  |  |  | 8 | 3 (0.0%) |
|  |  |  |  |  |  |  |
| 203 | P_DEVICE | Paradata: Device used to complete survey (web only) | categorical | 0 (0.0%) | Desktop/Laptop/netbook | 2821 (35.6%) |
|  |  |  |  |  | Smartphone | 4533 (57.2%) |
|  |  |  |  |  | Tablet | 141 (1.8%) |
|  |  |  |  |  | Phone interview (not online) | 428 (5.4%) |
|  |  |  |  |  |  |  |
| 204 | P_MODE | Paradata: Mode of interview | categorical | 0 (0.0%) | Web | 7495 (94.6%) |
|  |  |  |  |  | CATI | 428 (5.4%) |
|  |  |  |  |  |  |  |
| 205 | P_POVERTY3_R | Panel Profile: Poverty Status Recode (ratio of household income to the federal poverty level) - 3 levels | categorical | 0 (0.0%) | 0 - \<1.00 | 1121 (14.1%) |
|  |  |  |  |  | 1.00 - \<2.00 | 1441 (18.2%) |
|  |  |  |  |  | 2.00+ | 5361 (67.7%) |
|  |  |  |  |  |  |  |
| 206 | P_POVERTY4_R | Panel Profile: Poverty Status Recode (ratio of household income to the federal poverty level) - 4 levels | categorical | 0 (0.0%) | 0 - \< 1.00 | 1121 (14.1%) |
|  |  |  |  |  | 1.00 - \< 2.00 | 1441 (18.2%) |
|  |  |  |  |  | 2.00 - \< 4.00 | 2371 (29.9%) |
|  |  |  |  |  | 4.00 + | 2990 (37.7%) |
|  |  |  |  |  |  |  |
| 207 | P_EMPLOY | Panel Profile: Current Employment Status | categorical | 0 (0.0%) | Working | 4917 (62.1%) |
|  |  |  |  |  | Not working–unable to work for health reasons/disabled | 578 (7.3%) |
|  |  |  |  |  | Not working–retired | 1623 (20.5%) |
|  |  |  |  |  | Not working–other | 805 (10.2%) |
|  |  |  |  |  |  |  |
| 208 | P_EMPLOY_R | Panel Profile: Employment Status Recode - 2 Levels | categorical | 0 (0.0%) | Employed | 4917 (62.1%) |
|  |  |  |  |  | Not Employed | 3006 (37.9%) |
|  |  |  |  |  |  |  |
| 209 | CAL_METRO_I | Calibration Variable: IMPUTED: Panel Metropolitan Status derived from FIPS | categorical | 0 (0.0%) | Metropolitan | 6767 (85.4%) |
|  |  |  |  |  | Non-Metropolitan | 1156 (14.6%) |
|  |  |  |  |  |  |  |
| 210 | CAL_METRO_I_IFLG | Imputation flag for profile variable: | categorical | 0 (0.0%) | No imputation | 7885 (99.5%) |
|  |  |  |  |  | Statistical imputation | 38 (0.5%) |
|  |  |  |  |  |  |  |
| 211 | P_REGION | Panel Profile: 4-level region | categorical | 0 (0.0%) | Northeast | 1197 (15.1%) |
|  |  |  |  |  | Midwest | 1881 (23.7%) |
|  |  |  |  |  | South | 2840 (35.8%) |
|  |  |  |  |  | West | 2005 (25.3%) |
|  |  |  |  |  |  |  |
| 212 | P_HOMEOWN_R | Panel Profile: Home Ownership Recode - 2 levels | categorical | 0 (0.0%) | Own or being bought | 5374 (67.8%) |
|  |  |  |  |  | Rent/other arrangement | 2549 (32.2%) |
|  |  |  |  |  |  |  |
| 213 | P_CITIZEN | Panel Profile: Are you a US citizen | categorical | 324 (4.1%) | Not a U.S. citizen | 261 (3.4%) |
|  |  |  |  |  | U.S. citizen | 7338 (96.6%) |
|  |  |  |  |  |  |  |
| 214 | P_VETERAN | Panel Profile: Have you ever served on active duty in the U.S. Armed Forces, military Reserves, or National Guard | categorical | 248 (3.1%) | Not a veteran | 7012 (91.4%) |
|  |  |  |  |  | Veteran | 663 (8.6%) |
|  |  |  |  |  |  |  |
| 215 | P_USBORN | Panel Profile: Is respondent US born | categorical | 394 (5.0%) | No | 613 (8.1%) |
|  |  |  |  |  | Yes | 6916 (91.9%) |
|  |  |  |  |  |  |  |
| 216 | P_ORIENT | Panel Profile: Sexual Orientation | categorical | 461 (5.8%) | Gay or lesbian | 257 (3.4%) |
|  |  |  |  |  | Straight, that is not lesbian/gay | 6702 (89.8%) |
|  |  |  |  |  | Bisexual | 368 (4.9%) |
|  |  |  |  |  | Something else | 135 (1.8%) |
|  |  |  |  |  |  |  |

rss6 (7923 rows and 219 variables, 213 shown) {.table}
