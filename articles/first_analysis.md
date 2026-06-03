# First analysis

This vignette illustrates some common things you will want or need to do
to get started.

First we load the packages we need. In R, packages are collections of
useful data

``` r

library(icorp26)
library(easystats)
## # Attaching packages: easystats 0.7.6
## ✔ bayestestR  0.18.1   ✔ correlation 0.8.8 
## ✔ datawizard  1.3.1    ✔ effectsize  1.0.2 
## ✔ insight     1.5.1    ✔ modelbased  0.15.0
## ✔ performance 0.17.0   ✔ parameters  0.29.1
## ✔ report      0.6.4    ✔ see         0.14.0
library(here)
## here() starts at /home/runner/work/icorp26/icorp26
```

Let’s say you want to use rss1.

[We can look at the codebook
here.](https://www.cdc.gov/nchs/data/rss/codebook.pdf)

In R, one of the basic ways to refer to a variable is by combining the
name of the dataset and the name of the variable with a `$`.

     dataset_name$variable_name

### If you get sick or have an accident, how worried are you that you will be able to pay yourmedical bills?

``` r

data_tabulate(rss1$PAY_PAYWORRY)
## Get sick or have accident, how worried about ability to pay bills (rss1$PAY_PAYWORRY) <categorical>
## # total N=7599 valid N=7570
## 
## Value              |    N | Raw % | Valid % | Cumulative %
## -------------------+------+-------+---------+-------------
## Very worried       | 1104 | 14.53 |   14.58 |        14.58
## Somewhat worried   | 2740 | 36.06 |   36.20 |        50.78
## Not at all worried | 3726 | 49.03 |   49.22 |       100.00
## <NA>               |   29 |  0.38 |    <NA> |         <NA>
```

### Overall Health

``` r

data_tabulate(rss1$HIS_GENERAL)
## Self-reported health status (rss1$HIS_GENERAL) <categorical>
## # total N=7599 valid N=7583
## 
## Value     |    N | Raw % | Valid % | Cumulative %
## ----------+------+-------+---------+-------------
## Excellent |  632 |  8.32 |    8.33 |         8.33
## Very good | 2788 | 36.69 |   36.77 |        45.10
## Good      | 2976 | 39.16 |   39.25 |        84.35
## Fair      | 1015 | 13.36 |   13.39 |        97.73
## Poor      |  172 |  2.26 |    2.27 |       100.00
## <NA>      |   16 |  0.21 |    <NA> |         <NA>
```

### Marital Status

``` r

data_tabulate(rss1$MARSTAT) 
## DERIVED: Current marital status (rss1$MARSTAT) <categorical>
## # total N=7599 valid N=7557
## 
## Value               |    N | Raw % | Valid % | Cumulative %
## --------------------+------+-------+---------+-------------
## MARRIED             | 4337 | 57.07 |   57.39 |        57.39
## WIDOWED             |  359 |  4.72 |    4.75 |        62.14
## DIVORCED            |  643 |  8.46 |    8.51 |        70.65
## SEPARATED           |   62 |  0.82 |    0.82 |        71.47
## NEVER MARRIED       | 1375 | 18.09 |   18.20 |        89.67
## LIVING WITH PARTNER |  781 | 10.28 |   10.33 |       100.00
## <NA>                |   42 |  0.55 |    <NA> |         <NA>
```

Some things you should notice:

- The N column tells you how many people answering the survey fell into
  each category.

- The `Raw %` Column includes everyone who was asked.

- The `Valid %` Column includes only the people who answered that
  specific question (not the s).

- At the top you can see: total N=7599 valid N=7557. The difference of
  these two numbers (7599 - 7557) is 42 which is the same as the number
  of people have .

- The `Cumulative %` adds each row to the total percent above it. See if
  you can follow the logic in the tables above. This column is not
  relevant for variables that do not have some kind of ordering. Looking
  at our three tables, the first two (how worried they are about losing
  pay and overall self-reported health status *do* have order) while the
  third, maritial status, does not.

## A little bit more

R is very powerful in giving us many options for making our data easier
to understand and our results better looking. Let’s explore a bit.

### Marital Status

First, we can remove the missing data. In that case the valid and
complete data are the same.

``` r

data_tabulate(rss1$MARSTAT, remove_na = TRUE) 
## DERIVED: Current marital status (rss1$MARSTAT) <categorical>
## # total N=7557 valid N=7557
## 
## Value               |    N | Raw % | Valid % | Cumulative %
## --------------------+------+-------+---------+-------------
## MARRIED             | 4337 | 57.39 |   57.39 |        57.39
## WIDOWED             |  359 |  4.75 |    4.75 |        62.14
## DIVORCED            |  643 |  8.51 |    8.51 |        70.65
## SEPARATED           |   62 |  0.82 |    0.82 |        71.47
## NEVER MARRIED       | 1375 | 18.20 |   18.20 |        89.67
## LIVING WITH PARTNER |  781 | 10.33 |   10.33 |       100.00
```

Then we can make our table look nicer by using a customized “print”
function.

``` r

data_tabulate(rss1$MARSTAT, remove_na = TRUE) |> 
     print_md()
```

| Value               | N    | Raw % | Valid % | Cumulative % |
|:--------------------|:-----|:------|--------:|-------------:|
| MARRIED             | 4337 | 57.39 |   57.39 |        57.39 |
| WIDOWED             | 359  | 4.75  |    4.75 |        62.14 |
| DIVORCED            | 643  | 8.51  |    8.51 |        70.65 |
| SEPARATED           | 62   | 0.82  |    0.82 |        71.47 |
| NEVER MARRIED       | 1375 | 18.20 |   18.20 |        89.67 |
| LIVING WITH PARTNER | 781  | 10.33 |   10.33 |       100.00 |

DERIVED: Current marital status (rss1\$MARSTAT) (categorical) {.table}

total N=7557 valid N=7557

``` r


data_tabulate(rss1$MARSTAT, remove_na = TRUE) |> 
     print_html()
```

| DERIVED: Current marital status (rss1\$MARSTAT) (categorical) |  |  |  |  |
|----|----|----|----|----|
| Value | N | Raw % | Valid % | Cumulative % |
| MARRIED | 4337 | 57.39 | 57.39 | 57.39 |
| WIDOWED | 359 | 4.75 | 4.75 | 62.14 |
| DIVORCED | 643 | 8.51 | 8.51 | 70.65 |
| SEPARATED | 62 | 0.82 | 0.82 | 71.47 |
| NEVER MARRIED | 1375 | 18.20 | 18.20 | 89.67 |
| LIVING WITH PARTNER | 781 | 10.33 | 10.33 | 100.00 |
| total N=7557 valid N=7557 |  |  |  |  |

There are always a lot of different ways to do things in R. The code
chunk below is another way.

When you search for help or try to use AI to help you do things you will
see many different approaches. That’s fine; feel free to experiment. But
always chek to make sure that the advice you get actually works.

``` r

report_table(rss1$MARSTAT, remove_na = TRUE) |> print_md()
```

| Level               | n_Obs | percentage_Obs |
|:--------------------|------:|---------------:|
| MARRIED             |  4337 |          57.07 |
| WIDOWED             |   359 |           4.72 |
| DIVORCED            |   643 |           8.46 |
| SEPARATED           |    62 |           0.82 |
| NEVER MARRIED       |  1375 |          18.09 |
| LIVING WITH PARTNER |   781 |          10.28 |
| missing             |    42 |           0.55 |

``` r

data_tabulate(rss1$P_INCOME_R, remove_na = TRUE) |>
     print_md()
```

| Value                  |    N | Raw % | Valid % | Cumulative % |
|:-----------------------|-----:|------:|--------:|-------------:|
| Less than \$5,000      |  160 |  2.11 |    2.11 |         2.11 |
| \$5,000 to \$9,999     |  122 |  1.61 |    1.61 |         3.71 |
| \$10,000 to \$14,999   |  239 |  3.15 |    3.15 |         6.86 |
| \$15,000 to \$19,999   |  204 |  2.68 |    2.68 |         9.54 |
| \$20,000 to \$24,999   |  310 |  4.08 |    4.08 |        13.62 |
| \$25,000 to \$29,999   |  279 |  3.67 |    3.67 |        17.29 |
| \$30,000 to \$34,999   |  308 |  4.05 |    4.05 |        21.34 |
| \$35,000 to \$39,999   |  282 |  3.71 |    3.71 |        25.06 |
| \$40,000 to \$49,999   |  499 |  6.57 |    6.57 |        31.62 |
| \$50,000 to \$59,999   |  598 |  7.87 |    7.87 |        39.49 |
| \$60,000 to \$74,999   |  754 |  9.92 |    9.92 |        49.41 |
| \$75,000 to \$84,999   |  441 |  5.80 |    5.80 |        55.22 |
| \$85,000 to \$99,999   |  572 |  7.53 |    7.53 |        62.75 |
| \$100,000 to \$124,999 |  838 | 11.03 |   11.03 |        73.77 |
| \$125,000 to \$149,999 |  513 |  6.75 |    6.75 |        80.52 |
| \$150,000 or more      | 1480 | 19.48 |   19.48 |       100.00 |

Household income - topcoded (rss1\$P_INCOME_R) (categorical) {.table}

total N=7599 valid N=7599

We can see that income is given in a lot of categories rather than exact
number. But the categories are evenly spaced in \$5000 steps until we
get to the top value of \$150,000 or more.

Because of this we cam treat this variable as though it is a number and
do things like calculate the mean and median.

``` r

mean(as.numeric(rss1$P_INCOME_R))
## [1] 11.07685
```

The value that cuts the sample into lower and upper halves is called the
median. The median here is 12. The 12th category is “\$75,000 to
\$84,999”. Look at the cumulative distribution in the first table of
income. There are 7599 valid values If we divide that by two we get
3799.5. 3754 values are in the categories “\$60,000 to \$74,999” or
lower. To get to 3799 or 3800 we need to look in the next highest
category.

``` r

median(as.numeric(rss1$P_INCOME_R))
## [1] 12
```

``` r

summary(as.numeric(rss1$P_INCOME_R))
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##    1.00    8.00   12.00   11.08   15.00   16.00
```

The summary shows the overall distribution of income, including the
highest and lowest values (Max and Min) and the median and mean. The 1st
Quartile is the point the cuts off the bottom 25% while the 3rd Quartile
cuts off the bottom 75%. Look at the cumulative distribution and make
sure you can see why.

We can even do fancy things like combine results together and get an
automated paragraph (although there are not that many options like this
and you can look at its problems by seeing what happens if you use
`P_GENDERID` instead of `P_GENDER`).

``` r

participants <- 
 report_participants(
       rss1,
       age = NULL,
       sex = "P_GENDER",
       education = NULL,
       race = "P_RACE_R",
  ) 
```

7599 participants (Sex: 51.4% females, 48.6% males, 0.0% other; Race:
66.35% White, non-Hispanic, 14.70% Hispanic, 10.55% Black, non-Hispanic,
8.40% other)

There are many more things that you can do
