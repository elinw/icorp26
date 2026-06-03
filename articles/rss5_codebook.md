# rss5 Codebook

    ## # Attaching packages: easystats 0.7.6
    ## ✔ bayestestR  0.18.1   ✔ correlation 0.8.8 
    ## ✔ datawizard  1.3.1    ✔ effectsize  1.0.2 
    ## ✔ insight     1.5.1    ✔ modelbased  0.15.0
    ## ✔ performance 0.17.0   ✔ parameters  0.29.1
    ## ✔ report      0.6.4    ✔ see         0.14.0

    ## Warning: Following 7 columns were empty and have been removed:
    ##   FSC_SKIPNUM, FSC_NOEATNUM, PCE_ACTIVE, PCE_TOTAL, PCE_RELA, PCE_SAFE and
    ##   PCE_SOC

| ID | Name | Label | Type | Missings | Values | N |
|:---|:---|:---|:---|---:|---:|---:|
| 1 | HHR_HHNUM_R | Household size - topcoded | categorical | 0 (0.0%) | 2 | 655 (8.1%) |
|  |  |  |  |  | 3 | 2221 (27.4%) |
|  |  |  |  |  | 4 | 2749 (33.9%) |
|  |  |  |  |  | 5 | 1385 (17.1%) |
|  |  |  |  |  | 6+ | 1091 (13.5%) |
|  |  |  |  |  |  |  |
| 2 | NUMCHILD_R | Number of children under 18 years old in household - topcoded | categorical | 0 (0.0%) | 1 | 3199 (39.5%) |
|  |  |  |  |  | 2 | 2802 (34.6%) |
|  |  |  |  |  | 3+ | 2100 (25.9%) |
|  |  |  |  |  |  |  |
| 3 | HHR_RELAT_SC | Relationship to this child? (Selected Child) | categorical | 21 (0.3%) | Parent, stepparent, foster parent | 7572 (93.7%) |
|  |  |  |  |  | Sibling | 94 (1.2%) |
|  |  |  |  |  | Grandparent | 225 (2.8%) |
|  |  |  |  |  | Aunt or uncle | 54 (0.7%) |
|  |  |  |  |  | Other family member | 111 (1.4%) |
|  |  |  |  |  | Other non-family member | 24 (0.3%) |
|  |  |  |  |  |  |  |
| 4 | HHR_LEGALG_SC | Child’s legal guardian? (Selected Child) | categorical | 7572 (93.5%) | Yes | 529 (100.0%) |
|  |  |  |  |  |  |  |
| 5 | SCAGEY | DERIVED: Child’s age | categorical | 0 (0.0%) | 0 months -11 months | 344 (4.2%) |
|  |  |  |  |  | 1 year | 379 (4.7%) |
|  |  |  |  |  | 2 years | 381 (4.7%) |
|  |  |  |  |  | 3 years | 394 (4.9%) |
|  |  |  |  |  | 4 years | 357 (4.4%) |
|  |  |  |  |  | 5 years | 350 (4.3%) |
|  |  |  |  |  | 6 years | 410 (5.1%) |
|  |  |  |  |  | 7 years | 381 (4.7%) |
|  |  |  |  |  | 8 years | 414 (5.1%) |
|  |  |  |  |  | 9 years | 446 (5.5%) |
|  |  |  |  |  | (…) |  |
|  |  |  |  |  |  |  |
| 6 | SCC_GENDER_R | RECODE: Selected child gender for weighting | categorical | 104 (1.3%) | Male | 4156 (52.0%) |
|  |  |  |  |  | Female | 3841 (48.0%) |
|  |  |  |  |  |  |  |
| 7 | SCC_ENROLL | Type of child’s schooling attended | categorical | 1512 (18.7%) | Had not yet started school | 340 (5.2%) |
|  |  |  |  |  | Attended a public, private, or charter school in-person for grades Pre-K to 12 | 5645 (85.7%) |
|  |  |  |  |  | Was homeschooled full-time | 408 (6.2%) |
|  |  |  |  |  | Attended a virtual school full-time | 159 (2.4%) |
|  |  |  |  |  | Attended a college or university | 37 (0.6%) |
|  |  |  |  |  |  |  |
| 8 | SCC_DAYCARE | Does child attend daycare at least once a week? | categorical | 6258 (77.2%) | No | 1152 (62.5%) |
|  |  |  |  |  | Yes | 691 (37.5%) |
|  |  |  |  |  |  |  |
| 9 | SCC_RACE_R | RECODE: Selected child race groupings for weighting | categorical | 66 (0.8%) | Hispanic | 1579 (19.7%) |
|  |  |  |  |  | Non-Hispanic, White Only | 4318 (53.7%) |
|  |  |  |  |  | Non-Hispanic, Black Only | 1008 (12.5%) |
|  |  |  |  |  | Non-Hispanic, Other | 1130 (14.1%) |
|  |  |  |  |  |  |  |
| 10 | SCC_RACEETH | RECODE: Selected Child Race/Ethnicity | categorical | 66 (0.8%) | American Indian or Alaskan Native alone | 60 (0.7%) |
|  |  |  |  |  | Asian alone | 388 (4.8%) |
|  |  |  |  |  | Black or African American alone | 1008 (12.5%) |
|  |  |  |  |  | Hispanic or Latino alone | 990 (12.3%) |
|  |  |  |  |  | Middle Eastern or North African alone | 29 (0.4%) |
|  |  |  |  |  | Native Hawaiian or Pacific Islander alone | 16 (0.2%) |
|  |  |  |  |  | White alone | 4318 (53.7%) |
|  |  |  |  |  | Multiracial and/or Multiethnic | 1226 (15.3%) |
|  |  |  |  |  |  |  |
| 11 | CHS_HEALTH | How would you rate your child’s health? | categorical | 10 (0.1%) | Excellent | 4618 (57.1%) |
|  |  |  |  |  | Very good | 2548 (31.5%) |
|  |  |  |  |  | Good | 804 (9.9%) |
|  |  |  |  |  | Fair | 104 (1.3%) |
|  |  |  |  |  | Poor | 17 (0.2%) |
|  |  |  |  |  |  |  |
| 12 | CCC_ASTHMA | Has doctor ever informed you that your child has asthma? | categorical | 24 (0.3%) | No | 7115 (88.1%) |
|  |  |  |  |  | Yes | 962 (11.9%) |
|  |  |  |  |  |  |  |
| 13 | CCC_ASTHMA_R | RECODE: Child ever diagnosed with asthma | categorical | 24 (0.3%) | No | 7115 (88.1%) |
|  |  |  |  |  | Yes | 962 (11.9%) |
|  |  |  |  |  |  |  |
| 14 | COV_EVCOVID | Has your child ever had COVID-19? | categorical | 41 (0.5%) | No | 4462 (55.4%) |
|  |  |  |  |  | Yes | 3598 (44.6%) |
|  |  |  |  |  |  |  |
| 15 | CDD_INTDIS | Informed of your child’s intellectual disability by a doctor? | categorical | 27 (0.3%) | No | 7736 (95.8%) |
|  |  |  |  |  | Yes | 338 (4.2%) |
|  |  |  |  |  |  |  |
| 16 | CDD_INTDISNW | Does your child currently have an intellectual disability? | categorical | 7767 (95.9%) | No | 138 (41.3%) |
|  |  |  |  |  | Yes | 196 (58.7%) |
|  |  |  |  |  |  |  |
| 17 | CDD_DEVDELAY | Doctor informed you of any other developmental delay of your child? | categorical | 34 (0.4%) | No | 7021 (87.0%) |
|  |  |  |  |  | Yes | 1046 (13.0%) |
|  |  |  |  |  |  |  |
| 18 | CDD_DEVDELNW | Does your child still have this other developmental delay? | categorical | 7062 (87.2%) | No | 369 (35.5%) |
|  |  |  |  |  | Yes | 670 (64.5%) |
|  |  |  |  |  |  |  |
| 19 | CDS_GLASSES | Does your child wear glasses or contacts? | categorical | 768 (9.5%) | No | 5333 (72.7%) |
|  |  |  |  |  | Yes | 2000 (27.3%) |
|  |  |  |  |  |  |  |
| 20 | CDS_DIFSEE | Does your child have difficulty seeing? | categorical | 757 (9.3%) | No difficulty | 6513 (88.7%) |
|  |  |  |  |  | Some difficulty | 634 (8.6%) |
|  |  |  |  |  | A lot of difficulty | 119 (1.6%) |
|  |  |  |  |  | Cannot do this at all | 78 (1.1%) |
|  |  |  |  |  |  |  |
| 21 | CDS_HEARAID | Does your child use a hearing aid? | categorical | 769 (9.5%) | No | 7253 (98.9%) |
|  |  |  |  |  | Yes | 79 (1.1%) |
|  |  |  |  |  |  |  |
| 22 | CDS_DIFHEAR | Does your child have difficulty hearing? | categorical | 756 (9.3%) | No difficulty | 6957 (94.7%) |
|  |  |  |  |  | Some difficulty | 242 (3.3%) |
|  |  |  |  |  | A lot of difficulty | 79 (1.1%) |
|  |  |  |  |  | Cannot do at all | 67 (0.9%) |
|  |  |  |  |  |  |  |
| 23 | CDS_EQUIP | Does your child receive any assistance for walking? | categorical | 778 (9.6%) | No | 7203 (98.4%) |
|  |  |  |  |  | Yes | 120 (1.6%) |
|  |  |  |  |  |  |  |
| 24 | CDS_DIFWALKA | Without using equipment or assistance, does your child have difficulty walking? | categorical | 8085 (99.8%) | No difficulty | 5 (31.2%) |
|  |  |  |  |  | Some difficulty | 5 (31.2%) |
|  |  |  |  |  | A lot of difficulty | 3 (18.8%) |
|  |  |  |  |  | Cannot do this at all | 3 (18.8%) |
|  |  |  |  |  |  |  |
| 25 | CDS_DIFWALKB | When using equipment or assistance, does your child have difficulty walking? | categorical | 8085 (99.8%) | No difficulty | 6 (37.5%) |
|  |  |  |  |  | Some difficulty | 6 (37.5%) |
|  |  |  |  |  | A lot of difficulty | 2 (12.5%) |
|  |  |  |  |  | Cannot do this at all | 2 (12.5%) |
|  |  |  |  |  |  |  |
| 26 | CDS_DIFWALKC | Compared with children of the same age, does your child have difficulty walking? | categorical | 6989 (86.3%) | No difficulty | 1062 (95.5%) |
|  |  |  |  |  | Some difficulty | 30 (2.7%) |
|  |  |  |  |  | A lot of difficulty | 7 (0.6%) |
|  |  |  |  |  | Cannot do at all | 13 (1.2%) |
|  |  |  |  |  |  |  |
| 27 | CDS_DIFYRDSA | Without using assistance, does your child have difficulty walking 100 yards? | categorical | 7997 (98.7%) | No difficulty | 54 (51.9%) |
|  |  |  |  |  | Some difficulty | 28 (26.9%) |
|  |  |  |  |  | A lot of difficulty | 8 (7.7%) |
|  |  |  |  |  | Cannot do this at all | 14 (13.5%) |
|  |  |  |  |  |  |  |
| 28 | CDS_DIFMILEA | Without using assistance, does your child have difficulty walking a third of a mile? | categorical | 8012 (98.9%) | No difficulty | 51 (57.3%) |
|  |  |  |  |  | Some difficulty | 21 (23.6%) |
|  |  |  |  |  | A lot of difficulty | 15 (16.9%) |
|  |  |  |  |  | Cannot do this at all | 2 (2.2%) |
|  |  |  |  |  |  |  |
| 29 | CDS_DIFYRDSB | When using assistance, does your child have difficulty walking 100 yards? | categorical | 7997 (98.7%) | No difficulty | 55 (52.9%) |
|  |  |  |  |  | Some difficulty | 23 (22.1%) |
|  |  |  |  |  | A lot of difficulty | 13 (12.5%) |
|  |  |  |  |  | Cannot do this at all | 13 (12.5%) |
|  |  |  |  |  |  |  |
| 30 | CDS_DIFMILEB | When using assistance, does your child have difficulty walking a third of a mile? | categorical | 8012 (98.9%) | No difficulty | 50 (56.2%) |
|  |  |  |  |  | Some difficulty | 20 (22.5%) |
|  |  |  |  |  | A lot of difficulty | 14 (15.7%) |
|  |  |  |  |  | Cannot do this at all | 5 (5.6%) |
|  |  |  |  |  |  |  |
| 31 | CDS_DIFYRDSC | Compared with children of the same age, does your child have difficulty walking 100 yards? | categorical | 1994 (24.6%) | No difficulty | 5812 (95.2%) |
|  |  |  |  |  | Some difficulty | 204 (3.3%) |
|  |  |  |  |  | A lot of difficulty | 38 (0.6%) |
|  |  |  |  |  | Cannot do this at all | 53 (0.9%) |
|  |  |  |  |  |  |  |
| 32 | CDS_DIFMILEC | Compared with children of the same age, does your child have difficulty walking a third of a mile? | categorical | 2095 (25.9%) | No difficulty | 5587 (93.0%) |
|  |  |  |  |  | Some difficulty | 329 (5.5%) |
|  |  |  |  |  | A lot of difficulty | 72 (1.2%) |
|  |  |  |  |  | Cannot do this at all | 18 (0.3%) |
|  |  |  |  |  |  |  |
| 33 | CDS_DIFUNDER | Does your child have difficulty understanding you? | categorical | 6980 (86.2%) | No difficulty | 1011 (90.2%) |
|  |  |  |  |  | Some difficulty | 78 (7.0%) |
|  |  |  |  |  | A lot of difficulty | 18 (1.6%) |
|  |  |  |  |  | Cannot do this at all | 14 (1.2%) |
|  |  |  |  |  |  |  |
| 34 | CDS_DIFSPEAK | Do you have difficulty understanding your child? | categorical | 6978 (86.1%) | No difficulty | 771 (68.7%) |
|  |  |  |  |  | Some difficulty | 279 (24.8%) |
|  |  |  |  |  | A lot of difficulty | 42 (3.7%) |
|  |  |  |  |  | Cannot do this at all | 31 (2.8%) |
|  |  |  |  |  |  |  |
| 35 | CDS_DIFSPKOT | Your child has difficulty being understood by people inside of this household? | categorical | 1912 (23.6%) | No difficulty | 5525 (89.3%) |
|  |  |  |  |  | Some difficulty | 487 (7.9%) |
|  |  |  |  |  | A lot of difficulty | 111 (1.8%) |
|  |  |  |  |  | Cannot do this at all | 66 (1.1%) |
|  |  |  |  |  |  |  |
| 36 | CDS_DIFUNDOT | Your child has difficulty being understood by people outside of this household? | categorical | 1967 (24.3%) | No difficulty | 5360 (87.4%) |
|  |  |  |  |  | Some difficulty | 553 (9.0%) |
|  |  |  |  |  | A lot of difficulty | 166 (2.7%) |
|  |  |  |  |  | Cannot do this at all | 55 (0.9%) |
|  |  |  |  |  |  |  |
| 37 | CDS_DIFLEARN | Does your child have difficulty learning compared with other children? | categorical | 796 (9.8%) | No difficulty | 6098 (83.5%) |
|  |  |  |  |  | Some difficulty | 901 (12.3%) |
|  |  |  |  |  | A lot of difficulty | 257 (3.5%) |
|  |  |  |  |  | Cannot do this at all | 49 (0.7%) |
|  |  |  |  |  |  |  |
| 38 | CDS_DIFREM | Does your child have difficulty remembering compared with other children? | categorical | 834 (10.3%) | No difficulty | 6118 (84.2%) |
|  |  |  |  |  | Some difficulty | 919 (12.6%) |
|  |  |  |  |  | A lot of difficulty | 181 (2.5%) |
|  |  |  |  |  | Cannot do this at all | 49 (0.7%) |
|  |  |  |  |  |  |  |
| 39 | CDS_DIFPIKUP | Does your child have difficulty picking up small objects compared with other children? | categorical | 6981 (86.2%) | No difficulty | 1070 (95.5%) |
|  |  |  |  |  | Some difficulty | 26 (2.3%) |
|  |  |  |  |  | A lot of difficulty | 15 (1.3%) |
|  |  |  |  |  | Cannot do this at all | 9 (0.8%) |
|  |  |  |  |  |  |  |
| 40 | CDS_DIFSELF | Does your child have difficulty with self-care? | categorical | 1926 (23.8%) | No difficulty | 5656 (91.6%) |
|  |  |  |  |  | Some difficulty | 367 (5.9%) |
|  |  |  |  |  | A lot of difficulty | 111 (1.8%) |
|  |  |  |  |  | Cannot do this at all | 41 (0.7%) |
|  |  |  |  |  |  |  |
| 41 | CAD_ANXIOUS | How often does your child seem very anxious, nervous, or worried? | categorical | 1875 (23.1%) | Never | 2094 (33.6%) |
|  |  |  |  |  | Daily | 441 (7.1%) |
|  |  |  |  |  | Weekly | 758 (12.2%) |
|  |  |  |  |  | Monthly | 651 (10.5%) |
|  |  |  |  |  | A few times a year | 2282 (36.7%) |
|  |  |  |  |  |  |  |
| 42 | CAD_DEPRESS | How often does your child seem very sad or depressed? | categorical | 1926 (23.8%) | Never | 3415 (55.3%) |
|  |  |  |  |  | Daily | 125 (2.0%) |
|  |  |  |  |  | Weekly | 292 (4.7%) |
|  |  |  |  |  | Monthly | 467 (7.6%) |
|  |  |  |  |  | A few times a year | 1876 (30.4%) |
|  |  |  |  |  |  |  |
| 43 | INJ_INJURY3M | Past 3 months, did your child have an accident or an injury? | categorical | 41 (0.5%) | No | 6794 (84.3%) |
|  |  |  |  |  | Yes | 1266 (15.7%) |
|  |  |  |  |  |  |  |
| 44 | CAU_HTHLASTA | How long since your child last saw a doctor? | categorical | 21 (0.3%) | Never | 195 (2.4%) |
|  |  |  |  |  | Less than 12 months ago | 6990 (86.5%) |
|  |  |  |  |  | More than 1 year but less than 2 years ago | 633 (7.8%) |
|  |  |  |  |  | More than 2 years but less than 3 years ago | 129 (1.6%) |
|  |  |  |  |  | More than 3 years but less than 5 years ago | 75 (0.9%) |
|  |  |  |  |  | More than 5 years but less than 10 years ago | 39 (0.5%) |
|  |  |  |  |  | 10 years ago or more | 19 (0.2%) |
|  |  |  |  |  |  |  |
| 45 | CAU_HTHLASTA_R | RECODE: Child saw doctor in past 12 months | categorical | 21 (0.3%) | No | 1090 (13.5%) |
|  |  |  |  |  | Yes | 6990 (86.5%) |
|  |  |  |  |  |  |  |
| 46 | CAU_VISITTYP | Was this a physical, or general purpose check-up for your child? | categorical | 255 (3.1%) | No | 1254 (16.0%) |
|  |  |  |  |  | Yes | 6592 (84.0%) |
|  |  |  |  |  |  |  |
| 47 | CAU_HTHLASTB | About how long has it been since your child last went for a physical? | categorical | 6814 (84.1%) | Never | 163 (12.7%) |
|  |  |  |  |  | Less than 12 months ago | 732 (56.9%) |
|  |  |  |  |  | More than 1 year but less than 2 years ago | 241 (18.7%) |
|  |  |  |  |  | More than 2 years but less than 3 years ago | 80 (6.2%) |
|  |  |  |  |  | More than 3 years but less than 5 years ago | 43 (3.3%) |
|  |  |  |  |  | More than 5 years but less than 10 years ago | 18 (1.4%) |
|  |  |  |  |  | 10 years ago or more | 10 (0.8%) |
|  |  |  |  |  |  |  |
| 48 | CAU_HTHUSUAL | Is there a place that your child usually goes to when sick? | categorical | 31 (0.4%) | Yes, there is a single place | 6017 (74.6%) |
|  |  |  |  |  | No, there is no place | 337 (4.2%) |
|  |  |  |  |  | Yes, there is more than one place | 1716 (21.3%) |
|  |  |  |  |  |  |  |
| 49 | CAU_HTHTYPE | Usual place of child health care | categorical | 382 (4.7%) | Does not go to one place most often | 38 (0.5%) |
|  |  |  |  |  | A doctor’s office or health center | 7017 (90.9%) |
|  |  |  |  |  | Urgent care center or clinic in a drug store or grocery store | 509 (6.6%) |
|  |  |  |  |  | Hospital emergency room | 116 (1.5%) |
|  |  |  |  |  | Some other place | 39 (0.5%) |
|  |  |  |  |  |  |  |
| 50 | CAU_NUMURGNT_R | Past 12 months, number of times child has gone to an urgent care center or clinic in a drug store - topcoded | categorical | 5123 (63.2%) | 1 | 1650 (55.4%) |
|  |  |  |  |  | 2 | 818 (27.5%) |
|  |  |  |  |  | 3 | 266 (8.9%) |
|  |  |  |  |  | 4 | 87 (2.9%) |
|  |  |  |  |  | 5 | 80 (2.7%) |
|  |  |  |  |  | 6+ | 77 (2.6%) |
|  |  |  |  |  |  |  |
| 51 | CAU_NUMHOSER_R | Past 12 months, number of times child has gone to a hospital emergency room - topcoded | categorical | 6858 (84.7%) | 1 | 893 (71.8%) |
|  |  |  |  |  | 2 | 226 (18.2%) |
|  |  |  |  |  | 3 | 53 (4.3%) |
|  |  |  |  |  | 4 | 20 (1.6%) |
|  |  |  |  |  | 5+ | 51 (4.1%) |
|  |  |  |  |  |  |  |
| 52 | CAU_DELAYED | Past 12 months child’s medical care delayed because of the cost | categorical | 60 (0.7%) | No | 7746 (96.3%) |
|  |  |  |  |  | Yes | 295 (3.7%) |
|  |  |  |  |  |  |  |
| 53 | CAU_NOCARE | Past 12 months child didn’t receive medical care because of the cost | categorical | 106 (1.3%) | No | 7752 (97.0%) |
|  |  |  |  |  | Yes | 243 (3.0%) |
|  |  |  |  |  |  |  |
| 54 | CAU_PRESCRIP | Did child take prescription meds during the past 12 months? | categorical | 70 (0.9%) | No | 4522 (56.3%) |
|  |  |  |  |  | Yes | 3509 (43.7%) |
|  |  |  |  |  |  |  |
| 55 | CAU_PRESCRIP_R | RECODE: Child took prescription medication in past 12 months | categorical | 70 (0.9%) | No | 4522 (56.3%) |
|  |  |  |  |  | Yes | 3509 (43.7%) |
|  |  |  |  |  |  |  |
| 56 | CAU_DELAYRX | Past 12 months, did you delay filling a prescription to save money? | categorical | 4615 (57.0%) | No | 3310 (95.0%) |
|  |  |  |  |  | Yes | 176 (5.0%) |
|  |  |  |  |  |  |  |
| 57 | CAU_NORX | Past 12 months, did you need a prescription medication for your child, but did not get it because of the cost? | categorical | 4610 (56.9%) | No | 3317 (95.0%) |
|  |  |  |  |  | Yes | 174 (5.0%) |
|  |  |  |  |  |  |  |
| 58 | CAU_EYEEXAM | Child had an eye exam during the past 12 months | categorical | 75 (0.9%) | No | 4930 (61.4%) |
|  |  |  |  |  | Yes | 3096 (38.6%) |
|  |  |  |  |  |  |  |
| 59 | CAU_THERAPY | Past 12 months, did your child receive physical, speech, rehabilitative, or occupational therapy? | categorical | 113 (1.4%) | No | 7057 (88.3%) |
|  |  |  |  |  | Yes | 931 (11.7%) |
|  |  |  |  |  |  |  |
| 60 | CHI_INSURA | Child insurance coverage: Self/family member employer, union | categorical | 212 (2.6%) | No | 2955 (37.5%) |
|  |  |  |  |  | Yes | 4932 (62.5%) |
|  |  |  |  |  | Upcoded: Yes | 2 (0.0%) |
|  |  |  |  |  |  |  |
| 61 | CHI_INSURB | Child insurance coverage: Self/family member purchased directly | categorical | 395 (4.9%) | No | 6926 (89.9%) |
|  |  |  |  |  | Yes | 744 (9.7%) |
|  |  |  |  |  | Upcoded: Yes | 36 (0.5%) |
|  |  |  |  |  |  |  |
| 62 | CHI_INSURD | Child insurance coverage: Medicaid or government assistance plan | categorical | 357 (4.4%) | No | 5128 (66.2%) |
|  |  |  |  |  | Yes | 2585 (33.4%) |
|  |  |  |  |  | Upcoded: Yes | 31 (0.4%) |
|  |  |  |  |  |  |  |
| 63 | CHI_INSURE | Child insurance coverage: TRICARE or other military | categorical | 437 (5.4%) | No | 7375 (96.2%) |
|  |  |  |  |  | Yes | 289 (3.8%) |
|  |  |  |  |  |  |  |
| 64 | CHI_INSURF | Child insurance coverage: VA | categorical | 417 (5.1%) | No | 7579 (98.6%) |
|  |  |  |  |  | Yes | 104 (1.4%) |
|  |  |  |  |  | Upcoded: Yes | 1 (0.0%) |
|  |  |  |  |  |  |  |
| 65 | CHI_INSURG | Child insurance coverage: Indian Health Service | categorical | 398 (4.9%) | No | 7565 (98.2%) |
|  |  |  |  |  | Yes | 138 (1.8%) |
|  |  |  |  |  |  |  |
| 66 | CHI_INSURH_R | Child insurance coverage: Medicare or any other insurance | categorical | 350 (4.3%) | No | 7411 (95.6%) |
|  |  |  |  |  | Yes | 340 (4.4%) |
|  |  |  |  |  |  |  |
| 67 | CHI_INSURH_UNK | Child has private health insurance, Other/Unknown Source | categorical | 7911 (97.7%) | No | 163 (85.8%) |
|  |  |  |  |  | Upcoded: Yes | 27 (14.2%) |
|  |  |  |  |  |  |  |
| 68 | CHI_INSURH_OTH | Other child health insurance reported | categorical | 7911 (97.7%) | No | 151 (79.5%) |
|  |  |  |  |  | Upcoded: Yes | 39 (20.5%) |
|  |  |  |  |  |  |  |
| 69 | CHI_INSURED | DERIVED: Children’s health insurance status | categorical | 53 (0.7%) | Not insured | 441 (5.5%) |
|  |  |  |  |  | Insured | 7607 (94.5%) |
|  |  |  |  |  |  |  |
| 70 | SLE_VIOLENCE | Child has been a victim of or witnessed violence in neighborhood | categorical | 41 (0.5%) | No | 7572 (93.9%) |
|  |  |  |  |  | Yes | 488 (6.1%) |
|  |  |  |  |  |  |  |
| 71 | SLE_SEVDEPRS | Child ever lived with someone mentally ill/ severely depressed? | categorical | 92 (1.1%) | No | 7013 (87.6%) |
|  |  |  |  |  | Yes | 996 (12.4%) |
|  |  |  |  |  |  |  |
| 72 | SLE_INSULT | Child ever lived with adult who frequently swore or insulted them | categorical | 78 (1.0%) | No | 7577 (94.4%) |
|  |  |  |  |  | Yes | 446 (5.6%) |
|  |  |  |  |  |  |  |
| 73 | SLE_BASNEEDS | Child ever had basic needs not met such as needing food, doctor, or a safe place to stay | categorical | 55 (0.7%) | No | 7723 (96.0%) |
|  |  |  |  |  | Yes | 323 (4.0%) |
|  |  |  |  |  |  |  |
| 74 | PMB_NOPAY | Past 12 months, any of your family members unable to pay medical bills | categorical | 57 (0.7%) | No | 7142 (88.8%) |
|  |  |  |  |  | Yes | 902 (11.2%) |
|  |  |  |  |  |  |  |
| 75 | PMB_NOPAYNOW | Any of your family members currently unable to pay medical bills | categorical | 7203 (88.9%) | No | 266 (29.6%) |
|  |  |  |  |  | Yes | 632 (70.4%) |
|  |  |  |  |  |  |  |
| 76 | PMB_WORRYPAY | Level of concern of ability to pay child’s medical bills | categorical | 54 (0.7%) | Very worried | 394 (4.9%) |
|  |  |  |  |  | Somewhat worried | 2119 (26.3%) |
|  |  |  |  |  | Not at all worried | 5534 (68.8%) |
|  |  |  |  |  |  |  |
| 77 | PMB_WORRYPAY_R | RECODE: Very worried about being able to pay medical bills of child if you become sick/have accident | categorical | 54 (0.7%) | Very worried | 394 (4.9%) |
|  |  |  |  |  | Somewhat/not at all worried | 7653 (95.1%) |
|  |  |  |  |  |  |  |
| 78 | SNP_SNAPBEN | Last 30 days, any of your family members received food stamps | categorical | 67 (0.8%) | No | 6549 (81.5%) |
|  |  |  |  |  | Yes | 1485 (18.5%) |
|  |  |  |  |  |  |  |
| 79 | FSC_WORRY | Family worried food would run out before got money to buy more | categorical | 36 (0.4%) | Often true | 508 (6.3%) |
|  |  |  |  |  | Sometimes true | 1643 (20.4%) |
|  |  |  |  |  | Never true | 5914 (73.3%) |
|  |  |  |  |  |  |  |
| 80 | FSC_NOTLAST | Food family bought did not last, no money to buy more | categorical | 44 (0.5%) | Often true | 481 (6.0%) |
|  |  |  |  |  | Sometimes true | 1385 (17.2%) |
|  |  |  |  |  | Never true | 6191 (76.8%) |
|  |  |  |  |  |  |  |
| 81 | FSC_AFFORD | Family couldn’t afford to eat balanced meals | categorical | 39 (0.5%) | Often true | 592 (7.3%) |
|  |  |  |  |  | Sometimes true | 1473 (18.3%) |
|  |  |  |  |  | Never true | 5997 (74.4%) |
|  |  |  |  |  |  |  |
| 82 | FSC_SKIP | Last 30 days, you cut meal size or skipped meals | categorical | 5481 (67.7%) | No | 1413 (53.9%) |
|  |  |  |  |  | Yes | 1207 (46.1%) |
|  |  |  |  |  |  |  |
| 84 | FSC_EATLESS | Last 30 days, you ate less than felt should | categorical | 5502 (67.9%) | No | 1350 (51.9%) |
|  |  |  |  |  | Yes | 1249 (48.1%) |
|  |  |  |  |  |  |  |
| 85 | FSC_NOTEAT | Last 30 days, you were hungry but didn’t eat | categorical | 5509 (68.0%) | No | 1743 (67.2%) |
|  |  |  |  |  | Yes | 849 (32.8%) |
|  |  |  |  |  |  |  |
| 86 | FSC_LOSEWT | Last 30 days, you lost weight because not enough food | categorical | 5507 (68.0%) | No | 2040 (78.6%) |
|  |  |  |  |  | Yes | 554 (21.4%) |
|  |  |  |  |  |  |  |
| 87 | FSC_NOEATDAY | Last 30 days, you didn’t eat for a whole day | categorical | 5507 (68.0%) | No | 2130 (82.1%) |
|  |  |  |  |  | Yes | 464 (17.9%) |
|  |  |  |  |  |  |  |
| 89 | FSSTATD | DERIVED: Food Security Scale 4 category recode | categorical | 25 (0.3%) | High food security | 5434 (67.3%) |
|  |  |  |  |  | Marginal food security | 813 (10.1%) |
|  |  |  |  |  | Low food security | 856 (10.6%) |
|  |  |  |  |  | Very low food security | 973 (12.0%) |
|  |  |  |  |  |  |  |
| 90 | PCE_EMSUPP | Past 12 months, availability of day-to-day emotional support with your parenting | categorical | 66 (0.8%) | No | 2440 (30.4%) |
|  |  |  |  |  | Yes | 5595 (69.6%) |
|  |  |  |  |  |  |  |
| 91 | PCE_RELYHELP | Your family has relatives that they can count on | categorical | 51 (0.6%) | Strongly agree | 3732 (46.4%) |
|  |  |  |  |  | Somewhat agree | 2879 (35.8%) |
|  |  |  |  |  | Somewhat disagree | 837 (10.4%) |
|  |  |  |  |  | Strongly disagree | 602 (7.5%) |
|  |  |  |  |  |  |  |
| 92 | PCE_HELPOTH | Your family has non-relative members of your community that they can count on | categorical | 94 (1.2%) | Strongly agree | 2656 (33.2%) |
|  |  |  |  |  | Somewhat agree | 3314 (41.4%) |
|  |  |  |  |  | Somewhat disagree | 1326 (16.6%) |
|  |  |  |  |  | Strongly disagree | 711 (8.9%) |
|  |  |  |  |  |  |  |
| 93 | PCE_PATHS | There are sidewalks in your neighborhood | categorical | 57 (0.7%) | No | 2386 (29.7%) |
|  |  |  |  |  | Yes | 5658 (70.3%) |
|  |  |  |  |  |  |  |
| 94 | PCE_PARK | There is a park/ playground in your neighborhood | categorical | 93 (1.1%) | No | 2413 (30.1%) |
|  |  |  |  |  | Yes | 5595 (69.9%) |
|  |  |  |  |  |  |  |
| 95 | PCE_RECCOMM | There is a recreation/ community center in your neighborhood | categorical | 75 (0.9%) | No | 4400 (54.8%) |
|  |  |  |  |  | Yes | 3626 (45.2%) |
|  |  |  |  |  |  |  |
| 96 | PCE_PLAYDAY | How safe is it for children to play outside during the day in your neighborhood? | categorical | 48 (0.6%) | Very safe | 4744 (58.9%) |
|  |  |  |  |  | Somewhat safe | 2909 (36.1%) |
|  |  |  |  |  | Not at all safe | 400 (5.0%) |
|  |  |  |  |  |  |  |
| 97 | PCE_OUTDOORS | How much time does your child spend outdoors on a weekend day? | categorical | 50 (0.6%) | Less than 1 hour per day | 1590 (19.7%) |
|  |  |  |  |  | 1-2 hours per day | 2834 (35.2%) |
|  |  |  |  |  | 2-3 hours per day | 1882 (23.4%) |
|  |  |  |  |  | 3-4 hours per day | 898 (11.2%) |
|  |  |  |  |  | 4 or more hours per day | 847 (10.5%) |
|  |  |  |  |  |  |  |
| 98 | PCE_FRIENDS | Does your child have difficulty making friends? | categorical | 2231 (27.5%) | No difficulty | 3860 (65.8%) |
|  |  |  |  |  | Some difficulty | 1638 (27.9%) |
|  |  |  |  |  | A lot of difficulty | 307 (5.2%) |
|  |  |  |  |  | Cannot do this at all | 65 (1.1%) |
|  |  |  |  |  |  |  |
| 99 | PCE_PLAYFRND | How many days does your child spend playing or hanging out with friends in person, weekly? | categorical | 2307 (28.5%) | 4 or more days per week | 1113 (19.2%) |
|  |  |  |  |  | 1-3 days per week | 2394 (41.3%) |
|  |  |  |  |  | Less than 1 day per week | 1707 (29.5%) |
|  |  |  |  |  | Never | 580 (10.0%) |
|  |  |  |  |  |  |  |
| 100 | PCE_VIDEOFRN | Number of hours per week your child spends talking with friends on the phone/ video/ voice chat | categorical | 2326 (28.7%) | 7 or more hours per week, or an hour or more per day | 1410 (24.4%) |
|  |  |  |  |  | Between 5 and 7 hours per week | 994 (17.2%) |
|  |  |  |  |  | Between 1 and 4 hour(s) per week | 1430 (24.8%) |
|  |  |  |  |  | Less than 1 hour per week | 886 (15.3%) |
|  |  |  |  |  | Never | 1055 (18.3%) |
|  |  |  |  |  |  |  |
| 101 | PCE_RELYFRND | How much can your child rely on friends for help? | categorical | 4781 (59.0%) | A lot | 789 (23.8%) |
|  |  |  |  |  | Some | 1433 (43.2%) |
|  |  |  |  |  | A little | 777 (23.4%) |
|  |  |  |  |  | Not at all | 321 (9.7%) |
|  |  |  |  |  |  |  |
| 102 | PCE_OPENFRND | How much can your child open up to friends? | categorical | 2354 (29.1%) | A lot | 1326 (23.1%) |
|  |  |  |  |  | Some | 2399 (41.7%) |
|  |  |  |  |  | A little | 1466 (25.5%) |
|  |  |  |  |  | Not at all | 556 (9.7%) |
|  |  |  |  |  |  |  |
| 103 | PCE_SHARE | How well can you and your child share ideas or talk about things that really matter? | categorical | 2271 (28.0%) | Very well | 2965 (50.9%) |
|  |  |  |  |  | Somewhat well | 2239 (38.4%) |
|  |  |  |  |  | Not very well | 436 (7.5%) |
|  |  |  |  |  | Not well at all | 190 (3.3%) |
|  |  |  |  |  |  |  |
| 104 | PCE_RELYADLT | Other adult besides you in the neighborhood/ community your child can rely on for guidance/ advice | categorical | 2270 (28.0%) | No | 1091 (18.7%) |
|  |  |  |  |  | Yes | 4740 (81.3%) |
|  |  |  |  |  |  |  |
| 105 | PCE_ACTIVITYA | Activity with your child within past 7 days: Read books or told stories together | categorical | 48 (0.6%) | Not selected | 3623 (45.0%) |
|  |  |  |  |  | Selected | 4430 (55.0%) |
|  |  |  |  |  |  |  |
| 106 | PCE_ACTIVITYB | Activity with your child within past 7 days: Cooked or enjoyed meals together | categorical | 48 (0.6%) | Not selected | 2074 (25.8%) |
|  |  |  |  |  | Selected | 5979 (74.2%) |
|  |  |  |  |  |  |  |
| 107 | PCE_ACTIVITYC | Activity with your child within past 7 days: Educational activities | categorical | 48 (0.6%) | Not selected | 4716 (58.6%) |
|  |  |  |  |  | Selected | 3337 (41.4%) |
|  |  |  |  |  |  |  |
| 108 | PCE_ACTIVITYD | Activity with your child within past 7 days: Spent time outdoors, including walks and sports | categorical | 48 (0.6%) | Not selected | 1990 (24.7%) |
|  |  |  |  |  | Selected | 6063 (75.3%) |
|  |  |  |  |  |  |  |
| 109 | PCE_ACTIVITYE | Activity with your child within past 7 days: Watched TV or other media together | categorical | 48 (0.6%) | Not selected | 1702 (21.1%) |
|  |  |  |  |  | Selected | 6351 (78.9%) |
|  |  |  |  |  |  |  |
| 110 | PCE_ACTIVITYF | Activity with your child within past 7 days: Played video games together | categorical | 1140 (14.1%) | Not selected | 5045 (72.5%) |
|  |  |  |  |  | Selected | 1916 (27.5%) |
|  |  |  |  |  |  |  |
| 111 | PCE_ACTIVITYG | Activity with your child within past 7 days: Played board or card games together | categorical | 1140 (14.1%) | Not selected | 4275 (61.4%) |
|  |  |  |  |  | Selected | 2686 (38.6%) |
|  |  |  |  |  |  |  |
| 112 | PCE_ACTIVITYH | Activity with your child within past 7 days: None of the above | categorical | 48 (0.6%) | Not selected | 7732 (96.0%) |
|  |  |  |  |  | Selected | 321 (4.0%) |
|  |  |  |  |  |  |  |
| 113 | PCE_SPORTS | Child currently participating in activities: Organized sports | categorical | 2251 (27.8%) | No | 3032 (51.8%) |
|  |  |  |  |  | Yes | 2818 (48.2%) |
|  |  |  |  |  |  |  |
| 114 | PCE_CLUBS | Child currently participating in activities: Clubs, organizations, organized lessons | categorical | 2261 (27.9%) | No | 3568 (61.1%) |
|  |  |  |  |  | Yes | 2272 (38.9%) |
|  |  |  |  |  |  |  |
| 115 | PCE_SERVICE | Child currently participating in activities: Community service or volunteer work | categorical | 2263 (27.9%) | No | 4083 (69.9%) |
|  |  |  |  |  | Yes | 1755 (30.1%) |
|  |  |  |  |  |  |  |
| 116 | PCE_ARTS | Child spends free time doing: Music, visual, or performing arts | categorical | 1182 (14.6%) | No | 3384 (48.9%) |
|  |  |  |  |  | Yes | 3535 (51.1%) |
|  |  |  |  |  |  |  |
| 117 | PCE_READING | Child spends free time doing: Reading books or listening to audiobooks | categorical | 1202 (14.8%) | No | 2444 (35.4%) |
|  |  |  |  |  | Yes | 4455 (64.6%) |
|  |  |  |  |  |  |  |
| 118 | PCE_EXERCISE | Past week, number of days your child participated in a physical activity for at least 1 hour | categorical | 2253 (27.8%) | 0 days | 791 (13.5%) |
|  |  |  |  |  | 1-3 days | 2876 (49.2%) |
|  |  |  |  |  | 4-6 days | 1310 (22.4%) |
|  |  |  |  |  | Every day | 871 (14.9%) |
|  |  |  |  |  |  |  |
| 119 | PCE_CLOSESCH | Agree/Disagree: Your child feels close to people at school. | categorical | 2302 (28.4%) | Strongly agree | 2152 (37.1%) |
|  |  |  |  |  | Somewhat agree | 2698 (46.5%) |
|  |  |  |  |  | Somewhat disagree | 708 (12.2%) |
|  |  |  |  |  | Strongly disagree | 241 (4.2%) |
|  |  |  |  |  |  |  |
| 120 | PCE_TEACHERS | Agree/Disagree: Teachers care about your child | categorical | 2297 (28.4%) | Strongly agree | 3231 (55.7%) |
|  |  |  |  |  | Somewhat agree | 2144 (36.9%) |
|  |  |  |  |  | Somewhat disagree | 337 (5.8%) |
|  |  |  |  |  | Strongly disagree | 92 (1.6%) |
|  |  |  |  |  |  |  |
| 121 | PCE_PARTSCH | Agree/Disagree: Your child feels like a part of the school. | categorical | 2306 (28.5%) | Strongly agree | 2936 (50.7%) |
|  |  |  |  |  | Somewhat agree | 2201 (38.0%) |
|  |  |  |  |  | Somewhat disagree | 484 (8.4%) |
|  |  |  |  |  | Strongly disagree | 174 (3.0%) |
|  |  |  |  |  |  |  |
| 122 | PCE_CLOSENEI | Agree/Disagree: Your child feels close to people in your neighborhood | categorical | 2274 (28.1%) | Strongly agree | 1114 (19.1%) |
|  |  |  |  |  | Somewhat agree | 2268 (38.9%) |
|  |  |  |  |  | Somewhat disagree | 1537 (26.4%) |
|  |  |  |  |  | Strongly disagree | 908 (15.6%) |
|  |  |  |  |  |  |  |
| 123 | PCE_NEIGHBOR | Agree/Disagree: Your neighbors care about your child | categorical | 2282 (28.2%) | Strongly agree | 1496 (25.7%) |
|  |  |  |  |  | Somewhat agree | 2571 (44.2%) |
|  |  |  |  |  | Somewhat disagree | 1072 (18.4%) |
|  |  |  |  |  | Strongly disagree | 680 (11.7%) |
|  |  |  |  |  |  |  |
| 124 | PCE_PARTNEI | Agree/Disagree: Your child feels like a part of the neighborhood | categorical | 2286 (28.2%) | Strongly agree | 1506 (25.9%) |
|  |  |  |  |  | Somewhat agree | 2545 (43.8%) |
|  |  |  |  |  | Somewhat disagree | 1114 (19.2%) |
|  |  |  |  |  | Strongly disagree | 650 (11.2%) |
|  |  |  |  |  |  |  |
| 130 | VAX_ALLREC | Child received all recommended childhood vaccines | categorical | 213 (2.6%) | No | 671 (8.5%) |
|  |  |  |  |  | Yes | 7217 (91.5%) |
|  |  |  |  |  |  |  |
| 131 | VAX_FLU | Past 12 months, has child had a flu vaccination? | categorical | 249 (3.1%) | No | 3866 (49.2%) |
|  |  |  |  |  | Yes | 3986 (50.8%) |
|  |  |  |  |  |  |  |
| 132 | VAX_COVID | Child had at least one dose of a COVID-19 vaccination | categorical | 251 (3.1%) | No | 4074 (51.9%) |
|  |  |  |  |  | Yes | 3776 (48.1%) |
|  |  |  |  |  |  |  |
| 133 | VAX_GARDASIL | Child had at least one dose of the human papillomavirus (HPV) vaccine | categorical | 5203 (64.2%) | No | 1044 (36.0%) |
|  |  |  |  |  | Yes | 1854 (64.0%) |
|  |  |  |  |  |  |  |
| 134 | VAX_MMR | Child had the measles vaccine, sometimes called MMR | categorical | 301 (3.7%) | No | 1133 (14.5%) |
|  |  |  |  |  | Yes | 6667 (85.5%) |
|  |  |  |  |  |  |  |
| 135 | VAX_HESCOVID | Hesitance about COVID-19 vaccines for children? | categorical | 71 (0.9%) | Not at all hesitant | 2068 (25.8%) |
|  |  |  |  |  | Not that hesitant | 1210 (15.1%) |
|  |  |  |  |  | Somewhat hesitant | 1847 (23.0%) |
|  |  |  |  |  | Very hesitant | 2905 (36.2%) |
|  |  |  |  |  |  |  |
| 136 | VAX_HESOTH | Hesitance about other childhood vaccines (besides the COVID-19 vaccine)? | categorical | 120 (1.5%) | Not at all hesitant | 3515 (44.0%) |
|  |  |  |  |  | Not that hesitant | 2306 (28.9%) |
|  |  |  |  |  | Somewhat hesitant | 1427 (17.9%) |
|  |  |  |  |  | Very hesitant | 733 (9.2%) |
|  |  |  |  |  |  |  |
| 137 | VAX_CONCOVID | Confidence that the COVID-19 vaccine benefits child? | categorical | 4103 (50.6%) | Very confident | 1071 (26.8%) |
|  |  |  |  |  | Somewhat confident | 1106 (27.7%) |
|  |  |  |  |  | Not at all confident | 1821 (45.5%) |
|  |  |  |  |  |  |  |
| 138 | VAX_CONOTH | Confidence that other childhood vaccines benefit child (besides the COVID-19 vaccine)? | categorical | 4110 (50.7%) | Very confident | 2166 (54.3%) |
|  |  |  |  |  | Somewhat confident | 1390 (34.8%) |
|  |  |  |  |  | Not at all confident | 435 (10.9%) |
|  |  |  |  |  |  |  |
| 139 | VAX_IMPCOVID | Importance of the COVID-19 vaccine is for child’s health? | categorical | 4111 (50.7%) | Very important | 986 (24.7%) |
|  |  |  |  |  | Somewhat important | 1169 (29.3%) |
|  |  |  |  |  | Not at all important | 1835 (46.0%) |
|  |  |  |  |  |  |  |
| 140 | VAX_IMPOTH | Importance of other childhood vaccines are for child’s health (besides the COVID-19 vaccine)? | categorical | 4119 (50.8%) | Very important | 2507 (63.0%) |
|  |  |  |  |  | Somewhat important | 1159 (29.1%) |
|  |  |  |  |  | Not at all important | 316 (7.9%) |
|  |  |  |  |  |  |  |
| 141 | VAX_SAFECOV | Confidence that the COVID-19 vaccine is safe for child? | categorical | 127 (1.6%) | Very confident | 2252 (28.2%) |
|  |  |  |  |  | Somewhat confident | 2316 (29.0%) |
|  |  |  |  |  | Not at all confident | 3406 (42.7%) |
|  |  |  |  |  |  |  |
| 142 | VAX_SAFEOTH | Confidence that other childhood vaccines are safe for child (besides the COVID-19 vaccine)? | categorical | 130 (1.6%) | Very confident | 4099 (51.4%) |
|  |  |  |  |  | Somewhat confident | 3009 (37.7%) |
|  |  |  |  |  | Not at all confident | 863 (10.8%) |
|  |  |  |  |  |  |  |
| 143 | VAX_EXEMPT | Ever requested permission or an exemption for child to attend daycare or school without required vaccination? | categorical | 104 (1.3%) | No | 7545 (94.3%) |
|  |  |  |  |  | Yes | 452 (5.7%) |
|  |  |  |  |  |  |  |
| 144 | VAX_TOOMANY | Ever been concerned about child receiving too many vaccines at one time? | categorical | 121 (1.5%) | No | 5524 (69.2%) |
|  |  |  |  |  | Yes | 2456 (30.8%) |
|  |  |  |  |  |  |  |
| 145 | VAX_SIDEEFF | Ever been concerned about child experiencing serious, long term side effects from getting vaccinated? | categorical | 131 (1.6%) | No | 5221 (65.5%) |
|  |  |  |  |  | Yes | 2749 (34.5%) |
|  |  |  |  |  |  |  |
| 146 | VAX_DECISIONA | Because concerned getting child vaccinated: You delayed vaccinations | categorical | 4720 (58.3%) | Not selected | 2737 (81.0%) |
|  |  |  |  |  | Selected | 644 (19.0%) |
|  |  |  |  |  |  |  |
| 147 | VAX_DECISIONB | Because concerned getting child vaccinated: You reduced number of vaccinations given in a single visit | categorical | 4720 (58.3%) | Not selected | 2252 (66.6%) |
|  |  |  |  |  | Selected | 1129 (33.4%) |
|  |  |  |  |  |  |  |
| 148 | VAX_DECISIONC | Because concerned getting child vaccinated: You declined some vaccinations | categorical | 4720 (58.3%) | Not selected | 2457 (72.7%) |
|  |  |  |  |  | Selected | 924 (27.3%) |
|  |  |  |  |  |  |  |
| 149 | VAX_DECISIOND | Because concerned getting child vaccinated: You declined all vaccinations | categorical | 4720 (58.3%) | Not selected | 3212 (95.0%) |
|  |  |  |  |  | Selected | 169 (5.0%) |
|  |  |  |  |  |  |  |
| 150 | VAX_DECISIONE | Because concerned getting child vaccinated: None of the above | categorical | 4720 (58.3%) | Not selected | 2019 (59.7%) |
|  |  |  |  |  | Selected | 1362 (40.3%) |
|  |  |  |  |  |  |  |
| 151 | VAX_KNOWEFF | Personally know anyone who has had a serious, long-term side effect from a vaccine? | categorical | 122 (1.5%) | No | 6314 (79.1%) |
|  |  |  |  |  | Yes | 1665 (20.9%) |
|  |  |  |  |  |  |  |
| 152 | VAX_WHOCOMMA | Communicated getting vaccine for your child: Doctor or other health care providers | categorical | 113 (1.4%) | Not selected | 1156 (14.5%) |
|  |  |  |  |  | Selected | 6832 (85.5%) |
|  |  |  |  |  |  |  |
| 153 | VAX_WHOCOMMB | Communicated getting vaccine for your child: School or daycare | categorical | 113 (1.4%) | Not selected | 5643 (70.6%) |
|  |  |  |  |  | Selected | 2345 (29.4%) |
|  |  |  |  |  |  |  |
| 154 | VAX_WHOCOMMC | Communicated getting vaccine for your child: Some other source | categorical | 113 (1.4%) | Not selected | 7365 (92.2%) |
|  |  |  |  |  | Selected | 623 (7.8%) |
|  |  |  |  |  |  |  |
| 155 | VAX_WHOCOMMD | Communicated getting vaccine for your child: Nobody has communicated with me about my child | categorical | 113 (1.4%) | Not selected | 7302 (91.4%) |
|  |  |  |  |  | Selected | 686 (8.6%) |
|  |  |  |  |  |  |  |
| 156 | VAX_HOWCOMMA | How doctors have communicated about your child getting vaccines: Face to Face | categorical | 1309 (16.2%) | Not selected | 475 (7.0%) |
|  |  |  |  |  | Selected | 6317 (93.0%) |
|  |  |  |  |  |  |  |
| 157 | VAX_HOWCOMMB | How doctors have communicated about your child getting vaccines: Email or other electronic messages | categorical | 1309 (16.2%) | Not selected | 5144 (75.7%) |
|  |  |  |  |  | Selected | 1648 (24.3%) |
|  |  |  |  |  |  |  |
| 158 | VAX_HOWCOMMC | How doctors have communicated about your child getting vaccines: Text message | categorical | 1309 (16.2%) | Not selected | 6361 (93.7%) |
|  |  |  |  |  | Selected | 431 (6.3%) |
|  |  |  |  |  |  |  |
| 159 | VAX_HOWCOMMD | How doctors have communicated about your child getting vaccines: Phone | categorical | 1309 (16.2%) | Not selected | 6163 (90.7%) |
|  |  |  |  |  | Selected | 629 (9.3%) |
|  |  |  |  |  |  |  |
| 160 | VAX_HOWCOMME | How doctors have communicated about your child getting vaccines: Information sheets | categorical | 1309 (16.2%) | Not selected | 5155 (75.9%) |
|  |  |  |  |  | Selected | 1637 (24.1%) |
|  |  |  |  |  |  |  |
| 161 | VAX_HOWCOMMF | How doctors have communicated about your child getting vaccines: Other | categorical | 1309 (16.2%) | Not selected | 6706 (98.7%) |
|  |  |  |  |  | Selected | 86 (1.3%) |
|  |  |  |  |  |  |  |
| 162 | VAX_RECVACCA | Doctor recommended your child get vaccine: Influenza | categorical | 1354 (16.7%) | Not selected | 1620 (24.0%) |
|  |  |  |  |  | Selected | 5127 (76.0%) |
|  |  |  |  |  |  |  |
| 163 | VAX_RECVACCB | Doctor recommended your child get vaccine: COVID-19 | categorical | 1354 (16.7%) | Not selected | 2948 (43.7%) |
|  |  |  |  |  | Selected | 3799 (56.3%) |
|  |  |  |  |  |  |  |
| 164 | VAX_RECVACCC | Doctor recommended your child get vaccine: HPV or Gardasil | categorical | 4222 (52.1%) | Not selected | 1607 (41.4%) |
|  |  |  |  |  | Selected | 2272 (58.6%) |
|  |  |  |  |  |  |  |
| 165 | VAX_RECVACCD | Doctor recommended your child get vaccine: None of the above | categorical | 1354 (16.7%) | Not selected | 5604 (83.1%) |
|  |  |  |  |  | Selected | 1143 (16.9%) |
|  |  |  |  |  |  |  |
| 166 | VAX_TRUSTDOC | Child’s doctor or health care provider is your most trusted source of information about childhood vaccines | categorical | 122 (1.5%) | No | 1487 (18.6%) |
|  |  |  |  |  | Yes | 6492 (81.4%) |
|  |  |  |  |  |  |  |
| 167 | VAX_INFOSCHA | Feelings about receiving information on vaccines from child’s school or daycare | categorical | 3947 (48.7%) | I would appreciate receiving this information. | 1927 (46.4%) |
|  |  |  |  |  | I would not appreciate receiving this information. | 935 (22.5%) |
|  |  |  |  |  | Not sure | 1292 (31.1%) |
|  |  |  |  |  |  |  |
| 168 | VAX_INFOSCHB | Feelings about the information on vaccines you received from child’s school or daycare | categorical | 5768 (71.2%) | I appreciated receiving this information. | 1792 (76.8%) |
|  |  |  |  |  | I did not appreciate receiving this information | 202 (8.7%) |
|  |  |  |  |  | Not sure | 339 (14.5%) |
|  |  |  |  |  |  |  |
| 169 | VAX_DIFFICULT | Difficulty getting your child vaccinated | categorical | 111 (1.4%) | I have not tried to get my child vaccinated | 431 (5.4%) |
|  |  |  |  |  | Not at all difficult | 6638 (83.1%) |
|  |  |  |  |  | Somewhat difficult | 710 (8.9%) |
|  |  |  |  |  | Very difficult | 211 (2.6%) |
|  |  |  |  |  |  |  |
| 170 | VAX_TRANSPO | Agree/Disagree: Getting your child vaccinated is difficult because of a lack of reliable transportation. | categorical | 7186 (88.7%) | Strongly agree | 42 (4.6%) |
|  |  |  |  |  | Somewhat agree | 167 (18.3%) |
|  |  |  |  |  | Somewhat disagree | 148 (16.2%) |
|  |  |  |  |  | Strongly disagree | 558 (61.0%) |
|  |  |  |  |  |  |  |
| 171 | VAX_COST | Agree/Disagree: Getting your child vaccinated is difficult because of the cost. | categorical | 7188 (88.7%) | Strongly agree | 51 (5.6%) |
|  |  |  |  |  | Somewhat agree | 160 (17.5%) |
|  |  |  |  |  | Somewhat disagree | 157 (17.2%) |
|  |  |  |  |  | Strongly disagree | 545 (59.7%) |
|  |  |  |  |  |  |  |
| 172 | VAX_TIME | Agree/Disagree: It is hard to find the time to take your child to get vaccinated. | categorical | 7193 (88.8%) | Strongly agree | 89 (9.8%) |
|  |  |  |  |  | Somewhat agree | 298 (32.8%) |
|  |  |  |  |  | Somewhat disagree | 160 (17.6%) |
|  |  |  |  |  | Strongly disagree | 361 (39.8%) |
|  |  |  |  |  |  |  |
| 173 | VAX_SOCCOVID | Sentiment of discussions seen on social media about the COVID-19 vaccine for children | categorical | 133 (1.6%) | I have not seen discussions on social media about the COVID-19 vaccine for children. | 2569 (32.2%) |
|  |  |  |  |  | Mostly positive | 833 (10.5%) |
|  |  |  |  |  | Mostly negative | 1178 (14.8%) |
|  |  |  |  |  | A mix, that is, both positive and negative | 3073 (38.6%) |
|  |  |  |  |  | Mostly Neutral | 315 (4.0%) |
|  |  |  |  |  |  |  |
| 174 | VAX_SOCOTH | Sentiment of discussions seen on social media about other childhood vaccines (besides the COVID-19 vaccine) | categorical | 187 (2.3%) | I have not seen discussions on social media about other childhood vaccines. | 2602 (32.9%) |
|  |  |  |  |  | Mostly positive | 1263 (16.0%) |
|  |  |  |  |  | Mostly negative | 706 (8.9%) |
|  |  |  |  |  | A mix, that is, both positive and negative | 2955 (37.3%) |
|  |  |  |  |  | Mostly Neutral | 388 (4.9%) |
|  |  |  |  |  |  |  |
| 175 | VAX_NEWSCOV | Sentiment of discussions seen on television news about the COVID-19 vaccine for children | categorical | 205 (2.5%) | I have not seen discussions on television news about the COVID-19 vaccine for children. | 2888 (36.6%) |
|  |  |  |  |  | Mostly positive | 1651 (20.9%) |
|  |  |  |  |  | Mostly negative | 605 (7.7%) |
|  |  |  |  |  | A mix, that is, both positive and negative | 2341 (29.6%) |
|  |  |  |  |  | Mostly Neutral | 411 (5.2%) |
|  |  |  |  |  |  |  |
| 176 | VAX_NEWSOTH | Sentiment of discussions seen on television news about other childhood vaccines (besides the COVID-19 vaccine) | categorical | 206 (2.5%) | I have not seen discussions on television news about other childhood vaccines. | 2875 (36.4%) |
|  |  |  |  |  | Mostly positive | 2049 (26.0%) |
|  |  |  |  |  | Mostly negative | 388 (4.9%) |
|  |  |  |  |  | A mix, that is, both positive and negative | 2148 (27.2%) |
|  |  |  |  |  | Mostly Neutral | 435 (5.5%) |
|  |  |  |  |  |  |  |
| 177 | VAX_CONVCOV | Sentiment of conversations you have with friends or family about the COVID-19 vaccine for children | categorical | 183 (2.3%) | I do not have conversations with friends or family about the COVID-19 vaccine for children. | 1850 (23.4%) |
|  |  |  |  |  | Mostly positive | 1695 (21.4%) |
|  |  |  |  |  | Mostly negative | 1387 (17.5%) |
|  |  |  |  |  | A mix, that is, both positive and negative | 2501 (31.6%) |
|  |  |  |  |  | Mostly Neutral | 485 (6.1%) |
|  |  |  |  |  |  |  |
| 178 | VAX_CONVOTH | Sentiment of conversations with friends or family about other childhood vaccines (besides the COVID-19 vaccine) | categorical | 181 (2.2%) | I do not have conversations with friends or family about other childhood vaccines. | 1959 (24.7%) |
|  |  |  |  |  | Mostly positive | 2633 (33.2%) |
|  |  |  |  |  | Mostly negative | 556 (7.0%) |
|  |  |  |  |  | A mix, that is, both positive and negative | 2223 (28.1%) |
|  |  |  |  |  | Mostly Neutral | 549 (6.9%) |
|  |  |  |  |  |  |  |
| 179 | VAX_MMRUS | Agree/Disagree: Measles poses a health risk in the United States. | categorical | 152 (1.9%) | Strongly agree | 2384 (30.0%) |
|  |  |  |  |  | Somewhat agree | 3314 (41.7%) |
|  |  |  |  |  | Somewhat disagree | 1555 (19.6%) |
|  |  |  |  |  | Strongly disagree | 696 (8.8%) |
|  |  |  |  |  |  |  |
| 180 | VAX_MMRLOCAL | Agree/Disagree: Measles poses a health risk in my city or town. | categorical | 184 (2.3%) | Strongly agree | 1473 (18.6%) |
|  |  |  |  |  | Somewhat agree | 2568 (32.4%) |
|  |  |  |  |  | Somewhat disagree | 2455 (31.0%) |
|  |  |  |  |  | Strongly disagree | 1421 (17.9%) |
|  |  |  |  |  |  |  |
| 181 | VAX_MMROUTB | Past 6 months, heard or seen anything about recent measles outbreaks in the United States? | categorical | 109 (1.3%) | No | 5354 (67.0%) |
|  |  |  |  |  | Yes | 2638 (33.0%) |
|  |  |  |  |  |  |  |
| 182 | VAX_MMREDU | How concerned are you about 21 day unvaccinated measles quarantine causing a disruption to your child’s education? | categorical | 1939 (23.9%) | Very concerned | 1350 (21.9%) |
|  |  |  |  |  | Somewhat concerned | 1825 (29.6%) |
|  |  |  |  |  | Not at all concerned | 2987 (48.5%) |
|  |  |  |  |  |  |  |
| 183 | ACS_DEAF | Is your child deaf or have serious difficulty hearing? | categorical | 785 (9.7%) | No | 7218 (98.7%) |
|  |  |  |  |  | Yes | 98 (1.3%) |
|  |  |  |  |  |  |  |
| 184 | ACS_BLIND | Is your child blind or have serious difficulty seeing even when wearing glasses? | categorical | 827 (10.2%) | No | 7133 (98.1%) |
|  |  |  |  |  | Yes | 141 (1.9%) |
|  |  |  |  |  |  |  |
| 185 | ACS_CONCEN | Does your child have serious difficulty concentrating, remembering, or making decisions? | categorical | 1908 (23.6%) | No | 5461 (88.2%) |
|  |  |  |  |  | Yes | 732 (11.8%) |
|  |  |  |  |  |  |  |
| 186 | ACS_WALKING | Does your child have serious difficulty walking or climbing stairs? | categorical | 1917 (23.7%) | No | 6099 (98.6%) |
|  |  |  |  |  | Yes | 85 (1.4%) |
|  |  |  |  |  |  |  |
| 187 | ACS_DRESS | Does your child have difficulty dressing or bathing? | categorical | 1928 (23.8%) | No | 6010 (97.4%) |
|  |  |  |  |  | Yes | 163 (2.6%) |
|  |  |  |  |  |  |  |
| 188 | ACS_ERRANDS | Does your child have difficulty doing errands alone such as visiting a doctor’s office or shopping? | categorical | 6153 (76.0%) | No | 1823 (93.6%) |
|  |  |  |  |  | Yes | 125 (6.4%) |
|  |  |  |  |  |  |  |
| 189 | ACS_DISABLED | DERIVED: Child’s ACS disability status | categorical | 972 (12.0%) | Without a disability | 6159 (86.4%) |
|  |  |  |  |  | With a disability | 970 (13.6%) |
|  |  |  |  |  |  |  |
| 190 | WALKDIFF217 | DERIVED: Child’s walking difficulty | categorical | 927 (11.4%) | Ambulatory difficulty (having serious difficulty walking or climbing stairs) | 218 (3.0%) |
|  |  |  |  |  | No ambulatory difficulty | 6956 (97.0%) |
|  |  |  |  |  |  |  |
| 191 | COMMDIFF217 | DERIVED: Child’s communication difficulty | categorical | 859 (10.6%) | Communication difficulty (a lot of difficulty, cannot do at all) | 353 (4.9%) |
|  |  |  |  |  | No communication difficulty | 6889 (95.1%) |
|  |  |  |  |  |  |  |
| 192 | KNW_CONFIDNT | Confidence in your responses about your child | categorical | 76 (0.9%) | Very confident | 6839 (85.2%) |
|  |  |  |  |  | Somewhat confident | 900 (11.2%) |
|  |  |  |  |  | Not very confident | 141 (1.8%) |
|  |  |  |  |  | Not at all confident | 145 (1.8%) |
|  |  |  |  |  |  |  |
| 193 | KNW_HELP | Received help answer questions about child | categorical | 89 (1.1%) | No | 7802 (97.4%) |
|  |  |  |  |  | Yes | 210 (2.6%) |
|  |  |  |  |  |  |  |
| 194 | CHR_CHLEV | Ever told you had high cholesterol (adult) | categorical | 72 (0.9%) | No | 6080 (75.7%) |
|  |  |  |  |  | Yes | 1949 (24.3%) |
|  |  |  |  |  |  |  |
| 195 | SOC_ERRANDS | You have difficulty doing errands alone (adult) | categorical | 75 (0.9%) | No difficulty | 6943 (86.5%) |
|  |  |  |  |  | Some difficulty | 740 (9.2%) |
|  |  |  |  |  | A lot of difficulty | 245 (3.1%) |
|  |  |  |  |  | Cannot do this at all | 98 (1.2%) |
|  |  |  |  |  |  |  |
| 196 | SOC_PARACTIV | You have difficulty participating in social activities (adult) | categorical | 91 (1.1%) | No difficulty | 6474 (80.8%) |
|  |  |  |  |  | Some difficulty | 1118 (14.0%) |
|  |  |  |  |  | A lot of difficulty | 320 (4.0%) |
|  |  |  |  |  | Cannot do this at all | 98 (1.2%) |
|  |  |  |  |  |  |  |
| 197 | SOC_SCWRKLIM | Work limited due to your health problem (adult) | categorical | 89 (1.1%) | No | 6952 (86.8%) |
|  |  |  |  |  | Yes | 1060 (13.2%) |
|  |  |  |  |  |  |  |
| 198 | CIV_MEET | Past 12 months, you attended local public meeting (adult) | categorical | 137 (1.7%) | No | 6644 (83.4%) |
|  |  |  |  |  | Yes | 1320 (16.6%) |
|  |  |  |  |  |  |  |
| 199 | LAN_OTHERLAN | You speak language other than English at home (adult) | categorical | 95 (1.2%) | No | 6126 (76.5%) |
|  |  |  |  |  | Yes | 1880 (23.5%) |
|  |  |  |  |  |  |  |
| 200 | LAN_MEDIA | Language you use most often when watching TV, read news, listen to radio (adult) | categorical | 6226 (76.9%) | English | 1074 (57.3%) |
|  |  |  |  |  | Spanish | 643 (34.3%) |
|  |  |  |  |  | Another language | 158 (8.4%) |
|  |  |  |  |  |  |  |
| 201 | LAN_DOCTOR | What language you use most often when seeing a doctor (adult) | categorical | 6241 (77.0%) | English | 1464 (78.7%) |
|  |  |  |  |  | Spanish | 347 (18.7%) |
|  |  |  |  |  | Another language | 49 (2.6%) |
|  |  |  |  |  |  |  |
| 202 | LAN_SOCIAL | What language you use most often when participating in social activities (adult) | categorical | 6238 (77.0%) | English | 1333 (71.6%) |
|  |  |  |  |  | Spanish | 463 (24.9%) |
|  |  |  |  |  | Another language | 67 (3.6%) |
|  |  |  |  |  |  |  |
| 203 | MAR_MARITAL | Are you now married, living with a partner, or neither (adult) | categorical | 39 (0.5%) | Married | 5585 (69.3%) |
|  |  |  |  |  | Living with a partner together as an unmarried couple | 1030 (12.8%) |
|  |  |  |  |  | Neither | 1447 (17.9%) |
|  |  |  |  |  |  |  |
| 204 | MAR_EVMARRY | Have you ever been married (adult) | categorical | 5621 (69.4%) | No | 1538 (62.0%) |
|  |  |  |  |  | Yes | 942 (38.0%) |
|  |  |  |  |  |  |  |
| 205 | MAR_LEGAL | Your current legal marital status (adult) | categorical | 7793 (96.2%) | Married | 26 (8.4%) |
|  |  |  |  |  | Widowed | 24 (7.8%) |
|  |  |  |  |  | Divorced | 232 (75.3%) |
|  |  |  |  |  | Separated | 26 (8.4%) |
|  |  |  |  |  |  |  |
| 206 | MAR_WIDIVSEP | Are you widowed, divorced or separated (adult) | categorical | 7478 (92.3%) | Widowed | 77 (12.4%) |
|  |  |  |  |  | Divorced | 448 (71.9%) |
|  |  |  |  |  | Separated | 98 (15.7%) |
|  |  |  |  |  |  |  |
| 207 | MARITAL | RECODE: Your current Marriage Status - 2 levels (adult) | categorical | 49 (0.6%) | Married | 5585 (69.4%) |
|  |  |  |  |  | Not married | 2467 (30.6%) |
|  |  |  |  |  |  |  |
| 208 | MARSTAT | DERIVED: Your current marital status (adult) | categorical | 49 (0.6%) | Married | 5585 (69.4%) |
|  |  |  |  |  | Widowed | 77 (1.0%) |
|  |  |  |  |  | Divorced | 448 (5.6%) |
|  |  |  |  |  | Separated | 98 (1.2%) |
|  |  |  |  |  | Never Married | 814 (10.1%) |
|  |  |  |  |  | Living with partner | 1030 (12.8%) |
|  |  |  |  |  |  |  |
| 209 | LEGMSTAT | DERIVED: Your legal marital status (adult) | categorical | 49 (0.6%) | Separated | 124 (1.5%) |
|  |  |  |  |  | Divorced | 680 (8.4%) |
|  |  |  |  |  | Married | 5611 (69.7%) |
|  |  |  |  |  | Single/Never Married | 1536 (19.1%) |
|  |  |  |  |  | Widowed | 101 (1.3%) |
|  |  |  |  |  |  |  |
| 210 | GROUP | Paradata: Randomize group assignment | categorical | 0 (0.0%) | Group 1 | 4055 (50.1%) |
|  |  |  |  |  | Group 2 | 4046 (49.9%) |
|  |  |  |  |  |  |  |
| 211 | SOURCE | Paradata: Panel Provider | categorical | 0 (0.0%) | Panel Provider 1 | 4166 (51.4%) |
|  |  |  |  |  | Panel Provider 2 | 3935 (48.6%) |
|  |  |  |  |  |  |  |
| 212 | QUEX_LANG | Language of interview | categorical | 0 (0.0%) | English | 7706 (95.1%) |
|  |  |  |  |  | Spanish | 395 (4.9%) |
|  |  |  |  |  |  |  |
| 213 | P_OUTCOME | Paradata: Outcome code | categorical | 0 (0.0%) | Completed roster, screened in, fully completed interview, and retained | 8101 (100.0%) |
|  |  |  |  |  |  |  |
| 214 | P_AGE_10R | DERIVED: Age - 10 levels | categorical | 0 (0.0%) | 18-24 | 202 (2.5%) |
|  |  |  |  |  | 25-29 | 500 (6.2%) |
|  |  |  |  |  | 30-34 | 1139 (14.1%) |
|  |  |  |  |  | 35-39 | 1639 (20.2%) |
|  |  |  |  |  | 40-44 | 1868 (23.1%) |
|  |  |  |  |  | 45-49 | 1219 (15.0%) |
|  |  |  |  |  | 50-54 | 799 (9.9%) |
|  |  |  |  |  | 55-59 | 387 (4.8%) |
|  |  |  |  |  | 60-64 | 183 (2.3%) |
|  |  |  |  |  | 65+ | 165 (2.0%) |
|  |  |  |  |  |  |  |
| 215 | P_EDUCATION_I_R | Panel Profile: Education - 3 levels | categorical | 0 (0.0%) | High school graduate or less | 1794 (22.1%) |
|  |  |  |  |  | Some college | 2322 (28.7%) |
|  |  |  |  |  | Bachelor’s degree or above | 3985 (49.2%) |
|  |  |  |  |  |  |  |
| 216 | P_EDUCATION_I_R_IFLG | Imputation flag for panel profile variable: | categorical | 0 (0.0%) | No imputation | 8091 (99.9%) |
|  |  |  |  |  | Statistical imputation | 10 (0.1%) |
|  |  |  |  |  |  |  |
| 217 | P_ONEVISIT | Paradata: Whether the survey was completed in a single session | categorical | 0 (0.0%) | Multiple session or did not complete | 1579 (19.5%) |
|  |  |  |  |  | Completed survey in single session | 6522 (80.5%) |
|  |  |  |  |  |  |  |
| 218 | P_DEVICE | Paradata: Device used to complete survey (web) | categorical | 0 (0.0%) | Desktop/Laptop/netbook | 2186 (27.0%) |
|  |  |  |  |  | Smartphone | 5777 (71.3%) |
|  |  |  |  |  | Tablet | 95 (1.2%) |
|  |  |  |  |  | Phone interview (not online) | 43 (0.5%) |
|  |  |  |  |  |  |  |
| 219 | P_MODE | Paradata: Mode of interview | categorical | 0 (0.0%) | Web | 8058 (99.5%) |
|  |  |  |  |  | CATI | 43 (0.5%) |
|  |  |  |  |  |  |  |
| 220 | P_POVERTY4_R | RECODE: Poverty Status (ratio of household income to the federal poverty level) - 4 levels | categorical | 0 (0.0%) | 0 - \< 1.00 | 1332 (16.4%) |
|  |  |  |  |  | 1.00 - \< 2.00 | 1603 (19.8%) |
|  |  |  |  |  | 2.00 - \< 4.00 | 2460 (30.4%) |
|  |  |  |  |  | 4.00 + | 2706 (33.4%) |
|  |  |  |  |  |  |  |
| 221 | P_EMPLOY | Panel Profile: Employment status | categorical | 0 (0.0%) | Working | 6350 (78.4%) |
|  |  |  |  |  | Not working–unable to work for health reasons/disabled | 332 (4.1%) |
|  |  |  |  |  | Not working–retired | 165 (2.0%) |
|  |  |  |  |  | Not working–other | 1254 (15.5%) |
|  |  |  |  |  |  |  |
| 222 | P_REGION | Panel Profile: Region | categorical | 0 (0.0%) | Northeast | 1108 (13.7%) |
|  |  |  |  |  | Midwest | 2189 (27.0%) |
|  |  |  |  |  | South | 2866 (35.4%) |
|  |  |  |  |  | West | 1938 (23.9%) |
|  |  |  |  |  |  |  |
| 223 | P_HOMEOWN_R | DERIVED: Home ownership - 2 levels | categorical | 0 (0.0%) | Own or being bought | 5560 (68.6%) |
|  |  |  |  |  | Rent/other arrangement | 2541 (31.4%) |
|  |  |  |  |  |  |  |
| 224 | P_CITIZEN | Panel Profile: Citizenship status | categorical | 1348 (16.6%) | Not a U.S. citizen | 412 (6.1%) |
|  |  |  |  |  | U.S. citizen | 6341 (93.9%) |
|  |  |  |  |  |  |  |
| 225 | P_VETERAN | Panel Profile: Veteran status | categorical | 393 (4.9%) | Not a veteran | 7282 (94.5%) |
|  |  |  |  |  | Veteran | 426 (5.5%) |
|  |  |  |  |  |  |  |
| 226 | P_USBORN | Panel Profile: Is respondent US born | categorical | 639 (7.9%) | No | 753 (10.1%) |
|  |  |  |  |  | Yes | 6709 (89.9%) |
|  |  |  |  |  |  |  |
| 227 | PCRACEMATCH | DERIVED: Child race/ethnicity same as parent/guardian | categorical | 99 (1.2%) | Same | 6759 (84.5%) |
|  |  |  |  |  | Not the same | 1243 (15.5%) |
|  |  |  |  |  |  |  |
| 228 | P_ORIENT | Panel Profile: Sexual Orientation | categorical | 488 (6.0%) | Gay or lesbian | 67 (0.9%) |
|  |  |  |  |  | Straight, that is not lesbian/gay | 7102 (93.3%) |
|  |  |  |  |  | Bisexual | 363 (4.8%) |
|  |  |  |  |  | Something else | 81 (1.1%) |
|  |  |  |  |  |  |  |
| 229 | P_METRO_R | Calibration Variable: Metropolitan status derived from panel profile for calibration | categorical | 0 (0.0%) | Metropolitan | 6984 (86.2%) |
|  |  |  |  |  | Nonmetropolitan | 1117 (13.8%) |
|  |  |  |  |  |  |  |
| 230 | CAL_HHDINC | Calibration Variable: Income - 3 levels | categorical | 0 (0.0%) | \$0-49,999 | 2361 (29.1%) |
|  |  |  |  |  | \$50,000 - 99,999 | 2294 (28.3%) |
|  |  |  |  |  | \$100,000+ | 3446 (42.5%) |
|  |  |  |  |  |  |  |
| 231 | CAL_REGION | Calibration Variable: Region | categorical | 0 (0.0%) | Northeast | 1108 (13.7%) |
|  |  |  |  |  | Midwest | 2189 (27.0%) |
|  |  |  |  |  | South | 2866 (35.4%) |
|  |  |  |  |  | West | 1938 (23.9%) |
|  |  |  |  |  |  |  |
| 232 | CAL_HOMEOWN_R | Calibration Variable: Home ownership - 2 levels | categorical | 0 (0.0%) | Own or being bought | 5560 (68.6%) |
|  |  |  |  |  | Rent/other arrangement | 2541 (31.4%) |
|  |  |  |  |  |  |  |

rss5 (8101 rows and 232 variables, 225 shown) {.table}
